//package tk.mybatis.springboot.interceptor;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.stereotype.Component;
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.sun.tools.classfile.InnerClasses_attribute.Info;
//
//import tk.mybatis.springboot.controller.LoginController;
//
////@Component
//public class UserSecurityInterceptor implements HandlerInterceptor {
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//    	String requestURI = request.getRequestURI();
//    	System.out.println(request.getSession().getAttribute(LoginController.USERINFO_KEY));
//		if(requestURI.contains("/static/") || requestURI.contains("/login")|| requestURI.contains("/captcha-image")){
//    		return true;
//    	}
//        Object obj = request.getSession().getAttribute(LoginController.USERINFO_KEY);
//        if (obj == null) {
//            response.sendRedirect(request.getContextPath() + "/login");
//            return false;
//        }
//        return true;
//    }
//
//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
//    }
//
//    @Override
//    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
//    }
//}