package util.decompression;

import util.FileUtil;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * @author VV
 * @date 2023/5/17
 */
public class SqlDecompression {
	public static void out(File file, String outPath) throws IOException {
		InputStream is = new FileInputStream(file);
		/*BufferedReader bis = new BufferedReader(new InputStreamReader(is));
		String str;
		StringBuilder sb = new StringBuilder();
		while ( (str = bis.readLine()) != null) {
			sb.append(str + "\n");
		}
		DBTool.execute(sb.toString());
		bis.close();*/
		File file1  = new File(outPath);
		file1.mkdirs();
		FileUtil.writeFile(is,outPath + "/" + file.getName() );

		is.close();
		System.out.println("sql移动成功");
	}
}
