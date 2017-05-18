package tk.mybatis.springboot.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/*学生分组表*/
//@Entity
//@Table(name = "user_role")
public class StudentGroup extends BaseEntity  {
    private String name;
    private String studentIds;

    public Integer getMgrid() {
        return mgrid;
    }

    public void setMgrid(Integer mgrid) {
        this.mgrid = mgrid;
    }

    private Integer mgrid;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentIds() {
        return studentIds;
    }

    public void setStudentIds(String studentIds) {
        this.studentIds = studentIds;
    }
}