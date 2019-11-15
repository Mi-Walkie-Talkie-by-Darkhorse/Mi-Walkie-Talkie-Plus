package com.ifengyu.im.imservice.constant;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class MsgStatus {
    public static final int DRAFT = -1;
    public static final int FAIL = 2;
    public static final int READ = 3;
    public static final int SENDING = 0;
    public static final int SUCCESS = 1;
    public static final int UNREAD = 4;

    @Retention(RetentionPolicy.SOURCE)
    public @interface MsgStatusDef {
    }
}
