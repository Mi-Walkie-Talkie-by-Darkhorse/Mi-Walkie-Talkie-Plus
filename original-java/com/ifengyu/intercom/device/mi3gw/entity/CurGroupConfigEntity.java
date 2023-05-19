package com.ifengyu.intercom.device.mi3gw.entity;

/* loaded from: classes2.dex */
public class CurGroupConfigEntity {
    public static final int SWITCH_METHOD_AUTO = 2;
    public static final int SWITCH_METHOD_HAND = 1;
    public static final int SWITCH_STATUS_CLOSED = 0;
    public static final int SWITCH_STATUS_OPENED = 1;
    private int switchMethod;
    private int switchStatus;

    public int getSwitchMethod() {
        return this.switchMethod;
    }

    public int getSwitchStatus() {
        return this.switchStatus;
    }

    public void setSwitchMethod(int i) {
        this.switchMethod = i;
    }

    public void setSwitchStatus(int i) {
        this.switchStatus = i;
    }
}
