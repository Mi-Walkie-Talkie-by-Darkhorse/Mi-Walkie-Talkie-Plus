package com.xiaomi.mistatistic.sdk;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.controller.c;
import com.xiaomi.mistatistic.sdk.controller.e;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.k;
import com.xiaomi.mistatistic.sdk.controller.n;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.TreeMap;

/* compiled from: MIStatsExceptionHandler */
public class b implements UncaughtExceptionHandler {
    private static int a = 1;
    private static boolean b = false;
    private final UncaughtExceptionHandler c;

    /* compiled from: MIStatsExceptionHandler */
    public static class a implements Serializable {
        public Throwable a;
        public String b;
        public String c;
        public String d;
        public String e;

        public a(Throwable th) {
            this.a = th;
            this.b = c.e();
            this.c = c.d();
            this.d = c.f();
            this.e = String.valueOf(System.currentTimeMillis());
        }

        public a() {
            this.a = null;
            this.b = c.e();
            this.c = c.d();
            this.d = c.f();
            this.e = null;
        }
    }

    public static void a(boolean z) {
        UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(defaultUncaughtExceptionHandler instanceof b)) {
            if (z) {
                defaultUncaughtExceptionHandler = null;
            }
            Thread.setDefaultUncaughtExceptionHandler(new b(defaultUncaughtExceptionHandler));
            b = true;
        }
    }

    public static void a(a aVar, boolean z) {
        h.a("uploadException, isManually:" + z);
        if (b) {
            if (aVar == null || aVar.a == null) {
                throw new IllegalArgumentException("the throwable is null.");
            } else if (aVar.a.getStackTrace() != null && aVar.a.getStackTrace().length != 0) {
                if (!BuildSetting.isUploadDebugLogEnable(c.a())) {
                    h.d("not allowed to upload debug or exception log");
                    return;
                }
                StringWriter stringWriter = new StringWriter();
                ThrowableExtension.printStackTrace(aVar.a, new PrintWriter(stringWriter));
                String obj = stringWriter.toString();
                h.b("exception callstack:" + obj);
                final TreeMap treeMap = new TreeMap();
                treeMap.put("app_id", c.b());
                treeMap.put("app_key", c.c());
                treeMap.put("device_uuid", new e().a());
                treeMap.put("device_os", "Android " + VERSION.SDK_INT);
                treeMap.put("device_model", Build.MODEL);
                treeMap.put(Constants.EXTRA_KEY_APP_VERSION, aVar.b);
                treeMap.put("app_channel", aVar.c);
                treeMap.put("app_start_time", aVar.d);
                treeMap.put("app_crash_time", aVar.e);
                treeMap.put("crash_exception_type", aVar.a.getClass().getName() + ":" + aVar.a.getMessage());
                treeMap.put("crash_exception_desc", aVar.a instanceof OutOfMemoryError ? "OutOfMemoryError" : obj);
                treeMap.put("crash_callstack", obj);
                if (z) {
                    treeMap.put("manual", "true");
                }
                n.b.execute(new Runnable() {
                    public void run() {
                        try {
                            j.a(BuildSetting.isTest() ? "http://10.99.168.145:8097/micrash" : "https://data.mistat.xiaomi.com/micrash", treeMap, new com.xiaomi.mistatistic.sdk.controller.j.b() {
                                public void a(String str) {
                                    h.a("upload exception result: " + str);
                                }
                            });
                        } catch (IOException e) {
                            h.a("Error to upload the exception ", (Throwable) e);
                        }
                    }
                });
            }
        }
    }

    public b() {
        this.c = null;
    }

    public b(UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.c = uncaughtExceptionHandler;
    }

    @SuppressLint({"NewApi"})
    public void uncaughtException(Thread thread, Throwable th) {
        h.a("uncaughtException...");
        if (VERSION.SDK_INT >= 9) {
            StrictMode.setThreadPolicy(new Builder().build());
        }
        com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
        if (!MiStatInterface.shouldExceptionUploadImmediately()) {
            a(th);
        } else if (!a()) {
            a(new a(th), false);
        } else {
            h.a("crazy crash...");
        }
        if (this.c != null) {
            this.c.uncaughtException(thread, th);
        }
    }

    public void a(Thread thread, Throwable th) {
        h.a("uncaughtExceptionManually...");
        if (VERSION.SDK_INT >= 9) {
            StrictMode.setThreadPolicy(new Builder().build());
        }
        if (!MiStatInterface.shouldExceptionUploadImmediately()) {
            a(th);
        } else if (!a()) {
            a(new a(th), true);
        } else {
            h.a("crazy crash, skip the crash");
        }
        if (this.c != null) {
            this.c.uncaughtException(thread, th);
        }
    }

    public boolean a() {
        if (System.currentTimeMillis() - k.a(c.a(), "crash_time", 0) > 300000) {
            k.b(c.a(), "crash_count", 1);
            k.b(c.a(), "crash_time", System.currentTimeMillis());
        } else {
            int a2 = k.a(c.a(), "crash_count", 0);
            if (a2 == 0) {
                k.b(c.a(), "crash_time", System.currentTimeMillis());
            }
            int i = a2 + 1;
            k.b(c.a(), "crash_count", i);
            if (i > 10) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x003a A[SYNTHETIC, Splitter:B:17:0x003a] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0043 A[SYNTHETIC, Splitter:B:22:0x0043] */
    /* JADX WARNING: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.Throwable r5) {
        /*
            r3 = 0
            java.util.ArrayList r0 = b()
            com.xiaomi.mistatistic.sdk.b$a r1 = new com.xiaomi.mistatistic.sdk.b$a
            r1.<init>(r5)
            r0.add(r1)
            int r1 = r0.size()
            r2 = 5
            if (r1 <= r2) goto L_0x0017
            r0.remove(r3)
        L_0x0017:
            r2 = 0
            android.content.Context r1 = com.xiaomi.mistatistic.sdk.controller.c.a()     // Catch:{ IOException -> 0x0031, all -> 0x0040 }
            java.lang.String r3 = ".exceptiondetail"
            r4 = 0
            java.io.FileOutputStream r3 = r1.openFileOutput(r3, r4)     // Catch:{ IOException -> 0x0031, all -> 0x0040 }
            java.io.ObjectOutputStream r1 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x0031, all -> 0x0040 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x0031, all -> 0x0040 }
            r1.writeObject(r0)     // Catch:{ IOException -> 0x004e }
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch:{ IOException -> 0x0047 }
        L_0x0030:
            return
        L_0x0031:
            r0 = move-exception
            r1 = r2
        L_0x0033:
            java.lang.String r2 = ""
            com.xiaomi.mistatistic.sdk.controller.h.a(r2, r0)     // Catch:{ all -> 0x004b }
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch:{ IOException -> 0x003e }
            goto L_0x0030
        L_0x003e:
            r0 = move-exception
            goto L_0x0030
        L_0x0040:
            r0 = move-exception
        L_0x0041:
            if (r2 == 0) goto L_0x0046
            r2.close()     // Catch:{ IOException -> 0x0049 }
        L_0x0046:
            throw r0
        L_0x0047:
            r0 = move-exception
            goto L_0x0030
        L_0x0049:
            r1 = move-exception
            goto L_0x0046
        L_0x004b:
            r0 = move-exception
            r2 = r1
            goto L_0x0041
        L_0x004e:
            r0 = move-exception
            goto L_0x0033
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.b.a(java.lang.Throwable):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031 A[SYNTHETIC, Splitter:B:11:0x0031] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x004a A[SYNTHETIC, Splitter:B:26:0x004a] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0055 A[SYNTHETIC, Splitter:B:33:0x0055] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0062  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.ArrayList<com.xiaomi.mistatistic.sdk.b.a> b() {
        /*
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r2 = 0
            r3 = 0
            android.content.Context r0 = com.xiaomi.mistatistic.sdk.controller.c.a()     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            java.io.File r0 = r0.getFilesDir()     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            if (r0 == 0) goto L_0x0065
            java.io.File r5 = new java.io.File     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            java.lang.String r1 = ".exceptiondetail"
            r5.<init>(r0, r1)     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            boolean r0 = r5.isFile()     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            if (r0 == 0) goto L_0x0065
            java.io.ObjectInputStream r1 = new java.io.ObjectInputStream     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            r0.<init>(r5)     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            r1.<init>(r0)     // Catch:{ Exception -> 0x0040, all -> 0x0052 }
            java.lang.Object r0 = r1.readObject()     // Catch:{ Exception -> 0x005e }
            java.util.ArrayList r0 = (java.util.ArrayList) r0     // Catch:{ Exception -> 0x005e }
            r2 = r1
        L_0x002f:
            if (r2 == 0) goto L_0x0062
            r2.close()     // Catch:{ IOException -> 0x003c }
            r1 = r0
            r0 = r3
        L_0x0036:
            if (r0 == 0) goto L_0x003b
            c()
        L_0x003b:
            return r1
        L_0x003c:
            r1 = move-exception
            r1 = r0
            r0 = r3
            goto L_0x0036
        L_0x0040:
            r0 = move-exception
            r1 = r2
        L_0x0042:
            java.lang.String r2 = ""
            com.xiaomi.mistatistic.sdk.controller.h.a(r2, r0)     // Catch:{ all -> 0x005b }
            r0 = 1
            if (r1 == 0) goto L_0x0060
            r1.close()     // Catch:{ IOException -> 0x004f }
            r1 = r4
            goto L_0x0036
        L_0x004f:
            r1 = move-exception
            r1 = r4
            goto L_0x0036
        L_0x0052:
            r0 = move-exception
        L_0x0053:
            if (r2 == 0) goto L_0x0058
            r2.close()     // Catch:{ IOException -> 0x0059 }
        L_0x0058:
            throw r0
        L_0x0059:
            r1 = move-exception
            goto L_0x0058
        L_0x005b:
            r0 = move-exception
            r2 = r1
            goto L_0x0053
        L_0x005e:
            r0 = move-exception
            goto L_0x0042
        L_0x0060:
            r1 = r4
            goto L_0x0036
        L_0x0062:
            r1 = r0
            r0 = r3
            goto L_0x0036
        L_0x0065:
            r0 = r4
            goto L_0x002f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.b.b():java.util.ArrayList");
    }

    public static void c() {
        new File(c.a().getFilesDir(), ".exceptiondetail").delete();
    }

    public static void a(int i) {
        a = i;
    }

    public static int d() {
        return a;
    }
}
