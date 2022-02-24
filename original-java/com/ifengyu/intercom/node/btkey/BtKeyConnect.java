package com.ifengyu.intercom.node.btkey;

import com.google.common.primitives.UnsignedBytes;

/* loaded from: classes2.dex */
public class BtKeyConnect extends a {

    /* renamed from: a  reason: collision with root package name */
    private BTKEY_CONNCODE f5853a = BTKEY_CONNCODE.NULL;

    /* renamed from: b  reason: collision with root package name */
    private int f5854b = -1;

    /* renamed from: c  reason: collision with root package name */
    private String f5855c = null;

    /* loaded from: classes2.dex */
    public enum BTKEY_CONNCODE {
        NULL(-1),
        BTKEY_DISCONNECT(0),
        BTKEY_CONNECT(1),
        BTKEY_ALLOW(2),
        BTKEY_LOWPOWER(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f5858a;

        BTKEY_CONNCODE(int i) {
            this.f5858a = i;
        }

        public int a() {
            return this.f5858a;
        }
    }

    public BTKEY_CONNCODE a() {
        return this.f5853a;
    }

    public String toString() {
        return "BtKeyConnect{connCode=" + this.f5853a + ", deviceType=" + this.f5854b + ", btmac='" + this.f5855c + "'}";
    }

    public void a(BTKEY_CONNCODE btkey_conncode) {
        this.f5853a = btkey_conncode;
    }

    public void a(int i) {
        this.f5854b = i;
    }

    public static BtKeyConnect a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            BtKeyConnect btKeyConnect = new BtKeyConnect();
            int i = 0;
            while (i < bArr.length) {
                int i2 = i + 1;
                int i3 = (bArr[i] & UnsignedBytes.MAX_VALUE) - 1;
                int i4 = i2 + 1;
                int i5 = bArr[i2] & UnsignedBytes.MAX_VALUE;
                if (i5 == 1) {
                    int i6 = bArr[i4] & UnsignedBytes.MAX_VALUE;
                    if (i6 == 0) {
                        btKeyConnect.a(BTKEY_CONNCODE.BTKEY_DISCONNECT);
                    } else if (i6 == 1) {
                        btKeyConnect.a(BTKEY_CONNCODE.BTKEY_CONNECT);
                    } else if (i6 == 2) {
                        btKeyConnect.a(BTKEY_CONNCODE.BTKEY_ALLOW);
                    } else if (i6 == 3) {
                        btKeyConnect.a(BTKEY_CONNCODE.BTKEY_LOWPOWER);
                    }
                } else if (i5 == 2) {
                    btKeyConnect.a(bArr[i4] & UnsignedBytes.MAX_VALUE);
                }
                i = i3 + i4;
            }
            return btKeyConnect;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
