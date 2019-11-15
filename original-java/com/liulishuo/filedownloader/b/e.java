package com.liulishuo.filedownloader.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;

/* compiled from: SqliteDatabaseOpenHelper */
public class e extends SQLiteOpenHelper {
    public e(Context context) {
        super(context, "filedownloader.db", null, 3);
    }

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        if (VERSION.SDK_INT >= 16) {
            setWriteAheadLoggingEnabled(true);
        } else if (VERSION.SDK_INT >= 11) {
            sQLiteDatabase.enableWriteAheadLogging();
        }
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filedownloader( _id INTEGER PRIMARY KEY, url VARCHAR, path VARCHAR, status TINYINT(7), sofar INTEGER, total INTEGER, errMsg VARCHAR, etag VARCHAR, pathAsDirectory TINYINT(1) DEFAULT 0, filename VARCHAR, connectionCount INTEGER DEFAULT 1)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filedownloaderConnection( id INTEGER, connectionIndex INTEGER, startOffset INTEGER, currentOffset INTEGER, endOffset INTEGER, PRIMARY KEY ( id, connectionIndex ))");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 2) {
            sQLiteDatabase.execSQL("ALTER TABLE filedownloader ADD COLUMN pathAsDirectory TINYINT(1) DEFAULT 0");
            sQLiteDatabase.execSQL("ALTER TABLE filedownloader ADD COLUMN filename VARCHAR");
        }
        if (i < 3) {
            String str = "ALTER TABLE filedownloader ADD COLUMN connectionCount INTEGER DEFAULT 1";
            sQLiteDatabase.execSQL("ALTER TABLE filedownloader ADD COLUMN connectionCount INTEGER DEFAULT 1");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS filedownloaderConnection( id INTEGER, connectionIndex INTEGER, startOffset INTEGER, currentOffset INTEGER, endOffset INTEGER, PRIMARY KEY ( id, connectionIndex ))");
        }
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.delete("filedownloader", null, null);
        sQLiteDatabase.delete("filedownloaderConnection", null, null);
    }
}
