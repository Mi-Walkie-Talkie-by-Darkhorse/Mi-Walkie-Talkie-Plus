package com.ifengyu.library.http.entity;

/* loaded from: classes2.dex */
public class HttpResult<T> {
    public T data;
    public int errno;
    public String msg;

    public String toString() {
        return "HttpResult{msg='" + this.msg + "', errno=" + this.errno + ", data=" + this.data + '}';
    }
}
