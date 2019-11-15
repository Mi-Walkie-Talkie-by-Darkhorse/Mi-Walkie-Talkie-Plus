package com.tencent.bugly.mimsg.crashreport.crash;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.mimsg.crashreport.common.info.b;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.mimsg.crashreport.common.strategy.a;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.y;
import com.tencent.bugly.mimsg.proguard.z;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.HashMap;

/* compiled from: BUGLY */
public final class e implements UncaughtExceptionHandler {
    private static String h = null;
    private static final Object i = new Object();
    private Context a;
    private b b;
    private a c;
    private com.tencent.bugly.mimsg.crashreport.common.info.a d;
    private UncaughtExceptionHandler e;
    private UncaughtExceptionHandler f;
    private boolean g = false;
    private int j;

    public e(Context context, b bVar, a aVar, com.tencent.bugly.mimsg.crashreport.common.info.a aVar2) {
        this.a = context;
        this.b = bVar;
        this.c = aVar;
        this.d = aVar2;
    }

    public final synchronized void a() {
        if (this.j >= 10) {
            x.a("java crash handler over %d, no need set.", Integer.valueOf(10));
        } else {
            this.g = true;
            UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                if (!getClass().getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                    if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                        x.a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                        this.f = defaultUncaughtExceptionHandler;
                        this.e = defaultUncaughtExceptionHandler;
                    } else {
                        x.a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                        this.e = defaultUncaughtExceptionHandler;
                    }
                }
            }
            Thread.setDefaultUncaughtExceptionHandler(this);
            this.j++;
            x.a("registered java monitor: %s", toString());
        }
    }

    public final synchronized void b() {
        this.g = false;
        x.a("close java monitor!", new Object[0]);
        if (Thread.getDefaultUncaughtExceptionHandler().getClass().getName().contains("bugly")) {
            x.a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.e);
            this.j--;
        }
    }

    private CrashDetailBean b(Thread thread, Throwable th, boolean z, String str, byte[] bArr) {
        String a2;
        if (th == null) {
            x.d("We can do nothing with a null throwable.", new Object[0]);
            return null;
        }
        boolean l = c.a().l();
        String str2 = (!l || !z) ? "" : " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";
        if (l && z) {
            x.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.B = b.g();
        crashDetailBean.C = b.e();
        crashDetailBean.D = b.i();
        crashDetailBean.E = this.d.p();
        crashDetailBean.F = this.d.o();
        crashDetailBean.G = this.d.q();
        crashDetailBean.w = z.a(this.a, c.e, (String) null);
        crashDetailBean.x = y.a();
        String str3 = "user log size:%d";
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(crashDetailBean.x == null ? 0 : crashDetailBean.x.length);
        x.a(str3, objArr);
        crashDetailBean.b = z ? 0 : 2;
        crashDetailBean.e = this.d.h();
        crashDetailBean.f = this.d.j;
        crashDetailBean.g = this.d.w();
        crashDetailBean.m = this.d.g();
        String name = th.getClass().getName();
        String b2 = b(th, 1000);
        if (b2 == null) {
            b2 = "";
        }
        String str4 = "stack frame :%d, has cause %b";
        Object[] objArr2 = new Object[2];
        objArr2[0] = Integer.valueOf(th.getStackTrace().length);
        objArr2[1] = Boolean.valueOf(th.getCause() != null);
        x.e(str4, objArr2);
        String str5 = "";
        if (th.getStackTrace().length > 0) {
            str5 = th.getStackTrace()[0].toString();
        }
        Throwable th2 = th;
        while (th2 != null && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 == null || th2 == th) {
            crashDetailBean.n = name;
            crashDetailBean.o = b2 + str2;
            if (crashDetailBean.o == null) {
                crashDetailBean.o = "";
            }
            crashDetailBean.p = str5;
            a2 = a(th, c.f);
            crashDetailBean.q = a2;
        } else {
            crashDetailBean.n = th2.getClass().getName();
            crashDetailBean.o = b(th2, 1000);
            if (crashDetailBean.o == null) {
                crashDetailBean.o = "";
            }
            if (th2.getStackTrace().length > 0) {
                crashDetailBean.p = th2.getStackTrace()[0].toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(name).append(":").append(b2).append("\n");
            sb.append(str5);
            sb.append("\n......");
            sb.append("\nCaused by:\n");
            sb.append(crashDetailBean.n).append(":").append(crashDetailBean.o).append("\n");
            a2 = a(th2, c.f);
            sb.append(a2);
            crashDetailBean.q = sb.toString();
        }
        crashDetailBean.r = System.currentTimeMillis();
        crashDetailBean.u = z.b(crashDetailBean.q.getBytes());
        try {
            crashDetailBean.y = z.a(c.f, false);
            crashDetailBean.z = this.d.d;
            crashDetailBean.A = thread.getName() + "(" + thread.getId() + ")";
            crashDetailBean.y.put(crashDetailBean.A, a2);
            crashDetailBean.H = this.d.y();
            crashDetailBean.h = this.d.v();
            crashDetailBean.i = this.d.I();
            crashDetailBean.L = this.d.a;
            crashDetailBean.M = this.d.a();
            crashDetailBean.O = this.d.F();
            crashDetailBean.P = this.d.G();
            crashDetailBean.Q = this.d.z();
            crashDetailBean.R = this.d.E();
        } catch (Throwable th3) {
            x.e("handle crash error %s", th3.toString());
        }
        if (z) {
            this.b.c(crashDetailBean);
        } else {
            boolean z2 = str != null && str.length() > 0;
            boolean z3 = bArr != null && bArr.length > 0;
            if (z2) {
                crashDetailBean.N = new HashMap(1);
                crashDetailBean.N.put("UserData", str);
            }
            if (z3) {
                crashDetailBean.S = bArr;
            }
        }
        return crashDetailBean;
    }

    private static boolean a(Thread thread) {
        boolean z;
        synchronized (i) {
            if (h == null || !thread.getName().equals(h)) {
                h = thread.getName();
                z = false;
            } else {
                z = true;
            }
        }
        return z;
    }

    public final void a(Thread thread, Throwable th, boolean z, String str, byte[] bArr) {
        String str2;
        if (z) {
            x.e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (a(thread)) {
                x.a("this class has handled this exception", new Object[0]);
                if (this.f != null) {
                    x.a("call system handler", new Object[0]);
                    this.f.uncaughtException(thread, th);
                } else {
                    x.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                }
            }
        } else {
            x.e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.g) {
                x.c("Java crash handler is disable. Just return.", new Object[0]);
                if (!z) {
                    return;
                }
                if (this.e != null && a(this.e)) {
                    x.e("sys default last handle start!", new Object[0]);
                    this.e.uncaughtException(thread, th);
                    x.e("sys default last handle end!", new Object[0]);
                } else if (this.f != null) {
                    x.e("system handle start!", new Object[0]);
                    this.f.uncaughtException(thread, th);
                    x.e("system handle end!", new Object[0]);
                } else {
                    x.e("crashreport last handle start!", new Object[0]);
                    x.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                    x.e("crashreport last handle end!", new Object[0]);
                }
            } else {
                if (!this.c.b()) {
                    x.e("waiting for remote sync", new Object[0]);
                    int i2 = 0;
                    while (!this.c.b()) {
                        z.b(500);
                        i2 += 500;
                        if (i2 >= 3000) {
                            break;
                        }
                    }
                }
                if (!this.c.b()) {
                    x.d("no remote but still store!", new Object[0]);
                }
                if (this.c.c().g || !this.c.b()) {
                    CrashDetailBean b2 = b(thread, th, z, str, bArr);
                    if (b2 == null) {
                        x.e("pkg crash datas fail!", new Object[0]);
                        if (!z) {
                            return;
                        }
                        if (this.e != null && a(this.e)) {
                            x.e("sys default last handle start!", new Object[0]);
                            this.e.uncaughtException(thread, th);
                            x.e("sys default last handle end!", new Object[0]);
                        } else if (this.f != null) {
                            x.e("system handle start!", new Object[0]);
                            this.f.uncaughtException(thread, th);
                            x.e("system handle end!", new Object[0]);
                        } else {
                            x.e("crashreport last handle start!", new Object[0]);
                            x.e("current process die", new Object[0]);
                            Process.killProcess(Process.myPid());
                            System.exit(1);
                            x.e("crashreport last handle end!", new Object[0]);
                        }
                    } else {
                        b.a(z ? "JAVA_CRASH" : "JAVA_CATCH", z.a(), this.d.d, thread, z.a(th), b2);
                        if (!this.b.a(b2)) {
                            this.b.a(b2, 3000, z);
                        }
                        this.b.b(b2);
                        if (!z) {
                            return;
                        }
                        if (this.e != null && a(this.e)) {
                            x.e("sys default last handle start!", new Object[0]);
                            this.e.uncaughtException(thread, th);
                            x.e("sys default last handle end!", new Object[0]);
                        } else if (this.f != null) {
                            x.e("system handle start!", new Object[0]);
                            this.f.uncaughtException(thread, th);
                            x.e("system handle end!", new Object[0]);
                        } else {
                            x.e("crashreport last handle start!", new Object[0]);
                            x.e("current process die", new Object[0]);
                            Process.killProcess(Process.myPid());
                            System.exit(1);
                            x.e("crashreport last handle end!", new Object[0]);
                        }
                    }
                } else {
                    x.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                    if (z) {
                        str2 = "JAVA_CRASH";
                    } else {
                        str2 = "JAVA_CATCH";
                    }
                    b.a(str2, z.a(), this.d.d, thread, z.a(th), null);
                    if (!z) {
                        return;
                    }
                    if (this.e != null && a(this.e)) {
                        x.e("sys default last handle start!", new Object[0]);
                        this.e.uncaughtException(thread, th);
                        x.e("sys default last handle end!", new Object[0]);
                    } else if (this.f != null) {
                        x.e("system handle start!", new Object[0]);
                        this.f.uncaughtException(thread, th);
                        x.e("system handle end!", new Object[0]);
                    } else {
                        x.e("crashreport last handle start!", new Object[0]);
                        x.e("current process die", new Object[0]);
                        Process.killProcess(Process.myPid());
                        System.exit(1);
                        x.e("crashreport last handle end!", new Object[0]);
                    }
                }
            }
        } catch (Throwable th2) {
            if (z) {
                if (this.e != null && a(this.e)) {
                    x.e("sys default last handle start!", new Object[0]);
                    this.e.uncaughtException(thread, th);
                    x.e("sys default last handle end!", new Object[0]);
                } else if (this.f != null) {
                    x.e("system handle start!", new Object[0]);
                    this.f.uncaughtException(thread, th);
                    x.e("system handle end!", new Object[0]);
                } else {
                    x.e("crashreport last handle start!", new Object[0]);
                    x.e("current process die", new Object[0]);
                    Process.killProcess(Process.myPid());
                    System.exit(1);
                    x.e("crashreport last handle end!", new Object[0]);
                }
            }
            throw th2;
        }
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (i) {
            a(thread, th, true, null, null);
        }
    }

    private static boolean a(UncaughtExceptionHandler uncaughtExceptionHandler) {
        StackTraceElement[] stackTrace;
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        String str = "uncaughtException";
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && str.equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    public final synchronized void a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            if (strategyBean.g != this.g) {
                x.a("java changed to %b", Boolean.valueOf(strategyBean.g));
                if (strategyBean.g) {
                    a();
                } else {
                    b();
                }
            }
        }
    }

    private static String a(Throwable th, int i2) {
        if (th == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                int i3 = 0;
                while (i3 < length) {
                    StackTraceElement stackTraceElement = stackTrace[i3];
                    if (i2 <= 0 || sb.length() < i2) {
                        sb.append(stackTraceElement.toString()).append("\n");
                        i3++;
                    } else {
                        sb.append("\n[Stack over limit size :" + i2 + " , has been cutted !]");
                        return sb.toString();
                    }
                }
            }
        } catch (Throwable th2) {
            x.e("gen stack error %s", th2.toString());
        }
        return sb.toString();
    }

    private static String b(Throwable th, int i2) {
        if (th.getMessage() == null) {
            return "";
        }
        if (th.getMessage().length() <= 1000) {
            return th.getMessage();
        }
        return th.getMessage().substring(0, 1000) + "\n[Message over limit size:1000" + ", has been cutted!]";
    }
}
