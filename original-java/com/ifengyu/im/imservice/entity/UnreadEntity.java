package com.ifengyu.im.imservice.entity;

import com.ifengyu.im.protobuf.helper.EntityChangeEngine;

public class UnreadEntity {
    private boolean isForbidden = false;
    private int laststMsgId;
    private String latestMsgData;
    private int peerId;
    private String sessionKey;
    private int sessionType;
    private int unReadCnt;

    public String getSessionKey() {
        return this.sessionKey;
    }

    public void setSessionKey(String str) {
        this.sessionKey = str;
    }

    public int getPeerId() {
        return this.peerId;
    }

    public void setPeerId(int i) {
        this.peerId = i;
    }

    public int getSessionType() {
        return this.sessionType;
    }

    public void setSessionType(int i) {
        this.sessionType = i;
    }

    public int getUnReadCnt() {
        return this.unReadCnt;
    }

    public void setUnReadCnt(int i) {
        this.unReadCnt = i;
    }

    public int getLaststMsgId() {
        return this.laststMsgId;
    }

    public void setLaststMsgId(int i) {
        this.laststMsgId = i;
    }

    public String getLatestMsgData() {
        return this.latestMsgData;
    }

    public void setLatestMsgData(String str) {
        this.latestMsgData = str;
    }

    public boolean isForbidden() {
        return this.isForbidden;
    }

    public void setForbidden(boolean z) {
        this.isForbidden = z;
    }

    public String toString() {
        return "UnreadEntity{sessionKey='" + this.sessionKey + '\'' + ", peerId=" + this.peerId + ", sessionType=" + this.sessionType + ", unReadCnt=" + this.unReadCnt + ", laststMsgId=" + this.laststMsgId + ", latestMsgData='" + this.latestMsgData + '\'' + ", isForbidden=" + this.isForbidden + '}';
    }

    public String buildSessionKey() {
        if (this.sessionType <= 0 || this.peerId <= 0) {
            throw new IllegalArgumentException("SessionEntity buildSessionKey error,cause by some params <=0");
        }
        this.sessionKey = EntityChangeEngine.getSessionKey(this.peerId, this.sessionType);
        return this.sessionKey;
    }
}
