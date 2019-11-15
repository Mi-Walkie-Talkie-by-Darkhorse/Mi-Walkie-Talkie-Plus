package com.amap.api.col.sl;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: DynamicFileDBCreator */
public final class dd implements cp {
    private static dd a;

    public static synchronized dd b() {
        dd ddVar;
        synchronized (dd.class) {
            if (a == null) {
                a = new dd();
            }
            ddVar = a;
        }
        return ddVar;
    }

    private dd() {
    }

    public final String a() {
        return "dafile.db";
    }

    public final void a(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sname  varchar(20), fname varchar(100),md varchar(20),version varchar(20),dversion varchar(20),status varchar(20),reservedfield varchar(20));");
        } catch (Throwable th) {
            cj.a(th, "DynamicFileDBCreator", "onCreate");
        }
    }
}
