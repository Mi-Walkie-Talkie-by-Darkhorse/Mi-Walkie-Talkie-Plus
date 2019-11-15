package com.tencent.bugly.mimsg.crashreport.crash;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.tencent.bugly.mimsg.BuglyStrategy;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.mimsg.crashreport.common.strategy.a;
import com.tencent.bugly.mimsg.crashreport.crash.anr.b;
import com.tencent.bugly.mimsg.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.mimsg.proguard.o;
import com.tencent.bugly.mimsg.proguard.p;
import com.tencent.bugly.mimsg.proguard.r;
import com.tencent.bugly.mimsg.proguard.u;
import com.tencent.bugly.mimsg.proguard.w;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: BUGLY */
public final class c {
    public static int a = 0;
    public static boolean b = false;
    public static int c = 2;
    public static boolean d = true;
    public static int e = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    public static int f = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    public static long g = 604800000;
    public static String h = null;
    public static boolean i = false;
    public static String j = null;
    public static int k = 5000;
    public static boolean l = true;
    public static String m = null;
    public static String n = null;
    private static c q;
    public final b o;
    /* access modifiers changed from: private */
    public final Context p;
    /* access modifiers changed from: private */
    public final e r;
    private final NativeCrashHandler s;
    private a t = a.a();
    private w u;
    private final b v;
    private Boolean w;

    private c(int i2, Context context, w wVar, boolean z, BuglyStrategy.a aVar, o oVar, String str) {
        a = i2;
        Context a2 = z.a(context);
        this.p = a2;
        this.u = wVar;
        this.o = new b(i2, a2, u.a(), p.a(), this.t, aVar, oVar);
        com.tencent.bugly.mimsg.crashreport.common.info.a a3 = com.tencent.bugly.mimsg.crashreport.common.info.a.a(a2);
        this.r = new e(a2, this.o, this.t, a3);
        this.s = NativeCrashHandler.getInstance(a2, a3, this.o, this.t, wVar, z, str);
        a3.D = this.s;
        this.v = new b(a2, this.t, a3, wVar, this.o);
    }

    public static synchronized void a(int i2, Context context, boolean z, BuglyStrategy.a aVar, o oVar, String str) {
        synchronized (c.class) {
            if (q == null) {
                q = new c(1004, context, w.a(), z, aVar, null, null);
            }
        }
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            cVar = q;
        }
        return cVar;
    }

    public final void a(StrategyBean strategyBean) {
        this.r.a(strategyBean);
        this.s.onStrategyChanged(strategyBean);
        this.v.a(strategyBean);
        w.a().a(new Thread() {
            public final void run() {
                List list;
                if (z.a(c.this.p, "local_crash_lock", (long) FileTracerConfig.DEF_FLUSH_INTERVAL)) {
                    List a2 = c.this.o.a();
                    if (a2 != null && a2.size() > 0) {
                        int size = a2.size();
                        if (((long) size) > 100) {
                            list = new ArrayList();
                            Collections.sort(a2);
                            for (int i = 0; ((long) i) < 100; i++) {
                                list.add(a2.get((size - 1) - i));
                            }
                        } else {
                            list = a2;
                        }
                        c.this.o.a(list, 0, false, false, false);
                    }
                    z.b(c.this.p, "local_crash_lock");
                }
            }
        }, 0);
    }

    public final boolean b() {
        Boolean bool = this.w;
        if (bool != null) {
            return bool.booleanValue();
        }
        String str = com.tencent.bugly.mimsg.crashreport.common.info.a.b().d;
        List<r> a2 = p.a().a(1);
        ArrayList arrayList = new ArrayList();
        if (a2 == null || a2.size() <= 0) {
            this.w = Boolean.valueOf(false);
            return false;
        }
        for (r rVar : a2) {
            if (str.equals(rVar.c)) {
                this.w = Boolean.valueOf(true);
                arrayList.add(rVar);
            }
        }
        if (arrayList.size() > 0) {
            p.a().a((List<r>) arrayList);
        }
        return true;
    }

    public final synchronized void c() {
        this.r.a();
        this.s.setUserOpened(true);
        this.v.a(true);
    }

    public final synchronized void d() {
        this.r.b();
        this.s.setUserOpened(false);
        this.v.a(false);
    }

    public final void e() {
        this.r.a();
    }

    public final void f() {
        this.s.setUserOpened(false);
    }

    public final void g() {
        this.s.setUserOpened(true);
    }

    public final void h() {
        this.v.a(true);
    }

    public final void i() {
        this.v.a(false);
    }

    public final synchronized void j() {
        this.s.testNativeCrash();
    }

    public final synchronized void k() {
        int i2 = 0;
        synchronized (this) {
            b bVar = this.v;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= 30) {
                    break;
                }
                try {
                    x.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i3));
                    z.b(5000);
                    i2 = i3;
                } catch (Throwable th) {
                    if (!x.a(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
    }

    public final boolean l() {
        return this.v.a();
    }

    public final void a(Thread thread, Throwable th, boolean z, String str, byte[] bArr, boolean z2) {
        final Thread thread2 = thread;
        final Throwable th2 = th;
        final boolean z3 = z2;
        this.u.a(new Runnable(false, null, null) {
            public final void run() {
                try {
                    x.c("post a throwable %b", Boolean.valueOf(false));
                    c.this.r.a(thread2, th2, false, null, null);
                    if (z3) {
                        x.a("clear user datas", new Object[0]);
                        com.tencent.bugly.mimsg.crashreport.common.info.a.a(c.this.p).A();
                    }
                } catch (Throwable th) {
                    if (!x.b(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                    x.e("java catch error: %s", th2.toString());
                }
            }
        });
    }

    public final void a(CrashDetailBean crashDetailBean) {
        this.o.d(crashDetailBean);
    }

    public final void a(long j2) {
        w.a().a(new Thread() {
            public final void run() {
                List list;
                if (z.a(c.this.p, "local_crash_lock", (long) FileTracerConfig.DEF_FLUSH_INTERVAL)) {
                    List a2 = c.this.o.a();
                    if (a2 != null && a2.size() > 0) {
                        int size = a2.size();
                        if (((long) size) > 100) {
                            list = new ArrayList();
                            Collections.sort(a2);
                            for (int i = 0; ((long) i) < 100; i++) {
                                list.add(a2.get((size - 1) - i));
                            }
                        } else {
                            list = a2;
                        }
                        c.this.o.a(list, 0, false, false, false);
                    }
                    z.b(c.this.p, "local_crash_lock");
                }
            }
        }, 0);
    }
}
