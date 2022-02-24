package com.xiaomi.push;

import android.content.Context;
import com.google.common.primitives.UnsignedBytes;

/* loaded from: classes2.dex */
public class ah {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f8736a = "0123456789ABCDEF".toCharArray();

    public static String a(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder(i2 * 2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i + i3] & UnsignedBytes.MAX_VALUE;
            sb.append(f8736a[i4 >> 4]);
            sb.append(f8736a[i4 & 15]);
        }
        return sb.toString();
    }

    public static boolean a(Context context) {
        return ag.f84a;
    }
}
