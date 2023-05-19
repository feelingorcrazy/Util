package org.vv.util;

import java.util.List;
import java.util.Map;

/**
 * @author VV
 * @date 2022/4/23
 */
public class PrintTextUtil {

	public static void print(List obj) {
		obj.forEach(System.out::println);
	}

	public static void print(Object obj) {
		System.out.println(obj);
	}

	public static void print(Map map) {
		map.forEach((k, v) -> {
			System.out.println(k + ":" + v);
		});
	}

}
