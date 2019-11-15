package com.ifengyu.im.imservice.event;

import com.ifengyu.im.DB.entity.UserEntity;
import java.util.List;

public class NearbyEvent {
    private Event mEvent;
    private List<UserEntity> mUserList;

    public enum Event {
        QUERY_SUCCESS,
        QUERY_FAILED
    }

    public NearbyEvent(Event event, List<UserEntity> list) {
        this.mEvent = event;
        this.mUserList = list;
    }

    public Event getEvent() {
        return this.mEvent;
    }

    public void setEvent(Event event) {
        this.mEvent = event;
    }

    public List<UserEntity> getUserList() {
        return this.mUserList;
    }

    public void setUserList(List<UserEntity> list) {
        this.mUserList = list;
    }
}
