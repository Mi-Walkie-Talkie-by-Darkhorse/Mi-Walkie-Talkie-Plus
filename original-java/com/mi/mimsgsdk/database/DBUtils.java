package com.mi.mimsgsdk.database;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.mipush.sdk.Constants;

public abstract class DBUtils {
    private static final String TAG = "DBUtils";

    public static void createVirtualTableUsingFTS4(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(DBConstants.CREATE_VIRTUAL_TABLE);
        sb.append(str);
        sb.append(DBConstants.USING_FTS4);
        sb.append("(");
        for (int i = 0; i < strArr.length - 1; i += 2) {
            if (i != 0) {
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            sb.append(strArr[i] + Token.SEPARATOR + strArr[i + 1]);
        }
        sb.append(");");
        sQLiteDatabase.execSQL(sb.toString());
    }

    public static void createTable(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(DBConstants.CREATE_TABLE);
        sb.append(str);
        sb.append("(");
        sb.append("_id");
        sb.append(DBConstants.INTEGER_PRIMARY_KEY);
        sb.append(", ");
        for (int i = 0; i < strArr.length - 1; i += 2) {
            if (i != 0) {
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            sb.append(strArr[i] + Token.SEPARATOR + strArr[i + 1]);
        }
        sb.append(");");
        sQLiteDatabase.execSQL(sb.toString());
    }

    public static void createTable(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String[] strArr2) {
        StringBuilder sb = new StringBuilder();
        sb.append(DBConstants.CREATE_TABLE);
        sb.append(str);
        sb.append("(");
        sb.append("_id");
        sb.append(" INTEGER ");
        sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
        for (int i = 0; i < strArr.length - 1; i += 2) {
            if (i != 0) {
                sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            sb.append(strArr[i] + Token.SEPARATOR + strArr[i + 1]);
        }
        sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(DBConstants.PRIMARY_KEY).append("(");
        if (strArr2 != null) {
            for (int i2 = 0; i2 < strArr2.length; i2++) {
                if (i2 != 0) {
                    sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                }
                sb.append(strArr2[i2]);
            }
        } else {
            sb.append("_id");
        }
        sb.append("));");
        sQLiteDatabase.execSQL(sb.toString());
    }

    public static void safeExecuteSQL(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.execSQL(str);
        } catch (SQLException e) {
        }
    }

    public static void safeCreateTable(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        try {
            createTable(sQLiteDatabase, str, strArr);
        } catch (SQLException e) {
            Log.e(TAG, "error in safeCreateTable, the exception code is: " + e);
        }
    }

    public static void safeCreateTable(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String[] strArr2) {
        try {
            createTable(sQLiteDatabase, str, strArr, strArr2);
        } catch (SQLException e) {
        }
    }

    public static void safeAddColumn(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(DBConstants.ALTER_TABLE).append(str).append(DBConstants.ADD_COLUMN).append(str2).append(Token.SEPARATOR).append(str3);
        safeExecuteSQL(sQLiteDatabase, sb.toString());
    }

    public static void safeDropColumn(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(DBConstants.ALTER_TABLE).append(str).append(DBConstants.DROP_COLUMN).append(str2);
        safeExecuteSQL(sQLiteDatabase, sb.toString());
    }

    public static void clearDBData() {
    }
}
