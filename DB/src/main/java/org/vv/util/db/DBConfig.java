package org.vv.util.db;


import org.vv.util.PropertiesUtil;

import java.io.IOException;

public class DBConfig {
    public static String DB_DRIVER;
    public static String DB_URL;
    public static String DB_USER;
    public static String DB_PASSWORD;

    static {
        try {
            PropertiesUtil.setResourceConfig("db.properties");
        } catch (IOException e) {
            e.printStackTrace();
        }
        setDbDriver(PropertiesUtil.getProperty("db.driver"));
        setDbUrl(PropertiesUtil.getProperty("db.jdbcUrl"));
        setDbPassword(PropertiesUtil.getProperty("db.password"));
        setDbUser(PropertiesUtil.getProperty("db.user"));
    }

    static void setDbDriver(String dbDriver) {
        DB_DRIVER = dbDriver;
    }

    static void setDbUrl(String dbUrl) {
        DB_URL = dbUrl;
    }

    static void setDbUser(String dbUser) {
        DB_USER = dbUser;
    }

    static void setDbPassword(String dbPassword) {
        DB_PASSWORD = dbPassword;
    }
}

