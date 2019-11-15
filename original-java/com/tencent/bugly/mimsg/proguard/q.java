package com.tencent.bugly.mimsg.proguard;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.a;
import com.tencent.bugly.mimsg.crashreport.common.info.b;
import java.io.File;
import java.util.List;

/* compiled from: BUGLY */
public final class q extends SQLiteOpenHelper {
    public static String a = "bugly_db";
    private static int b = 13;
    private Context c;
    private List<a> d;

    public q(Context context, List<a> list) {
        StringBuilder append = new StringBuilder().append(a).append("_");
        com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).getClass();
        super(context, append.append("mimsg").toString(), null, b);
        this.c = context;
        this.d = list;
    }

    public final synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS t_ui").append(" ( _id").append(" INTEGER PRIMARY KEY").append(" , _tm").append(" int").append(" , _ut").append(" int").append(" , _tp").append(" int").append(" , _dt").append(" blob").append(" , _pc").append(" text").append(" ) ");
            x.c(sb.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS t_lr").append(" ( _id").append(" INTEGER PRIMARY KEY").append(" , _tp").append(" int").append(" , _tm").append(" int").append(" , _pc").append(" text").append(" , _th").append(" text").append(" , _dt").append(" blob").append(" ) ");
            x.c(sb.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS t_pf").append(" ( _id").append(" integer").append(" , _tp").append(" text").append(" , _tm").append(" int").append(" , _dt").append(" blob").append(",primary key(_id").append(",_tp").append(" )) ");
            x.c(sb.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS t_cr").append(" ( _id").append(" INTEGER PRIMARY KEY").append(" , _tm").append(" int").append(" , _s1").append(" text").append(" , _up").append(" int").append(" , _me").append(" int").append(" , _uc").append(" int").append(" , _dt").append(" blob").append(" ) ");
            x.c(sb.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS dl_1002").append(" (_id").append(" integer primary key autoincrement, _dUrl").append(" varchar(100), _sFile").append(" varchar(100), _sLen").append(" INTEGER, _tLen").append(" INTEGER, _MD5").append(" varchar(100), _DLTIME").append(" INTEGER)");
            x.c(sb.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new String[0]);
            sb.setLength(0);
            sb.append("CREATE TABLE IF NOT EXISTS ge_1002").append(" (_id").append(" integer primary key autoincrement, _time").append(" INTEGER, _datas").append(" blob)");
            x.c(sb.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new String[0]);
            sb.setLength(0);
            sb.append(" CREATE TABLE IF NOT EXISTS st_1002").append(" ( _id").append(" integer").append(" , _tp").append(" text").append(" , _tm").append(" int").append(" , _dt").append(" blob").append(",primary key(_id").append(",_tp").append(" )) ");
            x.c(sb.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb.toString(), new String[0]);
        } catch (Throwable th) {
            if (!x.b(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        if (this.d != null) {
            for (a onDbCreate : this.d) {
                try {
                    onDbCreate.onDbCreate(sQLiteDatabase);
                } catch (Throwable th2) {
                    if (!x.b(th2)) {
                        ThrowableExtension.printStackTrace(th2);
                    }
                }
            }
        }
    }

    private synchronized boolean a(SQLiteDatabase sQLiteDatabase) {
        boolean z = true;
        synchronized (this) {
            try {
                String[] strArr = {"t_lr", "t_ui", "t_pf"};
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + strArr[i], new String[0]);
                }
            } catch (Throwable th) {
                if (!x.b(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
                z = false;
            }
        }
        return z;
    }

    public final synchronized void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        x.d("[Database] Upgrade %d to %d , drop tables!", Integer.valueOf(i), Integer.valueOf(i2));
        if (this.d != null) {
            for (a onDbUpgrade : this.d) {
                try {
                    onDbUpgrade.onDbUpgrade(sQLiteDatabase, i, i2);
                } catch (Throwable th) {
                    if (!x.b(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
            }
        }
        if (a(sQLiteDatabase)) {
            onCreate(sQLiteDatabase);
        } else {
            x.d("[Database] Failed to drop, delete db.", new Object[0]);
            File databasePath = this.c.getDatabasePath(a);
            if (databasePath != null && databasePath.canWrite()) {
                databasePath.delete();
            }
        }
    }

    @TargetApi(11)
    public final synchronized void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (b.c() >= 11) {
            x.d("[Database] Downgrade %d to %d drop tables.", Integer.valueOf(i), Integer.valueOf(i2));
            if (this.d != null) {
                for (a onDbDowngrade : this.d) {
                    try {
                        onDbDowngrade.onDbDowngrade(sQLiteDatabase, i, i2);
                    } catch (Throwable th) {
                        if (!x.b(th)) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                }
            }
            if (a(sQLiteDatabase)) {
                onCreate(sQLiteDatabase);
            } else {
                x.d("[Database] Failed to drop, delete db.", new Object[0]);
                File databasePath = this.c.getDatabasePath(a);
                if (databasePath != null && databasePath.canWrite()) {
                    databasePath.delete();
                }
            }
        }
    }

    public final synchronized SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        int i = 0;
        synchronized (this) {
            sQLiteDatabase = null;
            while (sQLiteDatabase == null && i < 5) {
                i++;
                try {
                    sQLiteDatabase = super.getReadableDatabase();
                } catch (Throwable th) {
                    x.d("[Database] Try to get db(count: %d).", Integer.valueOf(i));
                    if (i == 5) {
                        x.e("[Database] Failed to get db.", new Object[0]);
                    }
                    try {
                        Thread.sleep(200);
                    } catch (InterruptedException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            }
        }
        return sQLiteDatabase;
    }

    public final synchronized SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        int i = 0;
        synchronized (this) {
            sQLiteDatabase = null;
            while (sQLiteDatabase == null && i < 5) {
                i++;
                try {
                    sQLiteDatabase = super.getWritableDatabase();
                } catch (Throwable th) {
                    x.d("[Database] Try to get db(count: %d).", Integer.valueOf(i));
                    if (i == 5) {
                        x.e("[Database] Failed to get db.", new Object[0]);
                    }
                    try {
                        Thread.sleep(200);
                    } catch (InterruptedException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            }
            if (sQLiteDatabase == null) {
                x.d("[Database] db error delay error record 1min.", new Object[0]);
            }
        }
        return sQLiteDatabase;
    }
}
