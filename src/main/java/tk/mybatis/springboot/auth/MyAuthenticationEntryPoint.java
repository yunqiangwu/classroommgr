package tk.mybatis.springboot.auth;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint;
import org.springframework.security.web.util.RedirectUrlBuilder;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wayne on 2017/5/14.
 */
@Component
public class MyAuthenticationEntryPoint extends LoginUrlAuthenticationEntryPoint {


    public MyAuthenticationEntryPoint() {
        super("/login");
    }

    @Override
    public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {

        if(httpServletRequest.getMethod().equals("POST")){
            httpServletResponse.setStatus(401);
            //返回json形式的错误信息
            httpServletResponse.setCharacterEncoding("UTF-8");
            httpServletResponse.setContentType("application/json");

            httpServletResponse.getWriter().println("{\"ok\":0,\"msg\":\""+e.getLocalizedMessage()+"\"}");
            httpServletResponse.getWriter().flush();
        }else {
            String returnUrl = buildHttpReturnUrlForRequest(httpServletRequest);
            httpServletRequest.getSession().setAttribute("ru", returnUrl);
//            httpServletRequest.get
//            httpServletRequest.getSession().setAttribute("");
            super.commence(httpServletRequest,httpServletResponse,e);
        }
    }

    protected String buildHttpReturnUrlForRequest(HttpServletRequest request)
            throws IOException, ServletException {
        RedirectUrlBuilder urlBuilder = new RedirectUrlBuilder();
        urlBuilder.setScheme(request.getScheme());
        urlBuilder.setServerName(request.getServerName());
        urlBuilder.setPort(request.getServerPort());
        urlBuilder.setContextPath(request.getContextPath());
        urlBuilder.setServletPath(request.getServletPath());
        urlBuilder.setPathInfo(request.getPathInfo());
        urlBuilder.setQuery(request.getQueryString());
        return urlBuilder.getUrl();
    }
}
