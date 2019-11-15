package com.ifengyu.im.imservice.constant;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class AttachStatus {
    public static final int DEF = 0;
    public static final int FAIL = 3;
    public static final int TRANSFERRED = 2;
    public static final int TRANSFERRING = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AttachStatusDef {
    }
}
