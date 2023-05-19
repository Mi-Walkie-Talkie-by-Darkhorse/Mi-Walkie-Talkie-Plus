package com.ifengyu.library.event;

/* loaded from: classes2.dex */
public class SimpleEvent {
    public static final int ACCOUNT_LOGIN_AT_ANOTHER = 3;
    public static final int BIND_DEVICE_SUCCESS = 10;
    public static final int HAVE_NEW_CONTACT_APPLICATION = 20;
    public static final int HAVE_NEW_JOIN_GROUP_APPLICATION = 21;
    public static final int LOGIN_REFRESH_TOKEN_EXPIRE = 2;
    public static final int LOOKED_NEW_APPLICATION = 22;
    public static final int REGISTER_SUCCESS_AND_LOGIN = 1;
    public static final int UNBIND_DEVICE_SUCCESS = 11;
    public static final int UPDATE_DEVICE_SUCCESS = 12;
    private int event;

    public SimpleEvent(int i) {
        this.event = i;
    }

    public int getEvent() {
        return this.event;
    }

    public void setEvent(int i) {
        this.event = i;
    }
}
