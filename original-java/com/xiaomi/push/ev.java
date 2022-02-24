package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fb;

/* loaded from: classes2.dex */
public class ev {

    /* renamed from: a  reason: collision with root package name */
    private static Context f8917a;

    /* renamed from: a  reason: collision with other field name */
    private static volatile ev f319a;

    /* renamed from: a  reason: collision with other field name */
    private SQLiteDatabase f320a;

    /* loaded from: classes2.dex */
    private static class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "hb.db", (SQLiteDatabase.CursorFactory) null, 1);
        }

        private void a(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS records(_id INTEGER PRIMARY KEY AUTOINCREMENT,digest TEXT,interval INTEGER DEFAULT 0,net_mode TEXT,continuous_count INTEGER DEFAULT 0,jump_count INTEGER DEFAULT 0,last_ping_suc INTEGER DEFAULT 0)");
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS recent(digest TEXT,net_mode TEXT,cur_interval INTEGER DEFAULT 0,fixed INTEGER DEFAULT 0,fixed_timestamp INTEGER DEFAULT 0,fiexd_duration INTEGER DEFAULT 0)");
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS wakeup(digest TEXT,policy_type INTEGER DEFAULT 0,interval INTEGER DEFAULT 0,insert_time INTEGER DEFAULT 0,life_time INTEGER DEFAULT 0,effective_wakeup INTEGER DEFAULT 0,wakeup_count INTEGER DEFAULT 0,invalid_reason TEXT )");
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS pingpong(digest TEXT,policy_type INTEGER DEFAULT 0,interval INTEGER DEFAULT 0,insert_time INTEGER DEFAULT 0,life_time INTEGER DEFAULT 0,timeout_count INTEGER DEFAULT 0,pong_count INTEGER DEFAULT 0,fixed_duration INTEGER DEFAULT 0)");
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Throwable unused) {
            }
            sQLiteDatabase.endTransaction();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            try {
                super.onDowngrade(sQLiteDatabase, i, i2);
            } catch (Throwable unused) {
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            super.onOpen(sQLiteDatabase);
            a(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    private ev(Context context) {
        f8917a = context;
        this.f320a = new a(context).getWritableDatabase();
    }

    private er a(String str, Cursor cursor) {
        int i = cursor.getInt(cursor.getColumnIndex("policy_type"));
        int i2 = cursor.getInt(cursor.getColumnIndex(ai.aR));
        long j = cursor.getLong(cursor.getColumnIndex("insert_time"));
        long j2 = cursor.getLong(cursor.getColumnIndex("life_time"));
        int i3 = cursor.getInt(cursor.getColumnIndex("timeout_count"));
        int i4 = cursor.getInt(cursor.getColumnIndex("pong_count"));
        long j3 = cursor.getLong(cursor.getColumnIndex("fixed_duration"));
        er erVar = new er();
        erVar.f304a = str;
        erVar.f8908a = i;
        erVar.f303a = i2;
        erVar.f305b = j;
        erVar.f306c = j2;
        erVar.f8909b = i3;
        erVar.f8910c = i4;
        erVar.d = j3;
        return erVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    private es m243a(String str, Cursor cursor) {
        int i = cursor.getInt(cursor.getColumnIndex("policy_type"));
        int i2 = cursor.getInt(cursor.getColumnIndex(ai.aR));
        long j = cursor.getLong(cursor.getColumnIndex("insert_time"));
        long j2 = cursor.getLong(cursor.getColumnIndex("life_time"));
        boolean z = cursor.getLong(cursor.getColumnIndex("effective_wakeup")) == 1;
        int i3 = cursor.getInt(cursor.getColumnIndex("wakeup_count"));
        String string = cursor.getString(cursor.getColumnIndex("invalid_reason"));
        es esVar = new es();
        esVar.f308a = str;
        esVar.f8911a = i;
        esVar.f307a = i2;
        esVar.f310b = j;
        esVar.f8913c = j2;
        esVar.f309a = z;
        esVar.f8912b = i3;
        esVar.f311b = string;
        return esVar;
    }

    public static ev a(Context context) {
        if (f319a == null) {
            synchronized (ev.class) {
                if (f319a == null) {
                    f319a = new ev(context);
                }
            }
        }
        return f319a;
    }

    private void a(fb.a aVar, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("digest", aVar.f328a);
        contentValues.put(ai.aR, Long.valueOf(j));
        contentValues.put("net_mode", aVar.f331b);
        contentValues.put("continuous_count", Integer.valueOf(aVar.f8929b));
        contentValues.put("jump_count", Integer.valueOf(aVar.f8930c));
        contentValues.put("last_ping_suc", Integer.valueOf(aVar.f332b ? 1 : 0));
        if (a(aVar.f328a, aVar.f327a)) {
            String[] strArr = {aVar.f328a, String.valueOf(aVar.f327a)};
            this.f320a.update("records", contentValues, "digest=? and interval=?", strArr);
            return;
        }
        this.f320a.insert("records", null, contentValues);
    }

    private void b(fb.a aVar, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("digest", aVar.f328a);
        contentValues.put("cur_interval", Long.valueOf(j));
        contentValues.put("fixed", Integer.valueOf(aVar.f329a ? 1 : 0));
        contentValues.put("fixed_timestamp", Long.valueOf(aVar.f330b));
        contentValues.put("fiexd_duration", Long.valueOf(aVar.f333c));
        if (m246a("recent", "digest=?", new String[]{aVar.f328a})) {
            String[] strArr = {aVar.f328a};
            this.f320a.update("recent", contentValues, "digest=?", strArr);
            return;
        }
        this.f320a.insert("recent", null, contentValues);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
        if (r11 != null) goto L_0x004a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
        if (r11 == null) goto L_0x004d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004d, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.xiaomi.push.er a(java.lang.String r10, int r11, long r12) {
        /*
            r9 = this;
            r0 = 0
            java.lang.String r4 = "digest=? and policy_type=? and interval=? "
            r1 = 3
            java.lang.String[] r5 = new java.lang.String[r1]     // Catch: all -> 0x0040, Exception -> 0x0047
            r1 = 0
            r5[r1] = r10     // Catch: all -> 0x0040, Exception -> 0x0047
            r1 = 1
            java.lang.String r11 = java.lang.String.valueOf(r11)     // Catch: all -> 0x0040, Exception -> 0x0047
            r5[r1] = r11     // Catch: all -> 0x0040, Exception -> 0x0047
            r11 = 2
            java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: all -> 0x0040, Exception -> 0x0047
            r5[r11] = r12     // Catch: all -> 0x0040, Exception -> 0x0047
            android.database.sqlite.SQLiteDatabase r1 = r9.f320a     // Catch: all -> 0x0040, Exception -> 0x0047
            java.lang.String r2 = "pingpong"
            r3 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r11 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: all -> 0x0040, Exception -> 0x0047
            if (r11 == 0) goto L_0x003d
            int r12 = r11.getCount()     // Catch: all -> 0x0038, Exception -> 0x003b
            if (r12 <= 0) goto L_0x003d
            r11.moveToFirst()     // Catch: all -> 0x0038, Exception -> 0x003b
            com.xiaomi.push.er r10 = r9.a(r10, r11)     // Catch: all -> 0x0038, Exception -> 0x003b
            if (r11 == 0) goto L_0x0037
            r11.close()
        L_0x0037:
            return r10
        L_0x0038:
            r10 = move-exception
            r0 = r11
            goto L_0x0041
        L_0x003b:
            goto L_0x0048
        L_0x003d:
            if (r11 == 0) goto L_0x004d
            goto L_0x004a
        L_0x0040:
            r10 = move-exception
        L_0x0041:
            if (r0 == 0) goto L_0x0046
            r0.close()
        L_0x0046:
            throw r10
        L_0x0047:
            r11 = r0
        L_0x0048:
            if (r11 == 0) goto L_0x004d
        L_0x004a:
            r11.close()
        L_0x004d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ev.a(java.lang.String, int, long):com.xiaomi.push.er");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004a, code lost:
        if (r11 != null) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
        if (r11 == null) goto L_0x005a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.xiaomi.push.es a(java.lang.String r10, int r11, long r12, boolean r14, java.lang.String r15) {
        /*
            r9 = this;
            r0 = 0
            java.lang.String r4 = "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=? "
            r1 = 5
            java.lang.String[] r5 = new java.lang.String[r1]     // Catch: all -> 0x004d, Exception -> 0x0054
            r1 = 0
            r5[r1] = r10     // Catch: all -> 0x004d, Exception -> 0x0054
            java.lang.String r11 = java.lang.String.valueOf(r11)     // Catch: all -> 0x004d, Exception -> 0x0054
            r2 = 1
            r5[r2] = r11     // Catch: all -> 0x004d, Exception -> 0x0054
            r11 = 2
            java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: all -> 0x004d, Exception -> 0x0054
            r5[r11] = r12     // Catch: all -> 0x004d, Exception -> 0x0054
            r11 = 3
            if (r14 == 0) goto L_0x001b
            r1 = 1
        L_0x001b:
            java.lang.String r12 = java.lang.String.valueOf(r1)     // Catch: all -> 0x004d, Exception -> 0x0054
            r5[r11] = r12     // Catch: all -> 0x004d, Exception -> 0x0054
            r11 = 4
            r5[r11] = r15     // Catch: all -> 0x004d, Exception -> 0x0054
            android.database.sqlite.SQLiteDatabase r1 = r9.f320a     // Catch: all -> 0x004d, Exception -> 0x0054
            java.lang.String r2 = "wakeup"
            r3 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r11 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: all -> 0x004d, Exception -> 0x0054
            if (r11 == 0) goto L_0x004a
            int r12 = r11.getCount()     // Catch: all -> 0x0045, Exception -> 0x0048
            if (r12 <= 0) goto L_0x004a
            r11.moveToFirst()     // Catch: all -> 0x0045, Exception -> 0x0048
            com.xiaomi.push.es r10 = r9.m243a(r10, r11)     // Catch: all -> 0x0045, Exception -> 0x0048
            if (r11 == 0) goto L_0x0044
            r11.close()
        L_0x0044:
            return r10
        L_0x0045:
            r10 = move-exception
            r0 = r11
            goto L_0x004e
        L_0x0048:
            goto L_0x0055
        L_0x004a:
            if (r11 == 0) goto L_0x005a
            goto L_0x0057
        L_0x004d:
            r10 = move-exception
        L_0x004e:
            if (r0 == 0) goto L_0x0053
            r0.close()
        L_0x0053:
            throw r10
        L_0x0054:
            r11 = r0
        L_0x0055:
            if (r11 == 0) goto L_0x005a
        L_0x0057:
            r11.close()
        L_0x005a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ev.a(java.lang.String, int, long, boolean, java.lang.String):com.xiaomi.push.es");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00db, code lost:
        if (r3 != null) goto L_0x00e8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e6, code lost:
        if (r3 == null) goto L_0x00eb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e8, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00eb, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.xiaomi.push.fb.a a(java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ev.a(java.lang.String):com.xiaomi.push.fb$a");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* renamed from: a  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<com.xiaomi.push.es> m244a(java.lang.String r11) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            java.lang.String r5 = "digest=? "
            r2 = 1
            java.lang.String[] r6 = new java.lang.String[r2]     // Catch: all -> 0x0046, Exception -> 0x004d
            r2 = 0
            r6[r2] = r11     // Catch: all -> 0x0046, Exception -> 0x004d
            android.database.sqlite.SQLiteDatabase r2 = r10.f320a     // Catch: all -> 0x0046, Exception -> 0x004d
            java.lang.String r3 = "wakeup"
            r4 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: all -> 0x0046, Exception -> 0x004d
            if (r1 != 0) goto L_0x0027
            java.util.ArrayList r11 = new java.util.ArrayList     // Catch: all -> 0x0046, Exception -> 0x004d
            r11.<init>()     // Catch: all -> 0x0046, Exception -> 0x004d
            if (r1 == 0) goto L_0x0026
            r1.close()
        L_0x0026:
            return r11
        L_0x0027:
            int r2 = r1.getCount()     // Catch: all -> 0x0046, Exception -> 0x004d
            if (r2 <= 0) goto L_0x0040
            boolean r2 = r1.moveToFirst()     // Catch: all -> 0x0046, Exception -> 0x004d
            if (r2 == 0) goto L_0x0040
        L_0x0033:
            com.xiaomi.push.es r2 = r10.m243a(r11, r1)     // Catch: all -> 0x0046, Exception -> 0x004d
            r0.add(r2)     // Catch: all -> 0x0046, Exception -> 0x004d
            boolean r2 = r1.moveToNext()     // Catch: all -> 0x0046, Exception -> 0x004d
            if (r2 != 0) goto L_0x0033
        L_0x0040:
            if (r1 == 0) goto L_0x0045
            r1.close()
        L_0x0045:
            return r0
        L_0x0046:
            r11 = move-exception
            if (r1 == 0) goto L_0x004c
            r1.close()
        L_0x004c:
            throw r11
        L_0x004d:
            if (r1 == 0) goto L_0x0053
            r1.close()
        L_0x0053:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ev.m244a(java.lang.String):java.util.List");
    }

    public void a(er erVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("digest", erVar.f304a);
        contentValues.put("policy_type", Integer.valueOf(erVar.f8908a));
        contentValues.put(ai.aR, Long.valueOf(erVar.f303a));
        contentValues.put("insert_time", Long.valueOf(erVar.f305b));
        contentValues.put("life_time", Long.valueOf(erVar.f306c));
        contentValues.put("timeout_count", Integer.valueOf(erVar.f8909b));
        contentValues.put("pong_count", Integer.valueOf(erVar.f8910c));
        contentValues.put("fixed_duration", Long.valueOf(erVar.d));
        String[] strArr = {erVar.f304a, String.valueOf(erVar.f8908a), String.valueOf(erVar.f303a)};
        if (m246a("pingpong", "digest=? and policy_type=? and interval=?", strArr)) {
            this.f320a.update("pingpong", contentValues, "digest=? and policy_type=? and interval=?", strArr);
        } else {
            this.f320a.insert("pingpong", null, contentValues);
        }
    }

    public void a(es esVar) {
        if (esVar != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("digest", esVar.f308a);
            contentValues.put("policy_type", Integer.valueOf(esVar.f8911a));
            contentValues.put(ai.aR, Long.valueOf(esVar.f307a));
            contentValues.put("insert_time", Long.valueOf(esVar.f310b));
            contentValues.put("life_time", Long.valueOf(esVar.f8913c));
            contentValues.put("effective_wakeup", Boolean.valueOf(esVar.f309a));
            contentValues.put("wakeup_count", Integer.valueOf(esVar.f8912b));
            contentValues.put("invalid_reason", esVar.f311b);
            String[] strArr = {esVar.f308a, String.valueOf(esVar.f8911a), String.valueOf(esVar.f307a), String.valueOf(esVar.f309a ? 1 : 0), esVar.f311b};
            if (m246a("wakeup", "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=?", strArr)) {
                this.f320a.update("wakeup", contentValues, "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=?", strArr);
            } else {
                this.f320a.insert("wakeup", null, contentValues);
            }
        }
    }

    public void a(fb.a aVar, boolean z, long j) {
        if (aVar != null && !TextUtils.isEmpty(aVar.f328a) && aVar.f327a > 0) {
            b.m1a("[HB] cacheHeartbeat interval = " + aVar.f327a);
            this.f320a.beginTransaction();
            if (!z) {
                try {
                    a(aVar, j);
                } catch (RuntimeException unused) {
                } catch (Throwable th) {
                    this.f320a.endTransaction();
                    throw th;
                }
            }
            b(aVar, j);
            this.f320a.setTransactionSuccessful();
            this.f320a.endTransaction();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m245a(String str) {
        a("records", "digest=?", new String[]{str});
    }

    public void a(String str, String str2) {
        a(str, "digest=?", new String[]{str2});
    }

    public void a(String str, String str2, String[] strArr) {
        this.f320a.beginTransaction();
        try {
            int delete = this.f320a.delete(str, str2, strArr);
            b.m1a("[HB] clear history " + str + "count = " + delete);
            this.f320a.setTransactionSuccessful();
        } catch (RuntimeException unused) {
        } catch (Throwable th) {
            this.f320a.endTransaction();
            throw th;
        }
        this.f320a.endTransaction();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r10 != null) goto L_0x0037;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
        if (r10 == null) goto L_0x003a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(java.lang.String r10, long r11) {
        /*
            r9 = this;
            java.lang.String r3 = "digest=? and interval=?"
            r0 = 2
            java.lang.String[] r4 = new java.lang.String[r0]
            r8 = 0
            r4[r8] = r10
            java.lang.String r10 = java.lang.String.valueOf(r11)
            r11 = 1
            r4[r11] = r10
            r10 = 0
            android.database.sqlite.SQLiteDatabase r0 = r9.f320a     // Catch: all -> 0x002d, Exception -> 0x0034
            java.lang.String r1 = "records"
            r2 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r10 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: all -> 0x002d, Exception -> 0x0034
            if (r10 == 0) goto L_0x002a
            int r12 = r10.getCount()     // Catch: all -> 0x002d, Exception -> 0x0034
            if (r12 <= 0) goto L_0x002a
            if (r10 == 0) goto L_0x0029
            r10.close()
        L_0x0029:
            return r11
        L_0x002a:
            if (r10 == 0) goto L_0x003a
            goto L_0x0037
        L_0x002d:
            r11 = move-exception
            if (r10 == 0) goto L_0x0033
            r10.close()
        L_0x0033:
            throw r11
        L_0x0034:
            if (r10 == 0) goto L_0x003a
        L_0x0037:
            r10.close()
        L_0x003a:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ev.a(java.lang.String, long):boolean");
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m246a(String str, String str2, String[] strArr) {
        Cursor cursor = null;
        try {
            cursor = this.f320a.query(str, null, str2, strArr, null, null, null);
            if (cursor != null) {
                if (cursor.getCount() > 0) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return true;
                }
            }
            if (cursor == null) {
                return false;
            }
        } catch (Exception unused) {
            if (cursor == null) {
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        cursor.close();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<com.xiaomi.push.er> b(java.lang.String r11) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            java.lang.String r5 = "digest=? "
            r2 = 1
            java.lang.String[] r6 = new java.lang.String[r2]     // Catch: all -> 0x0041, Exception -> 0x0048
            r2 = 0
            r6[r2] = r11     // Catch: all -> 0x0041, Exception -> 0x0048
            android.database.sqlite.SQLiteDatabase r2 = r10.f320a     // Catch: all -> 0x0041, Exception -> 0x0048
            java.lang.String r3 = "pingpong"
            r4 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: all -> 0x0041, Exception -> 0x0048
            if (r1 != 0) goto L_0x0022
            if (r1 == 0) goto L_0x0021
            r1.close()
        L_0x0021:
            return r0
        L_0x0022:
            int r2 = r1.getCount()     // Catch: all -> 0x0041, Exception -> 0x0048
            if (r2 <= 0) goto L_0x003b
            boolean r2 = r1.moveToFirst()     // Catch: all -> 0x0041, Exception -> 0x0048
            if (r2 == 0) goto L_0x003b
        L_0x002e:
            com.xiaomi.push.er r2 = r10.a(r11, r1)     // Catch: all -> 0x0041, Exception -> 0x0048
            r0.add(r2)     // Catch: all -> 0x0041, Exception -> 0x0048
            boolean r2 = r1.moveToNext()     // Catch: all -> 0x0041, Exception -> 0x0048
            if (r2 != 0) goto L_0x002e
        L_0x003b:
            if (r1 == 0) goto L_0x0040
            r1.close()
        L_0x0040:
            return r0
        L_0x0041:
            r11 = move-exception
            if (r1 == 0) goto L_0x0047
            r1.close()
        L_0x0047:
            throw r11
        L_0x0048:
            if (r1 == 0) goto L_0x004e
            r1.close()
        L_0x004e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.ev.b(java.lang.String):java.util.List");
    }
}
