package tk.mybatis.springboot.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import tk.mybatis.springboot.conf.CaptchaConfig;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
public class LoginController {
	

//	@Autowired
//	private CacheManager cacheManager;
//    cache= new ConcurrentMapCacheManager().getCache("captch");
//	@Autowired
//	private Producer captchaProducer;
//

//    @GetMapping("/logout")
//    public String logout(HttpSession session) {
//        // 移除session
//        session.removeAttribute(USERINFO_KEY);
//        return "redirect:/login";
//    }


//	@Autowired
//	CaptchaConfig captchaConfig;
	@Value("${captcha.enable}") private String captchaIsEnable;


	@RequestMapping("/teacher")
	public ModelAndView teacher(HttpServletRequest request,
								HttpServletResponse response){
		ModelAndView result = new ModelAndView("teacher");
		result.addObject("enableCaptcha",captchaIsEnable);
        result.addObject("urlParameter", JSONObject.toJSONString(request.getParameterMap()));
		return result;
	}
    @RequestMapping("/student")
    public ModelAndView student(HttpServletRequest request,
                                HttpServletResponse response){
        ModelAndView result = new ModelAndView("student");
        result.addObject("enableCaptcha",captchaIsEnable);
        result.addObject("urlParameter", JSONObject.toJSONString(request.getParameterMap()));
        return result;
    }

	@RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request,
            HttpServletResponse response) {

		Object ru = request.getSession().getAttribute("ru");
		SecurityContext context = SecurityContextHolder.getContext();


		if(context.getAuthentication().isAuthenticated()&&!context.getAuthentication().getName().equals("anonymousUser")){
			return new ModelAndView("redirect:/");
		}

		if(ru == null || "".equals(ru)){
			ru = "/";
		}
		ModelAndView result = new ModelAndView("teacher");
		result.addObject("returnUrl", ru);
		result.addObject("enableCaptcha",captchaIsEnable);
		return result;

    }
//
//	@RequestMapping(value = "/captcha-image")
//    public ModelAndView getKaptchaImage(HttpServletRequest request,
//            HttpServletResponse response,HttpSession session) throws Exception {
//        response.setDateHeader("Expires", 0);
//        response.setHeader("Cache-Control",
//                "no-store, no-cache, must-revalidate");
//        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
//        response.setHeader("Pragma", "no-cache");
//        response.setContentType("image/jpeg");
//
//        String capText = captchaProducer.createText();
////        System.out.println("capText: " + capText);
//
//        try {
//            String uuid=UUIDUtils.random().toString().trim().toString();
//            System.out.println(uuid+":"+capText);
//            cacheManager.getCache("captch").put(uuid, capText);
//            session.setAttribute(StaticParams.CAPTCHA_KEY, uuid);
////            Cookie cookie = new Cookie("captchaCode",uuid);
////            response.addCookie(cookie);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        BufferedImage bi = captchaProducer.createImage(capText);
//        ServletOutputStream out = response.getOutputStream();
//        ImageIO.write(bi, "jpg", out);
//        try {
//            out.flush();
//        } finally {
//            out.close();
//        }
//        return null;
//    }

}
