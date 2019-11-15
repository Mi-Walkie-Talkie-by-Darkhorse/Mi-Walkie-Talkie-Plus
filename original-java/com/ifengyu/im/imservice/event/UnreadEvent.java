package com.ifengyu.im.imservice.event;

import com.ifengyu.im.imservice.entity.UnreadEntity;

public class UnreadEvent {
    public UnreadEntity entity;
    public Event event;

    public enum Event {
        UNREAD_MSG_LIST_OK,
        UNREAD_MSG_RECEIVED,
        SESSION_READED_UNREAD_MSG
    }

    public UnreadEvent() {
    }

    public UnreadEvent(Event event2) {
        this.event = event2;
    }
}
