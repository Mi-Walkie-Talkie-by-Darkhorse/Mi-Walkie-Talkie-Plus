package com.mi.mimsgsdk.database;

import android.content.ContentValues;

public interface ContentValuesable {
    ContentValues toContentValues();

    void updateByContentValues(ContentValues contentValues);
}
