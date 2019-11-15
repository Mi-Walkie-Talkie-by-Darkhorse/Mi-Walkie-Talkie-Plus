package com.ifengyu.intercom.bean;

public class User {
    public String avatar;
    public String email;
    public int expires_in;
    public String gender;
    public String key;
    public String nickname;
    public String phone;
    public String userid;
    public String username;

    public String toString() {
        return "User{userid='" + this.userid + '\'' + ", nickname='" + this.nickname + '\'' + ", avatar='" + this.avatar + '\'' + ", username='" + this.username + '\'' + ", phone='" + this.phone + '\'' + ", email='" + this.email + '\'' + ", gender='" + this.gender + '\'' + ", key='" + this.key + '\'' + ", expires_in=" + this.expires_in + '}';
    }
}
