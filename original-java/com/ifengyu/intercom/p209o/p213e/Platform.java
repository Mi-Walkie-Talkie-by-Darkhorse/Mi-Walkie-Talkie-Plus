package com.ifengyu.intercom.p209o.p213e;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* renamed from: com.ifengyu.intercom.o.e.c */
/* loaded from: classes2.dex */
public class Platform {

    /* renamed from: a */
    private static final Platform f14431a = m11318c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Platform.java */
    /* renamed from: com.ifengyu.intercom.o.e.c$a */
    /* loaded from: classes2.dex */
    public static class C4136a extends Platform {

        /* compiled from: Platform.java */
        /* renamed from: com.ifengyu.intercom.o.e.c$a$a */
        /* loaded from: classes2.dex */
        static class ExecutorC4137a implements Executor {

            /* renamed from: a */
            private final Handler f14432a = new Handler(Looper.getMainLooper());

            ExecutorC4137a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f14432a.post(runnable);
            }
        }

        C4136a() {
        }

        @Override // com.ifengyu.intercom.p209o.p213e.Platform
        /* renamed from: a */
        public Executor mo11316a() {
            return new ExecutorC4137a();
        }
    }

    /* renamed from: c */
    private static Platform m11318c() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new C4136a();
            }
        } catch (ClassNotFoundException unused) {
        }
        return new Platform();
    }

    /* renamed from: d */
    public static Platform m11317d() {
        Platform platform = f14431a;
        L.m11320a(platform.getClass().toString());
        return platform;
    }

    /* renamed from: a */
    public Executor mo11316a() {
        return Executors.newCachedThreadPool();
    }

    /* renamed from: b */
    public void m11319b(Runnable runnable) {
        mo11316a().execute(runnable);
    }
}
