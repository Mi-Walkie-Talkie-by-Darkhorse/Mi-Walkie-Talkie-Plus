package com.ifengyu.intercom.i;

import java.util.zip.CRC32;

/* compiled from: AES128.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f5319a = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f5320b = {15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};

    /* renamed from: c  reason: collision with root package name */
    private static h f5321c;

    static {
        "WeChatBluetoothDevice".getBytes();
        "WeChatDev".getBytes();
    }

    public static h a() {
        if (f5321c == null) {
            f5321c = new h();
        }
        return f5321c;
    }

    public long a(byte[] bArr, int i, int i2) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i, i2);
        return crc32.getValue();
    }
}
