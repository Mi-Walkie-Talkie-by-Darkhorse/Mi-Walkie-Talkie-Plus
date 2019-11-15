package com.mi.mimsgsdk.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public abstract class AbstractDaoImpl extends Dao<ContentValuesable> implements BaseColumns {
    public static final String CRITERIA_ID = "_id=?";
    protected final List<DatabaseDataChangeListener> mDataChangeListenerList = new ArrayList();

    public abstract SQLiteDatabase getReadableDatabase();

    public abstract String getTableName();

    public abstract SQLiteDatabase getWritableDatabase();

    protected AbstractDaoImpl() {
    }

    /* access modifiers changed from: protected */
    public int delete(String str, String[] strArr) {
        int delete = getWritableDatabase().delete(getTableName(), str, strArr);
        if (delete > 0) {
            notifyDatabaseDataChangeListeners(3, null);
        }
        return delete;
    }

    public int delete(ContentValuesable contentValuesable) {
        int i = 0;
        if (contentValuesable != null) {
            ContentValues contentValues = contentValuesable.toContentValues();
            if (contentValues != null && contentValues.containsKey("_id")) {
                String asString = contentValues.getAsString("_id");
                i = getWritableDatabase().delete(getTableName(), CRITERIA_ID, new String[]{asString});
                if (i > 0) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(asString);
                    notifyDatabaseDataChangeListeners(3, hashSet);
                }
            }
        }
        return i;
    }

    public long insert(ContentValues contentValues) {
        if (contentValues != null) {
            ArrayList arrayList = new ArrayList();
            bulkInsert(new ContentValues[]{contentValues}, (List<Object>) arrayList);
            if (arrayList.size() == 1 && (arrayList.get(0) instanceof ArrayList)) {
                ArrayList arrayList2 = (ArrayList) arrayList.get(0);
                if (arrayList2.isEmpty()) {
                    return 0;
                }
                return ((Long) arrayList2.get(0)).longValue();
            }
        }
        return 0;
    }

    public long insert(ContentValuesable contentValuesable) {
        if (contentValuesable != null) {
            return insert(contentValuesable.toContentValues());
        }
        return 0;
    }

    public int bulkInsert(List<? extends ContentValuesable> list) {
        return bulkInsert(list, null);
    }

    public int bulkInsert(List<? extends ContentValuesable> list, List<Object> list2) {
        int i = 0;
        if (list == null || list.isEmpty()) {
            return 0;
        }
        ContentValues[] contentValuesArr = new ContentValues[list.size()];
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return bulkInsert(contentValuesArr, null);
            }
            contentValuesArr[i2] = ((ContentValuesable) list.get(i2)).toContentValues();
            i = i2 + 1;
        }
    }

    /* access modifiers changed from: protected */
    public int bulkInsert(ContentValues[] contentValuesArr, List<Object> list) {
        int i = 0;
        if (contentValuesArr != null && contentValuesArr.length > 0) {
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                for (ContentValues insert : contentValuesArr) {
                    long j = -1;
                    try {
                        j = writableDatabase.insert(getTableName(), null, insert);
                    } catch (SQLException e) {
                    }
                    if (j > 0) {
                        i++;
                        hashSet.add(String.valueOf(j));
                    }
                    arrayList.add(Long.valueOf(j));
                }
                writableDatabase.setTransactionSuccessful();
                if (list != null) {
                    list.add(arrayList);
                }
                if (i > 0) {
                    notifyDatabaseDataChangeListeners(1, hashSet);
                }
            } finally {
                writableDatabase.endTransaction();
            }
        }
        return i;
    }

    public Cursor query(String[] strArr, String str, String[] strArr2, String str2) {
        return getReadableDatabase().query(getTableName(), strArr, str, strArr2, null, null, str2);
    }

    public Cursor query(String[] strArr, String str, String[] strArr2, String str2, String str3) {
        return getReadableDatabase().query(getTableName(), strArr, str, strArr2, str2, null, str3);
    }

    public Cursor query(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4) {
        return getReadableDatabase().query(getTableName(), strArr, str, strArr2, str2, str3, str4);
    }

    /* access modifiers changed from: protected */
    public int update(ContentValues contentValues, String str, String[] strArr) {
        int update = getWritableDatabase().update(getTableName(), contentValues, str, strArr);
        if (update > 0) {
            notifyDatabaseDataChangeListeners(2, null);
        }
        return update;
    }

    public int update(ContentValuesable contentValuesable) {
        int i = 0;
        if (contentValuesable != null) {
            ContentValues contentValues = contentValuesable.toContentValues();
            if (contentValues != null && contentValues.containsKey("_id")) {
                String asString = contentValues.getAsString("_id");
                i = getWritableDatabase().update(getTableName(), contentValues, CRITERIA_ID, new String[]{asString});
                if (i > 0) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(asString);
                    notifyDatabaseDataChangeListeners(2, hashSet);
                }
            }
        }
        return i;
    }

    public void notifyDatabaseDataChangeListeners(int i, HashSet<String> hashSet) {
        synchronized (this.mDataChangeListenerList) {
            for (DatabaseDataChangeListener onDatabaseDataChanged : this.mDataChangeListenerList) {
                onDatabaseDataChanged.onDatabaseDataChanged(i, hashSet);
            }
        }
    }

    public void addDatabaseDataChangeListener(DatabaseDataChangeListener databaseDataChangeListener) {
        if (databaseDataChangeListener != null) {
            synchronized (this.mDataChangeListenerList) {
                this.mDataChangeListenerList.add(databaseDataChangeListener);
            }
        }
    }

    public void removeDatabaseDataChangeListener(DatabaseDataChangeListener databaseDataChangeListener) {
        if (databaseDataChangeListener != null) {
            synchronized (this.mDataChangeListenerList) {
                this.mDataChangeListenerList.remove(databaseDataChangeListener);
            }
        }
    }

    public long getMaxId() {
        Cursor cursor = null;
        try {
            Cursor query = query(new String[]{"_id"}, null, null, "_id DESC LIMIT 1");
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        long j = query.getLong(0);
                        if (query == null) {
                            return j;
                        }
                        query.close();
                        return j;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return 0;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
