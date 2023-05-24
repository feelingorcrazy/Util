package org.vv.dict;

import cn.hutool.core.util.StrUtil;
import org.vv.dict.entity.DictData;
import org.vv.dict.entity.DictType;
import org.vv.util.PropertiesUtil;
import org.vv.util.db.DBTool;
import org.vv.util.file.FileUtil;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.function.Consumer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author VV
 * @date 2023/5/19
 */
public class ImportDict {
	public static Set<DictType> dictTypes = new LinkedHashSet<>();
	private final static String SQL_PATH;
	public final static String REGEX;
	public final static String SYS_DICT_TYPE_SQL;
	public final static String SYS_DICT_DATA_SQL;
	static {
		try {
			PropertiesUtil.setResourceConfig("sql.properties");
		} catch (IOException e) {
			e.printStackTrace();
		}
		SQL_PATH = PropertiesUtil.getProperty("SQL_PATH");
		REGEX = PropertiesUtil.getProperty("REGEX");
		SYS_DICT_TYPE_SQL = PropertiesUtil.getProperty("SYS_DICT_TYPE_SQL");
		SYS_DICT_DATA_SQL = PropertiesUtil.getProperty("SYS_DICT_DATA_SQL");
	}

	public static void handleSqlFile(String sqlPath, String regex) {
		//[类型,rc_app_type,1=客户端,2=农户端]
		File file = new File(sqlPath);
		String str = FileUtil.file2str(file);
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		while (matcher.find()) {
			// 匹配到的内容
			String matchedStr = matcher.group(1);
			if (StrUtil.isNotEmpty(matchedStr)) {
				generateDictClass(matchedStr);
			}
		}
	}


	public static void generateDictClass(String matchedStr) {
		DictType dt = new DictType();
		String[] split = matchedStr.split(",");
		List<String> strs = new ArrayList<>();
		strs.addAll(Arrays.asList(split));
		dt.setDictName(strs.get(0));
		dt.setDictType(strs.get(1));
		strs.remove(0);
		strs.remove(0);
		strs.forEach(item -> {
			System.out.println(item);
			DictData d = new DictData();
			if(item.contains("=")){
				String prefix = item.trim().substring(0, item.indexOf("="));
				String suffix = item.trim().substring(item.indexOf("=") + 1);
				d.setName(suffix.trim());
				d.setValue(Integer.parseInt(prefix.trim()));
				dt.getDictDatas().add(d);
			}
		});
		dictTypes.add(dt);
	}


	public static void insertData(Set<DictType> set) {
		set.parallelStream().forEach(item -> {
			String sql = String.format(SYS_DICT_TYPE_SQL, item.getDictName(), item.getDictType(), "");
			DBTool.insert(sql);
			List<DictData> dictDatas = item.getDictDatas();
			dictDatas.forEach(dictDataInsert(dictDatas,item.getDictType(),item.getDictName()));
		});
	}

	public static Consumer<DictData> dictDataInsert(List<DictData> dictDatas,String dictType,String dictName){
		return dictData -> {
			String dataSql = String.format(SYS_DICT_DATA_SQL, dictDatas.indexOf(dictData), dictData.getName(),
					dictData.getValue(), dictType, dictDatas.indexOf(dictData) > 0 ? "N" : "Y",dictName);
			DBTool.insert(dataSql);
		};
	}


	public static void main(String[] args) {
		handleSqlFile(SQL_PATH,REGEX);
		insertData(dictTypes);
	}
}
