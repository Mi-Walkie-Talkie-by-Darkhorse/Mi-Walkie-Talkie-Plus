package com.ifengyu.talk.models;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import com.shanlitech.p245et.model.Group;
import java.util.Objects;

@Entity(indices = {@Index(unique = true, value = {"group_id"})}, tableName = "recent_talk")
/* loaded from: classes2.dex */
public class RecentTalkModel implements Comparable<RecentTalkModel> {
    public static final String GROUP_AVATAR_SPLIT = "分隔";
    public static int HASHCODE = 98778987;
    public static final int TALK_TYPE_CURRENT = 1;
    public static final int TALK_TYPE_NORMAL = 0;
    @Ignore
    private Group group;
    @ColumnInfo(name = "group_avatar")
    private String groupAvatar;
    @ColumnInfo(name = "group_id")
    private Long groupId;
    @ColumnInfo(name = "group_name")
    private String groupName;
    @PrimaryKey(autoGenerate = true)

    /* renamed from: id */
    private Long f16659id;
    @ColumnInfo(name = "last_msg_json_str")
    private String lastMsgJsonStr;
    @Ignore
    private HistoryMsgModel lastMsgModel;
    @Ignore
    private int talkType;
    @ColumnInfo(name = "update_time")
    private long updateTime;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(getGroupId(), ((RecentTalkModel) obj).getGroupId());
    }

    public Group getGroup() {
        return this.group;
    }

    public String getGroupAvatar() {
        return this.groupAvatar;
    }

    public Long getGroupId() {
        return this.groupId;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public Long getId() {
        return this.f16659id;
    }

    public String getLastMsgJsonStr() {
        return this.lastMsgJsonStr;
    }

    public HistoryMsgModel getLastMsgModel() {
        return this.lastMsgModel;
    }

    public int getTalkType() {
        return this.talkType;
    }

    public long getUpdateTime() {
        return this.updateTime;
    }

    public int hashCode() {
        Long l = this.groupId;
        if (l != null) {
            return l.hashCode() + HASHCODE;
        }
        return 0;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public void setGroupAvatar(String str) {
        this.groupAvatar = str;
    }

    public void setGroupId(Long l) {
        this.groupId = l;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setId(Long l) {
        this.f16659id = l;
    }

    public void setLastMsgJsonStr(String str) {
        this.lastMsgJsonStr = str;
    }

    public void setLastMsgModel(HistoryMsgModel historyMsgModel) {
        this.lastMsgModel = historyMsgModel;
    }

    public void setTalkType(int i) {
        this.talkType = i;
    }

    public void setUpdateTime(long j) {
        this.updateTime = j;
    }

    @Override // java.lang.Comparable
    public int compareTo(RecentTalkModel recentTalkModel) {
        if (getTalkType() == 1) {
            return -1;
        }
        if (recentTalkModel.getTalkType() == 1) {
            return 1;
        }
        return Long.compare(recentTalkModel.getUpdateTime(), getUpdateTime());
    }
}
