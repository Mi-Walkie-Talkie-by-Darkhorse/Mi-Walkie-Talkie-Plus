package com.amap.api.mapcore.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: DB */
public class gq extends SQLiteOpenHelper {
    private static boolean b = true;
    private static boolean c = false;
    private gk a;

    public gq(Context context, String str, CursorFactory cursorFactory, int i, gk gkVar) {
        super(context, str, cursorFactory, i);
        this.a = gkVar;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.a.a(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.a.a(sQLiteDatabase, i, i2);
    }
}
