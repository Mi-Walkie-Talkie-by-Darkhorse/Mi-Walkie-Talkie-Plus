package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: Log */
public class gd {
    public static final String a = "/a/";
    static final String b = "b";
    static final String c = "c";
    static final String d = "d";
    public static final String e = "g";
    public static final String f = "h";
    public static final String g = "e";
    public static final String h = "f";

    public static String a(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        sb.append(a);
        sb.append(str);
        return sb.toString();
    }

    public static Class<? extends gu> a(int i) {
        switch (i) {
            case 0:
                return gp.class;
            case 1:
                return gr.class;
            case 2:
                return go.class;
            default:
                return null;
        }
    }

    public static gu b(int i) {
        switch (i) {
            case 0:
                return new gp();
            case 1:
                return new gr();
            case 2:
                return new go();
            default:
                return null;
        }
    }

    public static String c(int i) {
        switch (i) {
            case 0:
                return c;
            case 1:
                return b;
            case 2:
                return d;
            default:
                return "";
        }
    }

    static gj a(Context context, int i) {
        switch (i) {
            case 0:
                return new gh(i);
            case 1:
                return new gi(i);
            case 2:
                return new gg(i);
            default:
                return null;
        }
    }

    static void a(final Context context, final fx fxVar, final String str, final String str2) {
        try {
            if (fxVar.f()) {
                ExecutorService c2 = gf.c();
                if (c2 != null && !c2.isShutdown()) {
                    c2.submit(new Runnable() {
                        public void run() {
                            try {
                                gj a2 = gd.a(context, 1);
                                if (TextUtils.isEmpty(str2)) {
                                    a2.a(fxVar, context, new Throwable("gpsstatistics"), str, (String) null, (String) null);
                                } else {
                                    a2.a(fxVar, context, str2, str, (String) null, (String) null);
                                }
                            } catch (Throwable th) {
                                ThrowableExtension.printStackTrace(th);
                            }
                        }
                    });
                }
            }
        } catch (RejectedExecutionException e2) {
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    static void a(Context context, Throwable th, int i, String str, String str2) {
        try {
            ExecutorService c2 = gf.c();
            if (c2 != null && !c2.isShutdown()) {
                final Context context2 = context;
                final int i2 = i;
                final Throwable th2 = th;
                final String str3 = str;
                final String str4 = str2;
                c2.submit(new Runnable() {
                    public void run() {
                        try {
                            gj a2 = gd.a(context2, i2);
                            if (a2 != null) {
                                a2.a(context2, th2, str3, str4);
                            }
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                });
            }
        } catch (RejectedExecutionException e2) {
        } catch (Throwable th3) {
            ThrowableExtension.printStackTrace(th3);
        }
    }

    static void a(Context context) {
        try {
            gj a2 = a(context, 2);
            if (a2 != null) {
                a2.b(context);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    static void b(final Context context) {
        try {
            ExecutorService c2 = gf.c();
            if (c2 != null && !c2.isShutdown()) {
                c2.submit(new Runnable() {
                    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0089, code lost:
                        r2.d();
                     */
                    /* JADX WARNING: Code restructure failed: missing block: B:42:0x008e, code lost:
                        r1.d();
                     */
                    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0093, code lost:
                        r0.d();
                     */
                    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00bc, code lost:
                        r0 = th;
                     */
                    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00c7, code lost:
                        r0 = r1;
                        r1 = r2;
                        r2 = r3;
                     */
                    /* JADX WARNING: Code restructure failed: missing block: B:72:?, code lost:
                        return;
                     */
                    /* JADX WARNING: Code restructure failed: missing block: B:73:?, code lost:
                        return;
                     */
                    /* JADX WARNING: Failed to process nested try/catch */
                    /* JADX WARNING: Removed duplicated region for block: B:23:0x0060  */
                    /* JADX WARNING: Removed duplicated region for block: B:25:0x0065  */
                    /* JADX WARNING: Removed duplicated region for block: B:31:0x0076  */
                    /* JADX WARNING: Removed duplicated region for block: B:33:0x007b  */
                    /* JADX WARNING: Removed duplicated region for block: B:35:0x0080  */
                    /* JADX WARNING: Removed duplicated region for block: B:40:0x0089  */
                    /* JADX WARNING: Removed duplicated region for block: B:42:0x008e  */
                    /* JADX WARNING: Removed duplicated region for block: B:44:0x0093  */
                    /* JADX WARNING: Removed duplicated region for block: B:64:0x00c6 A[ExcHandler: RejectedExecutionException (e java.util.concurrent.RejectedExecutionException), Splitter:B:7:0x0016] */
                    /* JADX WARNING: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
                    /* JADX WARNING: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
                    /* Code decompiled incorrectly, please refer to instructions dump. */
                    public void run() {
                        /*
                            r7 = this;
                            r0 = 0
                            android.content.Context r1 = r3     // Catch:{ RejectedExecutionException -> 0x0084, Throwable -> 0x0051, all -> 0x006e }
                            r2 = 0
                            com.amap.api.mapcore.util.gj r3 = com.amap.api.mapcore.util.gd.a(r1, r2)     // Catch:{ RejectedExecutionException -> 0x0084, Throwable -> 0x0051, all -> 0x006e }
                            android.content.Context r1 = r3     // Catch:{ RejectedExecutionException -> 0x00be, Throwable -> 0x00b1, all -> 0x00a4 }
                            r2 = 1
                            com.amap.api.mapcore.util.gj r2 = com.amap.api.mapcore.util.gd.a(r1, r2)     // Catch:{ RejectedExecutionException -> 0x00be, Throwable -> 0x00b1, all -> 0x00a4 }
                            android.content.Context r1 = r3     // Catch:{ RejectedExecutionException -> 0x00c2, Throwable -> 0x00b7, all -> 0x00aa }
                            r4 = 2
                            com.amap.api.mapcore.util.gj r1 = com.amap.api.mapcore.util.gd.a(r1, r4)     // Catch:{ RejectedExecutionException -> 0x00c2, Throwable -> 0x00b7, all -> 0x00aa }
                            android.content.Context r0 = r3     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            r3.c(r0)     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            android.content.Context r0 = r3     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            r2.c(r0)     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            android.content.Context r0 = r3     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            r1.c(r0)     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            android.content.Context r0 = r3     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            com.amap.api.mapcore.util.ic.a(r0)     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            android.content.Context r0 = r3     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            com.amap.api.mapcore.util.ia.a(r0)     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            java.util.List r0 = com.amap.api.mapcore.util.gj.a()     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            int r4 = r0.size()     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            if (r4 <= 0) goto L_0x0097
                            java.util.Iterator r4 = r0.iterator()     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                        L_0x003d:
                            boolean r0 = r4.hasNext()     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            if (r0 == 0) goto L_0x0097
                            java.lang.Object r0 = r4.next()     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            com.amap.api.mapcore.util.gj$b r0 = (com.amap.api.mapcore.util.gj.b) r0     // Catch:{ RejectedExecutionException -> 0x00c6, Throwable -> 0x00bc }
                            android.content.Context r5 = r3     // Catch:{ Throwable -> 0x004f, RejectedExecutionException -> 0x00c6 }
                            r0.a(r5)     // Catch:{ Throwable -> 0x004f, RejectedExecutionException -> 0x00c6 }
                            goto L_0x003d
                        L_0x004f:
                            r0 = move-exception
                            goto L_0x003d
                        L_0x0051:
                            r1 = move-exception
                            r2 = r0
                            r3 = r0
                            r6 = r1
                            r1 = r0
                            r0 = r6
                        L_0x0057:
                            java.lang.String r4 = "Lg"
                            java.lang.String r5 = "proL"
                            com.amap.api.mapcore.util.gc.a(r0, r4, r5)     // Catch:{ all -> 0x00af }
                            if (r3 == 0) goto L_0x0063
                            r3.d()
                        L_0x0063:
                            if (r2 == 0) goto L_0x0068
                            r2.d()
                        L_0x0068:
                            if (r1 == 0) goto L_0x006d
                        L_0x006a:
                            r1.d()
                        L_0x006d:
                            return
                        L_0x006e:
                            r1 = move-exception
                            r2 = r0
                            r3 = r0
                            r6 = r1
                            r1 = r0
                            r0 = r6
                        L_0x0074:
                            if (r3 == 0) goto L_0x0079
                            r3.d()
                        L_0x0079:
                            if (r2 == 0) goto L_0x007e
                            r2.d()
                        L_0x007e:
                            if (r1 == 0) goto L_0x0083
                            r1.d()
                        L_0x0083:
                            throw r0
                        L_0x0084:
                            r1 = move-exception
                            r1 = r0
                            r2 = r0
                        L_0x0087:
                            if (r2 == 0) goto L_0x008c
                            r2.d()
                        L_0x008c:
                            if (r1 == 0) goto L_0x0091
                            r1.d()
                        L_0x0091:
                            if (r0 == 0) goto L_0x006d
                            r0.d()
                            goto L_0x006d
                        L_0x0097:
                            if (r3 == 0) goto L_0x009c
                            r3.d()
                        L_0x009c:
                            if (r2 == 0) goto L_0x00a1
                            r2.d()
                        L_0x00a1:
                            if (r1 == 0) goto L_0x006d
                            goto L_0x006a
                        L_0x00a4:
                            r1 = move-exception
                            r2 = r0
                            r6 = r0
                            r0 = r1
                            r1 = r6
                            goto L_0x0074
                        L_0x00aa:
                            r1 = move-exception
                            r6 = r1
                            r1 = r0
                            r0 = r6
                            goto L_0x0074
                        L_0x00af:
                            r0 = move-exception
                            goto L_0x0074
                        L_0x00b1:
                            r1 = move-exception
                            r2 = r0
                            r6 = r0
                            r0 = r1
                            r1 = r6
                            goto L_0x0057
                        L_0x00b7:
                            r1 = move-exception
                            r6 = r1
                            r1 = r0
                            r0 = r6
                            goto L_0x0057
                        L_0x00bc:
                            r0 = move-exception
                            goto L_0x0057
                        L_0x00be:
                            r1 = move-exception
                            r1 = r0
                            r2 = r3
                            goto L_0x0087
                        L_0x00c2:
                            r1 = move-exception
                            r1 = r2
                            r2 = r3
                            goto L_0x0087
                        L_0x00c6:
                            r0 = move-exception
                            r0 = r1
                            r1 = r2
                            r2 = r3
                            goto L_0x0087
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gd.AnonymousClass3.run():void");
                    }
                });
            }
        } catch (Throwable th) {
            gc.a(th, "Lg", "proL");
        }
    }
}
