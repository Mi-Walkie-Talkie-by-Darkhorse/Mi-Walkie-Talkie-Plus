package com.ifengyu.im.DB.entity;

public class GroupMember {
    public int groupId;
    public String groupNick;
    public Long id;
    public int joinTime;
    public int userId;

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public int getGroupId() {
        return this.groupId;
    }

    public void setGroupId(int i) {
        this.groupId = i;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int i) {
        this.userId = i;
    }

    public String getGroupNick() {
        return this.groupNick;
    }

    public void setGroupNick(String str) {
        this.groupNick = str;
    }

    public int getJoinTime() {
        return this.joinTime;
    }

    public void setJoinTime(int i) {
        this.joinTime = i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GroupMember groupMember = (GroupMember) obj;
        if (this.groupId != groupMember.groupId || this.userId != groupMember.userId || this.joinTime != groupMember.joinTime) {
            return false;
        }
        if (this.id != null) {
            if (!this.id.equals(groupMember.id)) {
                return false;
            }
        } else if (groupMember.id != null) {
            return false;
        }
        if (this.groupNick != null) {
            z = this.groupNick.equals(groupMember.groupNick);
        } else if (groupMember.groupNick != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = (((((this.id != null ? this.id.hashCode() : 0) * 31) + this.groupId) * 31) + this.userId) * 31;
        if (this.groupNick != null) {
            i = this.groupNick.hashCode();
        }
        return ((hashCode + i) * 31) + this.joinTime;
    }
}
