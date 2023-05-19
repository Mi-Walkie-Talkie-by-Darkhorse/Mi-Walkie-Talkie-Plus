package com.ifengyu.talk.message.msgBody;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public class MemberChangeBody {
    private String acc;

    /* renamed from: id */
    private long f16656id;
    private ArrayList<MemberChangeBodyItem> ids;
    private String name;
    private String token;

    public String getAcc() {
        return this.acc;
    }

    public long getId() {
        return this.f16656id;
    }

    public ArrayList<MemberChangeBodyItem> getIds() {
        return this.ids;
    }

    public String getName() {
        return this.name;
    }

    public String getToken() {
        return this.token;
    }

    public void setAcc(String str) {
        this.acc = str;
    }

    public void setId(long j) {
        this.f16656id = j;
    }

    public void setIds(ArrayList<MemberChangeBodyItem> arrayList) {
        this.ids = arrayList;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
