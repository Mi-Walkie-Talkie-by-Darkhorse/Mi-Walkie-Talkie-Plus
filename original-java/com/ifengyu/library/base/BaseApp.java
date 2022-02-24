package com.ifengyu.library.base;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;

/* loaded from: classes2.dex */
public class BaseApp extends Application {

    /* renamed from: a  reason: collision with root package name */
    protected static BaseApp f7184a;

    /* renamed from: b  reason: collision with root package name */
    protected static long f7185b;

    /* renamed from: c  reason: collision with root package name */
    protected static Handler f7186c;

    public static Handler a() {
        return f7186c;
    }

    public static BaseApp b() {
        return f7184a;
    }

    public static long c() {
        return f7185b;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f7184a = this;
        Thread.currentThread();
        f7185b = Process.myTid();
        f7186c = new Handler(Looper.getMainLooper());
    }
}
