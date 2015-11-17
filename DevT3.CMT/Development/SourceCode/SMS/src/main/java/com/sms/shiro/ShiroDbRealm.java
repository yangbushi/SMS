package com.sms.shiro;

//import java.io.Serializable;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import javax.annotation.PostConstruct;

//import org.apache.commons.lang3.StringUtils;
//import org.apache.shiro.SecurityUtils;
//import org.apache.shiro.authc.AuthenticationException;
//import org.apache.shiro.authc.AuthenticationInfo;
//import org.apache.shiro.authc.AuthenticationToken;
//import org.apache.shiro.authc.SimpleAuthenticationInfo;
//import org.apache.shiro.authc.UsernamePasswordToken;
//import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
//import org.apache.shiro.authz.AuthorizationInfo;
//import org.apache.shiro.authz.SimpleAuthorizationInfo;
//import org.apache.shiro.cache.Cache;
//import org.apache.shiro.realm.AuthorizingRealm;
//import org.apache.shiro.subject.PrincipalCollection;
//import org.apache.shiro.subject.SimplePrincipalCollection;
//import org.apache.shiro.util.ByteSource;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import com.tynet.interceptor.BaseInterceptor;
//import com.tynet.model.log.SysLoginLog;
//import com.tynet.model.sys.SysMenu;
//import com.tynet.model.sys.SysUser;
//import com.tynet.service.log.SysLoginLogService;
//import com.tynet.service.sys.SystemService;
//import com.tynet.service.sys.UserService;
//import com.tynet.service.zndz.GhHospitalService;
//import com.tynet.util.Encodes;
//import com.tynet.utils.Const;
//import com.tynet.utils.UserUtils;

/**
 * 自实现用户与权限查询. 演示关系，密码用明文存储，因此使用默认 的SimpleCredentialsMatcher.
 */
//public class ShiroDbRealm extends AuthorizingRealm {
public class ShiroDbRealm{
//	@Autowired
//	private SystemService systemService;
//	@Autowired
//	private UserService userService;
//	@Autowired
//	private GhHospitalService ghHospitalService;
//	@Autowired
//	private SysLoginLogService sysLoginLogService;
//	private static final Logger logger = LoggerFactory.getLogger(ShiroDbRealm.class); 
//	
//	@Override
//	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
//		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
//		SysUser user = userService.findUserByLoginName(token.getUsername());
//		if (user != null) {
//			byte[] salt = Encodes.decodeHex(user.getPassword().substring(0, 16));
//			return new SimpleAuthenticationInfo(new ShiroUser(user), user.getPassword().substring(16), ByteSource.Util.bytes(salt), getName());
//		} else {
//			return null;
//		}
//	}
//
//	/**
//	 * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用
//	 */
//	@Override
//	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
//		ShiroUser shiroUser = (ShiroUser) getAvailablePrincipal(principals);
//		SysUser user = userService.findUserByLoginName(shiroUser.getLoginName());
//		if (user != null) {
//			UserUtils.putCache("user", user);
//			SecurityUtils.getSubject().getSession().setAttribute(Const.USER, user);
//			String rids="";
//		    for (Long long1 : user.getRoleIdList()) {
//		    	rids=rids+long1+",";
//			}
//		    rids= rids.substring(0, rids.length()-1);
//			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
//			List<SysMenu> list = systemService.findMenuByUserId();
//			for (SysMenu menu : list) {
//				if (StringUtils.isNotBlank(menu.getPermission())) {
//					// 添加基于Permission的权限信息
//					info.addStringPermission(menu.getPermission());
//				}
//			}
//			if(UserUtils.isAdmin(user)){
//				info.addRole("admin");
//			}			
//			// 更新登录IP和时间
//			userService.updateUserLoginInfo(user.getId());
//			sysLoginLogService.insert(user);
//			logger.info(user.getLoginName()+"登陆了管理平台");
//			return info;
//		} else {
//			return null;
//		}
//	}
//
//	/**
//	 * 设定密码校验的Hash算法与迭代次数
//	 */
//	@PostConstruct
//	public void initCredentialsMatcher() {
//		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(UserService.HASH_ALGORITHM);
//		matcher.setHashIterations(UserService.HASH_INTERATIONS);
//		setCredentialsMatcher(matcher);
//	}
//
//	/**
//	 * 清空用户关联权限认证，待下次使用时重新加载
//	 */
//	public void clearCachedAuthorizationInfo(String principal) {
//		SimplePrincipalCollection principals = new SimplePrincipalCollection(principal, getName());
//		clearCachedAuthorizationInfo(principals);
//		UserUtils.removeCache("user");
//	}
//
//	/**
//	 * 清空所有关联认证
//	 */
//	public void clearAllCachedAuthorizationInfo() {
//		Cache<Object, AuthorizationInfo> cache = getAuthorizationCache();
//		if (cache != null) {
//			for (Object key : cache.keys()) {
//				cache.remove(key);
//			}
//		}		
//	}
//
//	/**
//	 * 授权用户信息
//	 */
//	public static class ShiroUser implements Serializable {
//
//		private static final long serialVersionUID = 1L;
//
//		private Long id;
//		private String loginName;
//		private String name;
//		private boolean isAdmin;
//
//		private Map<String, Object> cacheMap;
//
//		public ShiroUser(SysUser user) {
//			this.id = user.getId();
//			this.loginName = user.getLoginName();
//			this.name = user.getName();
//			this.isAdmin = "1".equals(user.getIsAdmin());
//		}
//
//		public Long getId() {
//			return id;
//		}
//
//		public String getLoginName() {
//			return loginName;
//		}
//
//		public String getName() {
//			return name;
//		}
//
//		public Map<String, Object> getCacheMap() {
//			if (cacheMap == null) {
//				cacheMap = new HashMap<String, Object>();
//			}
//			return cacheMap;
//		}
//
//		public boolean isAdmin() {
//			return isAdmin;
//		}
//
//		public void setAdmin(boolean isAdmin) {
//			this.isAdmin = isAdmin;
//		}
//	}
}
