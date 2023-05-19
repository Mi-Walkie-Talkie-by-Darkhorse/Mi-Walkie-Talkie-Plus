package p048b.p065c.p066a.p072g;

import android.util.Log;

/* renamed from: b.c.a.g.d */
/* loaded from: classes2.dex */
public class OkLogger {

    /* renamed from: a */
    private static boolean f5356a = true;

    /* renamed from: a */
    public static void m21049a(Throwable th) {
        if (!f5356a || th == null) {
            return;
        }
        th.printStackTrace();
    }

    /* renamed from: b */
    public static void m21048b(String str, String str2) {
        if (f5356a) {
            Log.v(str, str2);
        }
    }
}
