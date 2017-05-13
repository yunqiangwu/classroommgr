package tk.mybatis.springboot.controller;

import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import tk.mybatis.springboot.StaticParams;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@RestController  
@RequestMapping("/captcha")
public class CaptchaModule {  
      
    @Autowired  
    private RedisTemplate<String, String> redisTemplate;  
      
    private static int captchaExpires = 3*60; //超时时间3min  
    private static int captchaW = 200;  
    private static int captchaH = 60;
    @Autowired
    private Producer captchaProducer;


    @RequestMapping(value = "/getcaptcha", method = RequestMethod.GET, produces = MediaType.IMAGE_PNG_VALUE)
    public @ResponseBody byte[] getCaptcha(HttpServletResponse response)
    {  
        //生成验证码  
        String uuid = UUID.randomUUID().toString();  
//        Captcha captcha = new Captcha.Builder(captchaW, captchaH)
//                .addText().addBackground(new GradiatedBackgroundProducer())
//                .gimp(new FishEyeGimpyRenderer())
//                .build();
        String captcha = captchaProducer.createText();
          
        //将验证码以<key,value>形式缓存到redis     //captcha.getAnswer()
        redisTemplate.opsForValue().set(uuid, captcha, captchaExpires, TimeUnit.SECONDS);
          
        //将验证码key，及验证码的图片返回  
        Cookie cookie = new Cookie(StaticParams.CAPTCHA_KEY,uuid);
        cookie.setPath("/");
        response.addCookie(cookie);  
        ByteArrayOutputStream bao = new ByteArrayOutputStream();  
        try {
//            captcha.getImage()
            ImageIO.write(captchaProducer.createImage(captcha), "png", bao);
            return bao.toByteArray();  
        } catch (IOException e) {  
            return null;  
        }  
    }  
}