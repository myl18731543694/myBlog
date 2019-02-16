/**
 * 
 */
package com.example.demo;

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
		String aString  = "<li><i><a href=\"/news/life/2018-06-17/873.html\"\r\n" + 
				"					target=\"_blank\"><img src=\"images/p1.jpg\"></a></i><span>安静地做一个爱设计的女子</span></li>";
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		Type[] type = TestEnmu.class.getGenericInterfaces();
		System.out.println("type.length-->" + type.length);
		for (Type t : type) {
			System.out.println(t.getTypeName());
			System.out.println(t instanceof ParameterizedType);
		}
		
	}
}
