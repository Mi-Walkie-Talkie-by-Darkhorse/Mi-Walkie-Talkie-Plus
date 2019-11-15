package com.amap.api.mapcore.util;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: DynamicFileDBCreator */
public class hf implements gk {
    private static hf a;

    public static synchronized hf a() {
        hf hfVar;
        synchronized (hf.class) {
            if (a == null) {
                a = new hf();
            }
            hfVar = a;
        }
        return hfVar;
    }

    private hf() {
    }

    public String b() {
        return "dafile.db";
    }

    public int c() {
        return 1;
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sname  varchar(20), fname varchar(100),md varchar(20),version varchar(20),dversion varchar(20),status varchar(20),reservedfield varchar(20));");
        } catch (Throwable th) {
            hj.a(th, "DynamicFileDBCreator", "onCreate");
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
