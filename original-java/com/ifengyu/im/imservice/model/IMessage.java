package com.ifengyu.im.imservice.model;

public interface IMessage {
    String buildSessionKey();

    int getAttachStatus();

    MsgAttachment getAttachment();

    String getContent();

    int getDirect();

    String getFromId();

    long getMsgId();

    long getMsgSeq();

    int getMsgType();

    int getSessionType();

    int getStatus();

    long getTime();

    String getToId();

    boolean isTheSame(IMessage iMessage);

    void setAttachStatus(int i);

    void setAttachment(MsgAttachment msgAttachment);

    void setContent(String str);

    void setDirect(int i);

    void setFromId(String str);

    void setMsgId(long j);

    void setMsgSeq(long j);

    void setMsgType(int i);

    void setSessionType(int i);

    void setStatus(int i);

    void setTime(long j);

    void setToId(String str);
}
