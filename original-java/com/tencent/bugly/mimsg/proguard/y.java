package com.tencent.bugly.mimsg.proguard;

import android.content.Context;
import android.os.Process;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: BUGLY */
public final class y {
    public static boolean a = true;
    private static SimpleDateFormat b;
    private static int c = 5120;
    private static StringBuilder d;
    /* access modifiers changed from: private */
    public static StringBuilder e;
    /* access modifiers changed from: private */
    public static boolean f;
    /* access modifiers changed from: private */
    public static a g;
    private static String h;
    private static String i;
    private static Context j;
    /* access modifiers changed from: private */
    public static String k;
    private static boolean l;
    private static int m;
    /* access modifiers changed from: private */
    public static final Object n = new Object();

    /* compiled from: BUGLY */
    public static class a {
        /* access modifiers changed from: private */
        public boolean a;
        /* access modifiers changed from: private */
        public File b;
        private String c;
        private long d;
        /* access modifiers changed from: private */
        public long e = 30720;

        public a(String str) {
            if (str != null && !str.equals("")) {
                this.c = str;
                this.a = a();
            }
        }

        /* access modifiers changed from: private */
        public boolean a() {
            try {
                this.b = new File(this.c);
                if (!this.b.exists() || this.b.delete()) {
                    if (!this.b.createNewFile()) {
                        this.a = false;
                        return false;
                    }
                    return true;
                }
                this.a = false;
                return false;
            } catch (Throwable th) {
                this.a = false;
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:17:0x0032 A[SYNTHETIC, Splitter:B:17:0x0032] */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x003c A[SYNTHETIC, Splitter:B:23:0x003c] */
        /* JADX WARNING: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean a(java.lang.String r9) {
            /*
                r8 = this;
                r1 = 1
                r0 = 0
                boolean r2 = r8.a
                if (r2 != 0) goto L_0x0007
            L_0x0006:
                return r0
            L_0x0007:
                r3 = 0
                java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ Throwable -> 0x002b, all -> 0x0038 }
                java.io.File r4 = r8.b     // Catch:{ Throwable -> 0x002b, all -> 0x0038 }
                r5 = 1
                r2.<init>(r4, r5)     // Catch:{ Throwable -> 0x002b, all -> 0x0038 }
                java.lang.String r3 = "UTF-8"
                byte[] r3 = r9.getBytes(r3)     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                r2.write(r3)     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                r2.flush()     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                r2.close()     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                long r4 = r8.d     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                int r3 = r3.length     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                long r6 = (long) r3     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                long r4 = r4 + r6
                r8.d = r4     // Catch:{ Throwable -> 0x0049, all -> 0x0044 }
                r2.close()     // Catch:{ IOException -> 0x0040 }
            L_0x0029:
                r0 = r1
                goto L_0x0006
            L_0x002b:
                r1 = move-exception
                r1 = r3
            L_0x002d:
                r2 = 0
                r8.a = r2     // Catch:{ all -> 0x0046 }
                if (r1 == 0) goto L_0x0006
                r1.close()     // Catch:{ IOException -> 0x0036 }
                goto L_0x0006
            L_0x0036:
                r1 = move-exception
                goto L_0x0006
            L_0x0038:
                r0 = move-exception
                r2 = r3
            L_0x003a:
                if (r2 == 0) goto L_0x003f
                r2.close()     // Catch:{ IOException -> 0x0042 }
            L_0x003f:
                throw r0
            L_0x0040:
                r0 = move-exception
                goto L_0x0029
            L_0x0042:
                r1 = move-exception
                goto L_0x003f
            L_0x0044:
                r0 = move-exception
                goto L_0x003a
            L_0x0046:
                r0 = move-exception
                r2 = r1
                goto L_0x003a
            L_0x0049:
                r1 = move-exception
                r1 = r2
                goto L_0x002d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.y.a.a(java.lang.String):boolean");
        }
    }

    static {
        b = null;
        try {
            b = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
        }
    }

    private static boolean b(String str, String str2, String str3) {
        try {
            com.tencent.bugly.mimsg.crashreport.common.info.a b2 = com.tencent.bugly.mimsg.crashreport.common.info.a.b();
            if (!(b2 == null || b2.D == null)) {
                return b2.D.appendLogToNative(str, str2, str3);
            }
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return false;
    }

    public static synchronized void a(Context context) {
        synchronized (y.class) {
            if (!l && context != null && a) {
                try {
                    e = new StringBuilder(0);
                    d = new StringBuilder(0);
                    j = context;
                    com.tencent.bugly.mimsg.crashreport.common.info.a a2 = com.tencent.bugly.mimsg.crashreport.common.info.a.a(context);
                    h = a2.d;
                    a2.getClass();
                    i = "mimsg";
                    k = j.getFilesDir().getPath() + "/buglylog_" + h + "_" + i + ".txt";
                    m = Process.myPid();
                } catch (Throwable th) {
                }
                l = true;
            }
        }
    }

    public static void a(int i2) {
        synchronized (n) {
            c = i2;
            if (i2 < 0) {
                c = 0;
            } else if (i2 > 10240) {
                c = 10240;
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (th != null) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            a(str, str2, message + 10 + z.b(th));
        }
    }

    public static synchronized void a(String str, String str2, String str3) {
        synchronized (y.class) {
            if (l && a) {
                b(str, str2, str3);
                long myTid = (long) Process.myTid();
                d.setLength(0);
                if (str3.length() > 30720) {
                    str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
                }
                Date date = new Date();
                d.append(b != null ? b.format(date) : date.toString()).append(Token.SEPARATOR).append(m).append(Token.SEPARATOR).append(myTid).append(Token.SEPARATOR).append(str).append(Token.SEPARATOR).append(str2).append(": ").append(str3).append("\u0001\r\n");
                final String sb = d.toString();
                synchronized (n) {
                    e.append(sb);
                    if (e.length() > c) {
                        if (!f) {
                            f = true;
                            w.a().a(new Runnable() {
                                public final void run() {
                                    synchronized (y.n) {
                                        try {
                                            if (y.g == null) {
                                                y.g = new a(y.k);
                                            } else if (y.g.b == null || y.g.b.length() + ((long) y.e.length()) > y.g.e) {
                                                y.g.a();
                                            }
                                            if (y.g.a) {
                                                y.g.a(y.e.toString());
                                                y.e.setLength(0);
                                            } else {
                                                y.e.setLength(0);
                                                y.e.append(sb);
                                            }
                                            y.f = false;
                                        } catch (Throwable th) {
                                        }
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: type inference failed for: r1v3 */
    /* JADX WARNING: type inference failed for: r1v4, types: [java.io.File] */
    /* JADX WARNING: type inference failed for: r1v8, types: [java.io.File] */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] a() {
        /*
            r0 = 0
            boolean r1 = a
            if (r1 != 0) goto L_0x0006
        L_0x0005:
            return r0
        L_0x0006:
            java.lang.Object r2 = n
            monitor-enter(r2)
            com.tencent.bugly.mimsg.proguard.y$a r1 = g     // Catch:{ Throwable -> 0x003a }
            if (r1 == 0) goto L_0x002a
            com.tencent.bugly.mimsg.proguard.y$a r1 = g     // Catch:{ Throwable -> 0x003a }
            boolean r1 = r1.a     // Catch:{ Throwable -> 0x003a }
            if (r1 == 0) goto L_0x002a
            com.tencent.bugly.mimsg.proguard.y$a r1 = g     // Catch:{ Throwable -> 0x003a }
            java.io.File r1 = r1.b     // Catch:{ Throwable -> 0x003a }
        L_0x001b:
            java.lang.StringBuilder r3 = e     // Catch:{ Throwable -> 0x003a }
            int r3 = r3.length()     // Catch:{ Throwable -> 0x003a }
            if (r3 != 0) goto L_0x002c
            if (r1 != 0) goto L_0x002c
            monitor-exit(r2)     // Catch:{ all -> 0x0027 }
            goto L_0x0005
        L_0x0027:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L_0x002a:
            r1 = r0
            goto L_0x001b
        L_0x002c:
            java.lang.StringBuilder r3 = e     // Catch:{ Throwable -> 0x003a }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x003a }
            java.lang.String r4 = "BuglyLog.txt"
            byte[] r0 = com.tencent.bugly.mimsg.proguard.z.a(r1, r3, r4)     // Catch:{ Throwable -> 0x003a }
            monitor-exit(r2)     // Catch:{ all -> 0x0027 }
            goto L_0x0005
        L_0x003a:
            r1 = move-exception
            monitor-exit(r2)
            goto L_0x0005
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.y.a():byte[]");
    }
}
