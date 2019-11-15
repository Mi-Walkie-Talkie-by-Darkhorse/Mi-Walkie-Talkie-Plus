package com.ifengyu.im.imservice.model;

public interface MsgAttachment {
    MsgAttachment buildAttachment(String... strArr);

    String codeAttachment();
}
