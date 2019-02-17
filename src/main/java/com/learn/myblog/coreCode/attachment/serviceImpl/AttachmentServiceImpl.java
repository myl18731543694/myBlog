/**
 * 
 */
package com.learn.myblog.coreCode.attachment.serviceImpl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.time.LocalDateTime;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.learn.myblog.common.bean.Attachment;
import com.learn.myblog.common.mapper.AttamentMapper;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.CommonUtils;
import com.learn.myblog.common.utils.CutImgUtils;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.coreCode.attachment.service.AttachmentService;

/**
 * @ClassName: AttachmentServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月17日
 */
@Service
public class AttachmentServiceImpl implements AttachmentService {

	String path = "E:\\myblogupload";
	String outPath = "E:\\myblogupload\\cut";

	@Autowired
	HttpServletResponse response;

	@Autowired
	AttamentMapper attamentMapper;

	/**
	 * 上传裁剪图片
	 * 
	 * @param file
	 * @param cropData
	 * @return
	 */
	@Override
	public Msg uploadImag(MultipartFile file, String cropData) {
		try {
			String fileOldName = file.getOriginalFilename();
			String oldFilePath = saveFile(file);
			this.saveFileToDb(oldFilePath, fileOldName);

			// 把图片写入创建的文件
			JSONObject jsonObject = JSONObject.parseObject(cropData);
			int x = new BigDecimal(jsonObject.getString("x")).intValue();
			int y = new BigDecimal(jsonObject.getString("y")).intValue();
			int w = new BigDecimal(jsonObject.getString("w")).intValue();
			int h = new BigDecimal(jsonObject.getString("h")).intValue();

			String newFilePath = CutImgUtils.cutPic(oldFilePath, outPath, x, y, w, h);
			if (!"".equals(newFilePath)) {
				String uuid = this.saveFileToDb(newFilePath, fileOldName);
				return MsgUtils.getSuccessMsg(uuid);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return MsgUtils.getFailedMsg("上传文件时出错了。");
	}

	/**
	 * 上传文件保存
	 * 
	 * @param file
	 * @throws IOException
	 * @return 生成的文件路径。例如E:\myblogupload\321231\11.jpg
	 */
	public String saveFile(MultipartFile file) throws IOException {
		// 获取文件后缀名字
		String uploadFileName = FilenameUtils.getBaseName(file.getOriginalFilename());
		String postfix = FilenameUtils.getExtension(file.getOriginalFilename());

		String fileName = uploadFileName + CommonUtils.getUuid() + "." + postfix;

		// 检查文件路径是否存在
		File filePath = new File(path);
		if (!filePath.exists()) {
			filePath.mkdirs();
		}

		File targetFile = new File(path, fileName);
		// 检查文件是否存在 不存在则创建文件
		if (!targetFile.exists()) {
			targetFile.createNewFile();
		}
		file.transferTo(targetFile);
		return targetFile.getPath();
	}

	/**
	 * 根据id获取附件
	 * 
	 * @param uuid
	 * @return
	 */
	@Override
	public void getFileById(String uuid) {
		Attachment attachment = attamentMapper.selectById(uuid);
		// 没有该条记录
		if (attachment == null) {
			return;
		}

		// 拿到文件路径
		String path = attachment.getFilePath();
		File file = new File(path);
		if (!file.exists()) {
			// 文件不存在
			return;
		}

		// 设置返回内容格式
		String fileType = attachment.getFileType();
		response.setContentType(fileType);

		InputStream in = null;
		OutputStream os = null;
		try {
			in = new FileInputStream(path);
			os = response.getOutputStream();
			byte[] b = new byte[1024];
			while (in.read(b) != -1) {
				os.write(b);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (in != null) {
					in.close();
				}
				if (os != null) {
					os.flush();
					os.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 根据文件路径保存到数据库
	 * 
	 * @param filePath    文件路径
	 * @param fileOldName 文件上传前的名字
	 */
	protected String saveFileToDb(String filePath, String fileOldName) {
		// 拿到文件路径
		File file = new File(filePath);
		if (!file.exists()) {
			// 文件不存在
			return "";
		}

		String fileName = file.getName();
		String fileType = FilenameUtils.getExtension(fileName);
		long fileSize = file.length();

		String uuid = CommonUtils.getUuid();
		Attachment attachment = new Attachment();
		attachment.setUuid(uuid);
		attachment.setCreateTime(LocalDateTime.now());
		attachment.setUserId(CommonUtils.getUserId());
		attachment.setIsDelete(0);
		attachment.setFileName(fileName);
		attachment.setFilePath(filePath);
		attachment.setFileSize(new BigDecimal(fileSize + ""));
		attachment.setFileType(fileType);
		attachment.setFileOldName(fileOldName);
		attamentMapper.insert(attachment);
		
		return uuid;
	}

}
