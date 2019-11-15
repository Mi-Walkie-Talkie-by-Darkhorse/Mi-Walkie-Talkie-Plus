package com.tencent.bugly.mimsg.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.data.Error;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
public final class p {
    private static p a = null;
    private static q b = null;
    private static boolean c = false;

    /* compiled from: BUGLY */
    class a extends Thread {
        private int a;
        private o b;
        private String c;
        private ContentValues d;
        private boolean e;
        private String[] f;
        private String g;
        private String[] h;
        private String i;
        private String j;
        private String k;
        private String l;
        private String m;
        private String[] n;
        private int o;
        private String p;
        private byte[] q;

        public a(int i2, o oVar) {
            this.a = i2;
            this.b = oVar;
        }

        public final void a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
            this.e = z;
            this.c = str;
            this.f = strArr;
            this.g = str2;
            this.h = strArr2;
            this.i = str3;
            this.j = str4;
            this.k = str5;
            this.l = str6;
        }

        public final void a(int i2, String str, byte[] bArr) {
            this.o = i2;
            this.p = str;
            this.q = bArr;
        }

        public final void run() {
            switch (this.a) {
                case 1:
                    p.this.a(this.c, this.d, this.b);
                    return;
                case 2:
                    p.this.a(this.c, this.m, this.n, this.b);
                    return;
                case 3:
                    p.this.a(this.e, this.c, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.b);
                    return;
                case 4:
                    p.this.a(this.o, this.p, this.q, this.b);
                    return;
                case 5:
                    p.this.a(this.o, this.b);
                    return;
                case 6:
                    p.this.a(this.o, this.p, this.b);
                    return;
                default:
                    return;
            }
        }
    }

    private p(Context context, List<com.tencent.bugly.mimsg.a> list) {
        b = new q(context, list);
    }

    public static synchronized p a(Context context, List<com.tencent.bugly.mimsg.a> list) {
        p pVar;
        synchronized (p.class) {
            if (a == null) {
                a = new p(context, list);
            }
            pVar = a;
        }
        return pVar;
    }

    public static synchronized p a() {
        p pVar;
        synchronized (p.class) {
            pVar = a;
        }
        return pVar;
    }

    public final long a(String str, ContentValues contentValues, o oVar, boolean z) {
        return a(str, contentValues, (o) null);
    }

    public final Cursor a(String str, String[] strArr, String str2, String[] strArr2, o oVar, boolean z) {
        return a(false, str, strArr, str2, null, null, null, null, null, null);
    }

    public final int a(String str, String str2, String[] strArr, o oVar, boolean z) {
        return a(str, str2, (String[]) null, (o) null);
    }

    /* access modifiers changed from: private */
    public synchronized long a(String str, ContentValues contentValues, o oVar) {
        long j = 0;
        synchronized (this) {
            try {
                SQLiteDatabase writableDatabase = b.getWritableDatabase();
                if (!(writableDatabase == null || contentValues == null)) {
                    long replace = writableDatabase.replace(str, "_id", contentValues);
                    if (replace >= 0) {
                        x.c("[Database] insert %s success.", str);
                    } else {
                        x.d("[Database] replace %s error.", str);
                    }
                    j = replace;
                }
                if (oVar != null) {
                    Long.valueOf(j);
                }
            } catch (Throwable th) {
                if (oVar != null) {
                    Long.valueOf(0);
                }
                throw th;
            }
        }
        return j;
    }

    /* access modifiers changed from: private */
    public synchronized Cursor a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, o oVar) {
        Cursor cursor;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                cursor = writableDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6);
            } else {
                cursor = null;
            }
            if (oVar != null) {
            }
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            if (oVar != null) {
                cursor = null;
            } else {
                cursor = null;
            }
        }
        return cursor;
    }

    /* access modifiers changed from: private */
    public synchronized int a(String str, String str2, String[] strArr, o oVar) {
        int i = 0;
        synchronized (this) {
            try {
                SQLiteDatabase writableDatabase = b.getWritableDatabase();
                if (writableDatabase != null) {
                    i = writableDatabase.delete(str, str2, strArr);
                }
                if (oVar != null) {
                    Integer.valueOf(i);
                }
            } catch (Throwable th) {
                if (oVar != null) {
                    Integer.valueOf(0);
                }
                throw th;
            }
        }
        return i;
    }

    public final boolean a(int i, String str, byte[] bArr, o oVar, boolean z) {
        if (z) {
            return a(i, str, bArr, (o) null);
        }
        a aVar = new a(4, null);
        aVar.a(i, str, bArr);
        w.a().a(aVar);
        return true;
    }

    public final Map<String, byte[]> a(int i, o oVar, boolean z) {
        return a(i, (o) null);
    }

    public final boolean a(int i, String str, o oVar, boolean z) {
        return a((int) Error.TLV_DECOMPRESS_FAIL, str, (o) null);
    }

    /* access modifiers changed from: private */
    public boolean a(int i, String str, byte[] bArr, o oVar) {
        boolean z = false;
        try {
            r rVar = new r();
            rVar.a = (long) i;
            rVar.f = str;
            rVar.e = System.currentTimeMillis();
            rVar.g = bArr;
            z = b(rVar);
            if (oVar != null) {
                Boolean.valueOf(z);
            }
        } catch (Throwable th) {
            if (oVar != null) {
                Boolean.valueOf(z);
            }
            throw th;
        }
        return z;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0030  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Map<java.lang.String, byte[]> a(int r6, com.tencent.bugly.mimsg.proguard.o r7) {
        /*
            r5 = this;
            r2 = 0
            java.util.List r0 = r5.c(r6)     // Catch:{ Throwable -> 0x003c }
            if (r0 == 0) goto L_0x0040
            java.util.HashMap r1 = new java.util.HashMap     // Catch:{ Throwable -> 0x003c }
            r1.<init>()     // Catch:{ Throwable -> 0x003c }
            java.util.Iterator r2 = r0.iterator()     // Catch:{ Throwable -> 0x0026 }
        L_0x0010:
            boolean r0 = r2.hasNext()     // Catch:{ Throwable -> 0x0026 }
            if (r0 == 0) goto L_0x0036
            java.lang.Object r0 = r2.next()     // Catch:{ Throwable -> 0x0026 }
            com.tencent.bugly.mimsg.proguard.r r0 = (com.tencent.bugly.mimsg.proguard.r) r0     // Catch:{ Throwable -> 0x0026 }
            byte[] r3 = r0.g     // Catch:{ Throwable -> 0x0026 }
            if (r3 == 0) goto L_0x0010
            java.lang.String r0 = r0.f     // Catch:{ Throwable -> 0x0026 }
            r1.put(r0, r3)     // Catch:{ Throwable -> 0x0026 }
            goto L_0x0010
        L_0x0026:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
        L_0x002a:
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r1)     // Catch:{ all -> 0x003a }
            if (r2 != 0) goto L_0x0033
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x003a }
        L_0x0033:
            if (r7 == 0) goto L_0x0035
        L_0x0035:
            return r0
        L_0x0036:
            r0 = r1
        L_0x0037:
            if (r7 == 0) goto L_0x0035
            goto L_0x0035
        L_0x003a:
            r0 = move-exception
            throw r0
        L_0x003c:
            r0 = move-exception
            r1 = r0
            r0 = r2
            goto L_0x002a
        L_0x0040:
            r0 = r2
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.p.a(int, com.tencent.bugly.mimsg.proguard.o):java.util.Map");
    }

    public final synchronized boolean a(r rVar) {
        boolean z = false;
        synchronized (this) {
            if (rVar != null) {
                try {
                    SQLiteDatabase writableDatabase = b.getWritableDatabase();
                    if (writableDatabase != null) {
                        ContentValues c2 = c(rVar);
                        if (c2 != null) {
                            long replace = writableDatabase.replace("t_lr", "_id", c2);
                            if (replace >= 0) {
                                x.c("[Database] insert %s success.", "t_lr");
                                rVar.a = replace;
                                z = true;
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (!x.a(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
        return z;
    }

    private synchronized boolean b(r rVar) {
        boolean z = false;
        synchronized (this) {
            if (rVar != null) {
                try {
                    SQLiteDatabase writableDatabase = b.getWritableDatabase();
                    if (writableDatabase != null) {
                        ContentValues d = d(rVar);
                        if (d != null) {
                            long replace = writableDatabase.replace("t_pf", "_id", d);
                            if (replace >= 0) {
                                x.c("[Database] insert %s success.", "t_pf");
                                rVar.a = replace;
                                z = true;
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (!x.a(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004c, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004d, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0082, code lost:
        r0 = th;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0082 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:17:0x0032] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0085 A[SYNTHETIC, Splitter:B:43:0x0085] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized java.util.List<com.tencent.bugly.mimsg.proguard.r> a(int r10) {
        /*
            r9 = this;
            r8 = 0
            monitor-enter(r9)
            com.tencent.bugly.mimsg.proguard.q r0 = b     // Catch:{ all -> 0x0089 }
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch:{ all -> 0x0089 }
            if (r0 == 0) goto L_0x005c
            if (r10 < 0) goto L_0x0030
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00c4, all -> 0x00be }
            java.lang.String r2 = "_tp = "
            r1.<init>(r2)     // Catch:{ Throwable -> 0x00c4, all -> 0x00be }
            java.lang.StringBuilder r1 = r1.append(r10)     // Catch:{ Throwable -> 0x00c4, all -> 0x00be }
            java.lang.String r3 = r1.toString()     // Catch:{ Throwable -> 0x00c4, all -> 0x00be }
        L_0x001b:
            java.lang.String r1 = "t_lr"
            r2 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r2 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Throwable -> 0x00c4, all -> 0x00be }
            if (r2 != 0) goto L_0x0032
            if (r2 == 0) goto L_0x002d
            r2.close()     // Catch:{ all -> 0x0089 }
        L_0x002d:
            r0 = r8
        L_0x002e:
            monitor-exit(r9)
            return r0
        L_0x0030:
            r3 = r8
            goto L_0x001b
        L_0x0032:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            r3.<init>()     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            r1.<init>()     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
        L_0x003c:
            boolean r4 = r2.moveToNext()     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            if (r4 == 0) goto L_0x008c
            com.tencent.bugly.mimsg.proguard.r r4 = a(r2)     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            if (r4 == 0) goto L_0x005e
            r1.add(r4)     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            goto L_0x003c
        L_0x004c:
            r0 = move-exception
            r1 = r2
        L_0x004e:
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x00c1 }
            if (r2 != 0) goto L_0x0057
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00c1 }
        L_0x0057:
            if (r1 == 0) goto L_0x005c
            r1.close()     // Catch:{ all -> 0x0089 }
        L_0x005c:
            r0 = r8
            goto L_0x002e
        L_0x005e:
            java.lang.String r4 = "_id"
            int r4 = r2.getColumnIndex(r4)     // Catch:{ Throwable -> 0x0078, all -> 0x0082 }
            long r4 = r2.getLong(r4)     // Catch:{ Throwable -> 0x0078, all -> 0x0082 }
            java.lang.String r6 = " or _id"
            java.lang.StringBuilder r6 = r3.append(r6)     // Catch:{ Throwable -> 0x0078, all -> 0x0082 }
            java.lang.String r7 = " = "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ Throwable -> 0x0078, all -> 0x0082 }
            r6.append(r4)     // Catch:{ Throwable -> 0x0078, all -> 0x0082 }
            goto L_0x003c
        L_0x0078:
            r4 = move-exception
            java.lang.String r4 = "[Database] unknown id."
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            com.tencent.bugly.mimsg.proguard.x.d(r4, r5)     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            goto L_0x003c
        L_0x0082:
            r0 = move-exception
        L_0x0083:
            if (r2 == 0) goto L_0x0088
            r2.close()     // Catch:{ all -> 0x0089 }
        L_0x0088:
            throw r0     // Catch:{ all -> 0x0089 }
        L_0x0089:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        L_0x008c:
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            int r4 = r3.length()     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            if (r4 <= 0) goto L_0x00b6
            r4 = 4
            java.lang.String r3 = r3.substring(r4)     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            java.lang.String r4 = "t_lr"
            r5 = 0
            int r0 = r0.delete(r4, r3, r5)     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            java.lang.String r3 = "[Database] deleted %s illegal data %d"
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            r5 = 0
            java.lang.String r6 = "t_lr"
            r4[r5] = r6     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            r5 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            r4[r5] = r0     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
            com.tencent.bugly.mimsg.proguard.x.d(r3, r4)     // Catch:{ Throwable -> 0x004c, all -> 0x0082 }
        L_0x00b6:
            if (r2 == 0) goto L_0x00bb
            r2.close()     // Catch:{ all -> 0x0089 }
        L_0x00bb:
            r0 = r1
            goto L_0x002e
        L_0x00be:
            r0 = move-exception
            r2 = r8
            goto L_0x0083
        L_0x00c1:
            r0 = move-exception
            r2 = r1
            goto L_0x0083
        L_0x00c4:
            r0 = move-exception
            r1 = r8
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.p.a(int):java.util.List");
    }

    public final synchronized void a(List<r> list) {
        if (list != null) {
            if (list.size() != 0) {
                SQLiteDatabase writableDatabase = b.getWritableDatabase();
                if (writableDatabase != null) {
                    StringBuilder sb = new StringBuilder();
                    for (r rVar : list) {
                        sb.append(" or _id").append(" = ").append(rVar.a);
                    }
                    String sb2 = sb.toString();
                    if (sb2.length() > 0) {
                        sb2 = sb2.substring(4);
                    }
                    sb.setLength(0);
                    try {
                        x.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", sb2, null)));
                    } catch (Throwable th) {
                        if (!x.a(th)) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                }
            }
        }
    }

    public final synchronized void b(int i) {
        String str = null;
        synchronized (this) {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                if (i >= 0) {
                    try {
                        str = "_tp = " + i;
                    } catch (Throwable th) {
                        if (!x.a(th)) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                }
                x.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", str, null)));
            }
        }
    }

    private static ContentValues c(r rVar) {
        if (rVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (rVar.a > 0) {
                contentValues.put("_id", Long.valueOf(rVar.a));
            }
            contentValues.put("_tp", Integer.valueOf(rVar.b));
            contentValues.put("_pc", rVar.c);
            contentValues.put("_th", rVar.d);
            contentValues.put("_tm", Long.valueOf(rVar.e));
            if (rVar.g != null) {
                contentValues.put("_dt", rVar.g);
            }
            return contentValues;
        } catch (Throwable th) {
            if (x.a(th)) {
                return null;
            }
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private static r a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.a = cursor.getLong(cursor.getColumnIndex("_id"));
            rVar.b = cursor.getInt(cursor.getColumnIndex("_tp"));
            rVar.c = cursor.getString(cursor.getColumnIndex("_pc"));
            rVar.d = cursor.getString(cursor.getColumnIndex("_th"));
            rVar.e = cursor.getLong(cursor.getColumnIndex("_tm"));
            rVar.g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return rVar;
        } catch (Throwable th) {
            if (x.a(th)) {
                return null;
            }
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0048, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0049, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x007e, code lost:
        r0 = th;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x007e A[ExcHandler: all (th java.lang.Throwable), Splitter:B:13:0x002e] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0081 A[SYNTHETIC, Splitter:B:39:0x0081] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized java.util.List<com.tencent.bugly.mimsg.proguard.r> c(int r10) {
        /*
            r9 = this;
            r8 = 0
            monitor-enter(r9)
            com.tencent.bugly.mimsg.proguard.q r0 = b     // Catch:{ Throwable -> 0x00cb, all -> 0x00c5 }
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch:{ Throwable -> 0x00cb, all -> 0x00c5 }
            if (r0 == 0) goto L_0x0058
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00cb, all -> 0x00c5 }
            java.lang.String r2 = "_id = "
            r1.<init>(r2)     // Catch:{ Throwable -> 0x00cb, all -> 0x00c5 }
            java.lang.StringBuilder r1 = r1.append(r10)     // Catch:{ Throwable -> 0x00cb, all -> 0x00c5 }
            java.lang.String r3 = r1.toString()     // Catch:{ Throwable -> 0x00cb, all -> 0x00c5 }
            java.lang.String r1 = "t_pf"
            r2 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r2 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Throwable -> 0x00cb, all -> 0x00c5 }
            if (r2 != 0) goto L_0x002e
            if (r2 == 0) goto L_0x002b
            r2.close()     // Catch:{ all -> 0x0085 }
        L_0x002b:
            r0 = r8
        L_0x002c:
            monitor-exit(r9)
            return r0
        L_0x002e:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            r4.<init>()     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            r1.<init>()     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
        L_0x0038:
            boolean r5 = r2.moveToNext()     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            if (r5 == 0) goto L_0x0088
            com.tencent.bugly.mimsg.proguard.r r5 = b(r2)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            if (r5 == 0) goto L_0x005a
            r1.add(r5)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            goto L_0x0038
        L_0x0048:
            r0 = move-exception
            r1 = r2
        L_0x004a:
            boolean r2 = com.tencent.bugly.mimsg.proguard.x.a(r0)     // Catch:{ all -> 0x00c8 }
            if (r2 != 0) goto L_0x0053
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00c8 }
        L_0x0053:
            if (r1 == 0) goto L_0x0058
            r1.close()     // Catch:{ all -> 0x0085 }
        L_0x0058:
            r0 = r8
            goto L_0x002c
        L_0x005a:
            java.lang.String r5 = "_tp"
            int r5 = r2.getColumnIndex(r5)     // Catch:{ Throwable -> 0x0074, all -> 0x007e }
            java.lang.String r5 = r2.getString(r5)     // Catch:{ Throwable -> 0x0074, all -> 0x007e }
            java.lang.String r6 = " or _tp"
            java.lang.StringBuilder r6 = r4.append(r6)     // Catch:{ Throwable -> 0x0074, all -> 0x007e }
            java.lang.String r7 = " = "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch:{ Throwable -> 0x0074, all -> 0x007e }
            r6.append(r5)     // Catch:{ Throwable -> 0x0074, all -> 0x007e }
            goto L_0x0038
        L_0x0074:
            r5 = move-exception
            java.lang.String r5 = "[Database] unknown id."
            r6 = 0
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            com.tencent.bugly.mimsg.proguard.x.d(r5, r6)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            goto L_0x0038
        L_0x007e:
            r0 = move-exception
        L_0x007f:
            if (r2 == 0) goto L_0x0084
            r2.close()     // Catch:{ all -> 0x0085 }
        L_0x0084:
            throw r0     // Catch:{ all -> 0x0085 }
        L_0x0085:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        L_0x0088:
            int r5 = r4.length()     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            if (r5 <= 0) goto L_0x00bd
            java.lang.String r5 = " and _id"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            java.lang.String r5 = " = "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            r4.append(r10)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            r4 = 4
            java.lang.String r3 = r3.substring(r4)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            java.lang.String r4 = "t_pf"
            r5 = 0
            int r0 = r0.delete(r4, r3, r5)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            java.lang.String r3 = "[Database] deleted %s illegal data %d."
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            r5 = 0
            java.lang.String r6 = "t_pf"
            r4[r5] = r6     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            r5 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            r4[r5] = r0     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
            com.tencent.bugly.mimsg.proguard.x.d(r3, r4)     // Catch:{ Throwable -> 0x0048, all -> 0x007e }
        L_0x00bd:
            if (r2 == 0) goto L_0x00c2
            r2.close()     // Catch:{ all -> 0x0085 }
        L_0x00c2:
            r0 = r1
            goto L_0x002c
        L_0x00c5:
            r0 = move-exception
            r2 = r8
            goto L_0x007f
        L_0x00c8:
            r0 = move-exception
            r2 = r1
            goto L_0x007f
        L_0x00cb:
            r0 = move-exception
            r1 = r8
            goto L_0x004a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.mimsg.proguard.p.c(int):java.util.List");
    }

    /* access modifiers changed from: private */
    public synchronized boolean a(int i, String str, o oVar) {
        String str2;
        boolean z = true;
        boolean z2 = false;
        synchronized (this) {
            try {
                SQLiteDatabase writableDatabase = b.getWritableDatabase();
                if (writableDatabase != null) {
                    if (z.a(str)) {
                        str2 = "_id = " + i;
                    } else {
                        str2 = "_id = " + i + " and _tp" + " = \"" + str + "\"";
                    }
                    int delete = writableDatabase.delete("t_pf", str2, null);
                    x.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(delete));
                    if (delete <= 0) {
                        z = false;
                    }
                    z2 = z;
                }
                if (oVar != null) {
                    Boolean.valueOf(z2);
                }
            } catch (Throwable th) {
                if (oVar != null) {
                    Boolean.valueOf(false);
                }
                throw th;
            }
        }
        return z2;
    }

    private static ContentValues d(r rVar) {
        if (rVar == null || z.a(rVar.f)) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (rVar.a > 0) {
                contentValues.put("_id", Long.valueOf(rVar.a));
            }
            contentValues.put("_tp", rVar.f);
            contentValues.put("_tm", Long.valueOf(rVar.e));
            if (rVar.g == null) {
                return contentValues;
            }
            contentValues.put("_dt", rVar.g);
            return contentValues;
        } catch (Throwable th) {
            if (!x.a(th)) {
                ThrowableExtension.printStackTrace(th);
            }
            return null;
        }
    }

    private static r b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.a = cursor.getLong(cursor.getColumnIndex("_id"));
            rVar.e = cursor.getLong(cursor.getColumnIndex("_tm"));
            rVar.f = cursor.getString(cursor.getColumnIndex("_tp"));
            rVar.g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return rVar;
        } catch (Throwable th) {
            if (x.a(th)) {
                return null;
            }
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }
}
