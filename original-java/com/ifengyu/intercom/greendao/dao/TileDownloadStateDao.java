package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.intercom.greendao.bean.a;
import com.umeng.analytics.pro.am;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class TileDownloadStateDao extends AbstractDao<a, Long> {
    public static final String TABLENAME = "TILE_DOWNLOAD_STATE";

    /* loaded from: classes.dex */
    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, am.d);
        public static final Property LatitudeTopLeft = new Property(1, Double.class, "latitudeTopLeft", false, "LATITUDE_TOP_LEFT");
        public static final Property LongitudeTopLeft = new Property(2, Double.class, "longitudeTopLeft", false, "LONGITUDE_TOP_LEFT");
        public static final Property LatitudeBottomRight = new Property(3, Double.class, "latitudeBottomRight", false, "LATITUDE_BOTTOM_RIGHT");
        public static final Property LongitudeBottomRight = new Property(4, Double.class, "longitudeBottomRight", false, "LONGITUDE_BOTTOM_RIGHT");
        public static final Property ZoomLevel = new Property(5, Integer.class, "zoomLevel", false, "ZOOM_LEVEL");
        public static final Property All = new Property(6, Integer.class, "all", false, "ALL");
        public static final Property Sucess = new Property(7, Integer.class, "sucess", false, "SUCESS");
        public static final Property Failure = new Property(8, Integer.class, "failure", false, "FAILURE");
        public static final Property Size = new Property(9, String.class, "size", false, "SIZE");
        public static final Property DirName = new Property(10, String.class, "dirName", false, "DIR_NAME");
        public static final Property MapType = new Property(11, Integer.class, "mapType", false, "MAP_TYPE");
        public static final Property IsDownloading = new Property(12, Boolean.class, "isDownloading", false, "IS_DOWNLOADING");
    }

    public TileDownloadStateDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"TILE_DOWNLOAD_STATE\" (\"_id\" INTEGER PRIMARY KEY ,\"LATITUDE_TOP_LEFT\" REAL,\"LONGITUDE_TOP_LEFT\" REAL,\"LATITUDE_BOTTOM_RIGHT\" REAL,\"LONGITUDE_BOTTOM_RIGHT\" REAL,\"ZOOM_LEVEL\" INTEGER,\"ALL\" INTEGER,\"SUCESS\" INTEGER,\"FAILURE\" INTEGER,\"SIZE\" TEXT,\"DIR_NAME\" TEXT,\"MAP_TYPE\" INTEGER,\"IS_DOWNLOADING\" INTEGER);");
    }

    /* renamed from: b */
    public boolean hasKey(a aVar) {
        return aVar.d() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(DatabaseStatement databaseStatement, a aVar) {
        databaseStatement.clearBindings();
        Long d = aVar.d();
        if (d != null) {
            databaseStatement.bindLong(1, d.longValue());
        }
        Double g = aVar.g();
        if (g != null) {
            databaseStatement.bindDouble(2, g.doubleValue());
        }
        Double i = aVar.i();
        if (i != null) {
            databaseStatement.bindDouble(3, i.doubleValue());
        }
        Double f = aVar.f();
        if (f != null) {
            databaseStatement.bindDouble(4, f.doubleValue());
        }
        Double h = aVar.h();
        if (h != null) {
            databaseStatement.bindDouble(5, h.doubleValue());
        }
        Integer m = aVar.m();
        if (m != null) {
            databaseStatement.bindLong(6, m.intValue());
        }
        Integer a2 = aVar.a();
        if (a2 != null) {
            databaseStatement.bindLong(7, a2.intValue());
        }
        Integer l = aVar.l();
        if (l != null) {
            databaseStatement.bindLong(8, l.intValue());
        }
        Integer c2 = aVar.c();
        if (c2 != null) {
            databaseStatement.bindLong(9, c2.intValue());
        }
        String k = aVar.k();
        if (k != null) {
            databaseStatement.bindString(10, k);
        }
        String b2 = aVar.b();
        if (b2 != null) {
            databaseStatement.bindString(11, b2);
        }
        Integer j = aVar.j();
        if (j != null) {
            databaseStatement.bindLong(12, j.intValue());
        }
        Boolean e = aVar.e();
        if (e != null) {
            databaseStatement.bindLong(13, e.booleanValue() ? 1L : 0L);
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
    public a readEntity(Cursor cursor, int i) {
        Boolean bool;
        int i2 = i + 0;
        Long valueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 1;
        Double valueOf2 = cursor.isNull(i3) ? null : Double.valueOf(cursor.getDouble(i3));
        int i4 = i + 2;
        Double valueOf3 = cursor.isNull(i4) ? null : Double.valueOf(cursor.getDouble(i4));
        int i5 = i + 3;
        Double valueOf4 = cursor.isNull(i5) ? null : Double.valueOf(cursor.getDouble(i5));
        int i6 = i + 4;
        Double valueOf5 = cursor.isNull(i6) ? null : Double.valueOf(cursor.getDouble(i6));
        int i7 = i + 5;
        Integer valueOf6 = cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7));
        int i8 = i + 6;
        Integer valueOf7 = cursor.isNull(i8) ? null : Integer.valueOf(cursor.getInt(i8));
        int i9 = i + 7;
        Integer valueOf8 = cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9));
        int i10 = i + 8;
        Integer valueOf9 = cursor.isNull(i10) ? null : Integer.valueOf(cursor.getInt(i10));
        int i11 = i + 9;
        String string = cursor.isNull(i11) ? null : cursor.getString(i11);
        int i12 = i + 10;
        String string2 = cursor.isNull(i12) ? null : cursor.getString(i12);
        int i13 = i + 11;
        Integer valueOf10 = cursor.isNull(i13) ? null : Integer.valueOf(cursor.getInt(i13));
        int i14 = i + 12;
        if (cursor.isNull(i14)) {
            bool = null;
        } else {
            bool = Boolean.valueOf(cursor.getShort(i14) != 0);
        }
        return new a(valueOf, valueOf2, valueOf3, valueOf4, valueOf5, valueOf6, valueOf7, valueOf8, valueOf9, string, string2, valueOf10, bool);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, a aVar) {
        sQLiteStatement.clearBindings();
        Long d = aVar.d();
        if (d != null) {
            sQLiteStatement.bindLong(1, d.longValue());
        }
        Double g = aVar.g();
        if (g != null) {
            sQLiteStatement.bindDouble(2, g.doubleValue());
        }
        Double i = aVar.i();
        if (i != null) {
            sQLiteStatement.bindDouble(3, i.doubleValue());
        }
        Double f = aVar.f();
        if (f != null) {
            sQLiteStatement.bindDouble(4, f.doubleValue());
        }
        Double h = aVar.h();
        if (h != null) {
            sQLiteStatement.bindDouble(5, h.doubleValue());
        }
        Integer m = aVar.m();
        if (m != null) {
            sQLiteStatement.bindLong(6, m.intValue());
        }
        Integer a2 = aVar.a();
        if (a2 != null) {
            sQLiteStatement.bindLong(7, a2.intValue());
        }
        Integer l = aVar.l();
        if (l != null) {
            sQLiteStatement.bindLong(8, l.intValue());
        }
        Integer c2 = aVar.c();
        if (c2 != null) {
            sQLiteStatement.bindLong(9, c2.intValue());
        }
        String k = aVar.k();
        if (k != null) {
            sQLiteStatement.bindString(10, k);
        }
        String b2 = aVar.b();
        if (b2 != null) {
            sQLiteStatement.bindString(11, b2);
        }
        Integer j = aVar.j();
        if (j != null) {
            sQLiteStatement.bindLong(12, j.intValue());
        }
        Boolean e = aVar.e();
        if (e != null) {
            sQLiteStatement.bindLong(13, e.booleanValue() ? 1L : 0L);
        }
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, a aVar, int i) {
        int i2 = i + 0;
        Boolean bool = null;
        aVar.a(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        int i3 = i + 1;
        aVar.b(cursor.isNull(i3) ? null : Double.valueOf(cursor.getDouble(i3)));
        int i4 = i + 2;
        aVar.d(cursor.isNull(i4) ? null : Double.valueOf(cursor.getDouble(i4)));
        int i5 = i + 3;
        aVar.a(cursor.isNull(i5) ? null : Double.valueOf(cursor.getDouble(i5)));
        int i6 = i + 4;
        aVar.c(cursor.isNull(i6) ? null : Double.valueOf(cursor.getDouble(i6)));
        int i7 = i + 5;
        aVar.e(cursor.isNull(i7) ? null : Integer.valueOf(cursor.getInt(i7)));
        int i8 = i + 6;
        aVar.a(cursor.isNull(i8) ? null : Integer.valueOf(cursor.getInt(i8)));
        int i9 = i + 7;
        aVar.d(cursor.isNull(i9) ? null : Integer.valueOf(cursor.getInt(i9)));
        int i10 = i + 8;
        aVar.b(cursor.isNull(i10) ? null : Integer.valueOf(cursor.getInt(i10)));
        int i11 = i + 9;
        aVar.b(cursor.isNull(i11) ? null : cursor.getString(i11));
        int i12 = i + 10;
        aVar.a(cursor.isNull(i12) ? null : cursor.getString(i12));
        int i13 = i + 11;
        aVar.c(cursor.isNull(i13) ? null : Integer.valueOf(cursor.getInt(i13)));
        int i14 = i + 12;
        if (!cursor.isNull(i14)) {
            bool = Boolean.valueOf(cursor.getShort(i14) != 0);
        }
        aVar.a(bool);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(a aVar, long j) {
        aVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(a aVar) {
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }
}
