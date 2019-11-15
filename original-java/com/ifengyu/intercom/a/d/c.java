package com.ifengyu.intercom.a.d;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: Platform */
public class c {
    private static final c a = c();

    /* compiled from: Platform */
    static class a extends c {

        /* renamed from: com.ifengyu.intercom.a.d.c$a$a reason: collision with other inner class name */
        /* compiled from: Platform */
        static class C0027a implements Executor {
            private final Handler a = new Handler(Looper.getMainLooper());

            C0027a() {
            }

            public void execute(Runnable runnable) {
                this.a.post(runnable);
            }
        }

        a() {
        }

        public Executor b() {
            return new C0027a();
        }
    }

    public static c a() {
        b.a(a.getClass().toString());
        return a;
    }

    private static c c() {
        try {
            Class.forName("android.os.Build");
            if (VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException e) {
        }
        return new c();
    }

    public Executor b() {
        return Executors.newCachedThreadPool();
    }

    public void a(Runnable runnable) {
        b().execute(runnable);
    }
}
