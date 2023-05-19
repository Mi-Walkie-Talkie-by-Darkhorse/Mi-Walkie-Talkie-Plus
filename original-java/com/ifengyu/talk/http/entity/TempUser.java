package com.ifengyu.talk.http.entity;

/* loaded from: classes2.dex */
public class TempUser {
    private String account;
    private String avatar;
    private String nickname;
    private long userId;
    private int userType;

    public String getAccount() {
        return this.account;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getNickname() {
        return this.nickname;
    }

    public long getUserId() {
        return this.userId;
    }

    public int getUserType() {
        return this.userType;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setUserId(long j) {
        this.userId = j;
    }

    public void setUserType(int i) {
        this.userType = i;
    }
}
