package com.ifengyu.im.imservice.entity;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class NotifyCommand {
    @SerializedName("command_id")
    public int commandId;
    public String displayContent = "";
    public String displayName = "";
    @SerializedName("msg_body")
    public MsgBody msgBody;
    @SerializedName("msg_origin")
    public String msgOrigin;
    @SerializedName("msg_seq")
    public int msgSeq;
    @SerializedName("msg_type")
    public int msgType;
    @SerializedName("service_id")
    public int serviceId;
    public int status;

    public class MsgBody {
        @SerializedName("change_type")
        public int changeType;
        @SerializedName("change_uid_list")
        public List<Integer> changeUidList;
        @SerializedName("creator_id")
        public int creatorId;
        @SerializedName("creator_name")
        public String creatorName;
        @SerializedName("group_id")
        public int groupId;
        @SerializedName("group_name")
        public String groupName;
        @SerializedName("invite_user_id")
        public int inviteUserId;
        @SerializedName("invite_user_name")
        public String inviteUserName;
        @SerializedName("leave_type")
        public int leaveType;
        @SerializedName("req_user_id")
        public int reqUserId;
        @SerializedName("req_user_name")
        public String reqUserName;
        @SerializedName("result_code")
        public int resultCode;
        @SerializedName("userinfo_list")
        public List<UserInfo> userInfoList;

        public class UserInfo {
            @SerializedName("nick_name")
            private String nickName;
            @SerializedName("user_id")
            private int userId;

            public UserInfo() {
            }

            public void setNickName(String str) {
                this.nickName = str;
            }

            public String getNickName() {
                return this.nickName;
            }

            public void setUserId(int i) {
                this.userId = i;
            }

            public int getUserId() {
                return this.userId;
            }
        }

        public MsgBody() {
        }

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

        public int getInviteUserId() {
            return this.inviteUserId;
        }

        public void setInviteUserId(int i) {
            this.inviteUserId = i;
        }

        public String getInviteUserName() {
            return this.inviteUserName;
        }

        public void setInviteUserName(String str) {
            this.inviteUserName = str;
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

        public List<UserInfo> getUserInfoList() {
            return this.userInfoList;
        }

        public void setUserInfoList(List<UserInfo> list) {
            this.userInfoList = list;
        }

        public int getChangeType() {
            return this.changeType;
        }

        public void setChangeType(int i) {
            this.changeType = i;
        }

        public List<Integer> getChangeUidList() {
            return this.changeUidList;
        }

        public void setChangeUidList(List<Integer> list) {
            this.changeUidList = list;
        }

        public int getLeaveType() {
            return this.leaveType;
        }

        public void setLeaveType(int i) {
            this.leaveType = i;
        }

        public String toString() {
            return "MsgBody{creatorId=" + this.creatorId + ", creatorName='" + this.creatorName + '\'' + ", groupId=" + this.groupId + ", groupName='" + this.groupName + '\'' + ", inviteUserId=" + this.inviteUserId + ", inviteUserName='" + this.inviteUserName + '\'' + ", reqUserId=" + this.reqUserId + ", reqUserName='" + this.reqUserName + '\'' + ", resultCode=" + this.resultCode + '}';
        }
    }

    public int getCommandId() {
        return this.commandId;
    }

    public void setCommandId(int i) {
        this.commandId = i;
    }

    public MsgBody getMsgBody() {
        return this.msgBody;
    }

    public void setMsgBody(MsgBody msgBody2) {
        this.msgBody = msgBody2;
    }

    public String getMsgOrigin() {
        return this.msgOrigin;
    }

    public void setMsgOrigin(String str) {
        this.msgOrigin = str;
    }

    public int getMsgSeq() {
        return this.msgSeq;
    }

    public void setMsgSeq(int i) {
        this.msgSeq = i;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public void setMsgType(int i) {
        this.msgType = i;
    }

    public int getServiceId() {
        return this.serviceId;
    }

    public void setServiceId(int i) {
        this.serviceId = i;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public String getDisplayContent() {
        return this.displayContent;
    }

    public void setDisplayContent(String str) {
        this.displayContent = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String toString() {
        return "NotifyCommand{commandId=" + this.commandId + ", msgBody=" + this.msgBody + ", msgOrigin='" + this.msgOrigin + '\'' + ", msgSeq=" + this.msgSeq + ", msgType=" + this.msgType + ", serviceId=" + this.serviceId + ", displayName='" + this.displayName + '\'' + ", displayContent='" + this.displayContent + '\'' + ", status=" + this.status + '}';
    }
}
