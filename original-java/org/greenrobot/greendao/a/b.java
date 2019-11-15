package org.greenrobot.greendao.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import net.sqlcipher.database.SQLiteDatabase;

/* compiled from: DatabaseOpenHelper */
public abstract class b extends SQLiteOpenHelper {
    private final Context context;
    private a encryptedHelper;
    private boolean loadSQLCipherNativeLibs;
    private final String name;
    private final int version;

    /* compiled from: DatabaseOpenHelper */
    private class a extends net.sqlcipher.database.SQLiteOpenHelper {
        public a(Context context, String str, int i, boolean z) {
            super(context, str, null, i);
            if (z) {
                SQLiteDatabase.loadLibs(context);
            }
        }

        /* access modifiers changed from: protected */
        public a a(SQLiteDatabase sQLiteDatabase) {
            return new d(sQLiteDatabase);
        }
    }

    public b(Context context2, String str, int i) {
        this(context2, str, null, i);
    }

    public b(Context context2, String str, CursorFactory cursorFactory, int i) {
        super(context2, str, cursorFactory, i);
        this.loadSQLCipherNativeLibs = true;
        this.context = context2;
        this.name = str;
        this.version = i;
    }

    public void setLoadSQLCipherNativeLibs(boolean z) {
        this.loadSQLCipherNativeLibs = z;
    }

    public a getWritableDb() {
        return wrap(getWritableDatabase());
    }

    public a getReadableDb() {
        return wrap(getReadableDatabase());
    }

    /* access modifiers changed from: protected */
    public a wrap(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        return new f(sQLiteDatabase);
    }

    public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        onCreate(wrap(sQLiteDatabase));
    }

    public void onCreate(a aVar) {
    }

    public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(wrap(sQLiteDatabase), i, i2);
    }

    public void onUpgrade(a aVar, int i, int i2) {
    }

    public void onOpen(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        onOpen(wrap(sQLiteDatabase));
    }

    public void onOpen(a aVar) {
    }

    private a checkEncryptedHelper() {
        if (this.encryptedHelper == null) {
            this.encryptedHelper = new a(this.context, this.name, this.version, this.loadSQLCipherNativeLibs);
        }
        return this.encryptedHelper;
    }

    public a getEncryptedWritableDb(String str) {
        a checkEncryptedHelper = checkEncryptedHelper();
        return checkEncryptedHelper.a(checkEncryptedHelper.getWritableDatabase(str));
    }

    public a getEncryptedWritableDb(char[] cArr) {
        a checkEncryptedHelper = checkEncryptedHelper();
        return checkEncryptedHelper.a(checkEncryptedHelper.getWritableDatabase(cArr));
    }

    public a getEncryptedReadableDb(String str) {
        a checkEncryptedHelper = checkEncryptedHelper();
        return checkEncryptedHelper.a(checkEncryptedHelper.getReadableDatabase(str));
    }

    public a getEncryptedReadableDb(char[] cArr) {
        a checkEncryptedHelper = checkEncryptedHelper();
        return checkEncryptedHelper.a(checkEncryptedHelper.getReadableDatabase(cArr));
    }
}
