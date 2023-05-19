package com.xiaomi.push.providers;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.analytics.pro.UMCommonContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;

/* renamed from: com.xiaomi.push.providers.a */
/* loaded from: classes2.dex */
public class C6311a extends SQLiteOpenHelper {

    /* renamed from: a */
    private static int f22842a = 1;

    /* renamed from: a */
    public static final Object f22843a = new Object();

    /* renamed from: a */
    private static final String[] f22844a = {"package_name", "TEXT", "message_ts", " LONG DEFAULT 0 ", "bytes", " LONG DEFAULT 0 ", UMCommonContent.f19339T, " INT DEFAULT -1 ", "rcv", " INT DEFAULT -1 ", "imsi", "TEXT"};

    public C6311a(Context context) {
        super(context, "traffic.db", (SQLiteDatabase.CursorFactory) null, f22842a);
    }

    /* renamed from: a */
    private void m1823a(SQLiteDatabase sQLiteDatabase) {
        StringBuilder sb = new StringBuilder("CREATE TABLE traffic(_id INTEGER  PRIMARY KEY ,");
        int i = 0;
        while (true) {
            String[] strArr = f22844a;
            if (i >= strArr.length - 1) {
                sb.append(");");
                sQLiteDatabase.execSQL(sb.toString());
                return;
            }
            if (i != 0) {
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            sb.append(strArr[i]);
            sb.append(" ");
            sb.append(strArr[i + 1]);
            i += 2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        synchronized (f22843a) {
            try {
                m1823a(sQLiteDatabase);
            } catch (SQLException e) {
                AbstractC5876b.m4143a(e);
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
