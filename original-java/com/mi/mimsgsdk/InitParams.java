package com.mi.mimsgsdk;

public class InitParams {
    String appId;
    String b2Token;
    String gUid;
    IMXMsgCallback listener;
    String pId;
    String pSkey;

    public String getgUid() {
        return this.gUid;
    }

    public InitParams setgUid(String str) {
        this.gUid = str;
        return this;
    }

    public String getpSkey() {
        return this.pSkey;
    }

    public InitParams setpSkey(String str) {
        this.pSkey = str;
        return this;
    }

    public String getAppId() {
        return this.appId;
    }

    public InitParams setAppId(String str) {
        this.appId = str;
        return this;
    }

    public String getB2Token() {
        return this.b2Token;
    }

    public InitParams setB2Token(String str) {
        this.b2Token = str;
        return this;
    }

    public String getpId() {
        return this.pId;
    }

    public InitParams setpId(String str) {
        this.pId = str;
        return this;
    }

    public IMXMsgCallback getListener() {
        return this.listener;
    }

    public InitParams setListener(IMXMsgCallback iMXMsgCallback) {
        this.listener = iMXMsgCallback;
        return this;
    }
}
