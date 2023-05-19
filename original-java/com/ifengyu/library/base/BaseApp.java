package com.ifengyu.library.base;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;

/* loaded from: classes2.dex */
public class BaseApp extends Application {

    /* renamed from: a */
    protected static BaseApp f16369a;

    /* renamed from: b */
    protected static long f16370b;

    /* renamed from: c */
    protected static Handler f16371c;

    /* renamed from: a */
    public static Handler m8713a() {
        return f16371c;
    }

    /* renamed from: b */
    public static BaseApp m8712b() {
        return f16369a;
    }

    /* renamed from: c */
    public static long m8711c() {
        return f16370b;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f16369a = this;
        Thread.currentThread();
        f16370b = Process.myTid();
        f16371c = new Handler(Looper.getMainLooper());
    }
}
