package com.ifengyu.im.imservice.entity;

import com.google.gson.annotations.SerializedName;

public class InviteNotify {
    public String displayContent;
    @SerializedName("group_id")
    public int groupId;
    @SerializedName("group_name")
    public String groupName;
    @SerializedName("invite_user_id")
    public int invitedUserId;
    @SerializedName("invite_user_name")
    public String invitedUserName;
    @SerializedName("req_user_id")
    public int reqUserId;
    @SerializedName("req_user_name")
    public String reqUserName;
    @SerializedName("result_code")
    public int resultCode;

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

    public int getInvitedUserId() {
        return this.invitedUserId;
    }

    public void setInvitedUserId(int i) {
        this.invitedUserId = i;
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

    public String getInvitedUserName() {
        return this.invitedUserName;
    }

    public void setInvitedUserName(String str) {
        this.invitedUserName = str;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void setResultCode(int i) {
        this.resultCode = i;
    }

    public String getDisplayContent() {
        return this.displayContent;
    }

    public void setDisplayContent(String str) {
        this.displayContent = str;
    }

    public String toString() {
        return "InviteNotify{groupId=" + this.groupId + ", groupName='" + this.groupName + '\'' + ", invitedUserId=" + this.invitedUserId + ", invitedUserName='" + this.invitedUserName + '\'' + ", reqUserId=" + this.reqUserId + ", reqUserName='" + this.reqUserName + '\'' + ", resultCode=" + this.resultCode + ", displayContent='" + this.displayContent + '\'' + '}';
    }
}
