/**
 * 
 */
package com.learn.myblog.coreCode.attachment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.coreCode.attachment.service.AttachmentService;

/**
 * @ClassName: UploadImage
 * @Description: 上传图片帮助类
 * @author 孟轶龙
 * @date 2019年2月16日
 */
@Controller
@RequestMapping("/attachment")
public class AttachmentController {
	@Autowired
	AttachmentService attachmentService;

	/**
	 * 上传图片url
	 * 
	 * @param file
	 * @param cropData
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/uploadImag")
	@ResponseBody
	public Msg uploadImag(@RequestParam(value = "file") MultipartFile file, String cropData) throws Exception {
		return attachmentService.uploadImag(file, cropData);
	}

	/**
	 * 根据id 获取图片
	 * 
	 * @param uuid
	 */
	@RequestMapping("/getFileById")
	public void getFileById(@RequestParam String uuid) {
		attachmentService.getFileById(uuid);
	}

}
