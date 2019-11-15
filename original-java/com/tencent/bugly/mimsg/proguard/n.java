package com.tencent.bugly.mimsg.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tencent.bugly.mimsg.crashreport.common.info.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
public final class n {
    public static final long a = System.currentTimeMillis();
    private static n b = null;
    private Context c;
    /* access modifiers changed from: private */
    public String d = a.b().d;
    /* access modifiers changed from: private */
    public Map<Integer, Map<String, m>> e = new HashMap();
    /* access modifiers changed from: private */
    public SharedPreferences f;

    private n(Context context) {
        this.c = context;
        this.f = context.getSharedPreferences("crashrecord", 0);
    }

    public static synchronized n a(Context context) {
        n nVar;
        synchronized (n.class) {
            if (b == null) {
                b = new n(context);
            }
            nVar = b;
        }
        return nVar;
    }

    public static synchronized n a() {
        n nVar;
        synchronized (n.class) {
            nVar = b;
        }
        return nVar;
    }

    /* access modifiers changed from: private */
    public synchronized boolean b(int i) {
        boolean z;
        try {
            List<m> c2 = c(i);
            if (c2 == null) {
                z = false;
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (m mVar : c2) {
                    if (mVar.b != null && mVar.b.equalsIgnoreCase(this.d) && mVar.d > 0) {
                        arrayList.add(mVar);
                    }
                    if (mVar.c + 86400000 < currentTimeMillis) {
                        arrayList2.add(mVar);
                    }
                }
                Collections.sort(arrayList);
                if (arrayList.size() < 2) {
                    c2.removeAll(arrayList2);
                    a(i, (T) c2);
                    z = false;
                } else if (arrayList.size() <= 0 || ((m) arrayList.get(arrayList.size() - 1)).c + 86400000 >= currentTimeMillis) {
                    z = true;
                } else {
                    c2.clear();
                    a(i, (T) c2);
                    z = false;
                }
            }
        } catch (Exception e2) {
            x.e("isFrequentCrash failed", new Object[0]);
            z = false;
        }
        return z;
    }

