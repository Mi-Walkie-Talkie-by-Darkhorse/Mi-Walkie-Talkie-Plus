package com.ifengyu.intercom.greendao.bean;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.umeng.analytics.pro.am;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.DatabaseStatement;

/* loaded from: classes.dex */
public class TrackPointDao extends AbstractDao<c, Long> {
    public static final String TABLENAME = "TRACK_POINT";

    /* loaded from: classes.dex */
    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, am.d);
        public static final Property TrackID = new Property(1, String.class, "trackID", false, "TRACK_ID");
        public static final Property Latitude = new Property(2, Integer.class, "latitude", false, "LATITUDE");
        public static final Property Longitude = new Property(3, Integer.class, "longitude", false, "LONGITUDE");
        public static final Property Altitude = new Property(4, Integer.class, "altitude", false, "ALTITUDE");
        public static final Property CurrentDistance = new Property(5, Integer.class, "currentDistance", false, "CURRENT_DISTANCE");
        public static final Property CurrentTime = new Property(6, Integer.class, "currentTime", false, "CURRENT_TIME");
        public static final Property IsPausedPoint = new Property(7, Boolean.TYPE, "isPausedPoint", false, "IS_PAUSED_POINT");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(DatabaseStatement databaseStatement, c cVar) {
        databaseStatement.clearBindings();
        Long d = cVar.d();
        if (d != null) {
            databaseStatement.bindLong(1, d.longValue());
        }
        String h = cVar.h();
        if (h != null) {
            databaseStatement.bindString(2, h);
        }
        Integer f = cVar.f();
        if (f != null) {
            databaseStatement.bindLong(3, f.intValue());
        }
        Integer g = cVar.g();
        if (g != null) {
            databaseStatement.bindLong(4, g.intValue());
        }
        Integer a2 = cVar.a();
        if (a2 != null) {
            databaseStatement.bindLong(5, a2.intValue());
        }
        Integer b2 = cVar.b();
        if (b2 != null) {
            databaseStatement.bindLong(6, b2.intValue());
        }
        Integer c2 = cVar.c();
        if (c2 != null) {
            databaseStatement.bindLong(7, c2.intValue());
        }
        databaseStatement.bindLong(8, cVar.e() ? 1L : 0L);
    }

    /* renamed from: b */
    public boolean hasKey(c cVar) {
        return cVar.d() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public Long readKey(Cursor cursor, int i) {
        int i2 = i + 0;
        if (cursor.isNull(i2)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i2));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    public c readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long valueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 2;
        Integer valueOf2 = cursor.isNull(i4) ? null : Integer.valueOf(cursor.getInt(i4));
        int i5 = i + 3;
        Integer valueOf3 = cursor.isNull(i5) ? null : Integer.valueOf(cursor.getInt(i5));
        int i6 = i + 4;
        Integer valueOf4 = cursor.isNull(i6) ? null : Integer.valueOf(cursor.getInt(i6));
        int i7 = i + 5;
        Integer valueOf5 = cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7));
        int i8 = i + 6;
        return new c(valueOf, string, valueOf2, valueOf3, valueOf4, valueOf5, cursor.isNull(i8) ? null : Integer.valueOf(cursor.getInt(i8)), cursor.getShort(i + 7) != 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, c cVar) {
        sQLiteStatement.clearBindings();
        Long d = cVar.d();
        if (d != null) {
            sQLiteStatement.bindLong(1, d.longValue());
        }
        String h = cVar.h();
        if (h != null) {
            sQLiteStatement.bindString(2, h);
        }
        Integer f = cVar.f();
        if (f != null) {
            sQLiteStatement.bindLong(3, f.intValue());
        }
        Integer g = cVar.g();
        if (g != null) {
            sQLiteStatement.bindLong(4, g.intValue());
        }
        Integer a2 = cVar.a();
        if (a2 != null) {
            sQLiteStatement.bindLong(5, a2.intValue());
        }
        Integer b2 = cVar.b();
        if (b2 != null) {
            sQLiteStatement.bindLong(6, b2.intValue());
        }
        Integer c2 = cVar.c();
        if (c2 != null) {
            sQLiteStatement.bindLong(7, c2.intValue());
        }
        sQLiteStatement.bindLong(8, cVar.e() ? 1L : 0L);
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, c cVar, int i) {
        int i2 = i + 0;
        Integer num = null;
        cVar.a(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        cVar.a(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        cVar.d(cursor.isNull(i4) ? null : Integer.valueOf(cursor.getInt(i4)));
        int i5 = i + 3;
        cVar.e(cursor.isNull(i5) ? null : Integer.valueOf(cursor.getInt(i5)));
        int i6 = i + 4;
        cVar.a(cursor.isNull(i6) ? null : Integer.valueOf(cursor.getInt(i6)));
        int i7 = i + 5;
        cVar.b(cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7)));
        int i8 = i + 6;
        if (!cursor.isNull(i8)) {
            num = Integer.valueOf(cursor.getInt(i8));
        }
        cVar.c(num);
        cVar.a(cursor.getShort(i + 7) != 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(c cVar, long j) {
        cVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(c cVar) {
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }
}
