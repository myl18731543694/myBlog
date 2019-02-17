/**
 * 
 */
package com.learn.myblog.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.learn.myblog.common.bean.Blog;
import com.learn.myblog.common.dto.BlogClassfiyNums;

/**
 * @ClassName: BlogMapper
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Mapper
public interface BlogMapper extends BaseMapper<Blog> {

	List<BlogClassfiyNums> slectBlogClassfiyNums();
}
