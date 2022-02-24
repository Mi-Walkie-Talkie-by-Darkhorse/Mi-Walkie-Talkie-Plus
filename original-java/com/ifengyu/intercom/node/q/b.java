package com.ifengyu.intercom.node.q;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ifengyu.intercom.i.z;

/* compiled from: ConnConfigsDBHelper.java */
/* loaded from: classes2.dex */
public class b extends SQLiteOpenHelper {
    private static final String e = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final String f5947a = "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT, UNIQUE(btAddress) ON CONFLICT REPLACE)";

    /* renamed from: b  reason: collision with root package name */
    private final String f5948b = "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)";

    /* renamed from: c  reason: collision with root package name */
    private final String f5949c = "ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1";
    private final String d = "ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0";

    private b(Context context) {
        super(context, "connections.db", (SQLiteDatabase.CursorFactory) null, 3);
    }

    public static b a(Context context) {
        return new b(context);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        z.c(e, "ConnConfigsDBHelper onCreate");
        try {
            sQLiteDatabase.execSQL("CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)");
        } catch (SQLException e2) {
            String str = e;
            z.b(str, "onCreate e=" + e2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        String str = e;
        z.c(str, "ConnConfigsDBHelper onUpgrade,oldVersion:" + i + " newVersion:" + i2);
        if (i == 1) {
            sQLiteDatabase.execSQL("ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1");
        } else if (i != 2) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0");
    }
}
