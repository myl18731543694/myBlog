/**
 * 
 */
package com.learn.myblog.common.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.learn.myblog.common.bean.Blog;
import com.learn.myblog.common.dto.BlogAndUserNickAndBlogClassfiy;

/**
 * @ClassName: BlogMapper
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Mapper
public interface BlogMapper extends BaseMapper<Blog> {

	/**
	 * 查询博客列表带用户名和博客分类名称 列表
	 * 
	 * @return
	 */
	IPage<BlogAndUserNickAndBlogClassfiy> selectBlogAndUserNickAndBlogClassfiyList(Page<BlogAndUserNickAndBlogClassfiy> page, @Param(Constants.WRAPPER) Wrapper<BlogAndUserNickAndBlogClassfiy> wrapper);
	
	/**
	 * 查询博客列表带用户名和博客分类名称 一个
	 * 
	 * @return
	 */
	BlogAndUserNickAndBlogClassfiy selectBlogAndUserNickAndBlogClassfiy(@Param(Constants.WRAPPER) Wrapper<BlogAndUserNickAndBlogClassfiy> wrapper);

}
