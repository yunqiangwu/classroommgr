package tk.mybatis.springboot.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Created by wayne on 2017/5/24.
 */
@Component
public class SpringBeanUtil implements ServletContextListener {

    // Spring应用上下文环境
    private static WebApplicationContext applicationContext;

    public static ServletContext getServletContext() {

        return applicationContext.getServletContext();
    }



    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    public static Object getBean(String beanId) throws BeansException {
        return applicationContext.getBean(beanId);
    }

    public static <T> T getBean(Class<T> requiredType) throws BeansException {
        return applicationContext.getBean(requiredType);
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        applicationContext = WebApplicationContextUtils.getWebApplicationContext(sce.getServletContext());
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}