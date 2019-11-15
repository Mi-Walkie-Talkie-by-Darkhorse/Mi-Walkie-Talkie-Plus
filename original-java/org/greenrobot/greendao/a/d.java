package org.greenrobot.greendao.a;

import android.database.Cursor;
import android.database.SQLException;
import net.sqlcipher.database.SQLiteDatabase;

/* compiled from: EncryptedDatabase */
public class d implements a {
    private final SQLiteDatabase a;

    public d(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    public Cursor a(String str, String[] strArr) {
        return this.a.rawQuery(str, strArr);
    }

    public void a(String str) throws SQLException {
        this.a.execSQL(str);
    }

    public void a() {
        this.a.beginTransaction();
    }

    public void b() {
        this.a.endTransaction();
    }

    public void c() {
        this.a.setTransactionSuccessful();
    }

    public void a(String str, Object[] objArr) throws SQLException {
        this.a.execSQL(str, objArr);
    }

    public c b(String str) {
        return new e(this.a.compileStatement(str));
    }

    public boolean d() {
        return this.a.isDbLockedByCurrentThread();
    }

    public Object e() {
        return this.a;
    }
}
