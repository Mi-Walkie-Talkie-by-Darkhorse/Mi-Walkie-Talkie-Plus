package com.ifengyu.im.imservice.entity;

import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.model.SessionEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RecentInfo {
    private List<String> avatar;
    private boolean isForbidden = false;
    private boolean isTalk = false;
    private boolean isTop = false;
    private String latestMsgData;
    private long latestMsgId;
    private int latestMsgType;
    private String name;
    private String peerId;
    private String sessionKey;
    private int sessionType;
    private int unReadCnt;
    private long updateTime;

    public RecentInfo() {
    }

    public RecentInfo(SessionEntity sessionEntity, UserEntity userEntity, UnreadEntity unreadEntity) {
        this.sessionKey = sessionEntity.getSessionKey();
        this.peerId = sessionEntity.getSessionId();
        this.sessionType = sessionEntity.sessionType;
        this.latestMsgType = sessionEntity.getLatestMsgType();
        this.latestMsgId = sessionEntity.getLatestMsgId();
        this.latestMsgData = sessionEntity.getLatestMsgData();
        this.updateTime = sessionEntity.getTime();
        if (unreadEntity != null) {
            this.unReadCnt = unreadEntity.getUnReadCnt();
        }
        if (userEntity != null) {
            this.name = userEntity.getMainName();
            ArrayList arrayList = new ArrayList();
            arrayList.add(userEntity.getAvatar());
            this.avatar = arrayList;
        }
    }

    public RecentInfo(SessionEntity sessionEntity, GroupEntity groupEntity, UnreadEntity unreadEntity) {
        this.sessionKey = sessionEntity.getSessionKey();
        this.peerId = sessionEntity.getSessionId();
        this.sessionType = sessionEntity.getSessionType();
        this.latestMsgType = sessionEntity.getLatestMsgType();
        this.latestMsgId = sessionEntity.getLatestMsgId();
        this.latestMsgData = sessionEntity.getLatestMsgData();
        this.updateTime = sessionEntity.getTime();
        if (unreadEntity != null) {
            this.unReadCnt = unreadEntity.getUnReadCnt();
        }
        if (groupEntity != null) {
            ArrayList arrayList = new ArrayList();
            this.name = groupEntity.getMainName();
            if (groupEntity.getStatus() == 1) {
                this.isForbidden = true;
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(groupEntity.getlistGroupMemberIds());
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                UserEntity findContact = IMContactManager.instance().findContact(((Integer) it.next()).intValue());
                if (findContact != null) {
                    arrayList.add(findContact.getAvatar());
                }
                if (arrayList.size() >= 9) {
                    break;
                }
            }
            this.avatar = arrayList;
        }
    }

    public String getSessionKey() {
        return this.sessionKey;
    }

    public void setSessionKey(String str) {
        this.sessionKey = str;
    }

    public String getPeerId() {
        return this.peerId;
    }

    public void setPeerId(String str) {
        this.peerId = str;
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

    public long getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public int getUnReadCnt() {
        return this.unReadCnt;
    }

    public void setUnReadCnt(int i) {
        this.unReadCnt = i;
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

    public void setAvatar(List<String> list) {
        this.avatar = list;
    }

    public boolean isTop() {
        return this.isTop;
    }

    public boolean isForbidden() {
        return this.isForbidden;
    }

    public void setTop(boolean z) {
        this.isTop = z;
    }

    public void setForbidden(boolean z) {
        this.isForbidden = z;
    }

    public boolean isTalk() {
        return this.isTalk;
    }

    public void setTalk(boolean z) {
        this.isTalk = z;
    }
}
