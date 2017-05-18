package tk.mybatis.springboot.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.Collection;

/**
 * 用户登录验证
 */
@Component
public class MyAuthenticationProvider implements AuthenticationProvider {

    @Autowired
    private MyUserDetailsService userService;
    @Autowired
    private RedisTemplate<String, String> redisTemplate;
    @Value("${captcha.enable}") private String captchaIsEnable;
    /**
     * 自定义验证方式
     */
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {

// 要开验证码去掉注释
        if("true".equals(captchaIsEnable)) {
            CustomWebAuthenticationDetails details = (CustomWebAuthenticationDetails) authentication.getDetails();  // 如上面的介绍，这里通过authentication.getDetails()获取详细信息
             System.out.println(details); //details.getRemoteAddress(); details.getSessionId(); details.getToken();
            // 下面是验证逻辑，验证通过则返回UsernamePasswordAuthenticationToken，
            // 否则，可直接抛出错误（AuthenticationException的子类，在登录验证不通过重定向至登录页时可通过

            if(details.getCaptchaKey()==null){
                throw new BadCredentialsException("非法登录.");
            }

            String captcha = redisTemplate.opsForValue().get(details.getCaptchaKey());
            if(details.getToken() == null||!details.getToken().equals(captcha)){
                throw new BadCredentialsException("验证吗错误.");
            }
        }

        String username = authentication.getName();
        String password = (String) authentication.getCredentials();
        MyUserDetails user = (MyUserDetails) userService.loadUserByUsername(username);
        if(user == null){
            throw new BadCredentialsException("用户未找到.");
        }

        //加密过程在这里体现
        if (!password.equals(user.getPassword())) {
            throw new BadCredentialsException("密码错误.");
        }

        Collection<? extends GrantedAuthority> authorities = user.getAuthorities();
        return new UsernamePasswordAuthenticationToken(user, password, authorities);
    }

    @Override
    public boolean supports(Class<?> arg0) {
        return true;
    }

}