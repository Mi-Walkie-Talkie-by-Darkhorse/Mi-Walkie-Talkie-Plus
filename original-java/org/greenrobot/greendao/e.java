package org.greenrobot.greendao;

import android.database.Cursor;
import java.util.List;

/* compiled from: InternalQueryDaoAccess */
public final class e<T> {
    private final a<T, ?> a;

    public e(a<T, ?> aVar) {
        this.a = aVar;
    }

    public List<T> a(Cursor cursor) {
        return this.a.loadAllAndCloseCursor(cursor);
    }

    public T b(Cursor cursor) {
        return this.a.loadUniqueAndCloseCursor(cursor);
    }
}
