package org.vv.util.db;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBTool {
	private static Connection conn = null;

	static {
		String driver = DBConfig.DB_DRIVER;
		String url = DBConfig.DB_URL;
		String user = DBConfig.DB_USER;
		String password = DBConfig.DB_PASSWORD;
		initConnect(driver, url, user, password);
	}

	public static List<Map> query(String sql) {
		List<Map> data = new ArrayList<Map>();

		try {
			ResultSet resultSet = conn.createStatement().executeQuery(sql);
			while (resultSet.next()) {
				Map item = new HashMap();
				ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
				int columnCount = resultSetMetaData.getColumnCount();
				for (int i = 1; i <= columnCount; i++) {
					item.put(resultSetMetaData.getColumnLabel(i), resultSet.getObject(i));
				}
				data.add(item);
			}
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}

		return data;
	}

	public static Map get(String sql) {
		Map data = new HashMap();
		try {
			ResultSet resultSet = conn.createStatement().executeQuery(sql);
			if (resultSet.next()) {
				ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
				int columnCount = resultSetMetaData.getColumnCount();
				for (int i = 1; i <= columnCount; i++) {
					data.put(resultSetMetaData.getColumnLabel(i), resultSet.getObject(i));
				}
			}
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}
		return data;
	}

	public static void insert(String sql) {
		try {
			Statement statement = conn.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}
	}

	public static Long insertReturnId(String sql) {
		try {
			PreparedStatement statement = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			statement.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
			ResultSet generatedKeys = statement.getGeneratedKeys();
			if (generatedKeys.next()) {
				return generatedKeys.getLong(1);
			}
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}
		return -1L;
	}

	public static void delete(String sql) {
		insert(sql);
	}

	private static void initConnect(String driver, String url, String user, String password) {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static ResultSetMetaData getMeta(String sql) throws SQLException {
		PreparedStatement stmt;
		stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery(sql);
		ResultSetMetaData data = rs.getMetaData();

		return data;
	}

	private static boolean isDate(String typeName) {
		if (typeName != null && typeName.toLowerCase().indexOf("date") > -1)
			return true;
		return false;
	}

	public static void getSelect(String sql) throws SQLException {
		ResultSetMetaData meta = getMeta(sql);
		StringBuilder newSqlBuilder = new StringBuilder();
		newSqlBuilder.append("select \n");
		boolean hasLabel = hasLabel(sql);
		for (int i = 1; i <= meta.getColumnCount(); i++) {
			String columnName = meta.getColumnName(i);
			String labelColumnName = columnName;
			String columnTypeName = meta.getColumnTypeName(i);

			if (hasLabel) {
				labelColumnName = getLabel(meta.getTableName(i), sql) + "." + labelColumnName;
			}

			if (isDate(columnTypeName)) {
				columnName = "date_format(" + labelColumnName + " ,'%Y-%m-%d %H:%i:%s') as " + labelColumnName.replace(".", "_");
			} else {
				columnName = labelColumnName;
			}

			columnName = "\t" + columnName;
			if (i < meta.getColumnCount()) {
				columnName += ", \n";
			} else {
				columnName += "\n";
			}
			newSqlBuilder.append(columnName);
		}
		newSqlBuilder.append(sql.substring(sql.lastIndexOf("from")));
		newSqlBuilder.append("\nwhere 1=1\n");
		System.out.println(newSqlBuilder.toString());
	}

	private static boolean hasLabel(String sql) {
		if (sql != null && (sql.indexOf("left join") > -1 || sql.indexOf("right join") > -1 || sql.substring(sql.indexOf("from")).indexOf(",") > -1))
			return true;
		return false;
	}

	private static String getLabel(String tableName, String sql) {
		String[] items = sql.substring(sql.indexOf(tableName) + tableName.length()).trim().split(" ");
		if (items.length < 1 || items[0] == null)
			return "";
		return items[0];
	}

	public static void getUpdate(String tableName) throws SQLException {
		String sql = "select * from " + tableName;
		ResultSetMetaData meta = getMeta(sql);
		StringBuilder newSqlBuilder = new StringBuilder();
		newSqlBuilder.append("update " + tableName + "\n\tset\n");
		for (int i = 1; i <= meta.getColumnCount(); i++) {
			String columnName = meta.getColumnName(i);
			String labelColumnName = columnName;
			String columnTypeName = meta.getColumnTypeName(i);

			if (isDate(columnTypeName)) {
				columnName = columnName + "=str_to_date(#{" + columnName + "} ,'%Y-%m-%d %H:%i:%s')";
			} else {
				columnName = columnName + "=#{" + columnName + "}";
			}

			columnName = "\t" + columnName;
			if (i < meta.getColumnCount()) {
				columnName += ", \n";
			} else {
				columnName += "\n";
			}
			newSqlBuilder.append(columnName);
		}

		newSqlBuilder.append("where 1=1\n");
		System.out.println(newSqlBuilder.toString());
	}

	public static void makeLike(String name) {
		String key = name.indexOf(".") > -1 ? name.substring(name.indexOf(".") + 1) : name;
		if (name.equals("created_name"))
			name = "created_user_name";
		else if (name.equals("created_id"))
			name = "created_user_id";
		else if (name.equals("created_time"))
			name = "created_date_time";
		else if (name.equals("updated_id"))
			name = "updated_user_id";
		else if (name.equals("updated_name"))
			name = "updated_user_name";
		else if (name.equals("updated_time"))
			name = "updated_date_time";

		String template = "<if test=\"#KEY#!=null and #KEY#!=''\">\n";
		if (name.indexOf("date") < 0) {
			template += "\tand #NAME# like concat(\"%\", #{#KEY#}, \"%\")\n";
		} else {
			template += "\tand #NAME# <![CDATA[=]]> str_to_date(#{#KEY#} ,'%y/%m/%d')\n";
		}
		template += "</if>";
		String result = template.replaceAll("#KEY#", key).replaceAll("#NAME#", name);

		System.out.println(result + "\n");
	}

	public static void main(String[] args) throws SQLException {

		getSelect("select * from edu_school_student  ");
	}
}

