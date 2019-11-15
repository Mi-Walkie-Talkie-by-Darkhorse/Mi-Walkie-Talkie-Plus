package com.tencent.bugly.mimsg.crashreport.crash.jni;

import android.annotation.SuppressLint;
import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.data.Error;
import com.tencent.bugly.mimsg.Bugly;
import com.tencent.bugly.mimsg.crashreport.a;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.mimsg.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.mimsg.crashreport.crash.b;
import com.tencent.bugly.mimsg.crashreport.crash.c;
import com.tencent.bugly.mimsg.proguard.w;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.io.File;

/* compiled from: BUGLY */
public class NativeCrashHandler implements a {
    private static NativeCrashHandler a;
    private static boolean l = false;
    private static boolean m = false;
    /* access modifiers changed from: private */
    public final Context b;
    /* access modifiers changed from: private */
    public final com.tencent.bugly.mimsg.crashreport.common.info.a c;
    private final w d;
    /* access modifiers changed from: private */
    public NativeExceptionHandler e;
    /* access modifiers changed from: private */
    public String f;
    private final boolean g;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    /* access modifiers changed from: private */
    public b n;

    /* access modifiers changed from: protected */
    public native boolean appendNativeLog(String str, String str2, String str3);

    /* access modifiers changed from: protected */
    public native boolean appendWholeNativeLog(String str);

    /* access modifiers changed from: protected */
    public native String getNativeKeyValueList();

    /* access modifiers changed from: protected */
    public native String getNativeLog();

    /* access modifiers changed from: protected */
    public native boolean putNativeKeyValue(String str, String str2);

    /* access modifiers changed from: protected */
    public native String regist(String str, boolean z, int i2);

    /* access modifiers changed from: protected */
    public native String removeNativeKeyValue(String str);

    /* access modifiers changed from: protected */
    public native void setNativeInfo(int i2, String str);

    /* access modifiers changed from: protected */
    public native void testCrash();

    /* access modifiers changed from: protected */
    public native String unregist();

