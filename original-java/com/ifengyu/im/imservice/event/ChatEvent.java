package com.ifengyu.im.imservice.event;

import com.ifengyu.im.DB.entity.UserEntity;

public class ChatEvent {
    private Event mEvent;
    private UserEntity mUserEntity;

    public enum Event {
        START_CHAT
    }

    public ChatEvent(Event event, UserEntity userEntity) {
        this.mEvent = event;
        this.mUserEntity = userEntity;
    }

    public Event getEvent() {
        return this.mEvent;
    }

    public void setEvent(Event event) {
        this.mEvent = event;
    }

    public UserEntity getUserEntity() {
        return this.mUserEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.mUserEntity = userEntity;
    }
}
