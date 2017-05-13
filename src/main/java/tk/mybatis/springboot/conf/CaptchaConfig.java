package tk.mybatis.springboot.conf;

import java.util.Properties;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;

import tk.mybatis.springboot.service.ConcurrentMapCacheManager;

@Configuration
@ConfigurationProperties(prefix = "captcha")
public class CaptchaConfig {
      
  
    @Bean(name="captchaProducer")  
    public DefaultKaptcha getKaptchaBean(){  
        DefaultKaptcha defaultKaptcha=new DefaultKaptcha();  
        Properties properties=new Properties();  
        properties.setProperty("kaptcha.border", "yes");  
        properties.setProperty("kaptcha.border.color", "105,179,90");  
        properties.setProperty("kaptcha.textproducer.font.color", "blue");  
        properties.setProperty("kaptcha.image.width", "125");  
        properties.setProperty("kaptcha.image.height", "45");  
        properties.setProperty("kaptcha.session.key", "code");  
        properties.setProperty("kaptcha.textproducer.char.length", "4");  
        properties.setProperty("kaptcha.textproducer.font.names", "宋体,楷体,微软雅黑");          
        Config config=new Config(properties);  
        defaultKaptcha.setConfig(config);  
        return defaultKaptcha;  
    }  
    
    @Bean(name="cacheManager")  
    public ConcurrentMapCacheManager getConcurrentMapCacheBean(){  
    	ConcurrentMapCacheManager cacheManager=new ConcurrentMapCacheManager();  
        return cacheManager;  
    }


    private String enable;


    public Boolean isEnable() {
        return "true".equals(enable+"");
    }

    public void setEnable(String enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        return "  Captcha: "+this.isEnable();
    }
}