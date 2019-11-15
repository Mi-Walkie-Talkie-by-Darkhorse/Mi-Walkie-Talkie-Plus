package com.xiaomi.mistatistic.sdk.controller;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.IBinder;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.data.Const.Debug;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import com.xiaomi.mistatistic.sdk.BaseService;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.mistatistic.sdk.a;
import com.xiaomi.mistatistic.sdk.a.C0065a;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.ArrayList;
import java.util.List;

/* compiled from: EventDAO */
public class f {
    public static String a = "";
    public static boolean b = false;
    private static i c;
    /* access modifiers changed from: private */
    public a d = null;
    /* access modifiers changed from: private */
    public boolean e = false;
    private ServiceConnection f = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            f.this.e = true;
            f.this.d = C0065a.a(iBinder);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            f.this.e = false;
            f.this.d = null;
        }
    };

    public static void a() {
        c = new i(c.a());
    }

    private void f() {
        if (!this.e) {
            try {
                Intent intent = new Intent(c.a(), Class.forName(a));
                c.a().startService(intent);
                if (this.d != null) {
                    h.b("unbind service before bind it again!");
                    c.a().unbindService(this.f);
                }
                c.a().bindService(intent, this.f, 1);
            } catch (Exception e2) {
                h.a("ensureServiceBinded", (Throwable) e2);
            }
        }
    }

    public StatEventPojo a(String str, String str2) {
        if (!b) {
            return b(str, str2);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.e && this.d != null) {
                    StatEventPojo a2 = this.d.a(str, str2);
                    h.b("process query, result is: " + a2);
                    return a2;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return null;
        } catch (Exception e2) {
            h.a("queryCustomEvent", (Throwable) e2);
            return null;
        }
    }

    /* JADX WARNING: type inference failed for: r8v0 */
    /* JADX WARNING: type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r1v2, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r8v2 */
    /* JADX WARNING: type inference failed for: r1v3 */
    /* JADX WARNING: type inference failed for: r8v3, types: [com.xiaomi.mistatistic.sdk.data.StatEventPojo] */
    /* JADX WARNING: type inference failed for: r1v5, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r8v4 */
    /* JADX WARNING: type inference failed for: r8v5, types: [com.xiaomi.mistatistic.sdk.data.StatEventPojo] */
    /* JADX WARNING: type inference failed for: r8v6 */
    /* JADX WARNING: type inference failed for: r8v7 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r8v8 */
    /* JADX WARNING: type inference failed for: r8v9 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r8v4
  assigns: []
  uses: []
  mth insns count: 53
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.getJavaMethodByNode(JadxDecompiler.java:369)
    	at jadx.api.JavaClass.convertNode(JavaClass.java:173)
    	at jadx.api.JavaClass.getJavaNodeAtPosition(JavaClass.java:191)
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0061 A[SYNTHETIC, Splitter:B:29:0x0061] */
    /* JADX WARNING: Unknown variable types count: 6 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.xiaomi.mistatistic.sdk.data.StatEventPojo b(java.lang.String r11, java.lang.String r12) {
        /*
            r10 = this;
            r2 = 2
            r4 = 1
            r3 = 0
            r8 = 0
            java.lang.String r0 = "EventDAO"
            java.lang.String r1 = "queryCustomEvent key: %s, category: %s"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r3] = r12
            r2[r4] = r11
            com.xiaomi.mistatistic.sdk.controller.h.b(r0, r1, r2)
            com.xiaomi.mistatistic.sdk.controller.i r9 = c
            monitor-enter(r9)
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ SQLiteException -> 0x0047, all -> 0x005e }
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch:{ SQLiteException -> 0x0047, all -> 0x005e }
            java.lang.String r1 = "mistat_event"
            r2 = 0
            java.lang.String r3 = "category=? AND key=?"
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ SQLiteException -> 0x0047, all -> 0x005e }
            r5 = 0
            r4[r5] = r11     // Catch:{ SQLiteException -> 0x0047, all -> 0x005e }
            r5 = 1
            r4[r5] = r12     // Catch:{ SQLiteException -> 0x0047, all -> 0x005e }
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ SQLiteException -> 0x0047, all -> 0x005e }
            if (r1 == 0) goto L_0x003b
            boolean r0 = r1.moveToFirst()     // Catch:{ SQLiteException -> 0x006d }
            if (r0 == 0) goto L_0x003b
            com.xiaomi.mistatistic.sdk.data.StatEventPojo r8 = a(r1)     // Catch:{ SQLiteException -> 0x006d }
        L_0x003b:
            if (r1 == 0) goto L_0x0040
            r1.close()     // Catch:{ all -> 0x005b }
        L_0x0040:
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ all -> 0x005b }
            r0.close()     // Catch:{ all -> 0x005b }
        L_0x0045:
            monitor-exit(r9)     // Catch:{ all -> 0x005b }
            return r8
        L_0x0047:
            r0 = move-exception
            r1 = r8
        L_0x0049:
            java.lang.String r2 = "EventDAO"
            java.lang.String r3 = "queryCustomEvent exception"
            com.xiaomi.mistatistic.sdk.controller.h.a(r2, r3, r0)     // Catch:{ all -> 0x006a }
            if (r1 == 0) goto L_0x0055
            r1.close()     // Catch:{ all -> 0x005b }
        L_0x0055:
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ all -> 0x005b }
            r0.close()     // Catch:{ all -> 0x005b }
            goto L_0x0045
        L_0x005b:
            r0 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x005b }
            throw r0
        L_0x005e:
            r0 = move-exception
        L_0x005f:
            if (r8 == 0) goto L_0x0064
            r8.close()     // Catch:{ all -> 0x005b }
        L_0x0064:
            com.xiaomi.mistatistic.sdk.controller.i r1 = c     // Catch:{ all -> 0x005b }
            r1.close()     // Catch:{ all -> 0x005b }
            throw r0     // Catch:{ all -> 0x005b }
        L_0x006a:
            r0 = move-exception
            r8 = r1
            goto L_0x005f
        L_0x006d:
            r0 = move-exception
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.f.b(java.lang.String, java.lang.String):com.xiaomi.mistatistic.sdk.data.StatEventPojo");
    }

    public void a(StatEventPojo statEventPojo) {
        if (b) {
            try {
                Intent intent = new Intent(c.a(), Class.forName(a));
                intent.putExtra("type", 1);
                intent.putExtra(BaseService.STAT_EVENT_POJO, statEventPojo);
                c.a().startService(intent);
            } catch (Exception e2) {
                h.a("insertNewEvent", (Throwable) e2);
            }
        } else {
            b(statEventPojo);
        }
    }

    public void b(StatEventPojo statEventPojo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(BaseService.CATEGORY, statEventPojo.category);
        contentValues.put("key", TextUtils.isEmpty(statEventPojo.key) ? "" : statEventPojo.key);
        contentValues.put(Key.TS, Long.valueOf(statEventPojo.timeStamp));
        contentValues.put("type", TextUtils.isEmpty(statEventPojo.type) ? "" : statEventPojo.type);
        contentValues.put("value", TextUtils.isEmpty(statEventPojo.value) ? "" : statEventPojo.value);
        contentValues.put(Key.EXTRA, TextUtils.isEmpty(statEventPojo.extra) ? "" : statEventPojo.extra);
        synchronized (c) {
            try {
                c.getWritableDatabase().insert("mistat_event", "", contentValues);
                c.close();
            } catch (SQLiteException e2) {
                h.a("EventDAO", "Error to insert data into DB, key=" + statEventPojo.key, (Throwable) e2);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
    }

    public void a(String str, String str2, String str3) {
        if (b) {
            try {
                Intent intent = new Intent(c.a(), Class.forName(a));
                intent.putExtra("type", 2);
                intent.putExtra("key", str);
                intent.putExtra(BaseService.CATEGORY, str2);
                intent.putExtra(BaseService.NEW_VALUE, str3);
                c.a().startService(intent);
            } catch (Exception e2) {
                h.a("updateEventByKeyAndCategory", (Throwable) e2);
            }
        } else {
            b(str, str2, str3);
        }
    }

    public void b(String str, String str2, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str3);
        synchronized (c) {
            try {
                c.getWritableDatabase().update("mistat_event", contentValues, "category=? AND key=?", new String[]{str2, str});
                c.close();
            } catch (SQLiteException e2) {
                h.a("EventDAO", "Error to update data from DB, key=" + str, (Throwable) e2);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
    }

    public List<StatEventPojo> a(long j) {
        if (!b) {
            return b(j);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.e && this.d != null) {
                    List<StatEventPojo> a2 = this.d.a(j);
                    h.b("process getAll, result size is :" + (a2 == null ? 0 : a2.size()));
                    return a2;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return new ArrayList();
        } catch (Exception e2) {
            h.a("getAllEventOrderByTimestampDescend", (Throwable) e2);
            return new ArrayList();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0067 A[SYNTHETIC, Splitter:B:17:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0084  */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:22:0x007a=Splitter:B:22:0x007a, B:40:0x00bb=Splitter:B:40:0x00bb} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.xiaomi.mistatistic.sdk.data.StatEventPojo> b(long r14) {
        /*
            r13 = this;
            r10 = 0
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            com.xiaomi.mistatistic.sdk.controller.i r11 = c
            monitor-enter(r11)
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ all -> 0x00b6 }
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch:{ all -> 0x00b6 }
            if (r0 != 0) goto L_0x0014
            monitor-exit(r11)     // Catch:{ all -> 0x00b6 }
            r0 = r9
        L_0x0013:
            return r0
        L_0x0014:
            java.lang.String r1 = "mistat_event"
            r2 = 0
            java.lang.String r3 = "ts<?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ SQLiteException -> 0x00a4, all -> 0x00b9 }
            r5 = 0
            java.lang.String r6 = java.lang.String.valueOf(r14)     // Catch:{ SQLiteException -> 0x00a4, all -> 0x00b9 }
            r4[r5] = r6     // Catch:{ SQLiteException -> 0x00a4, all -> 0x00b9 }
            r5 = 0
            r6 = 0
            java.lang.String r7 = "ts DESC"
            r8 = 500(0x1f4, float:7.0E-43)
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch:{ SQLiteException -> 0x00a4, all -> 0x00b9 }
            android.database.Cursor r8 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch:{ SQLiteException -> 0x00a4, all -> 0x00b9 }
            if (r8 == 0) goto L_0x00ce
            boolean r1 = r8.moveToLast()     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            if (r1 == 0) goto L_0x00ce
            java.lang.String r1 = "ts"
            int r1 = r8.getColumnIndex(r1)     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            long r6 = r8.getLong(r1)     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            r8.close()     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            java.lang.String r1 = "mistat_event"
            r2 = 0
            java.lang.String r3 = "ts<? AND ts>=?"
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            r5 = 0
            java.lang.String r10 = java.lang.String.valueOf(r14)     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            r4[r5] = r10     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            r5 = 1
            java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            r4[r5] = r6     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            r5 = 0
            r6 = 0
            java.lang.String r7 = "ts DESC"
            android.database.Cursor r8 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ SQLiteException -> 0x00c9, all -> 0x00c4 }
            r1 = r8
        L_0x0065:
            if (r1 == 0) goto L_0x007a
            boolean r0 = r1.moveToFirst()     // Catch:{ SQLiteException -> 0x00cc }
            if (r0 == 0) goto L_0x007a
        L_0x006d:
            com.xiaomi.mistatistic.sdk.data.StatEventPojo r0 = a(r1)     // Catch:{ SQLiteException -> 0x00cc }
            r9.add(r0)     // Catch:{ SQLiteException -> 0x00cc }
            boolean r0 = r1.moveToNext()     // Catch:{ SQLiteException -> 0x00cc }
            if (r0 != 0) goto L_0x006d
        L_0x007a:
            r1.close()     // Catch:{ all -> 0x00b6 }
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ all -> 0x00b6 }
            r0.close()     // Catch:{ all -> 0x00b6 }
        L_0x0082:
            if (r1 == 0) goto L_0x00a0
            java.lang.String r0 = "EventDAO"
            java.lang.String r2 = "get %d DB events by timestamp %d"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x00b6 }
            r4 = 0
            int r1 = r1.getCount()     // Catch:{ all -> 0x00b6 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ all -> 0x00b6 }
            r3[r4] = r1     // Catch:{ all -> 0x00b6 }
            r1 = 1
            java.lang.Long r4 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x00b6 }
            r3[r1] = r4     // Catch:{ all -> 0x00b6 }
            com.xiaomi.mistatistic.sdk.controller.h.b(r0, r2, r3)     // Catch:{ all -> 0x00b6 }
        L_0x00a0:
            monitor-exit(r11)     // Catch:{ all -> 0x00b6 }
            r0 = r9
            goto L_0x0013
        L_0x00a4:
            r0 = move-exception
            r1 = r10
        L_0x00a6:
            java.lang.String r2 = "EventDAO"
            java.lang.String r3 = "Error while reading data from DB"
            com.xiaomi.mistatistic.sdk.controller.h.a(r2, r3, r0)     // Catch:{ all -> 0x00c6 }
            r1.close()     // Catch:{ all -> 0x00b6 }
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ all -> 0x00b6 }
            r0.close()     // Catch:{ all -> 0x00b6 }
            goto L_0x0082
        L_0x00b6:
            r0 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x00b6 }
            throw r0
        L_0x00b9:
            r0 = move-exception
            r8 = r10
        L_0x00bb:
            r8.close()     // Catch:{ all -> 0x00b6 }
            com.xiaomi.mistatistic.sdk.controller.i r1 = c     // Catch:{ all -> 0x00b6 }
            r1.close()     // Catch:{ all -> 0x00b6 }
            throw r0     // Catch:{ all -> 0x00b6 }
        L_0x00c4:
            r0 = move-exception
            goto L_0x00bb
        L_0x00c6:
            r0 = move-exception
            r8 = r1
            goto L_0x00bb
        L_0x00c9:
            r0 = move-exception
            r1 = r8
            goto L_0x00a6
        L_0x00cc:
            r0 = move-exception
            goto L_0x00a6
        L_0x00ce:
            r1 = r8
            goto L_0x0065
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.f.b(long):java.util.List");
    }

    public void b() {
        if (b) {
            try {
                Intent intent = new Intent(c.a(), Class.forName(a));
                intent.putExtra("type", 3);
                c.a().startService(intent);
            } catch (Exception e2) {
                h.a("deleteOldEvents", (Throwable) e2);
            }
        } else {
            c();
        }
    }

    public void c() {
        long currentTimeMillis = System.currentTimeMillis() - Debug.DefFileKeepPeriod;
        synchronized (c) {
            try {
                int delete = c.getWritableDatabase().delete("mistat_event", "ts<=? and category <> ?", new String[]{String.valueOf(currentTimeMillis), "mistat_basic"});
                if (delete > 0) {
                    MiStatInterface.recordCalculateEvent("quality_monitor", "delete_old_events", (long) delete);
                }
                c.close();
            } catch (SQLiteException e2) {
                h.a("EventDAO", "Error while deleting out-of-date data from DB", (Throwable) e2);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
    }

    public int d() {
        if (!b) {
            return e();
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.e && this.d != null) {
                    int a2 = this.d.a();
                    h.b("process getCount , result is:" + a2);
                    return a2;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return 0;
        } catch (Exception e2) {
            h.a("getEventCount", (Throwable) e2);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x005e A[SYNTHETIC, Splitter:B:33:0x005e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int e() {
        /*
            r11 = this;
            r8 = 0
            r9 = 0
            com.xiaomi.mistatistic.sdk.controller.i r10 = c
            monitor-enter(r10)
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ SQLiteException -> 0x0044, all -> 0x005b }
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch:{ SQLiteException -> 0x0044, all -> 0x005b }
            java.lang.String r1 = "mistat_event"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch:{ SQLiteException -> 0x0044, all -> 0x005b }
            r3 = 0
            java.lang.String r4 = "count(*)"
            r2[r3] = r4     // Catch:{ SQLiteException -> 0x0044, all -> 0x005b }
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ SQLiteException -> 0x0044, all -> 0x005b }
            if (r1 == 0) goto L_0x0037
            boolean r0 = r1.moveToFirst()     // Catch:{ SQLiteException -> 0x006a }
            if (r0 == 0) goto L_0x0037
            r0 = 0
            int r0 = r1.getInt(r0)     // Catch:{ SQLiteException -> 0x006a }
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch:{ all -> 0x0058 }
        L_0x0030:
            com.xiaomi.mistatistic.sdk.controller.i r1 = c     // Catch:{ all -> 0x0058 }
            r1.close()     // Catch:{ all -> 0x0058 }
            monitor-exit(r10)     // Catch:{ all -> 0x0058 }
        L_0x0036:
            return r0
        L_0x0037:
            if (r1 == 0) goto L_0x003c
            r1.close()     // Catch:{ all -> 0x0058 }
        L_0x003c:
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ all -> 0x0058 }
            r0.close()     // Catch:{ all -> 0x0058 }
        L_0x0041:
            monitor-exit(r10)     // Catch:{ all -> 0x0058 }
            r0 = r8
            goto L_0x0036
        L_0x0044:
            r0 = move-exception
            r1 = r9
        L_0x0046:
            java.lang.String r2 = "EventDAO"
            java.lang.String r3 = "Error while getting count from DB"
            com.xiaomi.mistatistic.sdk.controller.h.a(r2, r3, r0)     // Catch:{ all -> 0x0067 }
            if (r1 == 0) goto L_0x0052
            r1.close()     // Catch:{ all -> 0x0058 }
        L_0x0052:
            com.xiaomi.mistatistic.sdk.controller.i r0 = c     // Catch:{ all -> 0x0058 }
            r0.close()     // Catch:{ all -> 0x0058 }
            goto L_0x0041
        L_0x0058:
            r0 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x0058 }
            throw r0
        L_0x005b:
            r0 = move-exception
        L_0x005c:
            if (r9 == 0) goto L_0x0061
            r9.close()     // Catch:{ all -> 0x0058 }
        L_0x0061:
            com.xiaomi.mistatistic.sdk.controller.i r1 = c     // Catch:{ all -> 0x0058 }
            r1.close()     // Catch:{ all -> 0x0058 }
            throw r0     // Catch:{ all -> 0x0058 }
        L_0x0067:
            r0 = move-exception
            r9 = r1
            goto L_0x005c
        L_0x006a:
            r0 = move-exception
            goto L_0x0046
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mistatistic.sdk.controller.f.e():int");
    }

    public static StatEventPojo a(Cursor cursor) {
        StatEventPojo statEventPojo = new StatEventPojo();
        long j = cursor.getLong(2);
        String string = cursor.getString(4);
        String string2 = cursor.getString(5);
        String string3 = cursor.getString(1);
        String string4 = cursor.getString(3);
        String string5 = cursor.getString(6);
        statEventPojo.category = string3;
        statEventPojo.key = string4;
        statEventPojo.value = string;
        statEventPojo.timeStamp = j;
        statEventPojo.type = string2;
        statEventPojo.extra = string5;
        return statEventPojo;
    }

    public void c(long j) {
        if (b) {
            try {
                Intent intent = new Intent(c.a(), Class.forName(a));
                intent.putExtra("type", 4);
                intent.putExtra(BaseService.TIME_STAMP, j);
                c.a().startService(intent);
            } catch (Exception e2) {
                h.a("deleteEventsByTS", (Throwable) e2);
            }
        } else {
            d(j);
        }
    }

    public void d(long j) {
        synchronized (c) {
            try {
                h.b("EventDAO", "deleteEventsByTS, ts:%d", Long.valueOf(j));
                c.getWritableDatabase().delete("mistat_event", "ts<=?", new String[]{String.valueOf(j)});
                c.close();
            } catch (SQLiteException e2) {
                h.a("EventDAO", "Error while deleting event by ts from DB", (Throwable) e2);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
    }

    public void a(long j, long j2) {
        if (b) {
            try {
                Intent intent = new Intent(c.a(), Class.forName(a));
                intent.putExtra("type", 5);
                intent.putExtra(BaseService.START_TIME, j);
                intent.putExtra(BaseService.END_TIME, j2);
                c.a().startService(intent);
            } catch (Exception e2) {
                h.a("deleteEventsByStartAndEndTS", (Throwable) e2);
            }
        } else {
            b(j, j2);
        }
    }

    public void b(long j, long j2) {
        synchronized (c) {
            try {
                h.b("EventDAO", "deleteEventsByStartAndEndTS, start:%d, end:%d", Long.valueOf(j), Long.valueOf(j2));
                c.getWritableDatabase().delete("mistat_event", "ts<=? AND ts>=?", new String[]{String.valueOf(j2), String.valueOf(j)});
                c.close();
            } catch (SQLiteException e2) {
                h.a("EventDAO", "Error while deleting event by ts from DB", (Throwable) e2);
                c.close();
            } catch (Throwable th) {
                c.close();
                throw th;
            }
        }
    }
}
