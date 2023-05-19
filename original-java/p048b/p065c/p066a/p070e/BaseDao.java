package p048b.p065c.p066a.p070e;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import p048b.p065c.p066a.p072g.OkLogger;

/* renamed from: b.c.a.e.a */
/* loaded from: classes2.dex */
public abstract class BaseDao<T> {

    /* renamed from: d */
    protected static String f5334d;

    /* renamed from: a */
    protected Lock f5335a;

    /* renamed from: b */
    protected SQLiteOpenHelper f5336b;

    /* renamed from: c */
    protected SQLiteDatabase f5337c;

    public BaseDao(SQLiteOpenHelper sQLiteOpenHelper) {
        f5334d = getClass().getSimpleName();
        this.f5335a = DBHelper.f5345e;
        this.f5336b = sQLiteOpenHelper;
        this.f5337c = m21091e();
    }

    /* renamed from: a */
    protected final void m21093a(SQLiteDatabase sQLiteDatabase, Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            return;
        }
        sQLiteDatabase.close();
    }

    /* renamed from: b */
    public boolean m21092b(String str, String[] strArr) {
        String str2;
        long currentTimeMillis = System.currentTimeMillis();
        this.f5335a.lock();
        try {
            try {
                this.f5337c.beginTransaction();
                this.f5337c.delete(mo21086d(), str, strArr);
                this.f5337c.setTransactionSuccessful();
                return true;
            } catch (Exception e) {
                OkLogger.m21049a(e);
                this.f5337c.endTransaction();
                this.f5335a.unlock();
                String str3 = f5334d;
                OkLogger.m21048b(str3, (System.currentTimeMillis() - currentTimeMillis) + " delete");
                return false;
            }
        } finally {
            this.f5337c.endTransaction();
            this.f5335a.unlock();
            str2 = f5334d;
            OkLogger.m21048b(str2, (System.currentTimeMillis() - currentTimeMillis) + " delete");
        }
    }

    /* renamed from: c */
    public abstract ContentValues mo21087c(T t);

    /* renamed from: d */
    public abstract String mo21086d();

    /* renamed from: e */
    public SQLiteDatabase m21091e() {
        return this.f5336b.getWritableDatabase();
    }

    /* renamed from: f */
    public abstract T mo21085f(Cursor cursor);

    /* renamed from: g */
    public List<T> m21090g(String str, String[] strArr) {
        return m21089h(null, str, strArr, null, null, null, null);
    }

    /* renamed from: h */
    public List<T> m21089h(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        Cursor cursor;
        String str6;
        StringBuilder sb;
        long currentTimeMillis = System.currentTimeMillis();
        this.f5335a.lock();
        ArrayList arrayList = new ArrayList();
        try {
            this.f5337c.beginTransaction();
            cursor = this.f5337c.query(mo21086d(), strArr, str, strArr2, str2, str3, str4, str5);
            while (!cursor.isClosed() && cursor.moveToNext()) {
                try {
                    try {
                        arrayList.add(mo21085f(cursor));
                    } catch (Throwable th) {
                        th = th;
                        m21093a(null, cursor);
                        this.f5337c.endTransaction();
                        this.f5335a.unlock();
                        OkLogger.m21048b(f5334d, (System.currentTimeMillis() - currentTimeMillis) + " query");
                        throw th;
                    }
                } catch (Exception e) {
                    e = e;
                    OkLogger.m21049a(e);
                    m21093a(null, cursor);
                    this.f5337c.endTransaction();
                    this.f5335a.unlock();
                    str6 = f5334d;
                    sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - currentTimeMillis);
                    sb.append(" query");
                    OkLogger.m21048b(str6, sb.toString());
                    return arrayList;
                }
            }
            this.f5337c.setTransactionSuccessful();
            m21093a(null, cursor);
            this.f5337c.endTransaction();
            this.f5335a.unlock();
            str6 = f5334d;
            sb = new StringBuilder();
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            m21093a(null, cursor);
            this.f5337c.endTransaction();
            this.f5335a.unlock();
            OkLogger.m21048b(f5334d, (System.currentTimeMillis() - currentTimeMillis) + " query");
            throw th;
        }
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        sb.append(" query");
        OkLogger.m21048b(str6, sb.toString());
        return arrayList;
    }

    /* renamed from: i */
    public boolean m21088i(T t) {
        String str;
        if (t == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.f5335a.lock();
        try {
            this.f5337c.beginTransaction();
            this.f5337c.replace(mo21086d(), null, mo21087c(t));
            this.f5337c.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            OkLogger.m21049a(e);
            return false;
        } finally {
            this.f5337c.endTransaction();
            this.f5335a.unlock();
            str = f5334d;
            OkLogger.m21048b(str, (System.currentTimeMillis() - currentTimeMillis) + " replaceT");
        }
    }
}
