package com.ifengyu.talk.http.entity;

/* loaded from: classes2.dex */
public class TempMember {
    private String account;
    private String avatar;
    private long joinTime;
    private String nickname;
    private String nicknameIn;
    private long userId;
    private int userType;

    public String getAccount() {
        return this.account;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public long getJoinTime() {
        return this.joinTime;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getNicknameIn() {
        return this.nicknameIn;
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

    public void setJoinTime(long j) {
        this.joinTime = j;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setNicknameIn(String str) {
        this.nicknameIn = str;
    }

    public void setUserId(long j) {
        this.userId = j;
    }

    public void setUserType(int i) {
        this.userType = i;
    }

    public String toString() {
        return "TempMember{userId=" + this.userId + ", account='" + this.account + "', avatar='" + this.avatar + "', nickname='" + this.nickname + "', nicknameIn='" + this.nicknameIn + "', userType=" + this.userType + ", joinTime=" + this.joinTime + '}';
    }
}
