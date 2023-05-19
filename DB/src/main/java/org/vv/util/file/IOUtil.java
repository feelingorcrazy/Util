package org.vv.util.file;

import java.io.*;
import java.util.List;

/**
 * Created by Administrator on 2016/1/26.
 */
public class IOUtil {

	/**
	 * 将源文件拷贝到目标文件
	 *
	 * @param source 复制源文件
	 * @param target 复制目标文件
	 * @return true 成功 false 失败
	 */
	public static boolean copy(File source, File target) {
		try {
			int length = 1024;
			FileInputStream in = new FileInputStream(source);
			FileOutputStream out = new FileOutputStream(target);
			byte[] buffer = new byte[length];
			int ins = 0;
			while ((ins = in.read(buffer)) != -1) {
				out.write(buffer, 0, ins);
			}

			in.close();
			out.flush();
			out.close();
			return true;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 清理临时垃圾的文件
	 *
	 * @param files 需要清理的垃圾文件集合
	 */
	public static void clearTmpFile(File[] files) {

		for (File delFile : files) {
			if (delFile.exists()) {
				delFile.delete();
			}
		}
	}

	/**
	 * 清理临时垃圾的文件
	 *
	 * @param filePaths 需要清理的垃圾文件路径集合
	 */
	public static void clearTmpFile(List<String> filePaths) {

		for (String path : filePaths) {
			File delFile = new File(path);
			if (delFile.exists()) {
				delFile.delete();
			}
		}
	}

	/**
	 * 递归删除给定文件夹或文件的过期文件
	 *
	 * @param file 要删除的文件夹或者文件
	 * @param time 过期距离时间, 毫秒级的参数 1000 * 60 即1分钟
	 */
	public static void clearTmpFile(File file, long time) {
		if (file.isDirectory()) {
			for (File f : file.listFiles()) {
				if (f.isDirectory()) {
					clearTmpFile(file, time);
				} else {
					if (System.currentTimeMillis() - file.lastModified() > time) {
						file.delete();
					}
				}
			}
		} else {
			if (System.currentTimeMillis() - file.lastModified() > time) {
				file.delete();
			}
		}
	}

	public static boolean deleteFile(File file) {
		if (file.exists()) {
			if (file.isFile()) {
				return file.delete();
			} else if (file.isDirectory()) {
				File[] files = file.listFiles();
				for (int i = 0; i < files.length; i++) {
					deleteFile(files[i]);
				}
				return file.delete();
			}
		}

		return false;
	}

	public static boolean makeFolder(File folder) {
		if (!folder.exists())
			return folder.mkdirs();

		return false;
	}

	public static boolean writeTextFile(String text, File file) {
		try {
			File folder = file.getParentFile();
			if (!folder.exists())
				folder.mkdirs();
			Writer fileWritter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), "utf-8"));
			BufferedWriter bufferWritter = new BufferedWriter(fileWritter);
			bufferWritter.write(text);
			bufferWritter.flush();
			bufferWritter.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	public static String readTxtFile(String filePath) {
		try {
			File file = new File(filePath);
			if (file.isFile() && file.exists()) {
				InputStreamReader read = new InputStreamReader(new FileInputStream(file), "utf-8");
				BufferedReader bufferedReader = new BufferedReader(read);
				StringBuilder contentBuilder = new StringBuilder();
				String line;
				while ((line = bufferedReader.readLine()) != null)
					contentBuilder.append(line).append("\n");
				read.close();
				return contentBuilder.toString();
			} else {
				System.out.println("找不到指定的文件" + filePath);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public static void main(String[] args) {

		File source = new File("C:/abc.xls");
		File target = new File("C:/点检票导出.xls");
		IOUtil.copy(source, target);

		String xlsTemplate = "<!DOCTYPE html>\n" +
				"<html lang=\"en\">\n" +
				"<head>\n" +
				"    <meta charset=\"UTF-8\">\n" +
				"    <title>Title</title>\n" +
				"</head>\n" +
				"<body>\n" +
				"    <table>\n" +
				"#BODY#" +
				"    </table>\n" +
				"</body>\n" +
				"</html>";

		StringBuilder bodyBuilder = new StringBuilder();
		for (int o = 0; o < 4; o++) {
			bodyBuilder.append("<tr>");
			for (int i = 0; i < 10; i++) {
				bodyBuilder.append("<td>" + i + "</td>");
			}
			bodyBuilder.append("</tr>");
		}

		String fileContent = xlsTemplate.replaceAll("#BODY#", bodyBuilder.toString());

		IOUtil.writeTextFile(fileContent, new File("/Users/R/Desktop/test.xls"));
	}
}
