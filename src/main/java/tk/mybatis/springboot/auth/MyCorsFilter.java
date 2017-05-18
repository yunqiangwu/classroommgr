//package tk.mybatis.springboot.auth;
//
//
//import org.springframework.stereotype.Component;
//import org.springframework.web.cors.CorsConfiguration;
//import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
//import org.springframework.web.filter.CorsFilter;
//
//import java.util.Arrays;
//
//@Component
//public class MyCorsFilter extends CorsFilter {
//
//    public MyCorsFilter() {
//        super(configurationSource());
//    }
//
//    private static UrlBasedCorsConfigurationSource configurationSource() {
////        response.setHeader("Access-Control-Allow-Headers", "X-Requested-With, accept, content-type, xxxx");
////        response.setHeader("Access-Control-Allow-Methods", "GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, PATCH");
////        response.setHeader("Access-Control-Allow-Origin", "*");
//
//        CorsConfiguration config = new CorsConfiguration();
//        config.setAllowCredentials(true);
//        config.addAllowedOrigin("*");
//        config.addAllowedHeader("*");
//        config.addAllowedMethod("*");
//
////        config.setAllowedOrigins(Arrays.asList( new String[]{"http://localhost:8080"}));
////        config.setAllowedHeaders(Arrays.asList( new String[]{"Cookie","X-Requested-With","accept","content-type","xxxx"}));
////        config.setAllowedMethods( Arrays.asList(new String[]{"GET","HEAD","POST","PUT","DELETE","TRACE","OPTIONS","PATCH"}));
//
//
//        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//        source.registerCorsConfiguration("/**", config);
//        return source;
//    }
//}
//
//
