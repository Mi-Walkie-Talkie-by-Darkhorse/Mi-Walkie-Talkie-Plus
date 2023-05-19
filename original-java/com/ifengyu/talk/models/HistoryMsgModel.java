package com.ifengyu.talk.models;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

@Entity(tableName = "history_msg")
/* loaded from: classes2.dex */
public class HistoryMsgModel {
    public static final int MSG_TYPE_AUDIO_FILE = 4;
    public static final int MSG_TYPE_AUDIO_SPEECH = 3;
    public static final int MSG_TYPE_CHANGE_GROUP_AVATAR = 14;
    public static final int MSG_TYPE_CHANGE_GROUP_NAME = 15;
    public static final int MSG_TYPE_INVITE_TO_GROUP = 5;
    public static final int MSG_TYPE_JOIN_GROUP_BY_TOKEN = 6;
    public static final int MSG_TYPE_LOCATION = 11;
    public static final int MSG_TYPE_ONE_TO_ONE_GROUP = 9;
    public static final int MSG_TYPE_PIC = 2;
    public static final int MSG_TYPE_QUIT_GROUP = 7;
    public static final int MSG_TYPE_SESSION_STATE = 12;
    public static final int MSG_TYPE_SPEECH_ACTION_FINISH = 1010102;
    public static final int MSG_TYPE_SPEECH_ACTION_ING = 1010101;
    public static final int MSG_TYPE_TEXT = 1;
    public static final int MSG_TYPE_TRANS_GROUP = 8;
    public static final int MSG_TYPE_VIDEO = 13;
    public static final int MSG_TYPE_VIDEO_FILE = 10;
    private String account;
    private String body;
    @Ignore
    private Object bodyParse;
    private long gid;
    @PrimaryKey

    /* renamed from: id */
    private long f16658id;
    @ColumnInfo(name = "msg_time")
    private long msgTime;
    @ColumnInfo(name = "msg_type")
    private int msgType;
    private long receiver;
    @ColumnInfo(name = "receiver_type")
    private int receiverType;
    private long sender;
    @ColumnInfo(name = "sender_type")
    private int senderType;
    @ColumnInfo(name = "speech_time")
    private long speechTime;
    @Ignore
    private String toWord;
    @ColumnInfo(name = "u_name")
    private String uname;

    public String getAccount() {
        return this.account;
    }

    public String getBody() {
        return this.body;
    }

    public Object getBodyParse() {
        return this.bodyParse;
    }

    public long getGid() {
        return this.gid;
    }

    public long getId() {
        return this.f16658id;
    }

    public long getMsgTime() {
        return this.msgTime;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public long getReceiver() {
        return this.receiver;
    }

    public int getReceiverType() {
        return this.receiverType;
    }

    public long getSender() {
        return this.sender;
    }

    public int getSenderType() {
        return this.senderType;
    }

    public long getSpeechTime() {
        return this.speechTime;
    }

    public String getToWord() {
        return this.toWord;
    }

    public String getUname() {
        return this.uname;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void setBodyParse(Object obj) {
        this.bodyParse = obj;
    }

    public void setGid(long j) {
        this.gid = j;
    }

    public void setId(long j) {
        this.f16658id = j;
    }

    public void setMsgTime(long j) {
        this.msgTime = j;
    }

    public void setMsgType(int i) {
        this.msgType = i;
    }

    public void setReceiver(long j) {
        this.receiver = j;
    }

    public void setReceiverType(int i) {
        this.receiverType = i;
    }

    public void setSender(long j) {
        this.sender = j;
    }

    public void setSenderType(int i) {
        this.senderType = i;
    }

    public void setSpeechTime(long j) {
        this.speechTime = j;
    }

    public void setToWord(String str) {
        this.toWord = str;
    }

    public void setUname(String str) {
        this.uname = str;
    }

    public String toString() {
        return "HistoryMsgEntity{id=" + this.f16658id + ", msgType=" + this.msgType + ", body='" + this.body + "', msgTime=" + this.msgTime + ", sender=" + this.sender + ", receiver=" + this.receiver + ", senderType=" + this.senderType + ", receiverType=" + this.receiverType + ", speechTime=" + this.speechTime + ", uname='" + this.uname + "', account='" + this.account + "', gid=" + this.gid + '}';
    }
}
