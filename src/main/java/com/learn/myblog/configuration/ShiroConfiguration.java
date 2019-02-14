/**
 * 
 */
package com.learn.myblog.configuration;

import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;

import java.util.LinkedHashMap;

import org.apache.shiro.cache.MemoryConstrainedCacheManager;
import org.apache.shiro.mgt.SecurityManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.learn.myblog.coreCode.shiro.MyShiroRealm;

/**
 * @ClassName: ShiroConfiguration
 * @Description: shiro配置相关
 * @author 孟轶龙
 * @date 2019年1月24日
 */
@Configuration
public class ShiroConfiguration {

	@Bean("shiroFilter")
	public ShiroFilterFactoryBean shiroFilter(SecurityManager manager) {
		ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
		bean.setSecurityManager(manager);

		bean.setLoginUrl("/loginRegister/login");// 提供登录到url
//		bean.setUnauthorizedUrl("/unauthorized");

		/*
		 * 可以看DefaultFilter,这是一个枚举类，定义了很多的拦截器authc,anon等分别有对应的拦截器
		 */
		LinkedHashMap<String, String> filterChainDefinitionMap = new LinkedHashMap<String, String>();
		// 静态资源全部放开
		filterChainDefinitionMap.put("/loginRegister/**", "anon");
		// 静态资源全部放开
		filterChainDefinitionMap.put("/websiteManagement/**", "anon");
		filterChainDefinitionMap.put("/", "authc");
//		filterChainDefinitionMap.put("/index", "authc");// 代表着前面的url路径，用后面指定的拦截器进行拦截
		filterChainDefinitionMap.put("/login", "anon");
		filterChainDefinitionMap.put("/loginUser", "anon");
		filterChainDefinitionMap.put("/admin", "roles[admin]");// admin的url，要用角色是admin的才可以登录,对应的拦截器是RolesAuthorizationFilter
		filterChainDefinitionMap.put("/edit", "perms[edit]");// 拥有edit权限的用户才有资格去访问
		filterChainDefinitionMap.put("/druid/**", "anon");// 所有的druid请求，不需要拦截，anon对应的拦截器不会进行拦截
		filterChainDefinitionMap.put("/**", "anon");// 所有的路径都拦截，被UserFilter拦截，这里会判断用户有没有登陆
		bean.setFilterChainDefinitionMap(filterChainDefinitionMap);// 设置一个拦截器链

		return bean;
	}

	/**
	 * 注入一个securityManager 原本以前我们是可以通过ini配置文件完成的，代码如下：
	 * 1、获取SecurityManager工厂，此处使用Ini配置文件初始化SecurityManager Factory<SecurityManager>
	 * factory = new IniSecurityManagerFactory("classpath:shiro.ini");
	 * 2、得到SecurityManager实例 并绑定给SecurityUtils SecurityManager securityManager =
	 * factory.getInstance(); SecurityUtils.setSecurityManager(securityManager);
	 */
	@Bean("securityManager")
	public SecurityManager securityManager(MyShiroRealm authRealm) {
		// 这个DefaultWebSecurityManager构造函数,会对Subject，realm等进行基本的参数注入
		DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
		manager.setRealm(authRealm);// 往SecurityManager中注入Realm，代替原本的默认配置
		return manager;
	}

	/**
	 * 自定义的Realm
	 * 
	 * @param matcher
	 * @return
	 */
	@Bean("authRealm")
	public MyShiroRealm authRealm() {
		MyShiroRealm authRealm = new MyShiroRealm();
		// 这边可以选择是否将认证的缓存到内存中，现在有了这句代码就将认证信息缓存的内存中了
		authRealm.setCacheManager(new MemoryConstrainedCacheManager());
		return authRealm;
	}

	/**
	 * 以下AuthorizationAttributeSourceAdvisor,
	 * DefaultAdvisorAutoProxyCreator两个类是为了支持shiro注解
	 */
	@Bean
	public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
		AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
		advisor.setSecurityManager(securityManager);
		return advisor;
	}

	@Bean
	public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
		DefaultAdvisorAutoProxyCreator creator = new DefaultAdvisorAutoProxyCreator();
		creator.setProxyTargetClass(true);
		return creator;
	}
}
