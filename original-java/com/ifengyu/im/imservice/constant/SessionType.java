package com.ifengyu.im.imservice.constant;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class SessionType {
    public static final int NONE = -1;
    public static final int P2P = 1;
    public static final int ROOM = 2;
    public static final int SYSTEM = 0;
    public static final int TEAM = 3;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SessionTypeDef {
    }

    public static int getSessionType(int i) {
        switch (i) {
            case 2:
                return 2;
            case 3:
                return 3;
            default:
                return 1;
        }
    }
}
