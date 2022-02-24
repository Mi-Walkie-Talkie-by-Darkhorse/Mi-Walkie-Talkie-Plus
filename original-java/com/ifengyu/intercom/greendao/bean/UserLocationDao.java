package com.ifengyu.intercom.greendao.bean;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.umeng.analytics.pro.am;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.DatabaseStatement;

/* loaded from: classes.dex */
public class UserLocationDao extends AbstractDao<d, Long> {
    public static final String TABLENAME = "USER_LOCATION";

    /* loaded from: classes.dex */
    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, am.d);
        public static final Property Userid = new Property(1, Integer.class, AuthorizeActivityBase.KEY_USERID, false, "USERID");
        public static final Property Name = new Property(2, String.class, "name", false, "NAME");
        public static final Property Imgurl = new Property(3, String.class, "imgurl", false, "IMGURL");
        public static final Property Longitude = new Property(4, Integer.class, "longitude", false, "LONGITUDE");
        public static final Property Latitude = new Property(5, Integer.class, "latitude", false, "LATITUDE");
        public static final Property Altitude = new Property(6, Integer.class, "altitude", false, "ALTITUDE");
        public static final Property Time = new Property(7, Integer.class, "time", false, "TIME");
        public static final Property Freq = new Property(8, Integer.class, "freq", false, "FREQ");
        public static final Property RxCss = new Property(9, Integer.class, "rxCss", false, "RX_CSS");
        public static final Property FromDevType = new Property(10, Integer.class, "fromDevType", false, "FROM_DEV_TYPE");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(DatabaseStatement databaseStatement, d dVar) {
        databaseStatement.clearBindings();
        Long d = dVar.d();
        if (d != null) {
            databaseStatement.bindLong(1, d.longValue());
        }
        Integer k = dVar.k();
        if (k != null) {
            databaseStatement.bindLong(2, k.intValue());
        }
        String h = dVar.h();
        if (h != null) {
            databaseStatement.bindString(3, h);
        }
        String e = dVar.e();
        if (e != null) {
            databaseStatement.bindString(4, e);
        }
        Integer g = dVar.g();
        if (g != null) {
            databaseStatement.bindLong(5, g.intValue());
        }
        Integer f = dVar.f();
        if (f != null) {
            databaseStatement.bindLong(6, f.intValue());
        }
        Integer a2 = dVar.a();
        if (a2 != null) {
            databaseStatement.bindLong(7, a2.intValue());
        }
        Integer j = dVar.j();
        if (j != null) {
            databaseStatement.bindLong(8, j.intValue());
        }
        Integer b2 = dVar.b();
        if (b2 != null) {
            databaseStatement.bindLong(9, b2.intValue());
        }
        Integer i = dVar.i();
        if (i != null) {
            databaseStatement.bindLong(10, i.intValue());
        }
        Integer c2 = dVar.c();
        if (c2 != null) {
            databaseStatement.bindLong(11, c2.intValue());
        }
    }

    /* renamed from: b */
    public boolean hasKey(d dVar) {
        return dVar.d() != null;
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
    public d readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long valueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        Integer valueOf2 = cursor.isNull(i3) ? null : Integer.valueOf(cursor.getInt(i3));
        int i4 = i + 2;
        String string = cursor.isNull(i4) ? null : cursor.getString(i4);
        int i5 = i + 3;
        String string2 = cursor.isNull(i5) ? null : cursor.getString(i5);
        int i6 = i + 4;
        Integer valueOf3 = cursor.isNull(i6) ? null : Integer.valueOf(cursor.getInt(i6));
        int i7 = i + 5;
        Integer valueOf4 = cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7));
        int i8 = i + 6;
        Integer valueOf5 = cursor.isNull(i8) ? null : Integer.valueOf(cursor.getInt(i8));
        int i9 = i + 7;
        Integer valueOf6 = cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9));
        int i10 = i + 8;
        Integer valueOf7 = cursor.isNull(i10) ? null : Integer.valueOf(cursor.getInt(i10));
        int i11 = i + 9;
        int i12 = i + 10;
        return new d(valueOf, valueOf2, string, string2, valueOf3, valueOf4, valueOf5, valueOf6, valueOf7, cursor.isNull(i11) ? null : Integer.valueOf(cursor.getInt(i11)), cursor.isNull(i12) ? null : Integer.valueOf(cursor.getInt(i12)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, d dVar) {
        sQLiteStatement.clearBindings();
        Long d = dVar.d();
        if (d != null) {
            sQLiteStatement.bindLong(1, d.longValue());
        }
        Integer k = dVar.k();
        if (k != null) {
            sQLiteStatement.bindLong(2, k.intValue());
        }
        String h = dVar.h();
        if (h != null) {
            sQLiteStatement.bindString(3, h);
        }
        String e = dVar.e();
        if (e != null) {
            sQLiteStatement.bindString(4, e);
        }
        Integer g = dVar.g();
        if (g != null) {
            sQLiteStatement.bindLong(5, g.intValue());
        }
        Integer f = dVar.f();
        if (f != null) {
            sQLiteStatement.bindLong(6, f.intValue());
        }
        Integer a2 = dVar.a();
        if (a2 != null) {
            sQLiteStatement.bindLong(7, a2.intValue());
        }
        Integer j = dVar.j();
        if (j != null) {
            sQLiteStatement.bindLong(8, j.intValue());
        }
        Integer b2 = dVar.b();
        if (b2 != null) {
            sQLiteStatement.bindLong(9, b2.intValue());
        }
        Integer i = dVar.i();
        if (i != null) {
            sQLiteStatement.bindLong(10, i.intValue());
        }
        Integer c2 = dVar.c();
        if (c2 != null) {
            sQLiteStatement.bindLong(11, c2.intValue());
        }
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, d dVar, int i) {
        int i2 = i + 0;
        Integer num = null;
        dVar.a(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        dVar.h(cursor.isNull(i3) ? null : Integer.valueOf(cursor.getInt(i3)));
        int i4 = i + 2;
        dVar.b(cursor.isNull(i4) ? null : cursor.getString(i4));
        int i5 = i + 3;
        dVar.a(cursor.isNull(i5) ? null : cursor.getString(i5));
        int i6 = i + 4;
        dVar.e(cursor.isNull(i6) ? null : Integer.valueOf(cursor.getInt(i6)));
        int i7 = i + 5;
        dVar.d(cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7)));
        int i8 = i + 6;
        dVar.a(cursor.isNull(i8) ? null : Integer.valueOf(cursor.getInt(i8)));
        int i9 = i + 7;
        dVar.g(cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9)));
        int i10 = i + 8;
        dVar.b(cursor.isNull(i10) ? null : Integer.valueOf(cursor.getInt(i10)));
        int i11 = i + 9;
        dVar.f(cursor.isNull(i11) ? null : Integer.valueOf(cursor.getInt(i11)));
        int i12 = i + 10;
        if (!cursor.isNull(i12)) {
            num = Integer.valueOf(cursor.getInt(i12));
        }
        dVar.c(num);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(d dVar, long j) {
        dVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(d dVar) {
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }
}
