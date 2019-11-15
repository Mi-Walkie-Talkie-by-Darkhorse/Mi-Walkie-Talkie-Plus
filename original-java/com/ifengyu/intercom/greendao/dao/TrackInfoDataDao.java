package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.amap.api.services.district.DistrictSearchQuery;
import com.ifengyu.intercom.greendao.bean.b;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mistatistic.sdk.BaseService;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;

public class TrackInfoDataDao extends a<b, Long> {
    public static final String TABLENAME = "TRACK_INFO_DATA";

    public static class Properties {
        public static final f A = new f(26, Boolean.class, "isSaved", false, "IS_SAVED");
        public static final f a = new f(0, Long.class, "id", true, "_id");
        public static final f b = new f(1, String.class, AuthorizeActivityBase.KEY_USERID, false, "USERID");
        public static final f c = new f(2, String.class, "trackID", false, "TRACK_ID");
        public static final f d = new f(3, String.class, "serverTrackID", false, "SERVER_TRACK_ID");
        public static final f e = new f(4, Integer.class, "trackType", false, "TRACK_TYPE");
        public static final f f = new f(5, String.class, "trackName", false, "TRACK_NAME");
        public static final f g = new f(6, String.class, "trackArea", false, "TRACK_AREA");
        public static final f h = new f(7, Integer.class, "beginTime", false, "BEGIN_TIME");
        public static final f i = new f(8, Integer.class, BaseService.END_TIME, false, "END_TIME");
        public static final f j = new f(9, String.class, "beginAddress", false, "BEGIN_ADDRESS");
        public static final f k = new f(10, String.class, "endAddress", false, "END_ADDRESS");
        public static final f l = new f(11, String.class, DistrictSearchQuery.KEYWORDS_CITY, false, "CITY");
        public static final f m = new f(12, String.class, DistrictSearchQuery.KEYWORDS_DISTRICT, false, "DISTRICT");
        public static final f n = new f(13, Integer.class, "totalSecondTime", false, "TOTAL_SECOND_TIME");
        public static final f o = new f(14, Integer.class, "totalDistance", false, "TOTAL_DISTANCE");
        public static final f p = new f(15, Float.class, "averageSpeed", false, "AVERAGE_SPEED");
        public static final f q = new f(16, Integer.class, "averageAltitude", false, "AVERAGE_ALTITUDE");
        public static final f r = new f(17, Integer.class, "maxAltitude", false, "MAX_ALTITUDE");
        public static final f s = new f(18, Integer.class, "minAltitude", false, "MIN_ALTITUDE");
        public static final f t = new f(19, Integer.class, "accruedClimb", false, "ACCRUED_CLIMB");
        public static final f u = new f(20, Integer.class, "accruedDescent", false, "ACCRUED_DESCENT");
        public static final f v = new f(21, Integer.class, "trackMapZoomNum", false, "TRACK_MAP_ZOOM_NUM");
        public static final f w = new f(22, Integer.class, "trackCenterLatitude", false, "TRACK_CENTER_LATITUDE");
        public static final f x = new f(23, Integer.class, "trackCenterLongitude", false, "TRACK_CENTER_LONGITUDE");
        public static final f y = new f(24, String.class, "trackMapScreenshotURI", false, "TRACK_MAP_SCREENSHOT_URI");
        public static final f z = new f(25, Boolean.class, "isPaused", false, "IS_PAUSED");
    }

    public TrackInfoDataDao(org.greenrobot.greendao.b.a aVar, b bVar) {
        super(aVar, bVar);
    }

