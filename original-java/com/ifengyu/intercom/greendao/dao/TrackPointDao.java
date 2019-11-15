package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.intercom.greendao.bean.c;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.f;

public class TrackPointDao extends a<c, Long> {
    public static final String TABLENAME = "TRACK_POINT";

    public static class Properties {
        public static final f a = new f(0, Long.class, "id", true, "_id");
        public static final f b = new f(1, String.class, "trackID", false, "TRACK_ID");
        public static final f c = new f(2, Integer.class, "latitude", false, "LATITUDE");
        public static final f d = new f(3, Integer.class, "longitude", false, "LONGITUDE");
        public static final f e = new f(4, Integer.class, "altitude", false, "ALTITUDE");
        public static final f f = new f(5, Integer.class, "currentDistance", false, "CURRENT_DISTANCE");
        public static final f g = new f(6, Integer.class, "currentTime", false, "CURRENT_TIME");
        public static final f h = new f(7, Boolean.TYPE, "isPausedPoint", false, "IS_PAUSED_POINT");
    }

    public TrackPointDao(org.greenrobot.greendao.b.a aVar, b bVar) {
        super(aVar, bVar);
    }

    public static void a(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"TRACK_POINT\" (\"_id\" INTEGER PRIMARY KEY ,\"TRACK_ID\" TEXT,\"LATITUDE\" INTEGER,\"LONGITUDE\" INTEGER,\"ALTITUDE\" INTEGER,\"CURRENT_DISTANCE\" INTEGER,\"CURRENT_TIME\" INTEGER,\"IS_PAUSED_POINT\" INTEGER NOT NULL );");
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(org.greenrobot.greendao.a.c cVar, c cVar2) {
        cVar.d();
        Long a = cVar2.a();
        if (a != null) {
            cVar.a(1, a.longValue());
        }
        String b = cVar2.b();
        if (b != null) {
            cVar.a(2, b);
        }
        Integer c = cVar2.c();
        if (c != null) {
            cVar.a(3, (long) c.intValue());
        }
        Integer d = cVar2.d();
        if (d != null) {
            cVar.a(4, (long) d.intValue());
        }
        Integer e = cVar2.e();
        if (e != null) {
            cVar.a(5, (long) e.intValue());
        }
        Integer f = cVar2.f();
        if (f != null) {
            cVar.a(6, (long) f.intValue());
        }
        Integer g = cVar2.g();
        if (g != null) {
            cVar.a(7, (long) g.intValue());
        }
        cVar.a(8, cVar2.h() ? 1 : 0);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, c cVar) {
        sQLiteStatement.clearBindings();
        Long a = cVar.a();
        if (a != null) {
            sQLiteStatement.bindLong(1, a.longValue());
        }
        String b = cVar.b();
        if (b != null) {
            sQLiteStatement.bindString(2, b);
        }
        Integer c = cVar.c();
        if (c != null) {
            sQLiteStatement.bindLong(3, (long) c.intValue());
        }
        Integer d = cVar.d();
        if (d != null) {
            sQLiteStatement.bindLong(4, (long) d.intValue());
        }
        Integer e = cVar.e();
        if (e != null) {
            sQLiteStatement.bindLong(5, (long) e.intValue());
        }
        Integer f = cVar.f();
        if (f != null) {
            sQLiteStatement.bindLong(6, (long) f.intValue());
        }
        Integer g = cVar.g();
        if (g != null) {
            sQLiteStatement.bindLong(7, (long) g.intValue());
        }
        sQLiteStatement.bindLong(8, cVar.h() ? 1 : 0);
    }

    /* renamed from: a */
    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    /* renamed from: b */
    public c readEntity(Cursor cursor, int i) {
        Integer num = null;
        Long valueOf = cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0));
        String string = cursor.isNull(i + 1) ? null : cursor.getString(i + 1);
        Integer valueOf2 = cursor.isNull(i + 2) ? null : Integer.valueOf(cursor.getInt(i + 2));
        Integer valueOf3 = cursor.isNull(i + 3) ? null : Integer.valueOf(cursor.getInt(i + 3));
        Integer valueOf4 = cursor.isNull(i + 4) ? null : Integer.valueOf(cursor.getInt(i + 4));
        Integer valueOf5 = cursor.isNull(i + 5) ? null : Integer.valueOf(cursor.getInt(i + 5));
        if (!cursor.isNull(i + 6)) {
            num = Integer.valueOf(cursor.getInt(i + 6));
        }
        return new c(valueOf, string, valueOf2, valueOf3, valueOf4, valueOf5, num, cursor.getShort(i + 7) != 0);
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, c cVar, int i) {
        Integer num = null;
        cVar.a(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        cVar.a(cursor.isNull(i + 1) ? null : cursor.getString(i + 1));
        cVar.a(cursor.isNull(i + 2) ? null : Integer.valueOf(cursor.getInt(i + 2)));
        cVar.b(cursor.isNull(i + 3) ? null : Integer.valueOf(cursor.getInt(i + 3)));
        cVar.c(cursor.isNull(i + 4) ? null : Integer.valueOf(cursor.getInt(i + 4)));
        cVar.d(cursor.isNull(i + 5) ? null : Integer.valueOf(cursor.getInt(i + 5)));
        if (!cursor.isNull(i + 6)) {
            num = Integer.valueOf(cursor.getInt(i + 6));
        }
        cVar.e(num);
        cVar.a(cursor.getShort(i + 7) != 0);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(c cVar, long j) {
        cVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(c cVar) {
        if (cVar != null) {
            return cVar.a();
        }
        return null;
    }

    /* renamed from: b */
    public boolean hasKey(c cVar) {
        return cVar.a() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
