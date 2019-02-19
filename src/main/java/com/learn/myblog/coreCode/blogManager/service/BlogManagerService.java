/**
 * 
 */
package com.learn.myblog.coreCode.blogManager.service;

import com.learn.myblog.common.bean.Blog;
import com.learn.myblog.common.pojo.BootStrapTable;
import com.learn.myblog.common.pojo.Msg;

/**
 * @ClassName: BlogManagerService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */

public interface BlogManagerService {

	/**
	 * 发布博客
	 * 
	 * @param blog
	 * @return
	 */
	Msg addBlog(Blog blog);

	/**
	 * 修改博客
	 * 
	 * @param blog
	 * @return
	 */
	Msg editBlog(Blog blog);

	/**
	 * 删除博客
	 * 
	 * @param uuid
	 * @return
	 */
	Msg deleteBlog(String uuid);

	/**
	 * 根据id获取博客信息
	 * 
	 * @param blogId
	 * @return
	 */
	Msg getBlog(String blogId);

	/**
	 * 获取博客列表
	 * 
	 * @param currentPage 当前页码
	 * @param pageSize    一次多少条
	 * @return
	 */
	BootStrapTable getBlogList(int currentPage, int pageSize, String search, String blogClassfiy);

	/**
	 * 获取首页博客列表 带img的
	 * 
	 * @return
	 */
	BootStrapTable getIndexBlogList();

}
