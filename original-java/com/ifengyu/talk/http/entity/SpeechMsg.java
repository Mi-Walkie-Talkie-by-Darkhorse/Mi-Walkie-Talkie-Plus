package com.ifengyu.talk.http.entity;

/* loaded from: classes2.dex */
public class SpeechMsg {
    private String body;

    /* renamed from: id */
    private long f16652id;
    private int payload;
    private String url;

    public String getBody() {
        return this.body;
    }

    public long getId() {
        return this.f16652id;
    }

    public int getPayload() {
        return this.payload;
    }

    public String getUrl() {
        return this.url;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void setId(long j) {
        this.f16652id = j;
    }

    public void setPayload(int i) {
        this.payload = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
