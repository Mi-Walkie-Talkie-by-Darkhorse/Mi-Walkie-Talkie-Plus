package com.ifengyu.intercom;

import android.content.Context;
import java.lang.Thread.UncaughtExceptionHandler;

/* compiled from: WorkaroundUncaughtExceptionHandler */
public class b implements UncaughtExceptionHandler {
    private final Context a;
    private final UncaughtExceptionHandler b;

    private b(Context context, UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = context;
        this.b = uncaughtExceptionHandler;
    }

    public static void a(Context context) {
        UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(defaultUncaughtExceptionHandler instanceof b)) {
            Thread.setDefaultUncaughtExceptionHandler(new b(context, defaultUncaughtExceptionHandler));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00ea, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00eb, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00f7, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00f8, code lost:
        r1 = null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00c3 A[Catch:{ all -> 0x0116 }] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00ea A[ExcHandler: Exception (e java.lang.Exception), Splitter:B:17:0x004b] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00f7 A[Catch:{ InvocationTargetException -> 0x011a, Exception -> 0x00ea, all -> 0x00f7, Throwable -> 0x00e7 }, ExcHandler: all (th java.lang.Throwable), Splitter:B:17:0x004b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void uncaughtException(java.lang.Thread r11, java.lang.Throwable r12) {
        /*
            r10 = this;
            r2 = 0
            r0 = 0
            java.lang.String r1 = "SharedPreferencesImpl-load"
            java.lang.String r3 = r11.getName()
            boolean r1 = r1.equals(r3)
            if (r1 == 0) goto L_0x0036
            boolean r1 = r12 instanceof java.lang.ArrayIndexOutOfBoundsException
            if (r1 == 0) goto L_0x0036
            java.lang.String r1 = "WorkaroundUncaughtExceptionHandler"
            java.lang.String r3 = "Deleting corrupt shared preferences files"
            com.ifengyu.intercom.b.s.c(r1, r3)
            java.io.File r1 = new java.io.File     // Catch:{ Throwable -> 0x00e7 }
            android.content.Context r3 = r10.a     // Catch:{ Throwable -> 0x00e7 }
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo()     // Catch:{ Throwable -> 0x00e7 }
            java.lang.String r3 = r3.dataDir     // Catch:{ Throwable -> 0x00e7 }
            java.lang.String r4 = "share_prefs"
            r1.<init>(r3, r4)     // Catch:{ Throwable -> 0x00e7 }
            java.lang.String[] r5 = r1.list()     // Catch:{ Throwable -> 0x00e7 }
            int r1 = r5.length     // Catch:{ Throwable -> 0x00e7 }
            if (r1 != 0) goto L_0x003c
            java.lang.String r0 = "WorkaroundUncaughtExceptionHandler"
            java.lang.String r1 = "No files in the shared_prefs folder."
            com.ifengyu.intercom.b.s.e(r0, r1)     // Catch:{ Throwable -> 0x00e7 }
        L_0x0036:
            java.lang.Thread$UncaughtExceptionHandler r0 = r10.b
            r0.uncaughtException(r11, r12)
            return
        L_0x003c:
            int r6 = r5.length     // Catch:{ Throwable -> 0x00e7 }
            r4 = r0
        L_0x003e:
            if (r4 >= r6) goto L_0x0036
            r0 = r5[r4]     // Catch:{ Throwable -> 0x00e7 }
            java.lang.String r1 = ".xml"
            boolean r1 = r0.endsWith(r1)     // Catch:{ Throwable -> 0x00e7 }
            if (r1 == 0) goto L_0x00fd
            r1 = 1
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch:{ InvocationTargetException -> 0x009b, Exception -> 0x00ea, all -> 0x00f7 }
            r3 = 0
            java.lang.Class<java.io.InputStream> r7 = java.io.InputStream.class
            r1[r3] = r7     // Catch:{ InvocationTargetException -> 0x009b, Exception -> 0x00ea, all -> 0x00f7 }
            java.lang.ClassLoader r3 = r11.getContextClassLoader()     // Catch:{ InvocationTargetException -> 0x009b, Exception -> 0x00ea, all -> 0x00f7 }
            java.lang.String r7 = "com.android.internal.util.XmlUtils"
            java.lang.Class r3 = r3.loadClass(r7)     // Catch:{ InvocationTargetException -> 0x009b, Exception -> 0x00ea, all -> 0x00f7 }
            java.lang.String r7 = "readMapXml"
            java.lang.reflect.Method r7 = r3.getMethod(r7, r1)     // Catch:{ InvocationTargetException -> 0x009b, Exception -> 0x00ea, all -> 0x00f7 }
            java.io.File r3 = new java.io.File     // Catch:{ InvocationTargetException -> 0x009b, Exception -> 0x00ea, all -> 0x00f7 }
            r3.<init>(r0)     // Catch:{ InvocationTargetException -> 0x009b, Exception -> 0x00ea, all -> 0x00f7 }
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch:{ InvocationTargetException -> 0x011a, Exception -> 0x00ea, all -> 0x00f7 }
            java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch:{ InvocationTargetException -> 0x011a, Exception -> 0x00ea, all -> 0x00f7 }
            r8.<init>(r3)     // Catch:{ InvocationTargetException -> 0x011a, Exception -> 0x00ea, all -> 0x00f7 }
            r1.<init>(r8)     // Catch:{ InvocationTargetException -> 0x011a, Exception -> 0x00ea, all -> 0x00f7 }
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            r9 = 0
            r8[r9] = r1     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            java.lang.Thread$UncaughtExceptionHandler r9 = r10.b     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            r7.invoke(r9, r8)     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            java.lang.String r7 = "WorkaroundUncaughtExceptionHandler"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            r8.<init>()     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            java.lang.String r9 = "Keeping good file: "
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            java.lang.StringBuilder r0 = r8.append(r0)     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            java.lang.String r0 = r0.toString()     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            com.ifengyu.intercom.b.s.c(r7, r0)     // Catch:{ InvocationTargetException -> 0x011d, Exception -> 0x0118 }
            com.ifengyu.intercom.b.w.a(r1)     // Catch:{ Throwable -> 0x00e7 }
        L_0x0097:
            int r0 = r4 + 1
            r4 = r0
            goto L_0x003e
        L_0x009b:
            r0 = move-exception
            r1 = r2
            r3 = r2
        L_0x009e:
            java.lang.String r7 = "WorkaroundUncaughtExceptionHandler"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x0116 }
            r8.<init>()     // Catch:{ all -> 0x0116 }
            java.lang.String r9 = "Deleting corrupt shared pref file: "
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch:{ all -> 0x0116 }
            java.lang.String r9 = r3.getName()     // Catch:{ all -> 0x0116 }
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch:{ all -> 0x0116 }
            java.lang.String r8 = r8.toString()     // Catch:{ all -> 0x0116 }
            com.ifengyu.intercom.b.s.c(r7, r8)     // Catch:{ all -> 0x0116 }
            r3.delete()     // Catch:{ all -> 0x0116 }
            java.lang.Throwable r7 = r0.getCause()     // Catch:{ all -> 0x0116 }
            if (r7 == 0) goto L_0x00e3
            java.lang.String r7 = "WorkaroundUncaughtExceptionHandler"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x0116 }
            r8.<init>()     // Catch:{ all -> 0x0116 }
            java.lang.String r9 = "Caught unexpected exception trying to read file: "
            java.lang.StringBuilder r8 = r8.append(r9)     // Catch:{ all -> 0x0116 }
            java.lang.String r3 = r3.getName()     // Catch:{ all -> 0x0116 }
            java.lang.StringBuilder r3 = r8.append(r3)     // Catch:{ all -> 0x0116 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0116 }
            java.lang.Throwable r0 = r0.getCause()     // Catch:{ all -> 0x0116 }
            com.ifengyu.intercom.b.s.b(r7, r3, r0)     // Catch:{ all -> 0x0116 }
        L_0x00e3:
            com.ifengyu.intercom.b.w.a(r1)     // Catch:{ Throwable -> 0x00e7 }
            goto L_0x0097
        L_0x00e7:
            r0 = move-exception
            goto L_0x0036
        L_0x00ea:
            r0 = move-exception
            r1 = r2
        L_0x00ec:
            java.lang.String r3 = "WorkaroundUncaughtExceptionHandler"
            java.lang.String r7 = "Caught exception when call method readMapXml."
            com.ifengyu.intercom.b.s.b(r3, r7, r0)     // Catch:{ all -> 0x0116 }
            com.ifengyu.intercom.b.w.a(r1)     // Catch:{ Throwable -> 0x00e7 }
            goto L_0x0097
        L_0x00f7:
            r0 = move-exception
            r1 = r2
        L_0x00f9:
            com.ifengyu.intercom.b.w.a(r1)     // Catch:{ Throwable -> 0x00e7 }
            throw r0     // Catch:{ Throwable -> 0x00e7 }
        L_0x00fd:
            java.lang.String r1 = "WorkaroundUncaughtExceptionHandler"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00e7 }
            r3.<init>()     // Catch:{ Throwable -> 0x00e7 }
            java.lang.String r7 = "Non-XML file: "
            java.lang.StringBuilder r3 = r3.append(r7)     // Catch:{ Throwable -> 0x00e7 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ Throwable -> 0x00e7 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x00e7 }
            com.ifengyu.intercom.b.s.d(r1, r0)     // Catch:{ Throwable -> 0x00e7 }
            goto L_0x0097
        L_0x0116:
            r0 = move-exception
            goto L_0x00f9
        L_0x0118:
            r0 = move-exception
            goto L_0x00ec
        L_0x011a:
            r0 = move-exception
            r1 = r2
            goto L_0x009e
        L_0x011d:
            r0 = move-exception
            goto L_0x009e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
    }
}
