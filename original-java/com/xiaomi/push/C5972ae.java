package com.xiaomi.push;

import com.google.common.primitives.UnsignedBytes;

/* renamed from: com.xiaomi.push.ae */
/* loaded from: classes2.dex */
public class C5972ae {
    /* renamed from: a */
    public static int m3792a(byte[] bArr) {
        if (bArr.length == 4) {
            return (bArr[3] & UnsignedBytes.MAX_VALUE) | 0 | ((bArr[0] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[1] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8);
        }
        throw new IllegalArgumentException("the length of bytes must be 4");
    }

    /* renamed from: a */
    public static byte[] m3793a(int i) {
        return new byte[]{(byte) (i >> 24), (byte) (i >> 16), (byte) (i >> 8), (byte) i};
    }
}
