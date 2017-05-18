package tk.mybatis.springboot.auth;

import com.alibaba.druid.support.json.JSONUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by wayne on 2017/5/14.
 */
@Component
public class MyLogoutSuccessHandler implements org.springframework.security.web.authentication.logout.LogoutSuccessHandler {


    @Override
    public void onLogoutSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {

        Assert.notNull(httpServletRequest, "HttpServletRequest required");
            HttpSession session = httpServletRequest.getSession(false);
            if (session != null) {
//                logger.debug("Invalidating session: " + session.getId());
                session.invalidate();
            }

//        if(clearAuthentication) {
            SecurityContext context = SecurityContextHolder.getContext();
            context.setAuthentication(null);
//        }

        SecurityContextHolder.clearContext();

        if(httpServletRequest.getMethod().equals("POST")){
            httpServletResponse.setCharacterEncoding("UTF-8");
            httpServletResponse.setContentType("application/json");
            Map respContent = new HashMap();
            respContent.put("success",true);
            respContent.put("message","注销成功");
            httpServletResponse.getWriter().println(JSONUtils.toJSONString(respContent));
        }else{
            httpServletResponse.sendRedirect("/login?logout");
        }

    }

}
