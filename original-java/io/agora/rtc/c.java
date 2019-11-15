package io.agora.rtc;

import android.content.Context;
import io.agora.rtc.internal.RtcEngineImpl;

/* compiled from: RtcEngine */
public abstract class c {
    private static RtcEngineImpl a = null;

    public abstract int a(int i);

    public abstract int a(int i, int i2);

    public abstract int a(int i, boolean z);

    public abstract int a(String str);

    public abstract int a(String str, String str2, String str3, int i);

    public abstract String a(String str, String str2);

    public abstract boolean a(boolean z);

    public abstract int b();

    public abstract int b(int i);

    public abstract int b(String str);

    public abstract void b(boolean z);

    public abstract int c(boolean z);

    public abstract int d(boolean z);

    public abstract int e(boolean z);

    public static synchronized c a(Context context, String str, a aVar) throws Exception {
        RtcEngineImpl rtcEngineImpl;
        synchronized (c.class) {
            if (context != null) {
                if (RtcEngineImpl.c()) {
                    if (a == null) {
                        a = new RtcEngineImpl(context, str, aVar);
                    } else {
                        a.b(context, str, aVar);
                    }
                    rtcEngineImpl = a;
                }
            }
            rtcEngineImpl = null;
        }
        return rtcEngineImpl;
    }

    public static synchronized void a() {
        synchronized (c.class) {
            if (a != null) {
                a.d();
                a = null;
                System.gc();
            }
        }
    }
}
