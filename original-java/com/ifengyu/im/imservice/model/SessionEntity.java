package com.ifengyu.im.imservice.model;

import java.util.List;

public class SessionEntity implements RecentContact {
    public List<String> avatar;
    public String content;
    public Long id;
    public String latestMsgData;
    public long latestMsgId;
    public int latestMsgType;
    public String name;
    public String sessionId;
    public String sessionKey;
    public int sessionType;
    public long tag;
    public String talkId;
    public long time;
    public int unreadCount;

    public SessionEntity(Long l, String str, int i, int i2, long j, String str2, int i3, String str3, long j2, long j3, String str4, String str5) {
        this.id = l;
        this.sessionId = str;
        this.sessionType = i;
        this.latestMsgType = i2;
        this.latestMsgId = j;
        this.latestMsgData = str2;
        this.unreadCount = i3;
        this.content = str3;
        this.time = j2;
        this.tag = j3;
        this.sessionKey = str4;
        this.talkId = str5;
    }

    public SessionEntity() {
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public int getSessionType() {
        return this.sessionType;
    }

    public void setSessionType(int i) {
        this.sessionType = i;
    }

    public int getLatestMsgType() {
        return this.latestMsgType;
    }

    public void setLatestMsgType(int i) {
        this.latestMsgType = i;
    }

    public long getLatestMsgId() {
        return this.latestMsgId;
    }

    public void setLatestMsgId(long j) {
        this.latestMsgId = j;
    }

    public String getLatestMsgData() {
        return this.latestMsgData;
    }

    public void setLatestMsgData(String str) {
        this.latestMsgData = str;
    }

    public int getUnreadCount() {
        return this.unreadCount;
    }

    public void setUnreadCount(int i) {
        this.unreadCount = i;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public long getTime() {
        return this.time;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setTag(long j) {
        this.tag = j;
    }

    public long getTag() {
        return this.tag;
    }

    public String getSessionKey() {
        return this.sessionKey;
    }

    public void setSessionKey(String str) {
        this.sessionKey = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public List<String> getAvatar() {
        return this.avatar;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public String getTalkId() {
        return this.talkId;
    }

    public void setTalkId(String str) {
        this.talkId = str;
    }

    public void setAvatar(List<String> list) {
        this.avatar = list;
    }

    public String buildSessionKey() {
        this.sessionKey = this.sessionType + "_" + this.sessionId;
        return this.sessionKey;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SessionEntity sessionEntity = (SessionEntity) obj;
        if (this.sessionType != sessionEntity.sessionType || this.latestMsgType != sessionEntity.latestMsgType || this.latestMsgId != sessionEntity.latestMsgId || this.unreadCount != sessionEntity.unreadCount || this.time != sessionEntity.time || this.tag != sessionEntity.tag) {
            return false;
        }
        if (this.sessionId != null) {
            if (!this.sessionId.equals(sessionEntity.sessionId)) {
                return false;
            }
        } else if (sessionEntity.sessionId != null) {
            return false;
        }
        if (this.content != null) {
            if (!this.content.equals(sessionEntity.content)) {
                return false;
            }
        } else if (sessionEntity.content != null) {
            return false;
        }
        if (this.sessionKey != null) {
            if (!this.sessionKey.equals(sessionEntity.sessionKey)) {
                return false;
            }
        } else if (sessionEntity.sessionKey != null) {
            return false;
        }
        if (this.name != null) {
            z = this.name.equals(sessionEntity.name);
        } else if (sessionEntity.name != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3 = 0;
        int hashCode = (((((((((this.sessionId != null ? this.sessionId.hashCode() : 0) * 31) + this.sessionType) * 31) + this.latestMsgType) * 31) + ((int) (this.latestMsgId ^ (this.latestMsgId >>> 32)))) * 31) + this.unreadCount) * 31;
        if (this.content != null) {
            i = this.content.hashCode();
        } else {
            i = 0;
        }
        int i4 = (((((i + hashCode) * 31) + ((int) (this.time ^ (this.time >>> 32)))) * 31) + ((int) (this.tag ^ (this.tag >>> 32)))) * 31;
        if (this.sessionKey != null) {
            i2 = this.sessionKey.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i2 + i4) * 31;
        if (this.name != null) {
            i3 = this.name.hashCode();
        }
        return i5 + i3;
    }
}