    public final synchronized void a(int i, final int i2) {
        w.a().a(new Runnable(1004) {
            public final void run() {
                List<m> list;
                m mVar;
                try {
                    if (!TextUtils.isEmpty(n.this.d)) {
                        List a2 = n.this.c(1004);
                        if (a2 == null) {
                            list = new ArrayList<>();
                        } else {
                            list = a2;
                        }
                        if (n.this.e.get(Integer.valueOf(1004)) == null) {
                            n.this.e.put(Integer.valueOf(1004), new HashMap());
                        }
                        if (((Map) n.this.e.get(Integer.valueOf(1004))).get(n.this.d) == null) {
                            m mVar2 = new m();
                            mVar2.a = (long) 1004;
                            mVar2.g = n.a;
                            mVar2.b = n.this.d;
                            mVar2.f = a.b().j;
                            a.b().getClass();
                            mVar2.e = "2.6.5";
                            mVar2.c = System.currentTimeMillis();
                            mVar2.d = i2;
                            ((Map) n.this.e.get(Integer.valueOf(1004))).put(n.this.d, mVar2);
                            mVar = mVar2;
                        } else {
                            m mVar3 = (m) ((Map) n.this.e.get(Integer.valueOf(1004))).get(n.this.d);
                            mVar3.d = i2;
                            mVar = mVar3;
                        }
                        ArrayList arrayList = new ArrayList();
                        boolean z = false;
                        for (m mVar4 : list) {
                            if (mVar4.g == mVar.g && mVar4.b != null && mVar4.b.equalsIgnoreCase(mVar.b)) {
                                z = true;
                                mVar4.d = mVar.d;
                            }
                            if ((mVar4.e != null && !mVar4.e.equalsIgnoreCase(mVar.e)) || ((mVar4.f != null && !mVar4.f.equalsIgnoreCase(mVar.f)) || mVar4.d <= 0)) {
                                arrayList.add(mVar4);
                            }
                        }
                        list.removeAll(arrayList);
                        if (!z) {
                            list.add(mVar);
                        }
                        n.this.a(1004, list);
                    }
                } catch (Exception e) {
                    x.e("saveCrashRecord failed", new Object[0]);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0051 A[SYNTHETIC, Splitter:B:25:0x0051] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0064 A[SYNTHETIC, Splitter:B:36:0x0064] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x006c A[Catch:{ Exception -> 0x003a }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized <T extends java.util.List<?>> T c(int r7) {
        /*
            r6 = this;
            r1 = 0
            monitor-enter(r6)
            java.io.File r0 = new java.io.File     // Catch:{ Exception -> 0x003a }
            android.content.Context r2 = r6.c     // Catch:{ Exception -> 0x003a }
            java.lang.String r3 = "crashrecord"
            r4 = 0
            java.io.File r2 = r2.getDir(r3, r4)     // Catch:{ Exception -> 0x003a }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x003a }
            r3.<init>()     // Catch:{ Exception -> 0x003a }
            java.lang.StringBuilder r3 = r3.append(r7)     // Catch:{ Exception -> 0x003a }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x003a }
            r0.<init>(r2, r3)     // Catch:{ Exception -> 0x003a }
            boolean r2 = r0.exists()     // Catch:{ Exception -> 0x003a }
            if (r2 != 0) goto L_0x0026
            r0 = r1
        L_0x0024:
            monitor-exit(r6)
            return r0
        L_0x0026:
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch:{ IOException -> 0x0045, ClassNotFoundException -> 0x0058, all -> 0x0068 }
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0045, ClassNotFoundException -> 0x0058, all -> 0x0068 }
            r3.<init>(r0)     // Catch:{ IOException -> 0x0045, ClassNotFoundException -> 0x0058, all -> 0x0068 }
            r2.<init>(r3)     // Catch:{ IOException -> 0x0045, ClassNotFoundException -> 0x0058, all -> 0x0068 }
            java.lang.Object r0 = r2.readObject()     // Catch:{ IOException -> 0x0079, ClassNotFoundException -> 0x0077 }
            java.util.List r0 = (java.util.List) r0     // Catch:{ IOException -> 0x0079, ClassNotFoundException -> 0x0077 }
            r2.close()     // Catch:{ Exception -> 0x003a }
            goto L_0x0024
        L_0x003a:
            r0 = move-exception
            java.lang.String r0 = "readCrashRecord error"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x0055 }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r2)     // Catch:{ all -> 0x0055 }
        L_0x0043:
            r0 = r1
            goto L_0x0024
        L_0x0045:
            r0 = move-exception
            r0 = r1
        L_0x0047:
            java.lang.String r2 = "open record file error"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x0072 }
            com.tencent.bugly.mimsg.proguard.x.a(r2, r3)     // Catch:{ all -> 0x0072 }
            if (r0 == 0) goto L_0x0043
            r0.close()     // Catch:{ Exception -> 0x003a }
            goto L_0x0043
        L_0x0055:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        L_0x0058:
            r0 = move-exception
            r2 = r1
        L_0x005a:
            java.lang.String r0 = "get object error"
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x0070 }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r3)     // Catch:{ all -> 0x0070 }
            if (r2 == 0) goto L_0x0043
            r2.close()     // Catch:{ Exception -> 0x003a }
            goto L_0x0043
        L_0x0068:
            r0 = move-exception
            r2 = r1
        L_0x006a:
            if (r2 == 0) goto L_0x006f
            r2.close()     // Catch:{ Exception -> 0x003a }
        L_0x006f:
            throw r0     // Catch:{ Exception -> 0x003a }
        L_0x0070:
            r0 = move-exception
            goto L_0x006a
        L_0x0072:
            r2 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
            goto L_0x006a
        L_0x0077:
            r0 = move-exception
            goto L_0x005a
        L_0x0079:
            r0 = move-exception
            r0 = r2
            goto L_0x0047
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.n.c(int):java.util.List");
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x004e A[SYNTHETIC, Splitter:B:25:0x004e] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0056 A[Catch:{ Exception -> 0x0032 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized <T extends java.util.List<?>> void a(int r5, T r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            if (r6 != 0) goto L_0x0005
        L_0x0003:
            monitor-exit(r4)
            return
        L_0x0005:
            java.io.File r0 = new java.io.File     // Catch:{ Exception -> 0x0032 }
            android.content.Context r1 = r4.c     // Catch:{ Exception -> 0x0032 }
            java.lang.String r2 = "crashrecord"
            r3 = 0
            java.io.File r1 = r1.getDir(r2, r3)     // Catch:{ Exception -> 0x0032 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0032 }
            r2.<init>()     // Catch:{ Exception -> 0x0032 }
            java.lang.StringBuilder r2 = r2.append(r5)     // Catch:{ Exception -> 0x0032 }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x0032 }
            r0.<init>(r1, r2)     // Catch:{ Exception -> 0x0032 }
            r2 = 0
            java.io.ObjectOutputStream r1 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x003f, all -> 0x0052 }
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x003f, all -> 0x0052 }
            r3.<init>(r0)     // Catch:{ IOException -> 0x003f, all -> 0x0052 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x003f, all -> 0x0052 }
            r1.writeObject(r6)     // Catch:{ IOException -> 0x005c }
            r1.close()     // Catch:{ Exception -> 0x0032 }
            goto L_0x0003
        L_0x0032:
            r0 = move-exception
            java.lang.String r0 = "writeCrashRecord error"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x003c }
            com.tencent.bugly.mimsg.proguard.x.e(r0, r1)     // Catch:{ all -> 0x003c }
            goto L_0x0003
        L_0x003c:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        L_0x003f:
            r0 = move-exception
            r1 = r2
        L_0x0041:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x005a }
            java.lang.String r0 = "open record file error"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x005a }
            com.tencent.bugly.mimsg.proguard.x.a(r0, r2)     // Catch:{ all -> 0x005a }
            if (r1 == 0) goto L_0x0003
            r1.close()     // Catch:{ Exception -> 0x0032 }
            goto L_0x0003
        L_0x0052:
            r0 = move-exception
            r1 = r2
        L_0x0054:
            if (r1 == 0) goto L_0x0059
            r1.close()     // Catch:{ Exception -> 0x0032 }
        L_0x0059:
            throw r0     // Catch:{ Exception -> 0x0032 }
        L_0x005a:
            r0 = move-exception
            goto L_0x0054
        L_0x005c:
            r0 = move-exception
            goto L_0x0041
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.n.a(int, java.util.List):void");
    }

    public final synchronized boolean a(final int i) {
        boolean z = true;
        synchronized (this) {
            try {
                z = this.f.getBoolean(i + "_" + this.d, true);
                w.a().a(new Runnable() {
                    public final void run() {
                        n.this.f.edit().putBoolean(i + "_" + n.this.d, !n.this.b(i)).commit();
                    }
                });
            } catch (Exception e2) {
                x.e("canInit error", new Object[0]);
            }
        }
        return z;
    }
}
