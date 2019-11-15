package com.amap.api.mapcore.util;

import android.database.sqlite.SQLiteDatabase;
import com.mi.mimsgsdk.utils.Constants;

/* compiled from: LogDBCreator */
public class gs implements gk {
    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS a (_id integer primary key autoincrement, a1  varchar(20), a2 varchar(10),a3 varchar(50),a4 varchar(100),a5 varchar(20),a6 integer);");
            sQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (_id integer primary key autoincrement,b1 varchar(40), b2 integer,b3  integer,a1  varchar(20));", new Object[]{"b"}));
            sQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (_id integer primary key autoincrement,b1 varchar(40), b2 integer,b3  integer,a1  varchar(20));", new Object[]{"c"}));
            sQLiteDatabase.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s (_id integer primary key autoincrement,b1 varchar(40), b2 integer,b3  integer,a1  varchar(20));", new Object[]{"d"}));
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS e (_id integer primary key autoincrement,c1 integer,c2 integer,c3 integer);");
        } catch (Throwable th) {
            gc.a(th, Constants.DB_CHANNEL, "onCreate");
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public String b() {
        return "logdb.db";
    }

    public int c() {
        return 1;
    }
}
