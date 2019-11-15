package com.ifengyu.im.imservice.event;

import com.ifengyu.im.imservice.model.MessageEntity;
import java.util.List;

public class MessageHistoryEvent {
    public List<MessageEntity> messageList;

    public MessageHistoryEvent(List<MessageEntity> list) {
        this.messageList = list;
    }
}
