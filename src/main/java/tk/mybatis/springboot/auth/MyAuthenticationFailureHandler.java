package tk.mybatis.springboot.auth;

import com.alibaba.druid.support.json.JSONUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

//MyAuthenticationSuccessHandler;

/**
 * 验证失败返回结果处理
 */
@Component
public class MyAuthenticationFailureHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        //例1：不跳到XML设定的页面，而是直接返回json字符串
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Map respContent = new HashMap();
        respContent.put("success",false);
        respContent.put("message",exception.getMessage());
        response.getWriter().println(JSONUtils.toJSONString(respContent));

        //例2：跳转到XML中设定的URL。其实已经没有定义这个class的意义
        //super.onAuthenticationSuccess(request, response, authentication);

        //例3：自定义跳转到哪个URL
        //http://cl315917525.iteye.com/blog/1768396
    }
}