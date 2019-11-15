package com.ifengyu.im.imservice.services;

import com.ifengyu.im.imservice.model.MessageEntity;

final /* synthetic */ class MessageService$$Lambda$0 implements Runnable {
    private final MessageEntity arg$1;

    MessageService$$Lambda$0(MessageEntity messageEntity) {
        this.arg$1 = messageEntity;
    }

    public void run() {
        MessageObserverHelper.getInstance().notifyMessageStatusChange(this.arg$1);
    }
}
