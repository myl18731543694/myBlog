/**
 * 
 */
package com.learn.myblog.common.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.learn.myblog.common.bean.WebsiteManagementMenu;

/**  
 * @ClassName: WebsiteManagementMenuMapper  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2019年1月24日    
 */
@Mapper
public interface WebsiteManagementMenuMapper extends BaseMapper<WebsiteManagementMenu> {

}
