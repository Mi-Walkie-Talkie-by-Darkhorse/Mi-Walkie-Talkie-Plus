package com.ifengyu.im.imservice.event;

import com.ifengyu.im.DB.entity.GroupEntity;
import java.util.List;

public class GroupEvent {
    private List<Integer> changeList;
    private int changeType;
    private Event event;
    private GroupEntity groupEntity;

    public enum Event {
        NONE,
        GROUP_INFO_OK,
        GROUP_INFO_UPDATED,
        GROUP_INFO_FAIL,
        CHANGE_GROUP_MEMBER_SUCCESS,
        CHANGE_GROUP_MEMBER_FAIL,
        CHANGE_GROUP_MEMBER_TIMEOUT,
        CREATE_GROUP_OK,
        CREATE_GROUP_FAIL,
        CREATE_GROUP_TIMEOUT,
        SHIELD_GROUP_OK,
        SHIELD_GROUP_TIMEOUT,
        SHIELD_GROUP_FAIL,
        CHANGE_GROUP_INFO_SUCCESS,
        CHANGE_GROUP_INFO_FAIL,
        CHANGE_GROUP_INFO_TIMEOUT
    }

    public GroupEvent(Event event2) {
        this.event = event2;
    }

    public GroupEvent(Event event2, GroupEntity groupEntity2) {
        this.groupEntity = groupEntity2;
        this.event = event2;
    }

    public int getChangeType() {
        return this.changeType;
    }

    public void setChangeType(int i) {
        this.changeType = i;
    }

    public List<Integer> getChangeList() {
        return this.changeList;
    }

    public void setChangeList(List<Integer> list) {
        this.changeList = list;
    }

    public GroupEntity getGroupEntity() {
        return this.groupEntity;
    }

    public void setGroupEntity(GroupEntity groupEntity2) {
        this.groupEntity = groupEntity2;
    }

    public Event getEvent() {
        return this.event;
    }

    public void setEvent(Event event2) {
        this.event = event2;
    }
}
