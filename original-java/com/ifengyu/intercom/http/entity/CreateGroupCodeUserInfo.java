package com.ifengyu.intercom.http.entity;

/* loaded from: classes2.dex */
public class CreateGroupCodeUserInfo {
    private String account;
    private String avatar;
    private long gid;
    private String gidStr;
    private String nickname;
    private long userId;
    private int userType;

    public String getAccount() {
        return this.account;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public long getGid() {
        return this.gid;
    }

    public String getGidStr() {
        return this.gidStr;
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

    public void setGid(long j) {
        this.gid = j;
    }

    public void setGidStr(String str) {
        this.gidStr = str;
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

    public String toString() {
        return "CreateGroupCodeUserInfo{account='" + this.account + "', avatar='" + this.avatar + "', gid=" + this.gid + ", gidStr='" + this.gidStr + "', nickname='" + this.nickname + "', userId=" + this.userId + ", userType=" + this.userType + '}';
    }
}
