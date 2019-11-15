package com.ifengyu.im.imservice.model;

import android.text.TextUtils;
import com.ifengyu.im.config.DBConstant;
import com.ifengyu.im.imservice.constant.MsgType;
import com.ifengyu.im.imservice.constant.SessionType;
import com.ifengyu.im.imservice.entity.NotifyCommand;
import com.ifengyu.im.protobuf.helper.MessageParseEngine;
import com.mi.mimsgsdk.message.AudioBody;
import com.mi.mimsgsdk.message.CustomBody;
import com.mi.mimsgsdk.message.MiMsgBody;
import com.mi.mimsgsdk.message.TextBody;
import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.xiaomi.mipush.sdk.Constants;

public class MessageEntity implements IMessage {
    public int attachStatus;
    public MsgAttachment attachment;
    public NotifyCommand command;
    public String content;
    public int direct;
    public String fromId;
    public Long id;
    public long msgId;
    private long msgSeq;
    public int msgType;
    public int sessionType;
    public int status;
    public long time;
    public String toId;

    public static class AttachmentConverter {
        public MsgAttachment convertToEntityProperty(String str) {
            AudioAttachment audioAttachment = null;
            if (str != null) {
                String[] split = str.split(Constants.ACCEPT_TIME_SEPARATOR_SP);
                if (split.length > 0 && Integer.parseInt(split[0]) == 2) {
                    audioAttachment = new AudioAttachment();
                    if (split.length >= 3) {
                        audioAttachment.buildAttachment(split[1], split[2]);
                    }
                }
            }
            return audioAttachment;
        }

        public String convertToDatabaseValue(MsgAttachment msgAttachment) {
            return msgAttachment.codeAttachment();
        }
    }

    public MessageEntity(Long l, long j, long j2, String str, String str2, int i, int i2, int i3, int i4, String str3, long j3, MsgAttachment msgAttachment, int i5) {
        this.id = l;
        this.msgId = j;
        this.msgSeq = j2;
        this.fromId = str;
        this.toId = str2;
        this.sessionType = i;
        this.msgType = i2;
        this.status = i3;
        this.direct = i4;
        this.content = str3;
        this.time = j3;
        this.attachment = msgAttachment;
        this.attachStatus = i5;
    }

    public MessageEntity() {
    }

    public long getMsgId() {
        return this.msgId;
    }

    public long getMsgSeq() {
        return this.msgSeq;
    }

    public void setMsgSeq(long j) {
        this.msgSeq = j;
    }

    public void setMsgId(long j) {
        this.msgId = j;
    }

    public boolean isTheSame(IMessage iMessage) {
        return iMessage != null && iMessage.getMsgId() == this.msgId;
    }

    public int getSessionType() {
        return this.sessionType;
    }

    public void setSessionType(int i) {
        this.sessionType = i;
    }

    public int getMsgType() {
        return this.msgType;
    }

    public void setMsgType(int i) {
        this.msgType = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public int getDirect() {
        return this.direct;
    }

    public void setDirect(int i) {
        this.direct = i;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public long getTime() {
        return this.time;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setFromId(String str) {
        this.fromId = str;
    }

    public String getFromId() {
        return this.fromId;
    }

    public void setToId(String str) {
        this.toId = str;
    }

    public String getToId() {
        return this.toId;
    }

    public MsgAttachment getAttachment() {
        return this.attachment;
    }

    public void setAttachment(MsgAttachment msgAttachment) {
        this.attachment = msgAttachment;
    }

    public int getAttachStatus() {
        return this.attachStatus;
    }

    public void setAttachStatus(int i) {
        this.attachStatus = i;
    }

    public NotifyCommand getCommand() {
        return this.command;
    }

    public void setCommand(NotifyCommand notifyCommand) {
        this.command = notifyCommand;
    }

    public String buildSessionKey() {
        return getSessionKey(getSessionType(), getPeerId(this.direct == 0));
    }

    public String getPeerId(boolean z) {
        if (z) {
            return this.toId;
        }
        switch (getSessionType()) {
            case -1:
                return this.toId;
            case 0:
                return this.fromId;
            case 1:
                return this.fromId;
            case 2:
            case 3:
                return this.toId;
            default:
                return this.toId;
        }
    }

    public boolean isSend(String str) {
        return !TextUtils.isEmpty(str) && str.equals(this.fromId);
    }

    private String getSessionKey(int i, String str) {
        return i + "_" + str;
    }

    public String toString() {
        return "MessageEntity{id=" + this.id + ", msgId=" + this.msgId + ", msgSeq=" + this.msgSeq + ", fromId='" + this.fromId + '\'' + ", toId='" + this.toId + '\'' + ", sessionType=" + this.sessionType + ", msgType=" + this.msgType + ", status=" + this.status + ", direct=" + this.direct + ", content='" + this.content + '\'' + ", time=" + this.time + ", attachment=" + this.attachment + ", attachStatus=" + this.attachStatus + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MessageEntity messageEntity = (MessageEntity) obj;
        if (this.msgId == 0 || messageEntity.msgId == 0) {
            if (this.msgSeq != messageEntity.msgSeq) {
                return false;
            }
            return true;
        } else if (this.msgId != messageEntity.msgId) {
            return false;
        } else {
            return true;
        }
    }

    public int hashCode() {
        return (int) (this.msgId ^ (this.msgId >>> 32));
    }

    public static MessageEntity getMessageEntity(int i, MiMessage miMessage, String str) {
        MessageEntity messageEntity = new MessageEntity();
        messageEntity.setMsgId(miMessage.msgId);
        messageEntity.setMsgSeq(miMessage.msgSeq);
        messageEntity.setDirect(miMessage.from.equals(str) ? 0 : 1);
        messageEntity.setStatus(4);
        messageEntity.setFromId(miMessage.from);
        messageEntity.setToId(miMessage.to);
        messageEntity.setMsgType(MsgType.getMsgType(miMessage));
        messageEntity.setSessionType(SessionType.getSessionType(i));
        messageEntity.setTime(miMessage.sendTime > 0 ? ((long) miMessage.sendTime) * 1000 : System.currentTimeMillis());
        MiMsgBody miMsgBody = miMessage.body;
        if (miMsgBody instanceof AudioBody) {
            AudioBody audioBody = (AudioBody) miMsgBody;
            AudioAttachment audioAttachment = new AudioAttachment();
            audioAttachment.setUrl(audioBody.getUrl());
            audioAttachment.setDuration(audioBody.getLength());
            messageEntity.setAttachment(audioAttachment);
            messageEntity.setAttachStatus(2);
        } else if (miMsgBody instanceof TextBody) {
            messageEntity.setContent(((TextBody) miMsgBody).getText());
        } else if (miMsgBody instanceof CustomBody) {
            messageEntity.setContent(new String(((CustomBody) miMsgBody).codeBody()));
        }
        return messageEntity;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public String getMessageDisplay() {
        switch (this.msgType) {
            case 0:
                NotifyCommand parseGroupNotifyMsg = MessageParseEngine.parseGroupNotifyMsg(this.content);
                if (parseGroupNotifyMsg != null) {
                    return parseGroupNotifyMsg.displayName + parseGroupNotifyMsg.displayContent;
                }
                break;
            case 1:
                return this.content;
            case 2:
                return DBConstant.DISPLAY_FOR_AUDIO;
            case 7:
                return DBConstant.DISPLAY_FOR_SYSTEM;
            case 10:
                return DBConstant.DISPLAY_FOR_IMAGE;
        }
        return DBConstant.DISPLAY_FOR_ERROR;
    }
}
