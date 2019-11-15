package com.mi.milinkforgame.sdk.base.debug;

import android.util.Log;

public final class LogcatTracer extends Tracer {
    public LogcatTracer() {
        setTraceLevel(63);
    }

    /* access modifiers changed from: protected */
    public void doTrace(int i, Thread thread, long j, String str, String str2, Throwable th) {
        switch (i) {
            case 1:
                Log.v(str, str2, th);
                return;
            case 2:
                Log.d(str, str2, th);
                return;
            case 4:
                Log.i(str, str2, th);
                return;
            case 8:
                Log.w(str, str2, th);
                return;
            case 16:
                Log.e(str, str2, th);
                return;
            case 32:
                Log.e(str, str2, th);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void doTrace(String str) {
        Log.v("", str);
    }
}
