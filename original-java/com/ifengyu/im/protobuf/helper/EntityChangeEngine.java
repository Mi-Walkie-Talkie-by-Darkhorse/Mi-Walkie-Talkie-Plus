package com.ifengyu.im.protobuf.helper;

import android.text.TextUtils;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.model.SessionEntity;

public class EntityChangeEngine {
    public static SessionEntity getSessionEntity(MessageEntity messageEntity) {
        SessionEntity sessionEntity = new SessionEntity();
        sessionEntity.setLatestMsgData(messageEntity.getMessageDisplay());
        sessionEntity.setTime(messageEntity.getTime());
        sessionEntity.setLatestMsgId(messageEntity.getMsgId());
        sessionEntity.setSessionId(messageEntity.getFromId());
        sessionEntity.setTalkId(messageEntity.getFromId());
        sessionEntity.setSessionType(messageEntity.getSessionType());
        sessionEntity.setLatestMsgType(messageEntity.getMsgType());
        return sessionEntity;
    }

    public static String getSessionKey(int i, int i2) {
        return i2 + "_" + i;
    }

    public static String[] spiltSessionKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.split("_", 2);
        }
        throw new IllegalArgumentException("spiltSessionKey error,cause by empty sessionKey");
    }

    public static String getSessionKey(String str, int i) {
        return i + "_" + str;
    }
}
