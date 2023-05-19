package com.ifengyu.talk.http.entity;

import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.User;

/* loaded from: classes2.dex */
public class SystemMsgEntity implements Comparable<SystemMsgEntity> {
    public static final int MSG_STATE_ACCEPTED = 1;
    public static final int MSG_STATE_EXPIRED = 3;
    public static final int MSG_STATE_REFUSED = 2;
    public static final int MSG_STATE_UNPROCESSED = 0;
    public static final int MSG_TYPE_APPLY_CONTACT = 1;
    public static final int MSG_TYPE_APPLY_JOIN_GROUP = 2;
    public static final int MSG_TYPE_GROUP_REMOVE = 4;
    private long createTime;
    private String desc;
    private long gid;
    private Group group;

    /* renamed from: id */
    private long f16653id;
    private long inviteTime;
    private long inviteeId;
    private long inviterId;
    private int msgType;
    private int status;
    private long updateTime;
    private User user;

    public long getCreateTime() {
        return this.createTime;
    }

    public String getDesc() {
        return this.desc;
    }

    public long getGid() {
        return this.gid;
    }

    public Group getGroup() {
        return this.group;
    }

    public long getId() {
        return this.f16653id;
    }

    public long getInviteTime() {
        return this.inviteTime;
    }

    public long getInviteeId() {
        return this.inviteeId;
    }

    public long getInviterId() {
        return this.inviterId;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public int getStatus() {
        return this.status;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public User getUser() {
        return this.user;
    }

    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setGid(long j) {
        this.gid = j;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public void setId(long j) {
        this.f16653id = j;
    }

    public void setInviteTime(long j) {
        this.inviteTime = j;
    }

    public void setInviteeId(long j) {
        this.inviteeId = j;
    }

    public void setInviterId(long j) {
        this.inviterId = j;
    }

    public void setMsgType(int i) {
        this.msgType = i;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String toString() {
        return "SystemMsgEntity{desc='" + this.desc + "', gid=" + this.gid + ", id=" + this.f16653id + ", inviteeId=" + this.inviteeId + ", inviterId=" + this.inviterId + ", msgType=" + this.msgType + ", status=" + this.status + ", inviteTime=" + this.inviteTime + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", user=" + this.user + ", group=" + this.group + '}';
    }

    @Override // java.lang.Comparable
    public int compareTo(SystemMsgEntity systemMsgEntity) {
        return Long.compare(systemMsgEntity.getInviteTime(), getInviteTime());
    }
}
