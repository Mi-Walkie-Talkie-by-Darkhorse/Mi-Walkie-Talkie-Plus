package com.ifengyu.im.DB.entity;

import android.text.TextUtils;
import com.ifengyu.im.imservice.entity.SearchElement;
import com.ifengyu.im.utils.pinyin.PinYin.PinYinElement;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class GroupEntity extends PeerEntity {
    public String avatar;
    public long created;
    public int creatorId;
    public int groupType;
    public Long id;
    public String mainName;
    public int peerId;
    public PinYinElement pinyinElement = new PinYinElement();
    public SearchElement searchElement = new SearchElement();
    public int status;
    public long updated;
    public int userCnt;
    public String userList;
    public int version;

    public GroupEntity(Long l, int i, String str, String str2, int i2, int i3, int i4, String str3, int i5, int i6, long j, long j2) {
        this.id = l;
        this.peerId = i;
        this.mainName = str;
        this.avatar = str2;
        this.groupType = i2;
        this.creatorId = i3;
        this.userCnt = i4;
        this.userList = str3;
        this.version = i5;
        this.status = i6;
        this.created = j;
        this.updated = j2;
    }

    public GroupEntity() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public int getPeerId() {
        return this.peerId;
    }

    public void setPeerId(int i) {
        this.peerId = i;
    }

    public int getGroupType() {
        return this.groupType;
    }

    public void setGroupType(int i) {
        this.groupType = i;
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

    public int getCreatorId() {
        return this.creatorId;
    }

    public void setCreatorId(int i) {
        this.creatorId = i;
    }

    public int getUserCnt() {
        return this.userCnt;
    }

    public void setUserCnt(int i) {
        this.userCnt = i;
    }

    public String getUserList() {
        return this.userList;
    }

    public void setUserList(String str) {
        this.userList = str;
    }

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
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

    public int getType() {
        return 2;
    }

    public Set<Integer> getlistGroupMemberIds() {
        if (TextUtils.isEmpty(this.userList)) {
            return Collections.emptySet();
        }
        String[] split = this.userList.trim().split(Constants.ACCEPT_TIME_SEPARATOR_SP);
        if (split.length <= 0) {
            return Collections.emptySet();
        }
        TreeSet treeSet = new TreeSet();
        for (String parseInt : split) {
            treeSet.add(Integer.valueOf(Integer.parseInt(parseInt)));
        }
        return treeSet;
    }

    public void setlistGroupMemberIds(List<Integer> list) {
        setUserList(TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, list));
        setUserCnt(list.size());
    }

    public PinYinElement getPinyinElement() {
        return this.pinyinElement;
    }

    public void setPinyinElement(PinYinElement pinYinElement) {
        this.pinyinElement = pinYinElement;
    }

    public SearchElement getSearchElement() {
        return this.searchElement;
    }

    public void setSearchElement(SearchElement searchElement2) {
        this.searchElement = searchElement2;
    }

    public String toString() {
        return "GroupEntity{id=" + this.id + ", peerId=" + this.peerId + ", mainName='" + this.mainName + '\'' + ", avatar='" + this.avatar + '\'' + ", created=" + this.created + ", updated=" + this.updated + ", groupType=" + this.groupType + ", creatorId=" + this.creatorId + ", userCnt=" + this.userCnt + ", userList='" + this.userList + '\'' + ", version=" + this.version + ", status=" + this.status + ", pinyinElement=" + this.pinyinElement + ", searchElement=" + this.searchElement + '}';
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GroupEntity groupEntity = (GroupEntity) obj;
        if (this.peerId != groupEntity.peerId || this.groupType != groupEntity.groupType || this.creatorId != groupEntity.creatorId || this.userCnt != groupEntity.userCnt || this.version != groupEntity.version) {
            return false;
        }
        if (this.mainName != null) {
            if (!this.mainName.equals(groupEntity.mainName)) {
                return false;
            }
        } else if (groupEntity.mainName != null) {
            return false;
        }
        if (this.avatar != null) {
            if (!this.avatar.equals(groupEntity.avatar)) {
                return false;
            }
        } else if (groupEntity.avatar != null) {
            return false;
        }
        if (this.userList != null) {
            z = this.userList.equals(groupEntity.userList);
        } else if (groupEntity.userList != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i;
        int i2 = 0;
        int hashCode = ((this.mainName != null ? this.mainName.hashCode() : 0) + (this.peerId * 31)) * 31;
        if (this.avatar != null) {
            i = this.avatar.hashCode();
        } else {
            i = 0;
        }
        int i3 = (((((((i + hashCode) * 31) + this.groupType) * 31) + this.creatorId) * 31) + this.userCnt) * 31;
        if (this.userList != null) {
            i2 = this.userList.hashCode();
        }
        return ((i3 + i2) * 31) + this.version;
    }
}
