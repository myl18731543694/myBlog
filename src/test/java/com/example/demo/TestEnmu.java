/**
 * 
 */
package com.example.demo;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;

/**  
 * @ClassName: TestEnmu  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2018年12月8日    
 */
public class TestEnmu {
	public static void main(String[] args) {
		String path = "E:\\myblogupload\\321231"; 
		String fileName = "7.jpg";
		
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
		File targetFile = new File(path, fileName);

		// 检查文件是否存在 不存在则创建文件
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
				System.out.println(targetFile.getPath());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}
}
