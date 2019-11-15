package com.ifengyu.intercom.bean;

public class HttpResult<T> {
    public T data;
    public int errno;
    public String msg;

    public String toString() {
        return "HttpResult{errno=" + this.errno + ", msg='" + this.msg + '\'' + ", data=" + this.data + '}';
    }
}
