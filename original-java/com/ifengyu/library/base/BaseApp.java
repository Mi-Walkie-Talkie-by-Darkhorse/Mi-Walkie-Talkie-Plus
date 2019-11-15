package com.ifengyu.library.base;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;

public class BaseApp extends Application {
    protected static BaseApp c;
    protected static Thread d;
    protected static long e;
    protected static Handler f;

    public void onCreate() {
        super.onCreate();
        c = this;
        d = Thread.currentThread();
        e = (long) Process.myTid();
        f = new Handler(Looper.getMainLooper());
    }

    public static BaseApp l() {
        return c;
    }

    public static long m() {
        return e;
    }

    public static Handler n() {
        return f;
    }
}
