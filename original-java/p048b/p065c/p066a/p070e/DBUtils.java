package p048b.p065c.p066a.p070e;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import p048b.p065c.p066a.p072g.OkLogger;

/* renamed from: b.c.a.e.e */
/* loaded from: classes2.dex */
public class DBUtils {
    /* renamed from: a */
    public static boolean m21077a(SQLiteDatabase sQLiteDatabase, TableEntity tableEntity) {
        if (m21076b(sQLiteDatabase, tableEntity.f5350a)) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("select * from " + tableEntity.f5350a, null);
            if (rawQuery == null) {
                return false;
            }
            try {
                int m21073c = tableEntity.m21073c();
                if (m21073c == rawQuery.getColumnCount()) {
                    for (int i = 0; i < m21073c; i++) {
                        if (tableEntity.m21072d(rawQuery.getColumnName(i)) == -1) {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            } finally {
                rawQuery.close();
            }
        }
        return true;
    }

    /* renamed from: b */
    public static boolean m21076b(SQLiteDatabase sQLiteDatabase, String str) {
        int i;
        if (str == null || sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            return false;
        }
        Cursor cursor = null;
        try {
            try {
                cursor = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?", new String[]{"table", str});
            } catch (Exception e) {
                OkLogger.m21049a(e);
                if (cursor != null) {
                    cursor.close();
                }
                i = 0;
            }
            if (!cursor.moveToFirst()) {
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
            i = cursor.getInt(0);
            if (cursor != null) {
                cursor.close();
            }
            return i > 0;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}
