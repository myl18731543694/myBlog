/**
 * 
 */
package com.learn.myblog.coreCode.blogManager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.learn.myblog.common.bean.Blog;
import com.learn.myblog.common.pojo.BootStrapTable;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.coreCode.blogManager.service.BlogManagerService;

/**
 * @ClassName: BlogManagerController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Controller
@RequestMapping("/blogManager")
public class BlogManagerController {

	@Autowired
	BlogManagerService blogManagerService;

	/**
	 * 查询博客分类的博客数量
	 * 
	 * @param blogId 博客id
	 * @return
	 */
	@RequestMapping("/slectBlogClassfiyNums")
	@ResponseBody
	public Msg slectBlogClassfiyNums() {
		return blogManagerService.slectBlogClassfiyNums();
	}

	/**
	 * 跳转到增加博客页面
	 * 
	 * @return /myBlog/src/main/resources/templates/page/websiteManagement/addBlog.ftl
	 */
	@RequestMapping("/addBlogPage")
	public ModelAndView addBlogPage() {
		return new ModelAndView("websiteManagement/addBlog");
	}

	/**
	 * 发布博客
	 * 
	 * @param blog 博客内容
	 * @return
	 */
	@RequestMapping("/addBlog")
	@ResponseBody
	public Msg addBlog(Blog blog) {
		return blogManagerService.addBlog(blog);
	}

	/**
	 * 修改博客
	 * 
	 * @param blog 博客内容
	 * @return
	 */
	@RequestMapping("/editBlog")
	@ResponseBody
	public Msg editBlog(Blog blog) {
		return blogManagerService.editBlog(blog);
	}

	/**
	 * 删除博客
	 * 
	 * @param uuid 博客id
	 * @return
	 */
	@RequestMapping("/deleteBlog")
	@ResponseBody
	public Msg deleteBlog(@RequestParam String uuid) {
		return blogManagerService.deleteBlog(uuid);
	}

	/**
	 * 获取指定博客
	 * 
	 * @param blogId 博客id
	 * @return
	 */
	@RequestMapping("/getBlog")
	@ResponseBody
	public Msg getBlog(@RequestParam String blogId) {
		return blogManagerService.getBlog(blogId);
	}

	/**
	 * 获取博客列表
	 * 
	 * @param currentPage 当前页码
	 * @param pageSize    一次多少条
	 * @param search      搜索标题条件
	 * @return
	 */
	@RequestMapping("/getBlogList")
	@ResponseBody
	public BootStrapTable getBlogList(@RequestParam int currentPage, @RequestParam int pageSize,
			@RequestParam String search, @RequestParam String blogClassfiy) {
		return blogManagerService.getBlogList(currentPage, pageSize, search, blogClassfiy);
	}
	
	/**
	 * 获取博客列表
	 * 
	 * @param currentPage 当前页码
	 * @param pageSize    一次多少条
	 * @param search      搜索标题条件
	 * @return
	 */
	@RequestMapping("/getIndexBlogList")
	@ResponseBody
	public BootStrapTable getIndexBlogList() {
		return blogManagerService.getIndexBlogList();
	}

}
