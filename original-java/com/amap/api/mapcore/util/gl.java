package com.amap.api.mapcore.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: DBOperation */
public class gl {
    private static Map<Class<? extends gk>, gk> d = new HashMap();
    private gq a;
    private SQLiteDatabase b;
    private gk c;

    public static synchronized gk a(Class<? extends gk> cls) throws IllegalAccessException, InstantiationException {
        gk gkVar;
        synchronized (gl.class) {
            if (d.get(cls) == null) {
                d.put(cls, cls.newInstance());
            }
            gkVar = (gk) d.get(cls);
        }
        return gkVar;
    }

    public gl(Context context, gk gkVar) {
        try {
            this.a = new gq(context.getApplicationContext(), gkVar.b(), null, gkVar.c(), gkVar);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        this.c = gkVar;
    }

    public static String a(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        Iterator it = map.keySet().iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return sb.toString();
            }
            String str = (String) it.next();
            if (z2) {
                sb.append(str).append(" = '").append((String) map.get(str)).append("'");
                z = false;
            } else {
                sb.append(" and ").append(str).append(" = '").append((String) map.get(str)).append("'");
                z = z2;
            }
        }
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> void a(java.lang.String r5, java.lang.Class<T> r6) {
        /*
            r4 = this;
            com.amap.api.mapcore.util.gk r1 = r4.c
            monitor-enter(r1)
            com.amap.api.mapcore.util.gm r0 = r4.b(r6)     // Catch:{ all -> 0x0020 }
            java.lang.String r0 = r4.a(r0)     // Catch:{ all -> 0x0020 }
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0020 }
            if (r2 == 0) goto L_0x0013
            monitor-exit(r1)     // Catch:{ all -> 0x0020 }
        L_0x0012:
            return
        L_0x0013:
            r2 = 0
            android.database.sqlite.SQLiteDatabase r2 = r4.b(r2)     // Catch:{ all -> 0x0020 }
            r4.b = r2     // Catch:{ all -> 0x0020 }
            android.database.sqlite.SQLiteDatabase r2 = r4.b     // Catch:{ all -> 0x0020 }
            if (r2 != 0) goto L_0x0023
            monitor-exit(r1)     // Catch:{ all -> 0x0020 }
            goto L_0x0012
        L_0x0020:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0020 }
            throw r0
        L_0x0023:
            android.database.sqlite.SQLiteDatabase r2 = r4.b     // Catch:{ Throwable -> 0x0037 }
            r3 = 0
            r2.delete(r0, r5, r3)     // Catch:{ Throwable -> 0x0037 }
            android.database.sqlite.SQLiteDatabase r0 = r4.b     // Catch:{ all -> 0x0020 }
            if (r0 == 0) goto L_0x0035
            android.database.sqlite.SQLiteDatabase r0 = r4.b     // Catch:{ all -> 0x0020 }
            r0.close()     // Catch:{ all -> 0x0020 }
            r0 = 0
            r4.b = r0     // Catch:{ all -> 0x0020 }
        L_0x0035:
            monitor-exit(r1)     // Catch:{ all -> 0x0020 }
            goto L_0x0012
        L_0x0037:
            r0 = move-exception
            java.lang.String r2 = "dbs"
            java.lang.String r3 = "dld"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)     // Catch:{ all -> 0x004c }
            android.database.sqlite.SQLiteDatabase r0 = r4.b     // Catch:{ all -> 0x0020 }
            if (r0 == 0) goto L_0x0035
            android.database.sqlite.SQLiteDatabase r0 = r4.b     // Catch:{ all -> 0x0020 }
            r0.close()     // Catch:{ all -> 0x0020 }
            r0 = 0
            r4.b = r0     // Catch:{ all -> 0x0020 }
            goto L_0x0035
        L_0x004c:
            r0 = move-exception
            android.database.sqlite.SQLiteDatabase r2 = r4.b     // Catch:{ all -> 0x0020 }
            if (r2 == 0) goto L_0x0059
            android.database.sqlite.SQLiteDatabase r2 = r4.b     // Catch:{ all -> 0x0020 }
            r2.close()     // Catch:{ all -> 0x0020 }
            r2 = 0
            r4.b = r2     // Catch:{ all -> 0x0020 }
        L_0x0059:
            throw r0     // Catch:{ all -> 0x0020 }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gl.a(java.lang.String, java.lang.Class):void");
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> void a(java.lang.String r6, java.lang.Object r7, boolean r8) {
        /*
            r5 = this;
            com.amap.api.mapcore.util.gk r1 = r5.c
            monitor-enter(r1)
            if (r7 != 0) goto L_0x0007
            monitor-exit(r1)     // Catch:{ all -> 0x001b }
        L_0x0006:
            return
        L_0x0007:
            java.lang.Class r0 = r7.getClass()     // Catch:{ all -> 0x001b }
            com.amap.api.mapcore.util.gm r0 = r5.b(r0)     // Catch:{ all -> 0x001b }
            java.lang.String r2 = r5.a(r0)     // Catch:{ all -> 0x001b }
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch:{ all -> 0x001b }
            if (r3 == 0) goto L_0x001e
            monitor-exit(r1)     // Catch:{ all -> 0x001b }
            goto L_0x0006
        L_0x001b:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x001b }
            throw r0
        L_0x001e:
            android.content.ContentValues r0 = r5.a(r7, r0)     // Catch:{ all -> 0x001b }
            if (r0 != 0) goto L_0x0026
            monitor-exit(r1)     // Catch:{ all -> 0x001b }
            goto L_0x0006
        L_0x0026:
            android.database.sqlite.SQLiteDatabase r3 = r5.b(r8)     // Catch:{ all -> 0x001b }
            r5.b = r3     // Catch:{ all -> 0x001b }
            android.database.sqlite.SQLiteDatabase r3 = r5.b     // Catch:{ all -> 0x001b }
            if (r3 != 0) goto L_0x0032
            monitor-exit(r1)     // Catch:{ all -> 0x001b }
            goto L_0x0006
        L_0x0032:
            android.database.sqlite.SQLiteDatabase r3 = r5.b     // Catch:{ Throwable -> 0x0046 }
            r4 = 0
            r3.update(r2, r0, r6, r4)     // Catch:{ Throwable -> 0x0046 }
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ all -> 0x001b }
            if (r0 == 0) goto L_0x0044
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ all -> 0x001b }
            r0.close()     // Catch:{ all -> 0x001b }
            r0 = 0
            r5.b = r0     // Catch:{ all -> 0x001b }
        L_0x0044:
            monitor-exit(r1)     // Catch:{ all -> 0x001b }
            goto L_0x0006
        L_0x0046:
            r0 = move-exception
            if (r8 != 0) goto L_0x005d
            java.lang.String r2 = "dbs"
            java.lang.String r3 = "udd"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)     // Catch:{ all -> 0x0061 }
        L_0x0050:
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ all -> 0x001b }
            if (r0 == 0) goto L_0x0044
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ all -> 0x001b }
            r0.close()     // Catch:{ all -> 0x001b }
            r0 = 0
            r5.b = r0     // Catch:{ all -> 0x001b }
            goto L_0x0044
        L_0x005d:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0061 }
            goto L_0x0050
        L_0x0061:
            r0 = move-exception
            android.database.sqlite.SQLiteDatabase r2 = r5.b     // Catch:{ all -> 0x001b }
            if (r2 == 0) goto L_0x006e
            android.database.sqlite.SQLiteDatabase r2 = r5.b     // Catch:{ all -> 0x001b }
            r2.close()     // Catch:{ all -> 0x001b }
            r2 = 0
            r5.b = r2     // Catch:{ all -> 0x001b }
        L_0x006e:
            throw r0     // Catch:{ all -> 0x001b }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gl.a(java.lang.String, java.lang.Object, boolean):void");
    }

    public <T> void a(String str, Object obj) {
        a(str, obj, false);
    }

    public void a(Object obj, String str) {
        synchronized (this.c) {
            List b2 = b(str, obj.getClass());
            if (b2 == null || b2.size() == 0) {
                a((T) obj);
            } else {
                a(str, obj);
            }
        }
    }

    public <T> void a(T t) {
        a(t, false);
    }

    /* JADX INFO: finally extract failed */
    public <T> void a(T t, boolean z) {
        synchronized (this.c) {
            this.b = b(z);
            if (this.b != null) {
                try {
                    a(this.b, t);
                    if (this.b != null) {
                        this.b.close();
                        this.b = null;
                    }
                } catch (Throwable th) {
                    if (this.b != null) {
                        this.b.close();
                        this.b = null;
                    }
                    throw th;
                }
            }
        }
    }

    private <T> void a(SQLiteDatabase sQLiteDatabase, T t) {
        gm b2 = b(t.getClass());
        String a2 = a(b2);
        if (!TextUtils.isEmpty(a2) && t != null && sQLiteDatabase != null) {
            ContentValues a3 = a((Object) t, b2);
            if (a3 != null) {
                sQLiteDatabase.insert(a2, null, a3);
            }
        }
    }

    /* JADX INFO: used method not loaded: com.amap.api.mapcore.util.gc.a(java.lang.Throwable, java.lang.String, java.lang.String):null, types can be incorrect */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0070, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
        com.amap.api.mapcore.util.gc.a(r0, "dbs", "ild");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00ab, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00ac, code lost:
        com.amap.api.mapcore.util.gc.a(r1, "dbs", "ild");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00b4, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00b5, code lost:
        com.amap.api.mapcore.util.gc.a(r1, "dbs", "ild");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:?, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:37:0x0067, B:50:0x0095, B:54:0x00a2] */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:54:0x00a2=Splitter:B:54:0x00a2, B:29:0x0053=Splitter:B:29:0x0053, B:56:0x00aa=Splitter:B:56:0x00aa, B:27:0x004b=Splitter:B:27:0x004b} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> void a(java.util.List<T> r6) {
        /*
            r5 = this;
            com.amap.api.mapcore.util.gk r2 = r5.c
            monitor-enter(r2)
            if (r6 == 0) goto L_0x000b
            int r0 = r6.size()     // Catch:{ all -> 0x001a }
            if (r0 != 0) goto L_0x000d
        L_0x000b:
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
        L_0x000c:
            return
        L_0x000d:
            r0 = 0
            android.database.sqlite.SQLiteDatabase r0 = r5.b(r0)     // Catch:{ all -> 0x001a }
            r5.b = r0     // Catch:{ all -> 0x001a }
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ all -> 0x001a }
            if (r0 != 0) goto L_0x001d
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
            goto L_0x000c
        L_0x001a:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
            throw r0
        L_0x001d:
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x0036 }
            r0.beginTransaction()     // Catch:{ Throwable -> 0x0036 }
            java.util.Iterator r0 = r6.iterator()     // Catch:{ Throwable -> 0x0036 }
        L_0x0026:
            boolean r1 = r0.hasNext()     // Catch:{ Throwable -> 0x0036 }
            if (r1 == 0) goto L_0x0055
            java.lang.Object r1 = r0.next()     // Catch:{ Throwable -> 0x0036 }
            android.database.sqlite.SQLiteDatabase r3 = r5.b     // Catch:{ Throwable -> 0x0036 }
            r5.a(r3, (T) r1)     // Catch:{ Throwable -> 0x0036 }
            goto L_0x0026
        L_0x0036:
            r0 = move-exception
            java.lang.String r1 = "dbs"
            java.lang.String r3 = "ild"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)     // Catch:{ all -> 0x0094 }
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x0082 }
            boolean r0 = r0.inTransaction()     // Catch:{ Throwable -> 0x0082 }
            if (r0 == 0) goto L_0x004b
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x0082 }
            r0.endTransaction()     // Catch:{ Throwable -> 0x0082 }
        L_0x004b:
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x008b }
            r0.close()     // Catch:{ Throwable -> 0x008b }
            r0 = 0
            r5.b = r0     // Catch:{ Throwable -> 0x008b }
        L_0x0053:
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
            goto L_0x000c
        L_0x0055:
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x0036 }
            r0.setTransactionSuccessful()     // Catch:{ Throwable -> 0x0036 }
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x0079 }
            boolean r0 = r0.inTransaction()     // Catch:{ Throwable -> 0x0079 }
            if (r0 == 0) goto L_0x0067
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x0079 }
            r0.endTransaction()     // Catch:{ Throwable -> 0x0079 }
        L_0x0067:
            android.database.sqlite.SQLiteDatabase r0 = r5.b     // Catch:{ Throwable -> 0x0070 }
            r0.close()     // Catch:{ Throwable -> 0x0070 }
            r0 = 0
            r5.b = r0     // Catch:{ Throwable -> 0x0070 }
            goto L_0x0053
        L_0x0070:
            r0 = move-exception
            java.lang.String r1 = "dbs"
            java.lang.String r3 = "ild"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)     // Catch:{ all -> 0x001a }
            goto L_0x0053
        L_0x0079:
            r0 = move-exception
            java.lang.String r1 = "dbs"
            java.lang.String r3 = "ild"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)     // Catch:{ all -> 0x001a }
            goto L_0x0067
        L_0x0082:
            r0 = move-exception
            java.lang.String r1 = "dbs"
            java.lang.String r3 = "ild"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)     // Catch:{ all -> 0x001a }
            goto L_0x004b
        L_0x008b:
            r0 = move-exception
            java.lang.String r1 = "dbs"
            java.lang.String r3 = "ild"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)     // Catch:{ all -> 0x001a }
            goto L_0x0053
        L_0x0094:
            r0 = move-exception
            android.database.sqlite.SQLiteDatabase r1 = r5.b     // Catch:{ Throwable -> 0x00ab }
            boolean r1 = r1.inTransaction()     // Catch:{ Throwable -> 0x00ab }
            if (r1 == 0) goto L_0x00a2
            android.database.sqlite.SQLiteDatabase r1 = r5.b     // Catch:{ Throwable -> 0x00ab }
            r1.endTransaction()     // Catch:{ Throwable -> 0x00ab }
        L_0x00a2:
            android.database.sqlite.SQLiteDatabase r1 = r5.b     // Catch:{ Throwable -> 0x00b4 }
            r1.close()     // Catch:{ Throwable -> 0x00b4 }
            r1 = 0
            r5.b = r1     // Catch:{ Throwable -> 0x00b4 }
        L_0x00aa:
            throw r0     // Catch:{ all -> 0x001a }
        L_0x00ab:
            r1 = move-exception
            java.lang.String r3 = "dbs"
            java.lang.String r4 = "ild"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)     // Catch:{ all -> 0x001a }
            goto L_0x00a2
        L_0x00b4:
            r1 = move-exception
            java.lang.String r3 = "dbs"
            java.lang.String r4 = "ild"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)     // Catch:{ all -> 0x001a }
            goto L_0x00aa
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gl.a(java.util.List):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:?, code lost:
        return r8;
     */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x00db A[SYNTHETIC, Splitter:B:82:0x00db] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x00e2 A[Catch:{ Throwable -> 0x00f6 }] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:25:0x0051=Splitter:B:25:0x0051, B:55:0x0096=Splitter:B:55:0x0096, B:51:0x008a=Splitter:B:51:0x008a, B:88:0x00ea=Splitter:B:88:0x00ea, B:84:0x00de=Splitter:B:84:0x00de} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> java.util.List<T> a(java.lang.String r13, java.lang.Class<T> r14, boolean r15) {
        /*
            r12 = this;
            r9 = 0
            com.amap.api.mapcore.util.gk r10 = r12.c
            monitor-enter(r10)
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch:{ all -> 0x005f }
            r8.<init>()     // Catch:{ all -> 0x005f }
            com.amap.api.mapcore.util.gm r11 = r12.b(r14)     // Catch:{ all -> 0x005f }
            java.lang.String r1 = r12.a(r11)     // Catch:{ all -> 0x005f }
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ all -> 0x005f }
            if (r0 != 0) goto L_0x001b
            android.database.sqlite.SQLiteDatabase r0 = r12.a(r15)     // Catch:{ all -> 0x005f }
            r12.b = r0     // Catch:{ all -> 0x005f }
        L_0x001b:
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ all -> 0x005f }
            if (r0 == 0) goto L_0x0027
            boolean r0 = android.text.TextUtils.isEmpty(r1)     // Catch:{ all -> 0x005f }
            if (r0 != 0) goto L_0x0027
            if (r13 != 0) goto L_0x002a
        L_0x0027:
            monitor-exit(r10)     // Catch:{ all -> 0x005f }
            r0 = r8
        L_0x0029:
            return r0
        L_0x002a:
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x0103, all -> 0x00d7 }
            r2 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r3 = r13
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Throwable -> 0x0103, all -> 0x00d7 }
            if (r1 != 0) goto L_0x006d
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x007b }
            r0.close()     // Catch:{ Throwable -> 0x007b }
            r0 = 0
            r12.b = r0     // Catch:{ Throwable -> 0x007b }
            if (r1 == 0) goto L_0x0045
            r1.close()     // Catch:{ Throwable -> 0x0054 }
        L_0x0045:
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x0062 }
            if (r0 == 0) goto L_0x0051
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x0062 }
            r0.close()     // Catch:{ Throwable -> 0x0062 }
            r0 = 0
            r12.b = r0     // Catch:{ Throwable -> 0x0062 }
        L_0x0051:
            monitor-exit(r10)     // Catch:{ all -> 0x005f }
            r0 = r8
            goto L_0x0029
        L_0x0054:
            r0 = move-exception
            if (r15 != 0) goto L_0x0045
            java.lang.String r1 = "dbs"
            java.lang.String r2 = "sld"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ all -> 0x005f }
            goto L_0x0045
        L_0x005f:
            r0 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x005f }
            throw r0
        L_0x0062:
            r0 = move-exception
            if (r15 != 0) goto L_0x0051
            java.lang.String r1 = "dbs"
            java.lang.String r2 = "sld"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ all -> 0x005f }
            goto L_0x0051
        L_0x006d:
            boolean r0 = r1.moveToNext()     // Catch:{ Throwable -> 0x007b }
            if (r0 == 0) goto L_0x0099
            java.lang.Object r0 = r12.a(r1, r14, r11)     // Catch:{ Throwable -> 0x007b }
            r8.add(r0)     // Catch:{ Throwable -> 0x007b }
            goto L_0x006d
        L_0x007b:
            r0 = move-exception
        L_0x007c:
            if (r15 != 0) goto L_0x0085
            java.lang.String r2 = "dbs"
            java.lang.String r3 = "sld"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)     // Catch:{ all -> 0x0101 }
        L_0x0085:
            if (r1 == 0) goto L_0x008a
            r1.close()     // Catch:{ Throwable -> 0x00c1 }
        L_0x008a:
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x00cc }
            if (r0 == 0) goto L_0x0096
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x00cc }
            r0.close()     // Catch:{ Throwable -> 0x00cc }
            r0 = 0
            r12.b = r0     // Catch:{ Throwable -> 0x00cc }
        L_0x0096:
            monitor-exit(r10)     // Catch:{ all -> 0x005f }
            r0 = r8
            goto L_0x0029
        L_0x0099:
            if (r1 == 0) goto L_0x009e
            r1.close()     // Catch:{ Throwable -> 0x00b6 }
        L_0x009e:
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x00ab }
            if (r0 == 0) goto L_0x0096
            android.database.sqlite.SQLiteDatabase r0 = r12.b     // Catch:{ Throwable -> 0x00ab }
            r0.close()     // Catch:{ Throwable -> 0x00ab }
            r0 = 0
            r12.b = r0     // Catch:{ Throwable -> 0x00ab }
            goto L_0x0096
        L_0x00ab:
            r0 = move-exception
            if (r15 != 0) goto L_0x0096
            java.lang.String r1 = "dbs"
            java.lang.String r2 = "sld"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ all -> 0x005f }
            goto L_0x0096
        L_0x00b6:
            r0 = move-exception
            if (r15 != 0) goto L_0x009e
            java.lang.String r1 = "dbs"
            java.lang.String r2 = "sld"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ all -> 0x005f }
            goto L_0x009e
        L_0x00c1:
            r0 = move-exception
            if (r15 != 0) goto L_0x008a
            java.lang.String r1 = "dbs"
            java.lang.String r2 = "sld"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ all -> 0x005f }
            goto L_0x008a
        L_0x00cc:
            r0 = move-exception
            if (r15 != 0) goto L_0x0096
            java.lang.String r1 = "dbs"
            java.lang.String r2 = "sld"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)     // Catch:{ all -> 0x005f }
            goto L_0x0096
        L_0x00d7:
            r0 = move-exception
            r1 = r9
        L_0x00d9:
            if (r1 == 0) goto L_0x00de
            r1.close()     // Catch:{ Throwable -> 0x00eb }
        L_0x00de:
            android.database.sqlite.SQLiteDatabase r1 = r12.b     // Catch:{ Throwable -> 0x00f6 }
            if (r1 == 0) goto L_0x00ea
            android.database.sqlite.SQLiteDatabase r1 = r12.b     // Catch:{ Throwable -> 0x00f6 }
            r1.close()     // Catch:{ Throwable -> 0x00f6 }
            r1 = 0
            r12.b = r1     // Catch:{ Throwable -> 0x00f6 }
        L_0x00ea:
            throw r0     // Catch:{ all -> 0x005f }
        L_0x00eb:
            r1 = move-exception
            if (r15 != 0) goto L_0x00de
            java.lang.String r2 = "dbs"
            java.lang.String r3 = "sld"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)     // Catch:{ all -> 0x005f }
            goto L_0x00de
        L_0x00f6:
            r1 = move-exception
            if (r15 != 0) goto L_0x00ea
            java.lang.String r2 = "dbs"
            java.lang.String r3 = "sld"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)     // Catch:{ all -> 0x005f }
            goto L_0x00ea
        L_0x0101:
            r0 = move-exception
            goto L_0x00d9
        L_0x0103:
            r0 = move-exception
            r1 = r9
            goto L_0x007c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.gl.a(java.lang.String, java.lang.Class, boolean):java.util.List");
    }

    public <T> List<T> b(String str, Class<T> cls) {
        return a(str, cls, false);
    }

    private <T> T a(Cursor cursor, Class<T> cls, gm gmVar) throws IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        Field[] a2 = a(cls, gmVar.b());
        Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        declaredConstructor.setAccessible(true);
        T newInstance = declaredConstructor.newInstance(new Object[0]);
        for (Field field : a2) {
            field.setAccessible(true);
            Annotation annotation = field.getAnnotation(gn.class);
            if (annotation != null) {
                gn gnVar = (gn) annotation;
                int b2 = gnVar.b();
                int columnIndex = cursor.getColumnIndex(gnVar.a());
                switch (b2) {
                    case 1:
                        field.set(newInstance, Short.valueOf(cursor.getShort(columnIndex)));
                        break;
                    case 2:
                        field.set(newInstance, Integer.valueOf(cursor.getInt(columnIndex)));
                        break;
                    case 3:
                        field.set(newInstance, Float.valueOf(cursor.getFloat(columnIndex)));
                        break;
                    case 4:
                        field.set(newInstance, Double.valueOf(cursor.getDouble(columnIndex)));
                        break;
                    case 5:
                        field.set(newInstance, Long.valueOf(cursor.getLong(columnIndex)));
                        break;
                    case 6:
                        field.set(newInstance, cursor.getString(columnIndex));
                        break;
                    case 7:
                        field.set(newInstance, cursor.getBlob(columnIndex));
                        break;
                }
            }
        }
        return newInstance;
    }

    private void a(Object obj, Field field, ContentValues contentValues) {
        Annotation annotation = field.getAnnotation(gn.class);
        if (annotation != null) {
            gn gnVar = (gn) annotation;
            switch (gnVar.b()) {
                case 1:
                    try {
                        contentValues.put(gnVar.a(), Short.valueOf(field.getShort(obj)));
                        return;
                    } catch (IllegalAccessException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                case 2:
                    contentValues.put(gnVar.a(), Integer.valueOf(field.getInt(obj)));
                    return;
                case 3:
                    contentValues.put(gnVar.a(), Float.valueOf(field.getFloat(obj)));
                    return;
                case 4:
                    contentValues.put(gnVar.a(), Double.valueOf(field.getDouble(obj)));
                    return;
                case 5:
                    contentValues.put(gnVar.a(), Long.valueOf(field.getLong(obj)));
                    return;
                case 6:
                    String str = "";
                    contentValues.put(gnVar.a(), (String) field.get(obj));
                    return;
                case 7:
                    contentValues.put(gnVar.a(), (byte[]) field.get(obj));
                    return;
                default:
                    return;
            }
            ThrowableExtension.printStackTrace(e);
        }
    }

    private ContentValues a(Object obj, gm gmVar) {
        Field[] a2;
        ContentValues contentValues = new ContentValues();
        for (Field field : a(obj.getClass(), gmVar.b())) {
            field.setAccessible(true);
            a(obj, field, contentValues);
        }
        return contentValues;
    }

    private Field[] a(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        if (z) {
            return cls.getSuperclass().getDeclaredFields();
        }
        return cls.getDeclaredFields();
    }

    private SQLiteDatabase a(boolean z) {
        try {
            if (this.b == null) {
                this.b = this.a.getReadableDatabase();
            }
        } catch (Throwable th) {
            if (!z) {
                gc.a(th, "dbs", "grd");
            } else {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return this.b;
    }

    private SQLiteDatabase b(boolean z) {
        try {
            if (this.b == null || this.b.isReadOnly()) {
                if (this.b != null) {
                    this.b.close();
                }
                this.b = this.a.getWritableDatabase();
            }
        } catch (Throwable th) {
            gc.a(th, "dbs", "gwd");
        }
        return this.b;
    }

    private boolean a(Annotation annotation) {
        return annotation != null;
    }

    private <T> String a(gm gmVar) {
        if (gmVar == null) {
            return null;
        }
        return gmVar.a();
    }

    private <T> gm b(Class<T> cls) {
        Annotation annotation = cls.getAnnotation(gm.class);
        if (!a(annotation)) {
            return null;
        }
        return (gm) annotation;
    }
}
