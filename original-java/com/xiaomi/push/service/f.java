package com.xiaomi.push.service;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.tencent.tauth.AuthActivity;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import java.util.concurrent.atomic.AtomicInteger;

public class f extends SQLiteOpenHelper {
    private static f d;
    private static final String[] f = {HttpPostBodyUtil.NAME, "TEXT NOT NULL", "appId", "INTEGER NOT NULL", "package_name", "TEXT NOT NULL", "create_time", "INTEGER NOT NULL", "type", "TEXT NOT NULL", "center_longtitude", "TEXT", "center_lantitude", "TEXT", "circle_radius", "REAL", "polygon_point", "TEXT", "coordinate_provider", "TEXT NOT NULL", "current_status", "TEXT NOT NULL"};
    private static final String[] g = {"message_id", "TEXT NOT NULL", "geo_id", "TEXT NOT NULL", "content", "BLOB NOT NULL", AuthActivity.ACTION_KEY, "INTEGER NOT NULL", "deadline", "INTEGER NOT NULL"};
    public final Object a = new Object();
    private final String b = "GeoFenceDatabaseHelper.";
    private AtomicInteger c = new AtomicInteger();
    private SQLiteDatabase e;

    public f(Context context) {
        super(context, "geofencing.db", null, 1);
    }

    public static f a(Context context) {
        if (d == null) {
            synchronized (f.class) {
                if (d == null) {
                    d = new f(context);
                }
            }
        }
        return d;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        try {
            StringBuilder sb = new StringBuilder("CREATE TABLE geofence(id TEXT PRIMARY KEY ,");
            for (int i = 0; i < f.length - 1; i += 2) {
                if (i != 0) {
                    sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                }
                sb.append(f[i]).append(Token.SEPARATOR).append(f[i + 1]);
            }
            sb.append(");");
            sQLiteDatabase.execSQL(sb.toString());
        } catch (SQLException e2) {
            b.d(e2.toString());
        }
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        try {
            StringBuilder sb = new StringBuilder("CREATE TABLE geoMessage(");
            for (int i = 0; i < g.length - 1; i += 2) {
                if (i != 0) {
                    sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                }
                sb.append(g[i]).append(Token.SEPARATOR).append(f[i + 1]);
            }
            sb.append(",PRIMARY KEY(message_id,geo_id));");
            sQLiteDatabase.execSQL(sb.toString());
        } catch (SQLException e2) {
            b.d(e2.toString());
        }
    }

    public synchronized SQLiteDatabase a() {
        if (this.c.incrementAndGet() == 1) {
            this.e = getWritableDatabase();
        }
        return this.e;
    }

    public synchronized void b() {
        if (this.c.decrementAndGet() == 0) {
            this.e.close();
        }
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        synchronized (this.a) {
            try {
                a(sQLiteDatabase);
                b(sQLiteDatabase);
                b.c("GeoFenceDatabaseHelper. create tables");
            } catch (SQLException e2) {
                b.a((Throwable) e2);
            }
        }
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
