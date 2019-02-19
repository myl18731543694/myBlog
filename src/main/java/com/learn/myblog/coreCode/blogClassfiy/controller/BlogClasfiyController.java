/**
 * 
 */
package com.learn.myblog.coreCode.blogClassfiy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.coreCode.blogClassfiy.service.BlogClassfiyService;

/**  
 * @ClassName: BlogClasfiyController  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2019年2月18日    
 */
@Controller
@RequestMapping("/blogClasfiy")
public class BlogClasfiyController {
	
	@Autowired
	BlogClassfiyService blogClassfiyService;
	
	/**
	 * 查询博客分类的博客数量
	 * 
	 * @param blogId 博客id
	 * @return
	 */
	@RequestMapping("/slectClassfiyBlogNums")
	@ResponseBody
	public Msg slectClassfiyBlogNums() {
		return blogClassfiyService.slectClassfiyBlogNums();
	}
	

	/**
	 * 查询博客分类的博客数量
	 * 
	 * @param blogId 博客id
	 * @return
	 */
	@RequestMapping("/slectBlogClassfiy")
	@ResponseBody
	public Msg slectBlogClassfiy() {
		return blogClassfiyService.slectBlogClassfiy();
	}
}
