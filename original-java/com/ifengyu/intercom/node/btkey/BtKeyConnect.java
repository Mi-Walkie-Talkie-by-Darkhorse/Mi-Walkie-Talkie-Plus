package com.ifengyu.intercom.node.btkey;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class BtKeyConnect extends a {
    private BTKEY_CONNCODE a = BTKEY_CONNCODE.NULL;
    private int b = -1;
    private String c = null;

    public enum BTKEY_CONNCODE {
        NULL(-1),
        BTKEY_DISCONNECT(0),
        BTKEY_CONNECT(1),
        BTKEY_ALLOW(2),
        BTKEY_LOWPOWER(3);
        
        private final int f;

        private BTKEY_CONNCODE(int i) {
            this.f = i;
        }

        public int a() {
            return this.f;
        }
    }

    public BTKEY_CONNCODE a() {
        return this.a;
    }

    public void a(BTKEY_CONNCODE btkey_conncode) {
        this.a = btkey_conncode;
    }

    public void a(int i) {
        this.b = i;
    }

    public String toString() {
        return "BtKeyConnect{connCode=" + this.a + ", deviceType=" + this.b + ", btmac='" + this.c + '\'' + '}';
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
                int i3 = (bArr[i] & 255) - 1;
                int i4 = i2 + 1;
                switch (bArr[i2] & 255) {
                    case 1:
                        byte b2 = bArr[i4] & 255;
                        if (b2 != 0) {
                            if (b2 != 1) {
                                if (b2 != 2) {
                                    if (b2 != 3) {
                                        break;
                                    } else {
                                        btKeyConnect.a(BTKEY_CONNCODE.BTKEY_LOWPOWER);
                                        break;
                                    }
                                } else {
                                    btKeyConnect.a(BTKEY_CONNCODE.BTKEY_ALLOW);
                                    break;
                                }
                            } else {
                                btKeyConnect.a(BTKEY_CONNCODE.BTKEY_CONNECT);
                                break;
                            }
                        } else {
                            btKeyConnect.a(BTKEY_CONNCODE.BTKEY_DISCONNECT);
                            break;
                        }
                    case 2:
                        btKeyConnect.a((int) bArr[i4] & 255);
                        break;
                }
                i = i3 + i4;
            }
            return btKeyConnect;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
