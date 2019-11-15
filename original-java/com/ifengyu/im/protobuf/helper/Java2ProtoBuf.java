package com.ifengyu.im.protobuf.helper;

import com.ifengyu.im.protobuf.IMBaseDefine.MsgType;
import com.ifengyu.im.protobuf.IMBaseDefine.SessionType;

public class Java2ProtoBuf {
    public static MsgType getProtoMsgType(int i) {
        switch (i) {
            case 1:
                return MsgType.MSG_TYPE_SINGLE_TEXT;
            case 2:
                return MsgType.MSG_TYPE_SINGLE_AUDIO;
            case 17:
                return MsgType.MSG_TYPE_GROUP_TEXT;
            case 18:
                return MsgType.MSG_TYPE_GROUP_AUDIO;
            default:
                throw new IllegalArgumentException("msgType is illegal,cause by #getProtoMsgType#" + i);
        }
    }

    public static SessionType getProtoSessionType(int i) {
        switch (i) {
            case 1:
                return SessionType.SESSION_TYPE_SINGLE;
            case 2:
                return SessionType.SESSION_TYPE_GROUP;
            default:
                throw new IllegalArgumentException("sessionType is illegal,cause by #getProtoSessionType#" + i);
        }
    }
}
