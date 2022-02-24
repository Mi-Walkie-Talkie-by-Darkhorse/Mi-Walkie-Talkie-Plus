package com.xiaomi.push;

import android.content.Context;
import android.os.Build;
import com.xiaomi.push.service.ax;

/* renamed from: com.xiaomi.push.do  reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {
    private static void a(byte[] bArr) {
        if (bArr.length >= 2) {
            bArr[0] = 99;
            bArr[1] = 100;
        }
    }

    public static boolean a(Context context, String str, long j) {
        if (ax.a(context).a(ia.DCJobMutualSwitch.a(), false)) {
            return (Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29) && !ai.a(context, str, j);
        }
        return false;
    }

    public static byte[] a(String str, byte[] bArr) {
        byte[] a2 = bl.m102a(str);
        try {
            a(a2);
            return h.a(a2, bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(String str, byte[] bArr) {
        byte[] a2 = bl.m102a(str);
        try {
            a(a2);
            return h.b(a2, bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
