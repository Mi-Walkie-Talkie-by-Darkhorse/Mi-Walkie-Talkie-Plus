package com.ifengyu.intercom.bean;

/* loaded from: classes2.dex */
public class LoginResult {
    public LoginUser data;
    public int errno;
    public String msg;

    public String toString() {
        return "LoginResult{msg='" + this.msg + "', errno=" + this.errno + ", data=" + this.data + '}';
    }
}
