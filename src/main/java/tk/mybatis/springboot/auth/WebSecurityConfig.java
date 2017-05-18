package tk.mybatis.springboot.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationDetailsSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.LoginUrlAuthenticationEntryPoint;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.web.cors.CorsUtils;
import tk.mybatis.springboot.conf.CaptchaConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)//允许进入页面方法前检验
@EnableConfigurationProperties({CaptchaConfig.class})
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private AuthenticationDetailsSource<HttpServletRequest, WebAuthenticationDetails> authenticationDetailsSource;
    @Autowired
    private MyAuthenticationSuccessHandler myAuthenticationSuccessHandler;
    @Autowired
    private MyAuthenticationFailureHandler myAuthenticationFailureHandler;
    @Autowired
    private MyAuthenticationEntryPoint myAuthenticationEntryPoint;
    @Autowired
    private MyLogoutSuccessHandler myLogoutSuccessHandler;
//    @Autowired
//    private MyCorsFilter myCorsFilter;


    @Override
    protected void configure(HttpSecurity http) throws Exception {


//        http.addFilter(myCorsFilter);
        http.rememberMe().rememberMeParameter("remember").tokenValiditySeconds(9000);
        http
                .authorizeRequests()
                .antMatchers("/favicon.ico",
                        "/student**",
                        "/teacher**",
                        "/get-csrf",
                        "/static/**",
                        "/captcha/getcaptcha").permitAll()
                .requestMatchers(CorsUtils::isPreFlightRequest).permitAll()
                .anyRequest().authenticated()
                .and().exceptionHandling()
                .authenticationEntryPoint(myAuthenticationEntryPoint).and()
                .formLogin()
//                .loginPage("/login")
                .successHandler(myAuthenticationSuccessHandler)
                .failureHandler(myAuthenticationFailureHandler)
                .authenticationDetailsSource(authenticationDetailsSource)
                .permitAll()
                .and()
                .logout()
                .logoutSuccessHandler(myLogoutSuccessHandler)
                .permitAll();
        http.csrf().disable();
    }


    @Autowired
    private MyAuthenticationProvider provider;//自定义验证
//    @Autowired
//    private UserDetailsService userDetailsService;//自定义用户服务

    @Autowired
    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        auth
//            .inMemoryAuthentication()
//                .withUser("admin").password("123456").roles("USER");
//        auth.authenticationProvider(provider);
//        auth.auth
        auth.authenticationProvider(provider);
    }


}