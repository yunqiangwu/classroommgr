/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package tk.mybatis.springboot.model;

import tk.mybatis.mapper.entity.Example;

import javax.persistence.Transient;

/**
 * 用户信息
 *
 * @author liuzh
 * @since 2016-01-31 21:39
 */
public class UserInfo extends BaseEntity {
    private String username;
    private String password;
    private String usertype;
    private Integer enabled;

//    public Object getOredCriteria() {
//        return oredCriteria;
//    }
//
//    public void setOredCriteria(Object oredCriteria) {
//        this.oredCriteria = oredCriteria;
//    }
//    @Transient
//    private Object oredCriteria = new Example.Criteria();
//
//    public Object getDistinct() {
//        return distinct;
//    }
//
//    public void setDistinct(Object distinct) {
//        this.distinct = distinct;
//    }
//
//    @Transient
//    private Object distinct;

    public Integer getMgrid() {
        return mgrid;
    }

    public void setMgrid(Integer mgrid) {
        this.mgrid = mgrid;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public Long getScore() {
        return score;
    }

    public void setScore(Long score) {
        this.score = score;
    }

    private Long score;
    private Integer mgrid;
    private String logo;
    private String realname ;
    private String qq;
    private String email;
    private String tel;

    public UserInfo(UserInfo user) {
        this.username = user.getUsername();
        this.password = user.getPassword();
        this.id = user.getId();
    }

    public UserInfo() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public Integer getEnabled() {
        return enabled;
    }

    public void setEnabled(Integer enabled) {
        this.enabled = enabled;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
}
