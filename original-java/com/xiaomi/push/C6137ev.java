package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6145fb;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.ev */
/* loaded from: classes2.dex */
public class C6137ev {

    /* renamed from: a */
    private static Context f21476a;

    /* renamed from: a */
    private static volatile C6137ev f21477a;

    /* renamed from: a */
    private SQLiteDatabase f21478a;

    /* renamed from: com.xiaomi.push.ev$a */
    /* loaded from: classes2.dex */
    private static class C6138a extends SQLiteOpenHelper {
        public C6138a(Context context) {
            super(context, "hb.db", (SQLiteDatabase.CursorFactory) null, 1);
        }

        /* renamed from: a */
        private void m3019a(SQLiteDatabase sQLiteDatabase) {
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
            m3019a(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    private C6137ev(Context context) {
        f21476a = context;
        this.f21478a = new C6138a(context).getWritableDatabase();
    }

    /* renamed from: a */
    private C6133er m3026a(String str, Cursor cursor) {
        int i = cursor.getInt(cursor.getColumnIndex("policy_type"));
        int i2 = cursor.getInt(cursor.getColumnIndex(UMCommonContent.f19364aR));
        long j = cursor.getLong(cursor.getColumnIndex("insert_time"));
        long j2 = cursor.getLong(cursor.getColumnIndex("life_time"));
        int i3 = cursor.getInt(cursor.getColumnIndex("timeout_count"));
        int i4 = cursor.getInt(cursor.getColumnIndex("pong_count"));
        long j3 = cursor.getLong(cursor.getColumnIndex("fixed_duration"));
        C6133er c6133er = new C6133er();
        c6133er.f21452a = str;
        c6133er.f21450a = i;
        c6133er.f21451a = i2;
        c6133er.f21454b = j;
        c6133er.f21456c = j2;
        c6133er.f21453b = i3;
        c6133er.f21455c = i4;
        c6133er.f21457d = j3;
        return c6133er;
    }

    /* renamed from: a */
    private C6134es m3025a(String str, Cursor cursor) {
        int i = cursor.getInt(cursor.getColumnIndex("policy_type"));
        int i2 = cursor.getInt(cursor.getColumnIndex(UMCommonContent.f19364aR));
        long j = cursor.getLong(cursor.getColumnIndex("insert_time"));
        long j2 = cursor.getLong(cursor.getColumnIndex("life_time"));
        boolean z = cursor.getLong(cursor.getColumnIndex("effective_wakeup")) == 1;
        int i3 = cursor.getInt(cursor.getColumnIndex("wakeup_count"));
        String string = cursor.getString(cursor.getColumnIndex("invalid_reason"));
        C6134es c6134es = new C6134es();
        c6134es.f21460a = str;
        c6134es.f21458a = i;
        c6134es.f21459a = i2;
        c6134es.f21463b = j;
        c6134es.f21465c = j2;
        c6134es.f21461a = z;
        c6134es.f21462b = i3;
        c6134es.f21464b = string;
        return c6134es;
    }

    /* renamed from: a */
    public static C6137ev m3037a(Context context) {
        if (f21477a == null) {
            synchronized (C6137ev.class) {
                if (f21477a == null) {
                    f21477a = new C6137ev(context);
                }
            }
        }
        return f21477a;
    }

    /* renamed from: a */
    private void m3034a(C6145fb.C6146a c6146a, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("digest", c6146a.f21501a);
        contentValues.put(UMCommonContent.f19364aR, Long.valueOf(j));
        contentValues.put("net_mode", c6146a.f21505b);
        contentValues.put("continuous_count", Integer.valueOf(c6146a.f21503b));
        contentValues.put("jump_count", Integer.valueOf(c6146a.f21507c));
        contentValues.put("last_ping_suc", Integer.valueOf(c6146a.f21506b ? 1 : 0));
        if (!m3027a(c6146a.f21501a, c6146a.f21500a)) {
            this.f21478a.insert("records", null, contentValues);
            return;
        }
        String[] strArr = {c6146a.f21501a, String.valueOf(c6146a.f21500a)};
        this.f21478a.update("records", contentValues, "digest=? and interval=?", strArr);
    }

    /* renamed from: b */
    private void m3021b(C6145fb.C6146a c6146a, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("digest", c6146a.f21501a);
        contentValues.put("cur_interval", Long.valueOf(j));
        contentValues.put("fixed", Integer.valueOf(c6146a.f21502a ? 1 : 0));
        contentValues.put("fixed_timestamp", Long.valueOf(c6146a.f21504b));
        contentValues.put("fiexd_duration", Long.valueOf(c6146a.f21508c));
        if (!m3022a("recent", "digest=?", new String[]{c6146a.f21501a})) {
            this.f21478a.insert("recent", null, contentValues);
            return;
        }
        String[] strArr = {c6146a.f21501a};
        this.f21478a.update("recent", contentValues, "digest=?", strArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
        if (r11 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r11 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004d, code lost:
        return null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C6133er m3029a(String str, int i, long j) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            cursor = this.f21478a.query("pingpong", null, "digest=? and policy_type=? and interval=? ", new String[]{str, String.valueOf(i), String.valueOf(j)}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        cursor.moveToFirst();
                        C6133er m3026a = m3026a(str, cursor);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return m3026a;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004a, code lost:
        if (r11 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
        if (r11 == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0057, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005a, code lost:
        return null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C6134es m3028a(String str, int i, long j, boolean z, String str2) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            String[] strArr = new String[5];
            strArr[0] = str;
            strArr[1] = String.valueOf(i);
            strArr[2] = String.valueOf(j);
            strArr[3] = String.valueOf(z ? 1 : 0);
            strArr[4] = str2;
            cursor = this.f21478a.query("wakeup", null, "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=? ", strArr, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        cursor.moveToFirst();
                        C6134es m3025a = m3025a(str, cursor);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return m3025a;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00db, code lost:
        if (r3 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e6, code lost:
        if (r3 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e8, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00eb, code lost:
        return null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C6145fb.C6146a m3032a(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            boolean z = true;
            cursor = this.f21478a.query("recent", null, "digest=?", new String[]{str}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() > 0) {
                        cursor.moveToFirst();
                        long j = cursor.getLong(cursor.getColumnIndex("cur_interval"));
                        boolean z2 = cursor.getInt(cursor.getColumnIndex("fixed")) == 1;
                        long j2 = cursor.getLong(cursor.getColumnIndex("fixed_timestamp"));
                        long j3 = cursor.getLong(cursor.getColumnIndex("fiexd_duration"));
                        cursor.close();
                        if (z2) {
                            C6145fb.C6146a c6146a = new C6145fb.C6146a();
                            c6146a.f21501a = str;
                            c6146a.f21502a = z2;
                            c6146a.f21500a = j;
                            c6146a.f21504b = j2;
                            c6146a.f21508c = j3;
                            if (cursor != null) {
                                cursor.close();
                            }
                            return c6146a;
                        }
                        cursor = this.f21478a.query("records", null, "digest=? and interval=?", new String[]{str, String.valueOf(j)}, null, null, null);
                        if (cursor != null && cursor.getCount() > 0) {
                            cursor.moveToFirst();
                            C6145fb.C6146a c6146a2 = new C6145fb.C6146a();
                            c6146a2.f21500a = j;
                            c6146a2.f21501a = str;
                            c6146a2.f21503b = cursor.getInt(cursor.getColumnIndex("continuous_count"));
                            c6146a2.f21507c = cursor.getInt(cursor.getColumnIndex("jump_count"));
                            c6146a2.f21502a = z2;
                            c6146a2.f21504b = j2;
                            if (cursor.getInt(cursor.getColumnIndex("last_ping_suc")) != 1) {
                                z = false;
                            }
                            c6146a2.f21506b = z;
                            c6146a2.f21508c = j3;
                            if (cursor != null) {
                                cursor.close();
                            }
                            return c6146a2;
                        }
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<C6134es> m3031a(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor query = this.f21478a.query("wakeup", null, "digest=? ", new String[]{str}, null, null, null);
            if (query == null) {
                ArrayList arrayList2 = new ArrayList();
                if (query != null) {
                    query.close();
                }
                return arrayList2;
            } else if (query.getCount() <= 0 || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } else {
                do {
                    arrayList.add(m3025a(str, query));
                } while (query.moveToNext());
                if (query != null) {
                }
                return arrayList;
            }
        } catch (Exception unused) {
            if (0 != 0) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public void m3036a(C6133er c6133er) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("digest", c6133er.f21452a);
        contentValues.put("policy_type", Integer.valueOf(c6133er.f21450a));
        contentValues.put(UMCommonContent.f19364aR, Long.valueOf(c6133er.f21451a));
        contentValues.put("insert_time", Long.valueOf(c6133er.f21454b));
        contentValues.put("life_time", Long.valueOf(c6133er.f21456c));
        contentValues.put("timeout_count", Integer.valueOf(c6133er.f21453b));
        contentValues.put("pong_count", Integer.valueOf(c6133er.f21455c));
        contentValues.put("fixed_duration", Long.valueOf(c6133er.f21457d));
        String[] strArr = {c6133er.f21452a, String.valueOf(c6133er.f21450a), String.valueOf(c6133er.f21451a)};
        if (m3022a("pingpong", "digest=? and policy_type=? and interval=?", strArr)) {
            this.f21478a.update("pingpong", contentValues, "digest=? and policy_type=? and interval=?", strArr);
        } else {
            this.f21478a.insert("pingpong", null, contentValues);
        }
    }

    /* renamed from: a */
    public void m3035a(C6134es c6134es) {
        if (c6134es == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("digest", c6134es.f21460a);
        contentValues.put("policy_type", Integer.valueOf(c6134es.f21458a));
        contentValues.put(UMCommonContent.f19364aR, Long.valueOf(c6134es.f21459a));
        contentValues.put("insert_time", Long.valueOf(c6134es.f21463b));
        contentValues.put("life_time", Long.valueOf(c6134es.f21465c));
        contentValues.put("effective_wakeup", Boolean.valueOf(c6134es.f21461a));
        contentValues.put("wakeup_count", Integer.valueOf(c6134es.f21462b));
        contentValues.put("invalid_reason", c6134es.f21464b);
        String[] strArr = {c6134es.f21460a, String.valueOf(c6134es.f21458a), String.valueOf(c6134es.f21459a), String.valueOf(c6134es.f21461a ? 1 : 0), c6134es.f21464b};
        if (m3022a("wakeup", "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=?", strArr)) {
            this.f21478a.update("wakeup", contentValues, "digest=? and policy_type=? and interval=? and effective_wakeup=? and invalid_reason=?", strArr);
        } else {
            this.f21478a.insert("wakeup", null, contentValues);
        }
    }

    /* renamed from: a */
    public void m3033a(C6145fb.C6146a c6146a, boolean z, long j) {
        if (c6146a == null || TextUtils.isEmpty(c6146a.f21501a) || c6146a.f21500a <= 0) {
            return;
        }
        AbstractC5876b.m4147a("[HB] cacheHeartbeat interval = " + c6146a.f21500a);
        this.f21478a.beginTransaction();
        if (!z) {
            try {
                m3034a(c6146a, j);
            } catch (RuntimeException unused) {
            } catch (Throwable th) {
                this.f21478a.endTransaction();
                throw th;
            }
        }
        m3021b(c6146a, j);
        this.f21478a.setTransactionSuccessful();
        this.f21478a.endTransaction();
    }

    /* renamed from: a */
    public void m3030a(String str) {
        m3023a("records", "digest=?", new String[]{str});
    }

    /* renamed from: a */
    public void m3024a(String str, String str2) {
        m3023a(str, "digest=?", new String[]{str2});
    }

    /* renamed from: a */
    public void m3023a(String str, String str2, String[] strArr) {
        this.f21478a.beginTransaction();
        try {
            int delete = this.f21478a.delete(str, str2, strArr);
            AbstractC5876b.m4147a("[HB] clear history " + str + "count = " + delete);
            this.f21478a.setTransactionSuccessful();
        } catch (RuntimeException unused) {
        } catch (Throwable th) {
            this.f21478a.endTransaction();
            throw th;
        }
        this.f21478a.endTransaction();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r10 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        if (r10 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
        return false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m3027a(String str, long j) {
        String[] strArr = {str, String.valueOf(j)};
        Cursor cursor = null;
        try {
            cursor = this.f21478a.query("records", null, "digest=? and interval=?", strArr, null, null, null);
            if (cursor != null) {
                if (cursor.getCount() > 0) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return true;
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public boolean m3022a(String str, String str2, String[] strArr) {
        Cursor cursor = null;
        try {
            cursor = this.f21478a.query(str, null, str2, strArr, null, null, null);
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
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<C6133er> m3020b(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor query = this.f21478a.query("pingpong", null, "digest=? ", new String[]{str}, null, null, null);
            if (query == null) {
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } else if (query.getCount() <= 0 || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } else {
                do {
                    arrayList.add(m3026a(str, query));
                } while (query.moveToNext());
                if (query != null) {
                }
                return arrayList;
            }
        } catch (Exception unused) {
            if (0 != 0) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }
}
