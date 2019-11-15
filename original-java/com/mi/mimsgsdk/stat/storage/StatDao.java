package com.mi.mimsgsdk.stat.storage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

public class StatDao {
    private static final String FIELDS = "JSON_DATA, RETRY_TIMES, LAST_SEND_TIME";
    private static final String FULL_FIELDS = "_id, JSON_DATA, RETRY_TIMES, LAST_SEND_TIME";
    private static final int INIT_RETRY_TIMES = -1;
    private static final String SQL_CREATE_TABLE_STAT = "CREATE TABLE IF NOT EXISTS 'stat' ('_id' INTEGER PRIMARY KEY AUTOINCREMENT ,'JSON_DATA' TEXT,'RETRY_TIMES' INTEGER,'LAST_SEND_TIME' INTEGER);";
    private static final String SQL_DELETE_ROW = "DELETE FROM stat WHERE _id = ?";
    private static final String SQL_INSERT_NEW = "INSERT INTO stat (JSON_DATA, RETRY_TIMES, LAST_SEND_TIME) VALUES(?,?,?)";
    private static final String SQL_SELECT_FAILED_ROWS = "SELECT _id, JSON_DATA, RETRY_TIMES, LAST_SEND_TIME FROM stat WHERE RETRY_TIMES >= ? AND RETRY_TIMES < ? AND LAST_SEND_TIME + ? <= ?";
    private static final String SQL_SELECT_LAST_ROW_ID = "SELECT last_insert_rowid() FROM stat";
    private static final String SQL_UPDATE_RETRY_TIMES = "UPDATE stat SET RETRY_TIMES = RETRY_TIMES + 1 WHERE _id = ?";
    private static final String TABLE_NAME = "stat";
    private static final String TAG = StatDao.class.getSimpleName();

    private static class StatDaoHolder {
        static StatDao holder = new StatDao();

        private StatDaoHolder() {
        }
    }

    public static class StatEntity {
        /* access modifiers changed from: private */
        public int id;
        /* access modifiers changed from: private */
        public String jsonData;
        /* access modifiers changed from: private */
        public long lastSendTime;
        /* access modifiers changed from: private */
        public int retryTimes;

        public int getId() {
            return this.id;
        }

        public void setId(int i) {
            this.id = i;
        }

        public String getJsonData() {
            return this.jsonData;
        }

        public void setJsonData(String str) {
            this.jsonData = str;
        }

        public int getRetryTimes() {
            return this.retryTimes;
        }

        public void setRetryTimes(int i) {
            this.retryTimes = i;
        }

        public long getLastSendTime() {
            return this.lastSendTime;
        }

        public void setLastSendTime(long j) {
            this.lastSendTime = j;
        }
    }

    public static void createTable(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(SQL_CREATE_TABLE_STAT);
    }

    public static StatDao getInstance() {
        return StatDaoHolder.holder;
    }

    /* JADX INFO: finally extract failed */
    public int addNew(String str) {
        Cursor cursor = null;
        int i = -1;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.execSQL(SQL_INSERT_NEW, new Object[]{str, Integer.valueOf(-1), Long.valueOf(System.currentTimeMillis())});
            Cursor rawQuery = writableDatabase.rawQuery(SQL_SELECT_LAST_ROW_ID, null);
            if (rawQuery.moveToFirst()) {
                i = rawQuery.getInt(0);
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return i;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void remove(int i) {
        getWritableDatabase().execSQL(SQL_DELETE_ROW, new Object[]{Integer.valueOf(i)});
    }

    public void addRetryTimes(int i) {
        getWritableDatabase().execSQL(SQL_UPDATE_RETRY_TIMES, new Object[]{Integer.valueOf(i)});
    }

    /* JADX INFO: finally extract failed */
    @NonNull
    public List<StatEntity> getFailedRows(int i, long j) {
        Cursor cursor = null;
        try {
            Cursor rawQuery = getReadableDatabase().rawQuery(SQL_SELECT_FAILED_ROWS, new String[]{String.valueOf(-1), String.valueOf(i), String.valueOf(j), String.valueOf(System.currentTimeMillis())});
            ArrayList arrayList = new ArrayList();
            while (rawQuery.moveToNext()) {
                StatEntity statEntity = new StatEntity();
                statEntity.id = rawQuery.getInt(0);
                statEntity.jsonData = rawQuery.getString(1);
                statEntity.retryTimes = rawQuery.getInt(2);
                statEntity.lastSendTime = rawQuery.getLong(3);
                arrayList.add(statEntity);
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private SQLiteDatabase getWritableDatabase() {
        return DBOpenHelper.getInstance().getWritableDatabase();
    }

    private SQLiteDatabase getReadableDatabase() {
        return DBOpenHelper.getInstance().getReadableDatabase();
    }
}
