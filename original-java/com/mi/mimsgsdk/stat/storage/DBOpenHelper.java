package com.mi.mimsgsdk.stat.storage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mi.milinkforgame.sdk.base.Global;

public class DBOpenHelper extends SQLiteOpenHelper {
    private static final String DB_NAME = "mimsg";
    private static final int VERSION = 1;

    private static class DBOpenHelperHolder {
        static DBOpenHelper holder = new DBOpenHelper(Global.getApplicationContext());

        private DBOpenHelperHolder() {
        }
    }

    public static DBOpenHelper getInstance() {
        return DBOpenHelperHolder.holder;
    }

    public DBOpenHelper(Context context) {
        super(context, DB_NAME, null, 1);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        StatDao.createTable(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
