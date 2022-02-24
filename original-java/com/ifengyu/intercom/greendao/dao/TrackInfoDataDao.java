package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.intercom.greendao.bean.b;
import com.umeng.analytics.pro.am;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class TrackInfoDataDao extends AbstractDao<b, Long> {
    public static final String TABLENAME = "TRACK_INFO_DATA";

    /* loaded from: classes.dex */
    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, am.d);
        public static final Property Userid = new Property(1, String.class, AuthorizeActivityBase.KEY_USERID, false, "USERID");
        public static final Property TrackID = new Property(2, String.class, "trackID", false, "TRACK_ID");
        public static final Property ServerTrackID = new Property(3, String.class, "serverTrackID", false, "SERVER_TRACK_ID");
        public static final Property TrackType = new Property(4, Integer.class, "trackType", false, "TRACK_TYPE");
        public static final Property TrackName = new Property(5, String.class, "trackName", false, "TRACK_NAME");
        public static final Property TrackArea = new Property(6, String.class, "trackArea", false, "TRACK_AREA");
        public static final Property BeginTime = new Property(7, Integer.class, "beginTime", false, "BEGIN_TIME");
        public static final Property EndTime = new Property(8, Integer.class, "endTime", false, "END_TIME");
        public static final Property BeginAddress = new Property(9, String.class, "beginAddress", false, "BEGIN_ADDRESS");
        public static final Property EndAddress = new Property(10, String.class, "endAddress", false, "END_ADDRESS");
        public static final Property City = new Property(11, String.class, "city", false, "CITY");
        public static final Property District = new Property(12, String.class, "district", false, "DISTRICT");
        public static final Property TotalSecondTime = new Property(13, Integer.class, "totalSecondTime", false, "TOTAL_SECOND_TIME");
        public static final Property TotalDistance = new Property(14, Integer.class, "totalDistance", false, "TOTAL_DISTANCE");
        public static final Property AverageSpeed = new Property(15, Float.class, "averageSpeed", false, "AVERAGE_SPEED");
        public static final Property AverageAltitude = new Property(16, Integer.class, "averageAltitude", false, "AVERAGE_ALTITUDE");
        public static final Property MaxAltitude = new Property(17, Integer.class, "maxAltitude", false, "MAX_ALTITUDE");
        public static final Property MinAltitude = new Property(18, Integer.class, "minAltitude", false, "MIN_ALTITUDE");
        public static final Property AccruedClimb = new Property(19, Integer.class, "accruedClimb", false, "ACCRUED_CLIMB");
        public static final Property AccruedDescent = new Property(20, Integer.class, "accruedDescent", false, "ACCRUED_DESCENT");
        public static final Property TrackMapZoomNum = new Property(21, Integer.class, "trackMapZoomNum", false, "TRACK_MAP_ZOOM_NUM");
        public static final Property TrackCenterLatitude = new Property(22, Integer.class, "trackCenterLatitude", false, "TRACK_CENTER_LATITUDE");
        public static final Property TrackCenterLongitude = new Property(23, Integer.class, "trackCenterLongitude", false, "TRACK_CENTER_LONGITUDE");
        public static final Property TrackMapScreenshotURI = new Property(24, String.class, "trackMapScreenshotURI", false, "TRACK_MAP_SCREENSHOT_URI");
        public static final Property IsPaused = new Property(25, Boolean.class, "isPaused", false, "IS_PAUSED");
        public static final Property IsSaved = new Property(26, Boolean.class, "isSaved", false, "IS_SAVED");
    }

    public TrackInfoDataDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"TRACK_INFO_DATA\" (\"_id\" INTEGER PRIMARY KEY ,\"USERID\" TEXT,\"TRACK_ID\" TEXT,\"SERVER_TRACK_ID\" TEXT,\"TRACK_TYPE\" INTEGER,\"TRACK_NAME\" TEXT,\"TRACK_AREA\" TEXT,\"BEGIN_TIME\" INTEGER,\"END_TIME\" INTEGER,\"BEGIN_ADDRESS\" TEXT,\"END_ADDRESS\" TEXT,\"CITY\" TEXT,\"DISTRICT\" TEXT,\"TOTAL_SECOND_TIME\" INTEGER,\"TOTAL_DISTANCE\" INTEGER,\"AVERAGE_SPEED\" REAL,\"AVERAGE_ALTITUDE\" INTEGER,\"MAX_ALTITUDE\" INTEGER,\"MIN_ALTITUDE\" INTEGER,\"ACCRUED_CLIMB\" INTEGER,\"ACCRUED_DESCENT\" INTEGER,\"TRACK_MAP_ZOOM_NUM\" INTEGER,\"TRACK_CENTER_LATITUDE\" INTEGER,\"TRACK_CENTER_LONGITUDE\" INTEGER,\"TRACK_MAP_SCREENSHOT_URI\" TEXT,\"IS_PAUSED\" INTEGER,\"IS_SAVED\" INTEGER);");
    }

    /* renamed from: b */
    public boolean hasKey(b bVar) {
        return bVar.k() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(DatabaseStatement databaseStatement, b bVar) {
        Integer z;
        Integer f;
        Integer j;
        Integer r;
        Integer q;
        Float d;
        Integer c2;
        Integer n;
        Integer o;
        Integer a2;
        Integer b2;
        Integer x;
        Integer t;
        Integer u;
        databaseStatement.clearBindings();
        Long k = bVar.k();
        if (k != null) {
            databaseStatement.bindLong(1, k.longValue());
        }
        String A = bVar.A();
        if (A != null) {
            databaseStatement.bindString(2, A);
        }
        String v = bVar.v();
        if (v != null) {
            databaseStatement.bindString(3, v);
        }
        String p = bVar.p();
        if (p != null) {
            databaseStatement.bindString(4, p);
        }
        if (bVar.z() != null) {
            databaseStatement.bindLong(5, z.intValue());
        }
        String y = bVar.y();
        if (y != null) {
            databaseStatement.bindString(6, y);
        }
        String s = bVar.s();
        if (s != null) {
            databaseStatement.bindString(7, s);
        }
        if (bVar.f() != null) {
            databaseStatement.bindLong(8, f.intValue());
        }
        if (bVar.j() != null) {
            databaseStatement.bindLong(9, j.intValue());
        }
        String e = bVar.e();
        if (e != null) {
            databaseStatement.bindString(10, e);
        }
        String i = bVar.i();
        if (i != null) {
            databaseStatement.bindString(11, i);
        }
        String g = bVar.g();
        if (g != null) {
            databaseStatement.bindString(12, g);
        }
        String h = bVar.h();
        if (h != null) {
            databaseStatement.bindString(13, h);
        }
        if (bVar.r() != null) {
            databaseStatement.bindLong(14, r.intValue());
        }
        if (bVar.q() != null) {
            databaseStatement.bindLong(15, q.intValue());
        }
        if (bVar.d() != null) {
            databaseStatement.bindDouble(16, d.floatValue());
        }
        if (bVar.c() != null) {
            databaseStatement.bindLong(17, c2.intValue());
        }
        if (bVar.n() != null) {
            databaseStatement.bindLong(18, n.intValue());
        }
        if (bVar.o() != null) {
            databaseStatement.bindLong(19, o.intValue());
        }
        if (bVar.a() != null) {
            databaseStatement.bindLong(20, a2.intValue());
        }
        if (bVar.b() != null) {
            databaseStatement.bindLong(21, b2.intValue());
        }
        if (bVar.x() != null) {
            databaseStatement.bindLong(22, x.intValue());
        }
        if (bVar.t() != null) {
            databaseStatement.bindLong(23, t.intValue());
        }
        if (bVar.u() != null) {
            databaseStatement.bindLong(24, u.intValue());
        }
        String w = bVar.w();
        if (w != null) {
            databaseStatement.bindString(25, w);
        }
        Boolean l = bVar.l();
        long j2 = 1;
        if (l != null) {
            databaseStatement.bindLong(26, l.booleanValue() ? 1L : 0L);
        }
        Boolean m = bVar.m();
        if (m != null) {
            if (!m.booleanValue()) {
                j2 = 0;
            }
            databaseStatement.bindLong(27, j2);
        }
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
    public b readEntity(Cursor cursor, int i) {
        Boolean bool;
        Boolean bool2;
        int i2 = i + 0;
        Long valueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        String string = cursor.isNull(i3) ? null : cursor.getString(i3);
        int i4 = i + 2;
        String string2 = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 3;
        String string3 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 4;
        Integer valueOf2 = cursor.isNull(i6) ? null : Integer.valueOf(cursor.getInt(i6));
        int i7 = i + 5;
        String string4 = cursor.isNull(i7) ? null : cursor.getString(i7);
        int i8 = i + 6;
        String string5 = cursor.isNull(i8) ? null : cursor.getString(i8);
        int i9 = i + 7;
        Integer valueOf3 = cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9));
        int i10 = i + 8;
        Integer valueOf4 = cursor.isNull(i10) ? null : Integer.valueOf(cursor.getInt(i10));
        int i11 = i + 9;
        String string6 = cursor.isNull(i11) ? null : cursor.getString(i11);
        int i12 = i + 10;
        String string7 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 11;
        String string8 = cursor.isNull(i13) ? null : cursor.getString(i13);
        int i14 = i + 12;
        String string9 = cursor.isNull(i14) ? null : cursor.getString(i14);
        int i15 = i + 13;
        Integer valueOf5 = cursor.isNull(i15) ? null : Integer.valueOf(cursor.getInt(i15));
        int i16 = i + 14;
        Integer valueOf6 = cursor.isNull(i16) ? null : Integer.valueOf(cursor.getInt(i16));
        int i17 = i + 15;
        Float valueOf7 = cursor.isNull(i17) ? null : Float.valueOf(cursor.getFloat(i17));
        int i18 = i + 16;
        Integer valueOf8 = cursor.isNull(i18) ? null : Integer.valueOf(cursor.getInt(i18));
        int i19 = i + 17;
        Integer valueOf9 = cursor.isNull(i19) ? null : Integer.valueOf(cursor.getInt(i19));
        int i20 = i + 18;
        Integer valueOf10 = cursor.isNull(i20) ? null : Integer.valueOf(cursor.getInt(i20));
        int i21 = i + 19;
        Integer valueOf11 = cursor.isNull(i21) ? null : Integer.valueOf(cursor.getInt(i21));
        int i22 = i + 20;
        Integer valueOf12 = cursor.isNull(i22) ? null : Integer.valueOf(cursor.getInt(i22));
        int i23 = i + 21;
        Integer valueOf13 = cursor.isNull(i23) ? null : Integer.valueOf(cursor.getInt(i23));
        int i24 = i + 22;
        Integer valueOf14 = cursor.isNull(i24) ? null : Integer.valueOf(cursor.getInt(i24));
        int i25 = i + 23;
        Integer valueOf15 = cursor.isNull(i25) ? null : Integer.valueOf(cursor.getInt(i25));
        int i26 = i + 24;
        String string10 = cursor.isNull(i26) ? null : cursor.getString(i26);
        int i27 = i + 25;
        boolean z = true;
        if (cursor.isNull(i27)) {
            bool = null;
        } else {
            bool = Boolean.valueOf(cursor.getShort(i27) != 0);
        }
        int i28 = i + 26;
        if (cursor.isNull(i28)) {
            bool2 = null;
        } else {
            if (cursor.getShort(i28) == 0) {
                z = false;
            }
            bool2 = Boolean.valueOf(z);
        }
        return new b(valueOf, string, string2, string3, valueOf2, string4, string5, valueOf3, valueOf4, string6, string7, string8, string9, valueOf5, valueOf6, valueOf7, valueOf8, valueOf9, valueOf10, valueOf11, valueOf12, valueOf13, valueOf14, valueOf15, string10, bool, bool2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, b bVar) {
        Integer z;
        Integer f;
        Integer j;
        Integer r;
        Integer q;
        Float d;
        Integer c2;
        Integer n;
        Integer o;
        Integer a2;
        Integer b2;
        Integer x;
        Integer t;
        Integer u;
        sQLiteStatement.clearBindings();
        Long k = bVar.k();
        if (k != null) {
            sQLiteStatement.bindLong(1, k.longValue());
        }
        String A = bVar.A();
        if (A != null) {
            sQLiteStatement.bindString(2, A);
        }
        String v = bVar.v();
        if (v != null) {
            sQLiteStatement.bindString(3, v);
        }
        String p = bVar.p();
        if (p != null) {
            sQLiteStatement.bindString(4, p);
        }
        if (bVar.z() != null) {
            sQLiteStatement.bindLong(5, z.intValue());
        }
        String y = bVar.y();
        if (y != null) {
            sQLiteStatement.bindString(6, y);
        }
        String s = bVar.s();
        if (s != null) {
            sQLiteStatement.bindString(7, s);
        }
        if (bVar.f() != null) {
            sQLiteStatement.bindLong(8, f.intValue());
        }
        if (bVar.j() != null) {
            sQLiteStatement.bindLong(9, j.intValue());
        }
        String e = bVar.e();
        if (e != null) {
            sQLiteStatement.bindString(10, e);
        }
        String i = bVar.i();
        if (i != null) {
            sQLiteStatement.bindString(11, i);
        }
        String g = bVar.g();
        if (g != null) {
            sQLiteStatement.bindString(12, g);
        }
        String h = bVar.h();
        if (h != null) {
            sQLiteStatement.bindString(13, h);
        }
        if (bVar.r() != null) {
            sQLiteStatement.bindLong(14, r.intValue());
        }
        if (bVar.q() != null) {
            sQLiteStatement.bindLong(15, q.intValue());
        }
        if (bVar.d() != null) {
            sQLiteStatement.bindDouble(16, d.floatValue());
        }
        if (bVar.c() != null) {
            sQLiteStatement.bindLong(17, c2.intValue());
        }
        if (bVar.n() != null) {
            sQLiteStatement.bindLong(18, n.intValue());
        }
        if (bVar.o() != null) {
            sQLiteStatement.bindLong(19, o.intValue());
        }
        if (bVar.a() != null) {
            sQLiteStatement.bindLong(20, a2.intValue());
        }
        if (bVar.b() != null) {
            sQLiteStatement.bindLong(21, b2.intValue());
        }
        if (bVar.x() != null) {
            sQLiteStatement.bindLong(22, x.intValue());
        }
        if (bVar.t() != null) {
            sQLiteStatement.bindLong(23, t.intValue());
        }
        if (bVar.u() != null) {
            sQLiteStatement.bindLong(24, u.intValue());
        }
        String w = bVar.w();
        if (w != null) {
            sQLiteStatement.bindString(25, w);
        }
        Boolean l = bVar.l();
        long j2 = 1;
        if (l != null) {
            sQLiteStatement.bindLong(26, l.booleanValue() ? 1L : 0L);
        }
        Boolean m = bVar.m();
        if (m != null) {
            if (!m.booleanValue()) {
                j2 = 0;
            }
            sQLiteStatement.bindLong(27, j2);
        }
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, b bVar, int i) {
        Boolean bool;
        int i2 = i + 0;
        Boolean bool2 = null;
        bVar.a(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        bVar.j(cursor.isNull(i3) ? null : cursor.getString(i3));
        int i4 = i + 2;
        bVar.g(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        bVar.e(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        bVar.m(cursor.isNull(i6) ? null : Integer.valueOf(cursor.getInt(i6)));
        int i7 = i + 5;
        bVar.i(cursor.isNull(i7) ? null : cursor.getString(i7));
        int i8 = i + 6;
        bVar.f(cursor.isNull(i8) ? null : cursor.getString(i8));
        int i9 = i + 7;
        bVar.d(cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9)));
        int i10 = i + 8;
        bVar.e(cursor.isNull(i10) ? null : Integer.valueOf(cursor.getInt(i10)));
        int i11 = i + 9;
        bVar.a(cursor.isNull(i11) ? null : cursor.getString(i11));
        int i12 = i + 10;
        bVar.d(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 11;
        bVar.b(cursor.isNull(i13) ? null : cursor.getString(i13));
        int i14 = i + 12;
        bVar.c(cursor.isNull(i14) ? null : cursor.getString(i14));
        int i15 = i + 13;
        bVar.i(cursor.isNull(i15) ? null : Integer.valueOf(cursor.getInt(i15)));
        int i16 = i + 14;
        bVar.h(cursor.isNull(i16) ? null : Integer.valueOf(cursor.getInt(i16)));
        int i17 = i + 15;
        bVar.a(cursor.isNull(i17) ? null : Float.valueOf(cursor.getFloat(i17)));
        int i18 = i + 16;
        bVar.c(cursor.isNull(i18) ? null : Integer.valueOf(cursor.getInt(i18)));
        int i19 = i + 17;
        bVar.f(cursor.isNull(i19) ? null : Integer.valueOf(cursor.getInt(i19)));
        int i20 = i + 18;
        bVar.g(cursor.isNull(i20) ? null : Integer.valueOf(cursor.getInt(i20)));
        int i21 = i + 19;
        bVar.a(cursor.isNull(i21) ? null : Integer.valueOf(cursor.getInt(i21)));
        int i22 = i + 20;
        bVar.b(cursor.isNull(i22) ? null : Integer.valueOf(cursor.getInt(i22)));
        int i23 = i + 21;
        bVar.l(cursor.isNull(i23) ? null : Integer.valueOf(cursor.getInt(i23)));
        int i24 = i + 22;
        bVar.j(cursor.isNull(i24) ? null : Integer.valueOf(cursor.getInt(i24)));
        int i25 = i + 23;
        bVar.k(cursor.isNull(i25) ? null : Integer.valueOf(cursor.getInt(i25)));
        int i26 = i + 24;
        bVar.h(cursor.isNull(i26) ? null : cursor.getString(i26));
        int i27 = i + 25;
        boolean z = true;
        if (cursor.isNull(i27)) {
            bool = null;
        } else {
            bool = Boolean.valueOf(cursor.getShort(i27) != 0);
        }
        bVar.a(bool);
        int i28 = i + 26;
        if (!cursor.isNull(i28)) {
            if (cursor.getShort(i28) == 0) {
                z = false;
            }
            bool2 = Boolean.valueOf(z);
        }
        bVar.b(bool2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(b bVar, long j) {
        bVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(b bVar) {
        if (bVar != null) {
            return bVar.k();
        }
        return null;
    }
}
