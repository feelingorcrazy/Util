package org.vv.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author xxx
 * @date 2022/04/22 16:00
 **/
public class PropertiesUtil {
    static Properties properties = new Properties();

    public static String getProperty(String key){
        return properties.getProperty(key);
    }

    public static void setResourceConfig(String resource) throws IOException {
        InputStream resourceAsStream = PropertiesUtil.class.getClassLoader().getResourceAsStream(resource);
        properties.load(resourceAsStream);
    }
}
