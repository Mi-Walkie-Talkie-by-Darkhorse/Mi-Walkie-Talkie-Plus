package com.ifengyu.intercom.http.entity;

/* loaded from: classes2.dex */
public class FeedbackEntity {
    private String content;
    private long createTime;
    private String email;
    private String feedObject;

    /* renamed from: id */
    private long f13721id;

    public String getContent() {
        return this.content;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public String getEmail() {
        return this.email;
    }

    public String getFeedObject() {
        return this.feedObject;
    }

    public long getId() {
        return this.f13721id;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setFeedObject(String str) {
        this.feedObject = str;
    }

    public void setId(long j) {
        this.f13721id = j;
    }
}
