package com.ifengyu.intercom.node.btkey;

/* loaded from: classes2.dex */
public enum BT_PUBLIC_MSG {
    BT_OPEN_HF(1000),
    BT_CLOSE_HF,
    BT_DISCONNECT_HF,
    BT_HF_CONN_STATE_QUERY,
    BT_HF_CONNECTED,
    BT_HF_DISCONNECTED,
    BT_OPEN_PHONE_AUDIO,
    BT_CLOSE_PHONE_AUDIO,
    BT_HF_ACK;
    

    /* renamed from: a  reason: collision with root package name */
    private int f5847a;

    /* loaded from: classes2.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static int f5848a;
    }

    BT_PUBLIC_MSG() {
        this(a.f5848a);
    }

    public int a() {
        return this.f5847a;
    }

    BT_PUBLIC_MSG(int i) {
        this.f5847a = i;
        int unused = a.f5848a = i + 1;
    }
}
