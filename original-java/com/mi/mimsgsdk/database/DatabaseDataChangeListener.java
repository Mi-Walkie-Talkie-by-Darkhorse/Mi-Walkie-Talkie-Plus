package com.mi.mimsgsdk.database;

import java.util.HashSet;

public interface DatabaseDataChangeListener {
    public static final int DATA_CHANGE_ADDED = 1;
    public static final int DATA_CHANGE_ADDED_OR_UPDATED = 4;
    public static final int DATA_CHANGE_DELETED = 3;
    public static final int DATA_CHANGE_UPDATED = 2;

    void onDatabaseDataChanged(int i, HashSet<String> hashSet);
}
