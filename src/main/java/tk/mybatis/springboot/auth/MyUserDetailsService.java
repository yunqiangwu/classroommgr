package tk.mybatis.springboot.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import tk.mybatis.springboot.model.UserInfo;
import tk.mybatis.springboot.model.UserRole;
import tk.mybatis.springboot.service.UserInfoService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


/**
 * 用户信息扩展类Service
 */
@Service("MyUserDetailsImpl")
public class MyUserDetailsService implements UserDetailsService {
    @Autowired
    private UserInfoService systemUserService;

//    @Resource(name = "UserRoleServiceImpl")
//    private UserRoleService userRoleService;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        UserInfo user;
        try {
            user = systemUserService.findByUserNameOne(userName);
        } catch (Exception e) {
            throw new UsernameNotFoundException("user select fail");
        }
        if(user == null){
            throw new UsernameNotFoundException("no user found");
        } else {
            try {
//                List<UserRole> roles = userRoleService.getRoleByUser(user);
                List<UserRole> roles = new ArrayList<UserRole>();
                UserRole role = new UserRole();
                 role.setRole("USER");
                 roles.add(role);
                return new MyUserDetails(user, roles);
            } catch (Exception e) {
                throw new UsernameNotFoundException("user role select fail");
            }
        }
    }
}