/**
 * 
 */
package com.learn.myblog.coreCode.attachment.service;

import org.springframework.web.multipart.MultipartFile;

import com.learn.myblog.common.pojo.Msg;

/**
 * @ClassName: AttachmentService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月17日
 */

public interface AttachmentService {

	/**
	 * 上传裁剪图片
	 * 
	 * @param file
	 * @param cropData
	 * @return
	 */
	Msg uploadImag(MultipartFile file, String cropData);

	/**
	 * 根据id获取附件
	 * 
	 * @param uuid
	 * @return
	 */
	void getFileById(String uuid);

}
