/**
 * 
 */
package com.learn.myblog.coreCode.blogClassfiy.service;

import com.learn.myblog.common.pojo.Msg;

/**
 * @ClassName: BlogClassfiyService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月18日
 */

public interface BlogClassfiyService {
	
	/**
	 * 查询博客分类的博客数量
	 * 
	 * @return
	 */
	Msg slectClassfiyBlogNums();

	/**
	 * 查询所有博客分类
	 * 
	 * @return
	 */
	Msg slectBlogClassfiy();

}
