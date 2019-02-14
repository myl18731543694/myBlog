/**
 * 
 */
package com.learn.myblog.common.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.learn.myblog.common.bean.User;

/**  
 * @ClassName: UserMapper  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2018年12月8日    
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

	public void testDelete();
}
