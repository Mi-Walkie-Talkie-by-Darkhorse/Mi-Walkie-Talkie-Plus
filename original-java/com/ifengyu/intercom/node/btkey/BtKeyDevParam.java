package com.ifengyu.intercom.node.btkey;

import com.google.common.primitives.UnsignedBytes;

/* loaded from: classes2.dex */
public class BtKeyDevParam extends a {

    /* renamed from: a  reason: collision with root package name */
    private BTKEY_PARAM_TYPE f5859a = BTKEY_PARAM_TYPE.NUll;

    /* renamed from: b  reason: collision with root package name */
    private int f5860b = -1;

    /* loaded from: classes2.dex */
    public enum BTKEY_PARAM_TYPE {
        NUll(-1),
        BTKEY_POWER(1);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f5863a;

        BTKEY_PARAM_TYPE(int i) {
            this.f5863a = i;
        }

        public int a() {
            return this.f5863a;
        }
    }

    public void a(BTKEY_PARAM_TYPE btkey_param_type) {
        this.f5859a = btkey_param_type;
    }

    public String toString() {
        return "BtKeyDevParam{type=" + this.f5859a + ", power=" + this.f5860b + '}';
    }

    public void a(int i) {
        this.f5860b = i;
    }

    public static BtKeyDevParam a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            BtKeyDevParam btKeyDevParam = new BtKeyDevParam();
            int i = 0;
            while (i < bArr.length) {
                int i2 = i + 1;
                int i3 = (bArr[i] & UnsignedBytes.MAX_VALUE) - 1;
                int i4 = i2 + 1;
                int i5 = bArr[i2] & UnsignedBytes.MAX_VALUE;
                if (i5 != 1) {
                    if (i5 == 2) {
                        btKeyDevParam.a(bArr[i4] & UnsignedBytes.MAX_VALUE);
                    }
                } else if ((bArr[i4] & UnsignedBytes.MAX_VALUE) == 1) {
                    btKeyDevParam.a(BTKEY_PARAM_TYPE.BTKEY_POWER);
                }
                i = i3 + i4;
            }
            return btKeyDevParam;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
