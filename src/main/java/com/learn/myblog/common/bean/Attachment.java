/**
 * 
 */
package com.learn.myblog.common.bean;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;

/**
 * @ClassName: Attachment
 * @Description: 上传附件实体类
 * @author 孟轶龙
 * @date 2019年2月17日
 */
@TableName("attachment")
@Data
public class Attachment {
	// 主键
	@TableId
	private String uuid;

	// 文件名称
	private String fileName;
	
	// 文件上传之前的名字
	private String fileOldName;

	// 文件路径
	private String filePath;

	// 文件类型
	private String fileType;

	// 上传用户
	private String userId;

	// 文件大小，字节
	private BigDecimal fileSize;

	// 上传时间
	private LocalDateTime createTime;

	// 是否删除。1：是
	private int isDelete;

	// 删除时间
	private LocalDateTime deleteTime;

}
