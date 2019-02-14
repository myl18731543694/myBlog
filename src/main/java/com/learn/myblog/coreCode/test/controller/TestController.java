/**
 * 
 */
package com.learn.myblog.coreCode.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.learn.myblog.common.mapper.UserMapper;

/**  
 * @ClassName: TestController  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2019年1月24日    
 */
@RestController
@RequestMapping("/test")
public class TestController {
	
	@Autowired
	UserMapper userMapper;
	
	@RequestMapping("/testDelete")
	public void testDelete() {
		userMapper.testDelete();
	}
}
