package com.xiaomi.push;

import android.content.Context;
import com.google.common.primitives.UnsignedBytes;

/* renamed from: com.xiaomi.push.ah */
/* loaded from: classes2.dex */
public class C5975ah {

    /* renamed from: a */
    static final char[] f21000a = "0123456789ABCDEF".toCharArray();

    /* renamed from: a */
    public static String m3789a(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder(i2 * 2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i + i3] & UnsignedBytes.MAX_VALUE;
            char[] cArr = f21000a;
            sb.append(cArr[i4 >> 4]);
            sb.append(cArr[i4 & 15]);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static boolean m3790a(Context context) {
        return C5974ag.f20999a;
    }
}
