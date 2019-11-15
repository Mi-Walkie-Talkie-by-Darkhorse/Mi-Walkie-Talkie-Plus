package com.ifengyu.im.imservice.entity;

import com.google.gson.annotations.SerializedName;

public class ApplyNotify {
    @SerializedName("creator_id")
    public int creatorId;
    @SerializedName("creator_name")
    public String creatorName;
    @SerializedName("group_id")
    public int groupId;
    @SerializedName("group_name")
    public String groupName;
    @SerializedName("req_user_id")
    public int reqUserId;
    @SerializedName("req_user_name")
    public String reqUserName;
    @SerializedName("result_code")
    public int resultCode;

    public int getCreatorId() {
        return this.creatorId;
    }

    public void setCreatorId(int i) {
        this.creatorId = i;
    }

    public String getCreatorName() {
        return this.creatorName;
    }

    public void setCreatorName(String str) {
        this.creatorName = str;
    }

    public int getGroupId() {
        return this.groupId;
    }

    public void setGroupId(int i) {
        this.groupId = i;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public int getReqUserId() {
        return this.reqUserId;
    }

    public void setReqUserId(int i) {
        this.reqUserId = i;
    }

    public String getReqUserName() {
        return this.reqUserName;
    }

    public void setReqUserName(String str) {
        this.reqUserName = str;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void setResultCode(int i) {
        this.resultCode = i;
    }

    public String toString() {
        return "ApplyNotify{creatorId=" + this.creatorId + ", creatorName='" + this.creatorName + '\'' + ", groupId=" + this.groupId + ", groupName='" + this.groupName + '\'' + ", reqUserId=" + this.reqUserId + ", reqUserName='" + this.reqUserName + '\'' + ", resultCode=" + this.resultCode + '}';
    }
}
