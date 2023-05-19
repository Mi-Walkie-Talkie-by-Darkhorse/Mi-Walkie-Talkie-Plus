package com.xiaomi.push;

import android.content.Context;
import android.os.Build;
import com.xiaomi.push.service.C6372ax;

/* renamed from: com.xiaomi.push.do */
/* loaded from: classes2.dex */
public class C6089do {
    /* renamed from: a */
    private static void m3363a(byte[] bArr) {
        if (bArr.length >= 2) {
            bArr[0] = 99;
            bArr[1] = 100;
        }
    }

    /* renamed from: a */
    public static boolean m3365a(Context context, String str, long j) {
        if (C6372ax.m1530a(context).m1531a(EnumC6243ia.DCJobMutualSwitch.m2484a(), false)) {
            return (Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29) && !C5976ai.m3788a(context, str, j);
        }
        return false;
    }

    /* renamed from: a */
    public static byte[] m3364a(String str, byte[] bArr) {
        byte[] m3632a = C6020bl.m3632a(str);
        try {
            m3363a(m3632a);
            return C6210h.m2666a(m3632a, bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static byte[] m3362b(String str, byte[] bArr) {
        byte[] m3632a = C6020bl.m3632a(str);
        try {
            m3363a(m3632a);
            return C6210h.m2665b(m3632a, bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
