package com.ifengyu.library.account;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class UserInfo implements Serializable {
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    private static final long serialVersionUID = -6002041693141746971L;
    public String account;
    public String apiKey;
    public String avatar;
    public String email;
    public int gender;
    public int loginType;
    public String nickname;
    public String phone;
    public String pwd;
    public Tokens tokens;
    public int userId;
    public int userType;

    /* loaded from: classes2.dex */
    public static class Tokens implements Serializable {
        public String accessToken;
        public String refreshToken;

        public String toString() {
            return "Tokens{accessToken='" + this.accessToken + "', refreshToken='" + this.refreshToken + "'}";
        }
    }

    public String toString() {
        return "UserInfo{account='" + this.account + "', apiKey='" + this.apiKey + "', avatar='" + this.avatar + "', email='" + this.email + "', gender=" + this.gender + ", nickname='" + this.nickname + "', phone='" + this.phone + "', pwd='" + this.pwd + "', tokens=" + this.tokens + ", userId=" + this.userId + ", userType=" + this.userType + ", loginType=" + this.loginType + '}';
    }
}
