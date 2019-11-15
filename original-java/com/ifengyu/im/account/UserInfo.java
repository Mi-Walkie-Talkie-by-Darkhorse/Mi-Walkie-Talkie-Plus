package com.ifengyu.im.account;

import java.io.Serializable;

public class UserInfo implements Serializable {
    public static final String TYPE_PHONE = "phone";
    public static final String TYPE_WECHAT = "wechat";
    public static final String TYPE_XIAOMI = "xiaomi";
    public String avatar;
    public String email;
    public long expires_in;
    public String gender;
    public int is_first_login;
    public String key;
    @LoginType
    public String loginType;
    public String nickname;
    public String phone;
    public int phone_isBound;
    public int sign_up_with_phone;
    public String userId;

    public @interface LoginType {
    }

    public String toString() {
        return "UserInfo{" + "userId='" + this.userId + '\'' + ", nickname='" + this.nickname + '\'' + ", avatar='" + this.avatar + '\'' + ", phone='" + this.phone + '\'' + ", phone_isBound=" + this.phone_isBound + ", email='" + this.email + '\'' + ", gender='" + this.gender + '\'' + ", key='" + this.key + '\'' + ", expires_in=" + this.expires_in + ", is_first_login=" + this.is_first_login + ", sign_up_with_phone=" + this.sign_up_with_phone + ", loginType='" + this.loginType + '\'' + '}';
    }
}
