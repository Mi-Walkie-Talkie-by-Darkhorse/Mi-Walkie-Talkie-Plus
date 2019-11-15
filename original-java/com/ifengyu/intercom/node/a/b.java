package com.ifengyu.intercom.node.a;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ifengyu.intercom.b.s;

/* compiled from: ConnConfigsDBHelper */
public class b extends SQLiteOpenHelper {
    private static final String a = b.class.getSimpleName();
    private final String b = "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT, UNIQUE(btAddress) ON CONFLICT REPLACE)";
    private final String c = "CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)";
    private final String d = "ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1";
    private final String e = "ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0";

    private b(Context context) {
        super(context, "connections.db", null, 3);
    }

    public static b a(Context context) {
        return new b(context);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        s.c(a, "ConnConfigsDBHelper onCreate");
        try {
            sQLiteDatabase.execSQL("CREATE TABLE connConfigs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name STRING NOT NULL,btAddress STRING NOT NULL,connectionEnabled INTEGER NOT NULL,nodeId TEXT,deviceType INTEGER DEFAULT 1, deviceColor INTEGER DEFAULT 0, UNIQUE(btAddress) ON CONFLICT REPLACE)");
        } catch (SQLException e2) {
            s.e(a, "onCreate e=" + e2);
        }
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        s.c(a, "ConnConfigsDBHelper onUpgrade,oldVersion:" + i + " newVersion:" + i2);
        switch (i) {
            case 1:
                sQLiteDatabase.execSQL("ALTER TABLE connConfigs ADD deviceType INTEGER DEFAULT 1");
                break;
            case 2:
                break;
            default:
                return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE connConfigs ADD deviceColor INTEGER DEFAULT 0");
    }
}
