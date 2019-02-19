/**
 * 
 */
package com.learn.myblog.coreCode.blogClassfiy.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learn.myblog.common.bean.BlogClassfiy;
import com.learn.myblog.common.dto.BlogClassfiyNums;
import com.learn.myblog.common.mapper.BlogClassfiyMapper;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.coreCode.blogClassfiy.service.BlogClassfiyService;

/**
 * @ClassName: BlogClassfiyServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月18日
 */
@Service
public class BlogClassfiyServiceImpl implements BlogClassfiyService {

	@Autowired
	BlogClassfiyMapper blogClassfiyMapper;

	/**
	 * 查询博客分类的博客数量
	 * 
	 * @return
	 */
	@Override
	public Msg slectClassfiyBlogNums() {
		List<BlogClassfiyNums> list = blogClassfiyMapper.slectClassfiyBlogNums();
		return MsgUtils.getSuccessMsg(list);
	}

	/**
	 * 查询博客分类
	 * 
	 * @return
	 */
	@Override
	public Msg slectBlogClassfiy() {
		List<BlogClassfiy> list = blogClassfiyMapper.selectList(null);
		return MsgUtils.getSuccessMsg(list);
	}

}
