package com.ifengyu.intercom.p214p;

import java.util.zip.CRC32;

/* renamed from: com.ifengyu.intercom.p.l */
/* loaded from: classes2.dex */
public class AES128 {

    /* renamed from: a */
    private static final byte[] f14472a = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    /* renamed from: b */
    private static final byte[] f14473b = {15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};

    /* renamed from: c */
    private static AES128 f14474c;

    static {
        "WeChatBluetoothDevice".getBytes();
        "WeChatDev".getBytes();
    }

    /* renamed from: b */
    public static AES128 m11096b() {
        if (f14474c == null) {
            f14474c = new AES128();
        }
        return f14474c;
    }

    /* renamed from: a */
    public long m11097a(byte[] bArr, int i, int i2) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i, i2);
        return crc32.getValue();
    }
}
