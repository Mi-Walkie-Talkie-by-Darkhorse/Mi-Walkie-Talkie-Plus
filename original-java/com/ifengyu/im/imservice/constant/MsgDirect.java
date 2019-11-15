package com.ifengyu.im.imservice.constant;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class MsgDirect {
    public static final int IN = 1;
    public static final int OUT = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface MsgDirectDef {
    }
}
