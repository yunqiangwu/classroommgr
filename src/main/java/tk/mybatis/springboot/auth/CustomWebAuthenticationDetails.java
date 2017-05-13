package tk.mybatis.springboot.auth;

import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.web.util.WebUtils;
import tk.mybatis.springboot.StaticParams;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * 自定义增加验证是携带数据
 */

public class CustomWebAuthenticationDetails extends WebAuthenticationDetails {
    /**
     *
     */
    private final String token;
    private final String cookieCaptchaKey;

    public CustomWebAuthenticationDetails(HttpServletRequest request) {
        super(request);
        token = request.getParameter("code");
        Cookie cookie = WebUtils.getCookie(request, StaticParams.CAPTCHA_KEY);
        if(cookie!=null){
            cookieCaptchaKey = cookie.getValue();
        }else{
            cookieCaptchaKey =null;
        }
    }

    public String getToken() {
        return token;
    }
    public String getCaptchaKey() {
        return cookieCaptchaKey;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString()).append("; Token: ").append(this.getToken());
        return sb.toString();
    }
}
