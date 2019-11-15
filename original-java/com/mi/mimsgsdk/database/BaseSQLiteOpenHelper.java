package com.mi.mimsgsdk.database;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class BaseSQLiteOpenHelper extends SQLiteOpenHelper {
    private static final String TAG = "BaseSQLiteOpenHelper";
    private final Object mDatabaseLock = new Object();

    public abstract ArrayList<String> getAllTablesName();

    public abstract String getDatabaseName();

    protected BaseSQLiteOpenHelper(Context context, String str, CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    protected BaseSQLiteOpenHelper(Context context, String str, CursorFactory cursorFactory, int i, DatabaseErrorHandler databaseErrorHandler) {
        super(context, str, cursorFactory, i, databaseErrorHandler);
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.e(TAG, "onDowngrade");
    }

    public Object getDatabaseLockObject() {
        return this.mDatabaseLock;
    }

    public void dropAllTables() {
        synchronized (getDatabaseLockObject()) {
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            try {
                dropAllTables(writableDatabase);
                onCreate(writableDatabase);
                writableDatabase.close();
            } catch (Throwable th) {
                writableDatabase.close();
                throw th;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void dropAllTables(SQLiteDatabase sQLiteDatabase) {
        ArrayList allTablesName = getAllTablesName();
        if (allTablesName != null && !allTablesName.isEmpty()) {
            try {
                sQLiteDatabase.beginTransaction();
                Iterator it = allTablesName.iterator();
                while (it.hasNext()) {
                    sQLiteDatabase.execSQL(DBConstants.DROP_TABLE_SQL + ((String) it.next()));
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (SQLException e) {
                Log.e(TAG, "error in dropAllTables(), exception code is: " + e);
                throw e;
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        }
    }
}
