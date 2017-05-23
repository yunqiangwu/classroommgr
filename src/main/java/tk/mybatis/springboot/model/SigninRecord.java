package tk.mybatis.springboot.model;

import java.util.Date;

/**
 * Created by wayne on 2017/5/23.
 */
public class SigninRecord extends BaseEntity{
//    id: '',
//    name: '',
//    timeSpan: '00:01',
//    result: {},
//    signNum: 0,
//    totalNum: 0,

    private String name;
    private String timeSpan;
    private String result;

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    private String groupName;

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    private Date startTime;
    private Integer signNum;
    private Integer totalNum;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTimeSpan() {
        return timeSpan;
    }

    public void setTimeSpan(String timeSpan) {
        this.timeSpan = timeSpan;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Integer getSignNum() {
        return signNum;
    }

    public void setSignNum(Integer signNum) {
        this.signNum = signNum;
    }

    public Integer getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }
}
