package tk.mybatis.springboot.websocket;

import org.springframework.context.ApplicationListener;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.web.socket.messaging.SessionConnectedEvent;
import tk.mybatis.springboot.util.SpringBeanUtil;

import javax.servlet.ServletContext;
import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

public class MySessionConnectedEvent implements ApplicationListener<SessionConnectedEvent> {

    @SuppressWarnings("unchecked")
    @Override
    public void onApplicationEvent(SessionConnectedEvent event) {

        StompHeaderAccessor headers = StompHeaderAccessor.wrap(event.getMessage()); //获取消息头
        String name = headers.getUser().getName(); //获取账号名
        ServletContext sc = SpringBeanUtil.getServletContext(); //SpringBeanUtil的作用就是获取ServletContext
        Object obj = sc.getAttribute("users");
        Map<String, Principal> users = (Map<String, Principal>) (obj == null ? new HashMap<String,Principal>() : obj);
        users.put(name, headers.getUser());

        sc.setAttribute("users", users); //将用户信息已map格式放存放起来

    }

}