    public static void a(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"TRACK_INFO_DATA\" (\"_id\" INTEGER PRIMARY KEY ,\"USERID\" TEXT,\"TRACK_ID\" TEXT,\"SERVER_TRACK_ID\" TEXT,\"TRACK_TYPE\" INTEGER,\"TRACK_NAME\" TEXT,\"TRACK_AREA\" TEXT,\"BEGIN_TIME\" INTEGER,\"END_TIME\" INTEGER,\"BEGIN_ADDRESS\" TEXT,\"END_ADDRESS\" TEXT,\"CITY\" TEXT,\"DISTRICT\" TEXT,\"TOTAL_SECOND_TIME\" INTEGER,\"TOTAL_DISTANCE\" INTEGER,\"AVERAGE_SPEED\" REAL,\"AVERAGE_ALTITUDE\" INTEGER,\"MAX_ALTITUDE\" INTEGER,\"MIN_ALTITUDE\" INTEGER,\"ACCRUED_CLIMB\" INTEGER,\"ACCRUED_DESCENT\" INTEGER,\"TRACK_MAP_ZOOM_NUM\" INTEGER,\"TRACK_CENTER_LATITUDE\" INTEGER,\"TRACK_CENTER_LONGITUDE\" INTEGER,\"TRACK_MAP_SCREENSHOT_URI\" TEXT,\"IS_PAUSED\" INTEGER,\"IS_SAVED\" INTEGER);");
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(c cVar, b bVar) {
        long j = 1;
        cVar.d();
        Long a = bVar.a();
        if (a != null) {
            cVar.a(1, a.longValue());
        }
        String b = bVar.b();
        if (b != null) {
            cVar.a(2, b);
        }
        String c = bVar.c();
        if (c != null) {
            cVar.a(3, c);
        }
        String d = bVar.d();
        if (d != null) {
            cVar.a(4, d);
        }
        Integer e = bVar.e();
        if (e != null) {
            cVar.a(5, (long) e.intValue());
        }
        String f = bVar.f();
        if (f != null) {
            cVar.a(6, f);
        }
        String g = bVar.g();
        if (g != null) {
            cVar.a(7, g);
        }
        Integer h = bVar.h();
        if (h != null) {
            cVar.a(8, (long) h.intValue());
        }
        Integer i = bVar.i();
        if (i != null) {
            cVar.a(9, (long) i.intValue());
        }
        String j2 = bVar.j();
        if (j2 != null) {
            cVar.a(10, j2);
        }
        String k = bVar.k();
        if (k != null) {
            cVar.a(11, k);
        }
        String l = bVar.l();
        if (l != null) {
            cVar.a(12, l);
        }
        String m = bVar.m();
        if (m != null) {
            cVar.a(13, m);
        }
        Integer n = bVar.n();
        if (n != null) {
            cVar.a(14, (long) n.intValue());
        }
        Integer o = bVar.o();
        if (o != null) {
            cVar.a(15, (long) o.intValue());
        }
        Float p = bVar.p();
        if (p != null) {
            cVar.a(16, (double) p.floatValue());
        }
        Integer q = bVar.q();
        if (q != null) {
            cVar.a(17, (long) q.intValue());
        }
        Integer r = bVar.r();
        if (r != null) {
            cVar.a(18, (long) r.intValue());
        }
        Integer s = bVar.s();
        if (s != null) {
            cVar.a(19, (long) s.intValue());
        }
        Integer t = bVar.t();
        if (t != null) {
            cVar.a(20, (long) t.intValue());
        }
        Integer u = bVar.u();
        if (u != null) {
            cVar.a(21, (long) u.intValue());
        }
        Integer v = bVar.v();
        if (v != null) {
            cVar.a(22, (long) v.intValue());
        }
        Integer w = bVar.w();
        if (w != null) {
            cVar.a(23, (long) w.intValue());
        }
        Integer x = bVar.x();
        if (x != null) {
            cVar.a(24, (long) x.intValue());
        }
        String y = bVar.y();
        if (y != null) {
            cVar.a(25, y);
        }
        Boolean z = bVar.z();
        if (z != null) {
            cVar.a(26, z.booleanValue() ? 1 : 0);
        }
        Boolean A = bVar.A();
        if (A != null) {
            if (!A.booleanValue()) {
                j = 0;
            }
            cVar.a(27, j);
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, b bVar) {
        long j = 1;
        sQLiteStatement.clearBindings();
        Long a = bVar.a();
        if (a != null) {
            sQLiteStatement.bindLong(1, a.longValue());
        }
        String b = bVar.b();
        if (b != null) {
            sQLiteStatement.bindString(2, b);
        }
        String c = bVar.c();
        if (c != null) {
            sQLiteStatement.bindString(3, c);
        }
        String d = bVar.d();
        if (d != null) {
            sQLiteStatement.bindString(4, d);
        }
        Integer e = bVar.e();
        if (e != null) {
            sQLiteStatement.bindLong(5, (long) e.intValue());
        }
        String f = bVar.f();
        if (f != null) {
            sQLiteStatement.bindString(6, f);
        }
        String g = bVar.g();
        if (g != null) {
            sQLiteStatement.bindString(7, g);
        }
        Integer h = bVar.h();
        if (h != null) {
            sQLiteStatement.bindLong(8, (long) h.intValue());
        }
        Integer i = bVar.i();
        if (i != null) {
            sQLiteStatement.bindLong(9, (long) i.intValue());
        }
        String j2 = bVar.j();
        if (j2 != null) {
            sQLiteStatement.bindString(10, j2);
        }
        String k = bVar.k();
        if (k != null) {
            sQLiteStatement.bindString(11, k);
        }
        String l = bVar.l();
        if (l != null) {
            sQLiteStatement.bindString(12, l);
        }
        String m = bVar.m();
        if (m != null) {
            sQLiteStatement.bindString(13, m);
        }
        Integer n = bVar.n();
        if (n != null) {
            sQLiteStatement.bindLong(14, (long) n.intValue());
        }
        Integer o = bVar.o();
        if (o != null) {
            sQLiteStatement.bindLong(15, (long) o.intValue());
        }
        Float p = bVar.p();
        if (p != null) {
            sQLiteStatement.bindDouble(16, (double) p.floatValue());
        }
        Integer q = bVar.q();
        if (q != null) {
            sQLiteStatement.bindLong(17, (long) q.intValue());
        }
        Integer r = bVar.r();
        if (r != null) {
            sQLiteStatement.bindLong(18, (long) r.intValue());
        }
        Integer s = bVar.s();
        if (s != null) {
            sQLiteStatement.bindLong(19, (long) s.intValue());
        }
        Integer t = bVar.t();
        if (t != null) {
            sQLiteStatement.bindLong(20, (long) t.intValue());
        }
        Integer u = bVar.u();
        if (u != null) {
            sQLiteStatement.bindLong(21, (long) u.intValue());
        }
        Integer v = bVar.v();
        if (v != null) {
            sQLiteStatement.bindLong(22, (long) v.intValue());
        }
        Integer w = bVar.w();
        if (w != null) {
            sQLiteStatement.bindLong(23, (long) w.intValue());
        }
        Integer x = bVar.x();
        if (x != null) {
            sQLiteStatement.bindLong(24, (long) x.intValue());
        }
        String y = bVar.y();
        if (y != null) {
            sQLiteStatement.bindString(25, y);
        }
        Boolean z = bVar.z();
        if (z != null) {
            sQLiteStatement.bindLong(26, z.booleanValue() ? 1 : 0);
        }
        Boolean A = bVar.A();
        if (A != null) {
            if (!A.booleanValue()) {
                j = 0;
            }
            sQLiteStatement.bindLong(27, j);
        }
    }

    /* renamed from: a */
    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    /* renamed from: b */
    public b readEntity(Cursor cursor, int i) {
        Boolean valueOf;
        Boolean valueOf2;
        Long valueOf3 = cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0));
        String string = cursor.isNull(i + 1) ? null : cursor.getString(i + 1);
        String string2 = cursor.isNull(i + 2) ? null : cursor.getString(i + 2);
        String string3 = cursor.isNull(i + 3) ? null : cursor.getString(i + 3);
        Integer valueOf4 = cursor.isNull(i + 4) ? null : Integer.valueOf(cursor.getInt(i + 4));
        String string4 = cursor.isNull(i + 5) ? null : cursor.getString(i + 5);
        String string5 = cursor.isNull(i + 6) ? null : cursor.getString(i + 6);
        Integer valueOf5 = cursor.isNull(i + 7) ? null : Integer.valueOf(cursor.getInt(i + 7));
        Integer valueOf6 = cursor.isNull(i + 8) ? null : Integer.valueOf(cursor.getInt(i + 8));
        String string6 = cursor.isNull(i + 9) ? null : cursor.getString(i + 9);
        String string7 = cursor.isNull(i + 10) ? null : cursor.getString(i + 10);
        String string8 = cursor.isNull(i + 11) ? null : cursor.getString(i + 11);
        String string9 = cursor.isNull(i + 12) ? null : cursor.getString(i + 12);
        Integer valueOf7 = cursor.isNull(i + 13) ? null : Integer.valueOf(cursor.getInt(i + 13));
        Integer valueOf8 = cursor.isNull(i + 14) ? null : Integer.valueOf(cursor.getInt(i + 14));
        Float valueOf9 = cursor.isNull(i + 15) ? null : Float.valueOf(cursor.getFloat(i + 15));
        Integer valueOf10 = cursor.isNull(i + 16) ? null : Integer.valueOf(cursor.getInt(i + 16));
        Integer valueOf11 = cursor.isNull(i + 17) ? null : Integer.valueOf(cursor.getInt(i + 17));
        Integer valueOf12 = cursor.isNull(i + 18) ? null : Integer.valueOf(cursor.getInt(i + 18));
        Integer valueOf13 = cursor.isNull(i + 19) ? null : Integer.valueOf(cursor.getInt(i + 19));
        Integer valueOf14 = cursor.isNull(i + 20) ? null : Integer.valueOf(cursor.getInt(i + 20));
        Integer valueOf15 = cursor.isNull(i + 21) ? null : Integer.valueOf(cursor.getInt(i + 21));
        Integer valueOf16 = cursor.isNull(i + 22) ? null : Integer.valueOf(cursor.getInt(i + 22));
        Integer valueOf17 = cursor.isNull(i + 23) ? null : Integer.valueOf(cursor.getInt(i + 23));
        String string10 = cursor.isNull(i + 24) ? null : cursor.getString(i + 24);
        if (cursor.isNull(i + 25)) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(cursor.getShort(i + 25) != 0);
        }
        if (cursor.isNull(i + 26)) {
            valueOf2 = null;
        } else {
            valueOf2 = Boolean.valueOf(cursor.getShort(i + 26) != 0);
        }
        return new b(valueOf3, string, string2, string3, valueOf4, string4, string5, valueOf5, valueOf6, string6, string7, string8, string9, valueOf7, valueOf8, valueOf9, valueOf10, valueOf11, valueOf12, valueOf13, valueOf14, valueOf15, valueOf16, valueOf17, string10, valueOf, valueOf2);
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, b bVar, int i) {
        Boolean valueOf;
        boolean z = true;
        Boolean bool = null;
        bVar.a(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        bVar.a(cursor.isNull(i + 1) ? null : cursor.getString(i + 1));
        bVar.b(cursor.isNull(i + 2) ? null : cursor.getString(i + 2));
        bVar.c(cursor.isNull(i + 3) ? null : cursor.getString(i + 3));
        bVar.a(cursor.isNull(i + 4) ? null : Integer.valueOf(cursor.getInt(i + 4)));
        bVar.d(cursor.isNull(i + 5) ? null : cursor.getString(i + 5));
        bVar.e(cursor.isNull(i + 6) ? null : cursor.getString(i + 6));
        bVar.b(cursor.isNull(i + 7) ? null : Integer.valueOf(cursor.getInt(i + 7)));
        bVar.c(cursor.isNull(i + 8) ? null : Integer.valueOf(cursor.getInt(i + 8)));
        bVar.f(cursor.isNull(i + 9) ? null : cursor.getString(i + 9));
        bVar.g(cursor.isNull(i + 10) ? null : cursor.getString(i + 10));
        bVar.h(cursor.isNull(i + 11) ? null : cursor.getString(i + 11));
        bVar.i(cursor.isNull(i + 12) ? null : cursor.getString(i + 12));
        bVar.d(cursor.isNull(i + 13) ? null : Integer.valueOf(cursor.getInt(i + 13)));
        bVar.e(cursor.isNull(i + 14) ? null : Integer.valueOf(cursor.getInt(i + 14)));
        bVar.a(cursor.isNull(i + 15) ? null : Float.valueOf(cursor.getFloat(i + 15)));
        bVar.f(cursor.isNull(i + 16) ? null : Integer.valueOf(cursor.getInt(i + 16)));
        bVar.g(cursor.isNull(i + 17) ? null : Integer.valueOf(cursor.getInt(i + 17)));
        bVar.h(cursor.isNull(i + 18) ? null : Integer.valueOf(cursor.getInt(i + 18)));
        bVar.i(cursor.isNull(i + 19) ? null : Integer.valueOf(cursor.getInt(i + 19)));
        bVar.j(cursor.isNull(i + 20) ? null : Integer.valueOf(cursor.getInt(i + 20)));
        bVar.k(cursor.isNull(i + 21) ? null : Integer.valueOf(cursor.getInt(i + 21)));
        bVar.l(cursor.isNull(i + 22) ? null : Integer.valueOf(cursor.getInt(i + 22)));
        bVar.m(cursor.isNull(i + 23) ? null : Integer.valueOf(cursor.getInt(i + 23)));
        bVar.j(cursor.isNull(i + 24) ? null : cursor.getString(i + 24));
        if (cursor.isNull(i + 25)) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(cursor.getShort(i + 25) != 0);
        }
        bVar.a(valueOf);
        if (!cursor.isNull(i + 26)) {
            if (cursor.getShort(i + 26) == 0) {
                z = false;
            }
            bool = Boolean.valueOf(z);
        }
        bVar.b(bool);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(b bVar, long j) {
        bVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(b bVar) {
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    /* renamed from: b */
    public boolean hasKey(b bVar) {
        return bVar.a() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
