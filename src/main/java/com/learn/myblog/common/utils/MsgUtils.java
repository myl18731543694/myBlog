/**
 * 
 */
package com.learn.myblog.common.utils;

import java.util.List;

import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import com.learn.myblog.common.enums.CodeEnmu;
import com.learn.myblog.common.pojo.Msg;

/**
 * @ClassName: MsgUtils
 * @Description: 消息结果服务类，采用饿汉模式维护
 * @author 孟轶龙
 * @date 2018年12月8日
 */
public class MsgUtils {
	private static ThreadLocal<Msg> msgThreadLocal = new ThreadLocal<Msg>() {
		/**
		 * ThreadLocal没有被当前线程赋值时或当前线程刚调用remove方法后调用get方法，返回此方法值
		 */
		@Override
		protected Msg initialValue() {
			return new Msg();
		}
	};

	/**
	 * 防止被集成
	 */
	private MsgUtils() {

	}

	/**
	 * 获取 Msg 的实例
	 * 
	 * @param codeEnmu 结果代码
	 * @param data     返回的数据
	 * @return Msg
	 */
	protected static <T> Msg getInstance(CodeEnmu codeEnmu, T data) {
		Msg msg = newMsg();
		msg.setCode(codeEnmu.value());
		msg.setData(data);
		return msg;
	}

	/**
	 * 获取成功 Msg
	 * 
	 * @param data 返回前段的数据
	 * @return
	 */
	public static <T> Msg getSuccessMsg(T data) {
		Msg msg = newMsg();
		msg.setCode(CodeEnmu.SUCCESS.value());
		msg.setData(data);
		return msg;
	}

	/**
	 * 获取成功 Msg
	 * 
	 * @return
	 */
	public static Msg getSuccessMsg() {
		return getSuccessMsg("成功");
	}

	/**
	 * 获取失败 Msg
	 * 
	 * @param data 返回前段的数据
	 * @return
	 */
	public static <T> Msg getFailedMsg(T data) {
		Msg msg = newMsg();
		msg.setCode(CodeEnmu.FAILED.value());
		msg.setData(data);
		return msg;
	}

	/**
	 * 获取失败 Msg
	 * 
	 * @return
	 */
	public static Msg getFailedMsg() {
		return getFailedMsg("失败");
	}

	/**
	 * 获取失败 Msg
	 * 
	 * @return
	 */
	public static Msg getFailedMsg(BindingResult BindingResult) {
		StringBuilder errorMsg  = new StringBuilder();
		List<ObjectError> listErrors = BindingResult.getAllErrors();
		for (ObjectError item : listErrors) {
			errorMsg.append(item.getDefaultMessage());
		}
		return getFailedMsg(errorMsg);
	}

	private static Msg newMsg() {
		return msgThreadLocal.get();
	}

}
