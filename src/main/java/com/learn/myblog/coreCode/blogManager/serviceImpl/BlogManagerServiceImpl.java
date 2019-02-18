/**
 * 
 */
package com.learn.myblog.coreCode.blogManager.serviceImpl;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.learn.myblog.common.bean.Blog;
import com.learn.myblog.common.dto.BlogAndUserNickAndBlogClassfiy;
import com.learn.myblog.common.dto.BlogClassfiyNums;
import com.learn.myblog.common.mapper.BlogMapper;
import com.learn.myblog.common.pojo.BootStrapTable;
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
		blog.setCreateTime(LocalDateTime.now());
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
		dbBlog.setBlogIntro(blog.getBlogIntro());
		dbBlog.setBlogImage(blog.getBlogImage());
		int result = blogMapper.updateById(dbBlog);
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
		int result = blogMapper.updateById(dbBlog);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

	/**
	 * 获取指定博客信息
	 * 
	 * @param blogId 指定的博客id
	 */
	@Override
	public Msg getBlog(String blogId) {
		QueryWrapper<BlogAndUserNickAndBlogClassfiy> queryWrapper = new QueryWrapper<BlogAndUserNickAndBlogClassfiy>();
		queryWrapper.eq("a.uuid", blogId);
		queryWrapper.ne("a.isDelete", 1);
		BlogAndUserNickAndBlogClassfiy blog = blogMapper.selectBlogAndUserNickAndBlogClassfiy(queryWrapper);
		return blog != null ? MsgUtils.getSuccessMsg(blog) : MsgUtils.getFailedMsg("没有找到对应博客，可能已经被删除。");
	}

	/**
	 * 获取博客列表
	 * 
	 * @param currentPage 当前页码
	 * @param pageSize    一次多少条
	 * @return
	 */
	@Override
	public BootStrapTable getBlogList(int currentPage, int pageSize, String search, String blogClassfiy) {
		currentPage = currentPage <= 0 ? 1 : currentPage;
		Page<BlogAndUserNickAndBlogClassfiy> page = new Page<>();
		page.setSize(pageSize);
		page.setCurrent(currentPage);

		QueryWrapper<BlogAndUserNickAndBlogClassfiy> queryWrapper = new QueryWrapper<>();
		queryWrapper.ne("a.isDelete", 1);
		if (!"".equals(search)) {
			queryWrapper.like("a.blogTitle", search);
		}
		if (!"".equals(blogClassfiy)) {
			queryWrapper.eq("a.blogClassfiy", blogClassfiy);
		}
		queryWrapper.orderByDesc("a.createTime");
		
		blogMapper.selectBlogAndUserNickAndBlogClassfiyList(page, queryWrapper);
		return BootStrapTable.createBootStrapTable(page);

	}

	/**
	 * 查询博客分类的博客数量
	 * 
	 * @return
	 */
	@Override
	public Msg slectBlogClassfiyNums() {
		List<BlogClassfiyNums> list = blogMapper.slectBlogClassfiyNums();
		return MsgUtils.getSuccessMsg(list);
	}

}
