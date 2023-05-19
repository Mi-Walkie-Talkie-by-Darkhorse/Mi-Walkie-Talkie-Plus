package com.ifengyu.talk.models;

import java.util.Objects;

/* loaded from: classes2.dex */
public class OperatorMsgUser {
    private String acc;
    private String errCode;
    private String errMsg;
    private String gid;
    private String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(getAcc(), ((OperatorMsgUser) obj).getAcc());
    }

    public String getAcc() {
        return this.acc;
    }

    public String getErrCode() {
        return this.errCode;
    }

    public String getErrMsg() {
        return this.errMsg;
    }

    public String getGid() {
        return this.gid;
    }

    public String getName() {
        return this.name;
    }

    public void setAcc(String str) {
        this.acc = str;
    }

    public void setErrCode(String str) {
        this.errCode = str;
    }

    public void setErrMsg(String str) {
        this.errMsg = str;
    }

    public void setGid(String str) {
        this.gid = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "OperatorMsgUser{acc='" + this.acc + "', name='" + this.name + "', errMsg='" + this.errMsg + "', errCode='" + this.errCode + "'}";
    }
}
