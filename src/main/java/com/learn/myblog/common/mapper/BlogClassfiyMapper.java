/**
 * 
 */
package com.learn.myblog.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.learn.myblog.common.bean.BlogClassfiy;
import com.learn.myblog.common.dto.BlogClassfiyNums;

/**  
 * @ClassName: BlogClassfiyMapper  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2019年2月18日    
 */
@Mapper
public interface BlogClassfiyMapper extends BaseMapper<BlogClassfiy>{
	/**
	 * 查询每个博客分类的博客数量
	 * 
	 * @return
	 */
	List<BlogClassfiyNums> slectClassfiyBlogNums();
}
