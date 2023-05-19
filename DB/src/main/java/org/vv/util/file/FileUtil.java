package org.vv.util.file;

import cn.hutool.core.util.StrUtil;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class FileUtil {


	public void test() throws IOException {
		//Files一般用于简单文件的读写，如果文件过大，还是应该使用IO流来进行读写。
		//返回以相对地址为基础的路径，不判断文件是否存在
		Path path = Paths.get("pom.xml").toAbsolutePath();
		System.out.println(path);
		System.out.println("文件是否存在: " + Files.exists(path));
		System.out.println("是否是目录: " + Files.isDirectory(path));
		System.out.println("是否是可执行文件: " + Files.isExecutable(path));
		System.out.println("是否可读: " + Files.isReadable(path));
		System.out.println("判断是否是一个文件: " + Files.isRegularFile(path));
		System.out.println("是否可写: " + Files.isWritable(path));
		System.out.println("文件是否不存在: " + Files.notExists(path));
		System.out.println("文件是否隐藏: " + Files.isHidden(path));
		System.out.println("文件大小: " + Files.size(path));
		System.out.println("文件存储在SSD还是HDD: " + Files.getFileStore(path));
		System.out.println("文件修改时间：" + Files.getLastModifiedTime(path));
		System.out.println("文件拥有者： " + Files.getOwner(path));
		System.out.println("文件类型: " + Files.probeContentType(path));

		//返回以相对地址为基础的路径，不判断文件是否存在
		path = Paths.get("pom.xml").toAbsolutePath();
		//创建文件
		Files.createFile(path);
		//复制文件,如果目标路径已经存在则会失败
		Files.copy(Paths.get("fromPath"), Paths.get("toPath"));
		//移动文件，如果目标路径已经存在则会失败
		Files.move(Paths.get("fromPath"), Paths.get("toPath"));
		//删除文件
		Files.delete(path);

		//返回以相对地址为基础的路径，不判断文件是否存在
		path = Paths.get("pom.xml").toAbsolutePath();
		//读取文件所有字节
		byte[] bytes = Files.readAllBytes(path);
		String content = new String(bytes, StandardCharsets.UTF_8);
		//按行读取
		List<String> lines = Files.readAllLines(path, StandardCharsets.UTF_8);
		//写入字节
		Files.write(path, content.getBytes(StandardCharsets.UTF_8));
		//向指定文件追加内容
		Files.write(path, content.getBytes(StandardCharsets.UTF_8), StandardOpenOption.APPEND);

		//可以添加StandardOpenOption类作为一个参数 来完成指定功能
		//StandardOpenOption是一个枚举类，包括：
		//READ:用于read
		//WRITE:用于write
		//APPEND:在文件末尾追加
		//TRUNCATE_EXISTING：移除已有内容
		//CREATE_NEW：创建新文件并且在文件已存在的情况下创建失败
		//CREATE：自动在文件不在的情况下创建新文件
		//DELETE_ON_CLOSE：当文件被关闭时，“尽可能”删除文件
		//SPARSE：给文件系统一个提示，表示该文件是稀疏的
		//DSYN|SYN：要求对文件数据 | 数据和元数据 的每次更新都必须同步写入到存储设备中
		////用于copy,move
		//ATOMIC_MOVE：原子性的移动文件
		//COPY_ATTRIBUTES：复制文件的属性
		//REPLACE_EXISTING：如果目标已存在则替换它
	}
	/**
	 * 字符内容转文件
	 *
	 * @param text
	 * @param path
	 * @param charset
	 * @throws IOException
	 */
	public static void str2file(String text,Path path, Charset charset){
		try (RandomAccessFile randomAccessFile = new RandomAccessFile(path.toFile(), "rw");
			 FileChannel channel = randomAccessFile.getChannel();){
			if (Files.exists(path)) {
				Files.delete(path);
			}
			Files.createFile(path);
			channel.write(ByteBuffer.wrap(text.getBytes(charset)));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void  str2file(String text, String pathStr, Charset charset){
		Path path = Paths.get(pathStr);
		str2file(text,path,charset);
	}
	public static void str2file(String text, String pathStr){
		str2file(text,pathStr,StandardCharsets.UTF_8);
	}
	public static void str2file(Path path, String pathStr){
		str2file(pathStr,path,StandardCharsets.UTF_8);
	}



	/**
	 * 文件内容转字符
	 *
	 * @param path
	 * @param charset
	 * @throws IOException
	 */
	public static String file2str(Path path, Charset charset){
		if (Files.notExists(path)) {
			throw new RuntimeException("文件不存在");
		}
		if (Files.isDirectory(path)) {
			throw new RuntimeException("该路径是一个文件夹");
		}
		StringBuilder sb = new StringBuilder();
		try (RandomAccessFile randomAccessFile = new RandomAccessFile(path.toFile(), "rw");
			FileChannel channel = randomAccessFile.getChannel();){
			ByteBuffer bb = ByteBuffer.allocate(1024);
			while (channel.read(bb) != -1){
				bb.flip();
				while (bb.hasRemaining()){
					sb.append(StandardCharsets.UTF_8.decode(bb));
				}
				bb.clear();
			}
		} catch (IOException e) {
			e.printStackTrace();
			sb.setLength(0);
		}
		return sb.toString();
	}
	public static String file2str(String pathStr, Charset charset){
		return file2str(Paths.get(pathStr),charset);
	}
	public static String file2str(String pathStr){
		return file2str(pathStr,StandardCharsets.UTF_8);
	}
	public static String file2str(File file){
		return file2str(file.getPath(),StandardCharsets.UTF_8);
	}
	public static String file2str(Path path){
		return file2str(path,StandardCharsets.UTF_8);
	}


	/**
	 * 取文件夹所有文件转成字符集合
	 *
	 * @param pathStr
	 * @throws IOException
	 */
	public static List<String> getFileStrs(String pathStr) throws IOException {
		return getFileStrs(pathStr,"");
	}
	public static List<String> getFileStrs(String pathStr, String pattern) throws IOException {
		return getFiles(pathStr,pattern).parallelStream().map(FileUtil::file2str).collect(Collectors.toList());
	}

	/**
	 * 取文件夹所有文件
	 *
	 * @param pathStr
	 * @throws IOException
	 */
	public static List<File> getFiles(String pathStr) throws IOException {
		return getFiles(pathStr,"");
	}

	/**
	 * 取文件夹特定后缀文件
	 *
	 * @param pathStr
	 * @param pattern
	 * @throws IOException
	 */
	public static List<File> getFiles(String pathStr, String pattern) throws IOException {
		Path dir = Paths.get(pathStr);
		if (!Files.exists(dir)) {
			throw new RuntimeException("文件夹不存在");
		}
		if (!Files.isDirectory(dir) && Files.isRegularFile(dir)) {
			throw new RuntimeException("该路径不是一个文件夹");
		}
		return Files.walk(dir)
				.filter(Files::isRegularFile)
				.map(Path::toFile)
				.filter(path->{
					if(StrUtil.isNotEmpty(pattern)){
						if(path.toString().endsWith(pattern)){
							return true;
						}else{
							return false;
						}
					}else{
						return true;
					}
				}).collect(Collectors.toList());
	}


	public static void main(String[] args) throws IOException {
		//str2file("213231","D:\\WorkSpaceTools\\CourseAuto\\src\\main\\resources\\sqlfile\\sql_add1.sql");
		//System.out.println(file2str("D:\\WorkSpaceTools\\CourseAuto\\src\\main\\resources\\sqlfile\\sql_add1.sql"));
		List<String> fileStrs = getFileStrs("D:\\WorkSpaceTools\\CourseAuto\\src\\main\\java\\dev\\generate\\controller\\xml\\", ".xml");
		fileStrs.forEach(fileStr->{
			Matcher matcher = Pattern.compile("type=\"([\\s\\S]*?)\">").matcher(fileStr);
			if(matcher.find()){
				try {

					Field[] declaredFields = Class.forName(matcher.group(1)).getDeclaredFields();
					System.out.println(declaredFields.length);
					Arrays.asList(declaredFields).forEach(item->{
						System.out.println(item.getName());
					});
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			}
		});

	}
}
