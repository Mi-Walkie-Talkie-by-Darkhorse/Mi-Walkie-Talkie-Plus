package com.ifengyu.intercom.node.btkey;

import com.google.common.primitives.UnsignedBytes;

/* loaded from: classes2.dex */
public class BtKeyButtonEvent extends a {

    /* renamed from: a  reason: collision with root package name */
    private BTKEY_EVENT f5849a = BTKEY_EVENT.NULL;

    /* loaded from: classes2.dex */
    public enum BTKEY_EVENT {
        NULL(-1),
        BTKEY_PRESS(1),
        BTKEY_RELEASE(2);

        BTKEY_EVENT(int i) {
        }
    }

    public void a(BTKEY_EVENT btkey_event) {
        this.f5849a = btkey_event;
    }

    public String toString() {
        return "BtKeyButtonEvent{result=" + this.f5849a + '}';
    }

    public static BtKeyButtonEvent a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            BtKeyButtonEvent btKeyButtonEvent = new BtKeyButtonEvent();
            int i = 0;
            while (i < bArr.length) {
                int i2 = i + 1;
                int i3 = (bArr[i] & UnsignedBytes.MAX_VALUE) - 1;
                int i4 = i2 + 1;
                if ((bArr[i2] & UnsignedBytes.MAX_VALUE) == 1) {
                    int i5 = bArr[i4] & UnsignedBytes.MAX_VALUE;
                    if (i5 == 1) {
                        btKeyButtonEvent.a(BTKEY_EVENT.BTKEY_PRESS);
                    } else if (i5 == 2) {
                        btKeyButtonEvent.a(BTKEY_EVENT.BTKEY_RELEASE);
                    }
                }
                i = i3 + i4;
            }
            return btKeyButtonEvent;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
