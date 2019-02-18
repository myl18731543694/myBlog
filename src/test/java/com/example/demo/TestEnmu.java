/**
 * 
 */
package com.example.demo;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.learn.myblog.common.dto.BlogAndUserNickAndBlogClassfiy;

/**  
 * @ClassName: TestEnmu  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2018年12月8日    
 */
public class TestEnmu {
	public static void main(String[] args) {
		String aString = "<li class=\"slide\"><a href=\"/\" target=\"_blank\"><img\r\n" + 
				"					src=\"images/1.jpg\"><span class=\"imginfo\">别让这些闹心的套路，毁了你的网页设计!</span></a></li>";
		QueryWrapper<BlogAndUserNickAndBlogClassfiy> queryWrapper = new QueryWrapper<>();
		queryWrapper.ne("isDelete", 1);
		queryWrapper.orderByDesc("createTime");
		
		System.out.println(queryWrapper.getParamAlias());
		
	}
	
}
