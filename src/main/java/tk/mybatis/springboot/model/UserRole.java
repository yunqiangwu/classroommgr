package tk.mybatis.springboot.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/*角色表*/
@Entity
@Table(name = "user_role")
public class UserRole  extends BaseEntity  {


    private String role;
    private Long userId;
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    public Long getUserId() {
        return userId;
    }
    public void setUserId(Long userId) {
        this.userId = userId;
    }
}