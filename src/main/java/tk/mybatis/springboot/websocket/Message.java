package tk.mybatis.springboot.websocket;

/**
 * Created by wayne on 2017/5/17.
 */
public class Message {
    public void setName(String name) {
        this.name = name;
    }

    private String name;


    public String getName() {
        return name;
    }
}
