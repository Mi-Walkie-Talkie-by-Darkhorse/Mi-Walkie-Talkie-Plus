package com.ifengyu.im.imservice.constant;

import com.mi.mimsgsdk.service.aidl.MiMessage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class MsgType {
    public static final int AUDIO = 2;
    public static final int AVCHAT = 6;
    public static final int BODY_TYPE_AUDIO = 2;
    public static final int BODY_TYPE_CUSTOM = 0;
    public static final int BODY_TYPE_TEXT = 1;
    public static final int BODY_TYPE_VIDEO = 3;
    public static final int CUSTOM = 0;
    public static final int FILE = 5;
    public static final int IMAGE = 10;
    public static final int LOCATION = 4;
    public static final int NOTIFICATION = 7;
    public static final int ROBOT = 9;
    public static final int TEXT = 1;
    public static final int TIP = 8;
    public static final int UNDEF = -1;
    public static final int VIDEO = 3;

    @Retention(RetentionPolicy.SOURCE)
    public @interface MsgTypeDef {
    }

    public static int getMsgType(MiMessage miMessage) {
        switch (miMessage.bodyType) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            default:
                return -1;
        }
    }
}
