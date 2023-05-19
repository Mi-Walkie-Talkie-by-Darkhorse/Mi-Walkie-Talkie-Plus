package com.ifengyu.library.http.entity;

/* loaded from: classes2.dex */
public class NewHttpResult {
    private int code;
    private String message;
    private String request;

    public int getCode() {
        return this.code;
    }

    public String getMessage() {
        return this.message;
    }

    public String getRequest() {
        return this.request;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setRequest(String str) {
        this.request = str;
    }

    public String toString() {
        return "NewHttpResult{code=" + this.code + ", message='" + this.message + "', request='" + this.request + "'}";
    }
}
