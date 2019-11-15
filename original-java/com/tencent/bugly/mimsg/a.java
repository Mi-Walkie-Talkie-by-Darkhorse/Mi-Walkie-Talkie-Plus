package com.tencent.bugly.mimsg;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.mimsg.proguard.x;

/* compiled from: BUGLY */
public abstract class a {
    public int id;
    public String moduleName;
    public String version;
    public String versionKey;

    public abstract String[] getTables();

    public abstract void init(Context context, boolean z, BuglyStrategy buglyStrategy);

    public void onDbCreate(SQLiteDatabase sQLiteDatabase) {
    }

    public void onDbUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            if (getTables() != null) {
                String[] tables = getTables();
                int length = tables.length;
                for (int i3 = 0; i3 < length; i3++) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + tables[i3]);
                }
                onDbCreate(sQLiteDatabase);
            }
        } catch (Throwable th) {
            if (!x.b(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void onDbDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            if (getTables() != null) {
                String[] tables = getTables();
                int length = tables.length;
                for (int i3 = 0; i3 < length; i3++) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + tables[i3]);
                }
                onDbCreate(sQLiteDatabase);
            }
        } catch (Throwable th) {
            if (!x.b(th)) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void onServerStrategyChanged(StrategyBean strategyBean) {
    }
}
