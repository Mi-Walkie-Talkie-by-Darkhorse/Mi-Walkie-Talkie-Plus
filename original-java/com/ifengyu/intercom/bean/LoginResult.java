package com.ifengyu.intercom.bean;

/* loaded from: classes.dex */
public class LoginResult {
    public User data;
    public int errno;
    public String msg;

    public String toString() {
        return "LoginResult{msg='" + this.msg + "', errno=" + this.errno + ", data=" + this.data + '}';
    }
}
