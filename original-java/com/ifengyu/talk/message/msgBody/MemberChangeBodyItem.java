package com.ifengyu.talk.message.msgBody;

import com.shanlitech.p245et.model.User;

/* loaded from: classes2.dex */
public class MemberChangeBodyItem {
    private String acc;

    /* renamed from: id */
    private long f16657id;
    private String name;
    private User user;

    public String getAcc() {
        return this.acc;
    }

    public long getId() {
        return this.f16657id;
    }

    public String getName() {
        return this.name;
    }

    public User getUser() {
        return this.user;
    }

    public void setAcc(String str) {
        this.acc = str;
    }

    public void setId(long j) {
        this.f16657id = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
