package com.ifengyu.talk.models;

/* loaded from: classes2.dex */
public class OperatorMsgModel {
    public static final String MODE_CREATE_GROUP_ACK = "MODE_CREATE_GROUP_ACK";
    public static final String MODE_CREATE_GROUP_ACK_TOKEN = "MODE_CREATE_GROUP_ACK_TOKEN";
    public static final String MODE_ENTER_GROUP = "MODE_ENTER_GROUP";
    public static final String MODE_ENTER_GROUP_TOKEN = "MODE_ENTER_GROUP_TOKEN";
    public static final String MODE_ONE_ADD_GROUPS = "MODE_ONE_ADD_GROUPS";
    private String acc;
    private String errCode;
    private String errMsg;
    private OperatorMsgUser[] failList;
    private String gid;
    private String operator;
    private String oprName;
    private OperatorMsgUser[] succList;
    private String token;

    public String getAcc() {
        return this.acc;
    }

    public String getErrCode() {
        return this.errCode;
    }

    public String getErrMsg() {
        return this.errMsg;
    }

    public OperatorMsgUser[] getFailList() {
        return this.failList;
    }

    public String getGid() {
        return this.gid;
    }

    public String getOperator() {
        return this.operator;
    }

    public String getOprName() {
        return this.oprName;
    }

    public OperatorMsgUser[] getSuccList() {
        return this.succList;
    }

    public String getToken() {
        return this.token;
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

    public void setFailList(OperatorMsgUser[] operatorMsgUserArr) {
        this.failList = operatorMsgUserArr;
    }

    public void setGid(String str) {
        this.gid = str;
    }

    public void setOperator(String str) {
        this.operator = str;
    }

    public void setOprName(String str) {
        this.oprName = str;
    }

    public void setSuccList(OperatorMsgUser[] operatorMsgUserArr) {
        this.succList = operatorMsgUserArr;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
