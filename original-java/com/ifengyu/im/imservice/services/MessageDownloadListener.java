package com.ifengyu.im.imservice.services;

import com.ifengyu.im.imservice.model.MessageEntity;
import com.liulishuo.filedownloader.a;
import com.liulishuo.filedownloader.m;

public class MessageDownloadListener extends m {
    private MessageEntity messageEntity;

    public MessageDownloadListener(MessageEntity messageEntity2) {
        this.messageEntity = messageEntity2;
    }

    /* access modifiers changed from: protected */
    public void completed(a aVar) {
        completed(aVar, this.messageEntity);
    }

    /* access modifiers changed from: protected */
    public void completed(a aVar, MessageEntity messageEntity2) {
    }
}
