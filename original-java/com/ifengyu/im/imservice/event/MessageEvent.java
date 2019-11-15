package com.ifengyu.im.imservice.event;

import com.ifengyu.im.imservice.model.MessageEntity;

public class MessageEvent {
    public MessageEntity message;

    public MessageEvent(MessageEntity messageEntity) {
        this.message = messageEntity;
    }
}
