/**
 * 
 */
package com.learn.myblog.coreCode.blogManager.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.learn.myblog.common.bean.Blog;
import com.learn.myblog.common.mapper.BlogMapper;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.CommonUtils;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.coreCode.blogManager.service.BlogManagerService;

/**
 * @ClassName: BlogManagerServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Service
public class BlogManagerServiceImpl implements BlogManagerService {

	@Autowired
	BlogMapper blogMapper;

	/**
	 * 发布博客
	 * 
	 * @param blog
	 * @return
	 */
	@Override
	public Msg addBlog(Blog blog) {
		blog.setUuid(CommonUtils.getUuid());
		blog.setUserId(CommonUtils.getUserId());
		blog.setIsDelete(0);
		int result = blogMapper.insert(blog);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

	/**
	 * 修改博客
	 * 
	 * @param blog
	 * @return
	 */
	@Override
	public Msg editBlog(Blog blog) {
		Blog dbBlog = blogMapper.selectById(blog.getUuid());
		if (dbBlog == null) {
			return MsgUtils.getFailedMsg("没有该博客。");
		}
		
		String userId = CommonUtils.getUserId();
		if (!userId.equals(dbBlog.getUserId())) {
			return MsgUtils.getFailedMsg("该博客不是您发布的禁止修改。");
		}
		
		if (dbBlog.getIsDelete() == 1) {
			return MsgUtils.getFailedMsg("该博客已被删除。");
		}
		dbBlog.setBlogTitle(blog.getBlogTitle());
		dbBlog.setBlogContent(blog.getBlogContent());
		int result = blogMapper.insert(dbBlog);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

	/**
	 * 删除博客
	 * 
	 * @param uuid 博客id
	 */
	@Override
	public Msg deleteBlog(String uuid) {
		Blog dbBlog = blogMapper.selectById(uuid);
		if (dbBlog == null) {
			return MsgUtils.getFailedMsg("没有该博客。");
		}
		
		String userId = CommonUtils.getUserId();
		if (!userId.equals(dbBlog.getUserId())) {
			return MsgUtils.getFailedMsg("该博客不是您发布的禁止删除。");
		}
		
		if (dbBlog.getIsDelete() == 1) {
			return MsgUtils.getFailedMsg("该博客已被删除。");
		}
		
		dbBlog.setIsDelete(1);
		int result = blogMapper.insert(dbBlog);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

	/**
	 * 获取指定博客信息
	 * 
	 * @param blogId 指定的博客id
	 */
	@Override
	public Msg getBlog(String blogId) {
		QueryWrapper<Blog> queryWrapper = new QueryWrapper<Blog>();
		queryWrapper.eq("uuid", blogId);
		queryWrapper.ne("isDelete", 1);
		Blog blog = blogMapper.selectOne(queryWrapper);
		return blog != null ? MsgUtils.getSuccessMsg(blog) : MsgUtils.getFailedMsg();
	}

}
