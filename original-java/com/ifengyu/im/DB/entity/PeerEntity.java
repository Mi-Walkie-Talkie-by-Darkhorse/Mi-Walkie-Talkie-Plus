package com.ifengyu.im.DB.entity;

import com.ifengyu.im.protobuf.helper.EntityChangeEngine;

public abstract class PeerEntity {
    public String avatar;
    public long created;
    public String mainName;
    public int peerId;
    public long updated;

    public abstract int getType();

    public int getPeerId() {
        return this.peerId;
    }

    public void setPeerId(int i) {
        this.peerId = i;
    }

    public String getMainName() {
        return this.mainName;
    }

    public void setMainName(String str) {
        this.mainName = str;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public long getCreated() {
        return this.created;
    }

    public void setCreated(long j) {
        this.created = j;
    }

    public long getUpdated() {
        return this.updated;
    }

    public void setUpdated(long j) {
        this.updated = j;
    }

    public String getSessionKey() {
        return EntityChangeEngine.getSessionKey(this.peerId, getType());
    }
}