    @SuppressLint({"SdCardPath"})
    private NativeCrashHandler(Context context, com.tencent.bugly.mimsg.crashreport.common.info.a aVar, b bVar, w wVar, boolean z, String str) {
        this.b = z.a(context);
        try {
            if (z.a(str)) {
                str = context.getDir("bugly", 0).getAbsolutePath();
            }
        } catch (Throwable th) {
            str = "/data/data/" + com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).c + "/app_bugly";
        }
        this.n = bVar;
        this.f = str;
        this.c = aVar;
        this.d = wVar;
        this.g = z;
        this.e = new a(context, aVar, bVar, com.tencent.bugly.mimsg.crashreport.common.strategy.a.a());
    }

    public static synchronized NativeCrashHandler getInstance(Context context, com.tencent.bugly.mimsg.crashreport.common.info.a aVar, b bVar, com.tencent.bugly.mimsg.crashreport.common.strategy.a aVar2, w wVar, boolean z, String str) {
        NativeCrashHandler nativeCrashHandler;
        synchronized (NativeCrashHandler.class) {
            if (a == null) {
                a = new NativeCrashHandler(context, aVar, bVar, wVar, z, str);
            }
            nativeCrashHandler = a;
        }
        return nativeCrashHandler;
    }

    public static synchronized NativeCrashHandler getInstance() {
        NativeCrashHandler nativeCrashHandler;
        synchronized (NativeCrashHandler.class) {
            nativeCrashHandler = a;
        }
        return nativeCrashHandler;
    }

    public synchronized String getDumpFilePath() {
        return this.f;
    }

    public synchronized void setDumpFilePath(String str) {
        this.f = str;
    }

    private synchronized void a(boolean z) {
        if (this.j) {
            x.d("[Native] Native crash report has already registered.", new Object[0]);
        } else {
            if (this.i) {
                try {
                    String regist = regist(this.f, z, 1);
                    if (regist != null) {
                        x.a("[Native] Native Crash Report enable.", new Object[0]);
                        x.c("[Native] Check extra jni for Bugly NDK v%s", regist);
                        String replace = "2.1.1".replace(".", "");
                        String replace2 = "2.3.0".replace(".", "");
                        String replace3 = regist.replace(".", "");
                        if (replace3.length() == 2) {
                            replace3 = replace3 + "0";
                        } else if (replace3.length() == 1) {
                            replace3 = replace3 + "00";
                        }
                        try {
                            if (Integer.parseInt(replace3) >= Integer.parseInt(replace)) {
                                l = true;
                            }
                            if (Integer.parseInt(replace3) >= Integer.parseInt(replace2)) {
                                m = true;
                            }
                        } catch (Throwable th) {
                        }
                        if (m) {
                            x.a("[Native] Info setting jni can be accessed.", new Object[0]);
                        } else {
                            x.d("[Native] Info setting jni can not be accessed.", new Object[0]);
                        }
                        if (l) {
                            x.a("[Native] Extra jni can be accessed.", new Object[0]);
                        } else {
                            x.d("[Native] Extra jni can not be accessed.", new Object[0]);
                        }
                        this.c.n = regist;
                        this.j = true;
                    }
                } catch (Throwable th2) {
                    x.c("[Native] Failed to load Bugly SO file.", new Object[0]);
                }
            } else if (this.h) {
                String str = "com.tencent.feedback.eup.jni.NativeExceptionUpload";
                String str2 = "registNativeExceptionHandler2";
                try {
                    Class[] clsArr = {String.class, String.class, Integer.TYPE, Integer.TYPE};
                    Object[] objArr = new Object[4];
                    objArr[0] = this.f;
                    objArr[1] = com.tencent.bugly.mimsg.crashreport.common.info.b.a(false);
                    objArr[2] = Integer.valueOf(z ? 1 : 5);
                    objArr[3] = Integer.valueOf(1);
                    String str3 = (String) z.a(str, str2, null, clsArr, objArr);
                    if (str3 == null) {
                        Class[] clsArr2 = {String.class, String.class, Integer.TYPE};
                        com.tencent.bugly.mimsg.crashreport.common.info.a.b();
                        str3 = (String) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler", null, clsArr2, new Object[]{this.f, com.tencent.bugly.mimsg.crashreport.common.info.b.a(false), Integer.valueOf(com.tencent.bugly.mimsg.crashreport.common.info.a.J())});
                    }
                    if (str3 != null) {
                        this.j = true;
                        com.tencent.bugly.mimsg.crashreport.common.info.a.b().n = str3;
                        Boolean bool = (Boolean) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "checkExtraJni", null, new Class[]{String.class}, new Object[]{str3});
                        if (bool != null) {
                            l = bool.booleanValue();
                        }
                        z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[]{Boolean.TYPE}, new Object[]{Boolean.valueOf(true)});
                        z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "setLogMode", null, new Class[]{Integer.TYPE}, new Object[]{Integer.valueOf(z ? 1 : 5)});
                    }
                } catch (Throwable th3) {
                }
            }
            this.i = false;
            this.h = false;
        }
    }

    public synchronized void startNativeMonitor() {
        if (this.i || this.h) {
            a(this.g);
        } else {
            String str = "Bugly";
            boolean z = !z.a(this.c.m);
            String str2 = this.c.m;
            if (!z) {
                this.c.getClass();
                this.c.getClass();
                if (!"mimsg".contains("@")) {
                    StringBuilder append = new StringBuilder().append(str).append("-");
                    this.c.getClass();
                    str = append.append("mimsg").toString();
                }
            } else {
                str = str2;
            }
            this.i = a(str, z);
            if (this.i || this.h) {
                a(this.g);
                this.d.a(new Runnable() {
                    public final void run() {
                        if (!z.a(NativeCrashHandler.this.b, "native_record_lock", (long) FileTracerConfig.DEF_FLUSH_INTERVAL)) {
                            x.a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
                            return;
                        }
                        try {
                            NativeCrashHandler.this.setNativeAppVersion(NativeCrashHandler.this.c.j);
                            NativeCrashHandler.this.setNativeAppChannel(NativeCrashHandler.this.c.l);
                            NativeCrashHandler.this.setNativeAppPackage(NativeCrashHandler.this.c.c);
                            NativeCrashHandler.this.setNativeUserId(NativeCrashHandler.this.c.g());
                            NativeCrashHandler.this.setNativeIsAppForeground(NativeCrashHandler.this.c.a());
                            NativeCrashHandler.this.setNativeLaunchTime(NativeCrashHandler.this.c.a);
                        } catch (Throwable th) {
                            if (!x.a(th)) {
                                ThrowableExtension.printStackTrace(th);
                            }
                        }
                        CrashDetailBean a2 = b.a(NativeCrashHandler.this.b, NativeCrashHandler.this.f, NativeCrashHandler.this.e);
                        if (a2 != null) {
                            x.a("[Native] Get crash from native record.", new Object[0]);
                            if (!NativeCrashHandler.this.n.a(a2)) {
                                NativeCrashHandler.this.n.a(a2, 3000, false);
                            }
                            b.a(false, NativeCrashHandler.this.f);
                        }
                        NativeCrashHandler.this.a();
                        z.b(NativeCrashHandler.this.b, "native_record_lock");
                    }
                });
            }
        }
    }

    private static boolean a(String str, boolean z) {
        Throwable th;
        boolean z2;
        try {
            x.a("[Native] Trying to load so: %s", str);
            if (z) {
                System.load(str);
            } else {
                System.loadLibrary(str);
            }
            try {
                x.a("[Native] Successfully loaded SO: %s", str);
                return true;
            } catch (Throwable th2) {
                th = th2;
                z2 = true;
            }
        } catch (Throwable th3) {
            th = th3;
            z2 = false;
        }
        x.d(th.getMessage(), new Object[0]);
        x.d("[Native] Failed to load so: %s", str);
        return z2;
    }

    private synchronized void b() {
        if (!this.j) {
            x.d("[Native] Native crash report has already unregistered.", new Object[0]);
        } else {
            try {
                if (unregist() != null) {
                    x.a("[Native] Successfully closed native crash report.", new Object[0]);
                    this.j = false;
                }
            } catch (Throwable th) {
                x.c("[Native] Failed to close native crash report.", new Object[0]);
            }
            try {
                z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[]{Boolean.TYPE}, new Object[]{Boolean.valueOf(false)});
                this.j = false;
                x.a("[Native] Successfully closed native crash report.", new Object[0]);
            } catch (Throwable th2) {
                x.c("[Native] Failed to close native crash report.", new Object[0]);
                this.i = false;
                this.h = false;
            }
        }
        return;
    }

    public void testNativeCrash() {
        if (!this.i) {
            x.d("[Native] Bugly SO file has not been load.", new Object[0]);
        } else {
            testCrash();
        }
    }

    public NativeExceptionHandler getNativeExceptionHandler() {
        return this.e;
    }

    /* access modifiers changed from: protected */
    public final void a() {
        long b2 = z.b() - c.g;
        File file = new File(this.f);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                String str = "tomb_";
                String str2 = ".txt";
                int length = str.length();
                int i2 = 0;
                for (File file2 : listFiles) {
                    String name = file2.getName();
                    if (name.startsWith(str)) {
                        try {
                            int indexOf = name.indexOf(str2);
                            if (indexOf > 0 && Long.parseLong(name.substring(length, indexOf)) >= b2) {
                            }
                        } catch (Throwable th) {
                            x.e("[Native] Tomb file format error, delete %s", name);
                        }
                        if (file2.delete()) {
                            i2++;
                        }
                    }
                }
                x.c("[Native] Clean tombs %d", Integer.valueOf(i2));
            }
        }
    }

    private synchronized void b(boolean z) {
        if (z) {
            startNativeMonitor();
        } else {
            b();
        }
    }

    public synchronized boolean isUserOpened() {
        return this.k;
    }

    private synchronized void c(boolean z) {
        if (this.k != z) {
            x.a("user change native %b", Boolean.valueOf(z));
            this.k = z;
        }
    }

    public synchronized void setUserOpened(boolean z) {
        boolean z2 = true;
        synchronized (this) {
            c(z);
            boolean isUserOpened = isUserOpened();
            com.tencent.bugly.mimsg.crashreport.common.strategy.a a2 = com.tencent.bugly.mimsg.crashreport.common.strategy.a.a();
            if (a2 == null) {
                z2 = isUserOpened;
            } else if (!isUserOpened || !a2.c().g) {
                z2 = false;
            }
            if (z2 != this.j) {
                x.a("native changed to %b", Boolean.valueOf(z2));
                b(z2);
            }
        }
    }

    public synchronized void onStrategyChanged(StrategyBean strategyBean) {
        boolean z = true;
        synchronized (this) {
            if (strategyBean != null) {
                if (strategyBean.g != this.j) {
                    x.d("server native changed to %b", Boolean.valueOf(strategyBean.g));
                }
            }
            if (!com.tencent.bugly.mimsg.crashreport.common.strategy.a.a().c().g || !this.k) {
                z = false;
            }
            if (z != this.j) {
                x.a("native changed to %b", Boolean.valueOf(z));
                b(z);
            }
        }
    }

    public boolean appendLogToNative(String str, String str2, String str3) {
        if (!this.h && !this.i) {
            return false;
        }
        if (!l) {
            return false;
        }
        if (str == null || str2 == null || str3 == null) {
            return false;
        }
        try {
            if (this.i) {
                return appendNativeLog(str, str2, str3);
            }
            Boolean bool = (Boolean) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", null, new Class[]{String.class, String.class, String.class}, new Object[]{str, str2, str3});
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (UnsatisfiedLinkError e2) {
            l = false;
            return false;
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return false;
        }
    }

    public boolean putKeyValueToNative(String str, String str2) {
        if (!this.h && !this.i) {
            return false;
        }
        if (!l) {
            return false;
        }
        if (str == null || str2 == null) {
            return false;
        }
        try {
            if (this.i) {
                return putNativeKeyValue(str, str2);
            }
            Boolean bool = (Boolean) z.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", null, new Class[]{String.class, String.class}, new Object[]{str, str2});
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (UnsatisfiedLinkError e2) {
            l = false;
            return false;
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return false;
        }
    }

    private boolean a(int i2, String str) {
        if (!this.i || !m) {
            return false;
        }
        try {
            setNativeInfo(i2, str);
            return true;
        } catch (UnsatisfiedLinkError e2) {
            m = false;
            return false;
        } catch (Throwable th) {
            if (x.a(th)) {
                return false;
            }
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public boolean filterSigabrtSysLog() {
        return a((int) Error.MNS_PACKAGE_INVALID, "true");
    }

    public boolean setNativeAppVersion(String str) {
        return a(10, str);
    }

    public boolean setNativeAppChannel(String str) {
        return a(12, str);
    }

    public boolean setNativeAppPackage(String str) {
        return a(13, str);
    }

    public boolean setNativeUserId(String str) {
        return a(11, str);
    }

    public boolean setNativeIsAppForeground(boolean z) {
        return a(14, z ? "true" : Bugly.SDK_IS_DEV);
    }

    public boolean setNativeLaunchTime(long j2) {
        try {
            return a(15, String.valueOf(j2));
        } catch (NumberFormatException e2) {
            if (!x.a(e2)) {
                ThrowableExtension.printStackTrace(e2);
            }
            return false;
        }
    }
}
