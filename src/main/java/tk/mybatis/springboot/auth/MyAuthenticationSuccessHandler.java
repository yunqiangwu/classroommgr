package tk.mybatis.springboot.auth;
  
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

import com.alibaba.druid.support.json.JSONUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

//MyAuthenticationSuccessHandler;




//	@RequestMapping(value = "/login/submit",method = {RequestMethod.GET,RequestMethod.POST})
//    public @ResponseBody Map<String, Object> loginPost(String username, String password,String code, HttpSession session) {
//		System.out.println(username+":"+password+":"+code);
//        Map<String, Object> map = new HashMap<>();
//
//        UserInfo user =  userInfoService.findByUserNameOne(username);
//
//        if(user==null){
//        	map.put("success", false);
//        	map.put("message", "用户名不存在");
//            return  map;
//        }
//
//        if (!user.getPassword().equals(password)) {
//        	map.put("success", false);
//        	map.put("message", "密码错误");
//            return  map;
//        }
//
//
//        System.out.println(session.getAttribute(CAPTCHA_KEY));
//        System.out.println(cache.get( session.getAttribute(CAPTCHA_KEY)+""));
//        ValueWrapper verify = cache.get( session.getAttribute(CAPTCHA_KEY));
//        if(verify==null || !code.equalsIgnoreCase(verify.get()+"")){
//        	map.put("success", false);
//        	map.put("message", "验证码错误！");
//            return  map;
//        }
//
//        // 设置session
//        session.setAttribute(USERINFO_KEY, user);
//        map.put("success", true);
//        map.put("message", "登录成功");
//        return map;
//    }





@Component
public class MyAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{

       @Override
       public void onAuthenticationSuccess(HttpServletRequest request,   
               HttpServletResponse response,    
               Authentication authentication) throws ServletException, IOException   
       {  
           //例1：不跳到XML设定的页面，而是直接返回json字符串  
           response.setCharacterEncoding("UTF-8");  
           response.setContentType("application/json");

           //        map.put("success", true);
//        map.put("message", "登录成功");
           Map respContent = new HashMap();
           respContent.put("success",true);
           respContent.put("message","登录成功");
           response.getWriter().println(JSONUtils.toJSONString(respContent));
           //例2：跳转到XML中设定的URL。其实已经没有定义这个class的意义
           //super.onAuthenticationSuccess(request, response, authentication);  
             
           //例3：自定义跳转到哪个URL  
           //http://cl315917525.iteye.com/blog/1768396  
       }


}    