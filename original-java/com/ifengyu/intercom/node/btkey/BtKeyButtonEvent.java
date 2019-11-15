package com.ifengyu.intercom.node.btkey;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class BtKeyButtonEvent extends a {
    private BTKEY_EVENT a = BTKEY_EVENT.NULL;

    public enum BTKEY_EVENT {
        NULL(-1),
        BTKEY_PRESS(1),
        BTKEY_RELEASE(2);
        
        private final int d;

        private BTKEY_EVENT(int i) {
            this.d = i;
        }
    }

    public void a(BTKEY_EVENT btkey_event) {
        this.a = btkey_event;
    }

    public String toString() {
        return "BtKeyButtonEvent{result=" + this.a + '}';
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
                int i3 = (bArr[i] & 255) - 1;
                int i4 = i2 + 1;
                switch (bArr[i2] & 255) {
                    case 1:
                        byte b = bArr[i4] & 255;
                        if (b != 1) {
                            if (b != 2) {
                                break;
                            } else {
                                btKeyButtonEvent.a(BTKEY_EVENT.BTKEY_RELEASE);
                                break;
                            }
                        } else {
                            btKeyButtonEvent.a(BTKEY_EVENT.BTKEY_PRESS);
                            break;
                        }
                }
                i = i3 + i4;
            }
            return btKeyButtonEvent;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
