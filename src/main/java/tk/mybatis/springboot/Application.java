package tk.mybatis.springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @author liuzh
 * @since 2015-12-12 18:22
 */
@Controller
@EnableWebMvc
@EnableAsync
@SpringBootApplication
@MapperScan(basePackages = "tk.mybatis.springboot.mapper")
public class Application extends WebMvcConfigurerAdapter {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @RequestMapping({"/"})
    String index() {
        return "teacher";
    }
    @RequestMapping({"/get-csrf"})
    String home() {
        return "csrf_debug";
    }

//    @Override
//    public void addCorsMappings(CorsRegistry registry) {
////        registry.addMapping("/api/**").allowedOrigins("*");
//        registry.addMapping("/**")
//                .allowedOrigins("*")
//                .allowedHeaders("*")
//                .allowCredentials(true)
//                .allowedMethods("*")
//                .maxAge(3600);
//    }


//    @Override
//    public void addCorsMappings(CorsRegistry registry) {
//        registry.addMapping("/**")
//                .allowedOrigins("*")
//                .allowedMethods("GET","HEAD","POST","PUT","DELETE","TRACE","OPTIONS","PATCH")
//                .allowedHeaders("Cookie","X-Requested-With","accept","content-type","xxxx")
//                .exposedHeaders("Cookie","X-Requested-With","accept","content-type","xxxx")
//                .allowCredentials(true).maxAge(3600);
//    }
}