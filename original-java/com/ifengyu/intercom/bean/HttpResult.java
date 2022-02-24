package com.ifengyu.intercom.bean;

/* loaded from: classes.dex */
public class HttpResult<T> {
    public T data;
    public int errno;
    public String msg;

    public String toString() {
        return "HttpResult{errno=" + this.errno + ", msg='" + this.msg + "', data=" + this.data + '}';
    }
}
