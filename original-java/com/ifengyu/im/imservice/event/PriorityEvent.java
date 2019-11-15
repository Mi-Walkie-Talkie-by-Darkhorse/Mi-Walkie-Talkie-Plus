package com.ifengyu.im.imservice.event;

public class PriorityEvent {
    public Event event;
    public Object object;

    public enum Event {
        MSG_RECEIVED_MESSAGE
    }
}
