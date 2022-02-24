package com.ifengyu.intercom.g.f;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: Platform.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final c f5282a = b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Platform.java */
    /* loaded from: classes2.dex */
    public static class a extends c {

        /* compiled from: Platform.java */
        /* renamed from: com.ifengyu.intercom.g.f.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static class ExecutorC0150a implements Executor {

            /* renamed from: a  reason: collision with root package name */
            private final Handler f5283a = new Handler(Looper.getMainLooper());

            ExecutorC0150a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f5283a.post(runnable);
            }
        }

        a() {
        }

        @Override // com.ifengyu.intercom.g.f.c
        public Executor a() {
            return new ExecutorC0150a();
        }
    }

    private static c b() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException unused) {
        }
        return new c();
    }

    public static c c() {
        b.a(f5282a.getClass().toString());
        return f5282a;
    }

    public Executor a() {
        return Executors.newCachedThreadPool();
    }

    public void a(Runnable runnable) {
        a().execute(runnable);
    }
}
