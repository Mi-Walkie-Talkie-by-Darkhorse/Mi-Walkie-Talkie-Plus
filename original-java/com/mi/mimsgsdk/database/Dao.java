package com.mi.mimsgsdk.database;

import android.content.ContentValues;
import android.database.Cursor;
import com.mi.mimsgsdk.database.ContentValuesable;
import java.util.List;

public abstract class Dao<T extends ContentValuesable> {
    /* access modifiers changed from: protected */
    public abstract int bulkInsert(ContentValues[] contentValuesArr, List<Object> list);

    public abstract int delete(T t);

    /* access modifiers changed from: protected */
    public abstract int delete(String str, String[] strArr);

    public abstract long insert(T t);

    public abstract Cursor query(String[] strArr, String str, String[] strArr2, String str2);

    public abstract Cursor query(String[] strArr, String str, String[] strArr2, String str2, String str3);

    public abstract Cursor query(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4);

    /* access modifiers changed from: protected */
    public abstract int update(ContentValues contentValues, String str, String[] strArr);

    public abstract int update(T t);
}
