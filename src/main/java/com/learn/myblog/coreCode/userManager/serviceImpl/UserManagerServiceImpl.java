/**
 * 
 */
package com.learn.myblog.coreCode.userManager.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.learn.myblog.common.bean.User;
import com.learn.myblog.common.mapper.UserExtendMapper;
import com.learn.myblog.common.mapper.UserMapper;
import com.learn.myblog.common.pojo.BootStrapTable;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.CommonUtils;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.coreCode.loginRegister.service.LoginRegisterService;
import com.learn.myblog.coreCode.userManager.service.UserManagerService;

/**
 * @ClassName: UserServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Service
public class UserManagerServiceImpl implements UserManagerService {

	@Autowired
	UserMapper userMapper;

	@Autowired
	UserExtendMapper userExtendMapper;

	@Autowired
	LoginRegisterService loginRegisterService;

	/**
	 * 获取用户列表
	 * 
	 * @param currentPage 当前页码
	 * @param pageSize    一次多少条
	 * @return
	 */
	@Override
	public BootStrapTable getUserList(int currentPage, int pageSize, String search) {
		currentPage = currentPage <= 0 ? 1 : currentPage;
		Page<User> page = new Page<User>();
		page.setSize(pageSize);
		page.setCurrent(currentPage);

		QueryWrapper<User> queryWrapper = new QueryWrapper<>();
		if (!"".equals(search)) {
			queryWrapper.like("userName", search);
		}
		queryWrapper.orderByDesc("createTime");
		userMapper.selectPage(page, queryWrapper);
		return BootStrapTable.createBootStrapTable(page);
	}

	/**
	 * 修改用户是否锁定
	 * 
	 * @param uuid   用户id
	 * @param isLock 是否锁定
	 * @return
	 */
	@Override
	public Msg updateUserLock(String uuid, Boolean isLock) {
		if (CommonUtils.getUserId().equals(uuid)) {
			return MsgUtils.getFailedMsg("不能禁用自己的账号。");
		}
		
		User user = userMapper.selectById(uuid);
		if (user == null) {
			return MsgUtils.getFailedMsg("没有对应用户。");
		}

		if (isLock) {
			user.setIsLock(1);
		} else {
			user.setIsLock(0);
		}
		int result = userMapper.updateById(user);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

}
