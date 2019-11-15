package com.ifengyu.intercom.node.btkey;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class BtKeyDevParam extends a {
    private BTKEY_PARAM_TYPE a = BTKEY_PARAM_TYPE.NUll;
    private int b = -1;

    public enum BTKEY_PARAM_TYPE {
        NUll(-1),
        BTKEY_POWER(1);
        
        private final int c;

        private BTKEY_PARAM_TYPE(int i) {
            this.c = i;
        }

        public int a() {
            return this.c;
        }
    }

    public void a(BTKEY_PARAM_TYPE btkey_param_type) {
        this.a = btkey_param_type;
    }

    public void a(int i) {
        this.b = i;
    }

    public String toString() {
        return "BtKeyDevParam{type=" + this.a + ", power=" + this.b + '}';
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
                int i3 = (bArr[i] & 255) - 1;
                int i4 = i2 + 1;
                switch (bArr[i2] & 255) {
                    case 1:
                        if ((bArr[i4] & 255) != 1) {
                            break;
                        } else {
                            btKeyDevParam.a(BTKEY_PARAM_TYPE.BTKEY_POWER);
                            break;
                        }
                    case 2:
                        btKeyDevParam.a((int) bArr[i4] & 255);
                        break;
                }
                i = i3 + i4;
            }
            return btKeyDevParam;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
