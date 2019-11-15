package com.mi.mimsgsdk.database;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.util.ArrayList;

public class ChatMessageDbOpenHelper extends BaseSQLiteOpenHelper {
    private static final String[] COLUMNS_GROUP_CALL_MESSAGE = {IMessageDao._ID, "appid", IMessageDao.FROM_GUID, IMessageDao.TO_GUID, IMessageDao.MSG_SEQ, IMessageDao.MSG_ID, IMessageDao.SENT_TIME, IMessageDao.BODY, IMessageDao.USER_ID};
    private static final String[] COLUMNS_SINGLE_CALL_MESSAGE = {IMessageDao._ID, "appid", IMessageDao.FROM_GUID, IMessageDao.TO_GUID, IMessageDao.MSG_SEQ, IMessageDao.MSG_ID, IMessageDao.SENT_TIME, IMessageDao.BODY, IMessageDao.USER_ID};
    private static final String DATABASE_NAME = "MiMsgSDK.db";
    private static int DATABASE_VERSION = 1;
    private static final String[] TABLE_GROUP_CALL_COLUMNS_DEFINITION = {"appid", DBConstants.TEXT, IMessageDao.FROM_GUID, DBConstants.TEXT, IMessageDao.TO_GUID, DBConstants.TEXT, IMessageDao.MSG_SEQ, DBConstants.ZERO_BASED_LONG, IMessageDao.MSG_ID, DBConstants.ZERO_BASED_INTEGER, IMessageDao.SENT_TIME, DBConstants.ZERO_BASED_LONG, IMessageDao.BODY, DBConstants.BLOB, IMessageDao.USER_ID, DBConstants.TEXT};
    private static final String TABLE_GROUP_CALL_MESSAGE = "group_call_message";
    private static final String[] TABLE_SINGLE_CALL_COLUMNS_DEFINITION = {"appid", DBConstants.TEXT, IMessageDao.FROM_GUID, DBConstants.TEXT, IMessageDao.TO_GUID, DBConstants.TEXT, IMessageDao.MSG_SEQ, DBConstants.ZERO_BASED_LONG, IMessageDao.MSG_ID, DBConstants.ZERO_BASED_INTEGER, IMessageDao.SENT_TIME, DBConstants.ZERO_BASED_LONG, IMessageDao.BODY, DBConstants.BLOB, IMessageDao.USER_ID, DBConstants.TEXT};
    private static final String TABLE_SINGLE_CALL_MESSAGE = "single_call_message";
    private static final String TAG = "ChatMessageDbOpenHelper";
    private static Context sContext;
    private static ChatMessageDbOpenHelper sInstance;

    public static void setContext(Context context) {
        sContext = context;
    }

    public static ChatMessageDbOpenHelper getInstance() {
        if (sInstance == null) {
            if (sContext != null) {
                sInstance = new ChatMessageDbOpenHelper(sContext);
            } else {
                Log.e(TAG, "sContext is null in getInstance()");
            }
        }
        return sInstance;
    }

    private ChatMessageDbOpenHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    public static String getSingleCallMessageTableName() {
        return TABLE_SINGLE_CALL_MESSAGE;
    }

    public static String[] getSingleCallMessageTableColumns() {
        return COLUMNS_SINGLE_CALL_MESSAGE;
    }

    public static String getGroupCallMessageTableName() {
        return TABLE_GROUP_CALL_MESSAGE;
    }

    public static String[] getGroupCallMessageTableColumns() {
        return COLUMNS_GROUP_CALL_MESSAGE;
    }

    public String getDatabaseName() {
        return DATABASE_NAME;
    }

    public ArrayList<String> getAllTablesName() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(TABLE_SINGLE_CALL_MESSAGE);
        arrayList.add(TABLE_GROUP_CALL_MESSAGE);
        return arrayList;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        createSingleCallMessageTable(sQLiteDatabase);
        createGroupCallMessageTable(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private void createSingleCallMessageTable(SQLiteDatabase sQLiteDatabase) {
        synchronized (getDatabaseLockObject()) {
            try {
                sQLiteDatabase.beginTransaction();
                DBUtils.safeCreateTable(sQLiteDatabase, TABLE_SINGLE_CALL_MESSAGE, TABLE_SINGLE_CALL_COLUMNS_DEFINITION);
                DBUtils.safeExecuteSQL(sQLiteDatabase, "CREATE INDEX IF NOT EXISTS SINGLE_INDEX_SENT_TIME ON single_call_message(sent_time)");
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (SQLException e) {
                Log.e(TAG, "error in createSingleCallMessageTable(), the exception code is: " + e);
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        }
    }

    private void createGroupCallMessageTable(SQLiteDatabase sQLiteDatabase) {
        synchronized (getDatabaseLockObject()) {
            try {
                sQLiteDatabase.beginTransaction();
                DBUtils.safeCreateTable(sQLiteDatabase, TABLE_GROUP_CALL_MESSAGE, TABLE_GROUP_CALL_COLUMNS_DEFINITION);
                DBUtils.safeExecuteSQL(sQLiteDatabase, "CREATE INDEX IF NOT EXISTS SINGLE_INDEX_SENT_TIME ON single_call_message(sent_time)");
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (SQLException e) {
                Log.e(TAG, "error in createSingleCallMessageTable(), the exception code is: " + e);
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        }
    }
}
