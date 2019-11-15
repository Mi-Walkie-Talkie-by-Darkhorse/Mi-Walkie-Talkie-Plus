package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;
import org.jboss.netty.channel.ChannelPipelineCoverage;

public class TileDownloadStateDao extends a<com.ifengyu.intercom.greendao.bean.a, Long> {
    public static final String TABLENAME = "TILE_DOWNLOAD_STATE";

    public static class Properties {
        public static final f a = new f(0, Long.class, "id", true, "_id");
        public static final f b = new f(1, Double.class, "latitudeTopLeft", false, "LATITUDE_TOP_LEFT");
        public static final f c = new f(2, Double.class, "longitudeTopLeft", false, "LONGITUDE_TOP_LEFT");
        public static final f d = new f(3, Double.class, "latitudeBottomRight", false, "LATITUDE_BOTTOM_RIGHT");
        public static final f e = new f(4, Double.class, "longitudeBottomRight", false, "LONGITUDE_BOTTOM_RIGHT");
        public static final f f = new f(5, Integer.class, "zoomLevel", false, "ZOOM_LEVEL");
        public static final f g = new f(6, Integer.class, ChannelPipelineCoverage.ALL, false, "ALL");
        public static final f h = new f(7, Integer.class, "sucess", false, "SUCESS");
        public static final f i = new f(8, Integer.class, "failure", false, "FAILURE");
        public static final f j = new f(9, String.class, "size", false, "SIZE");
        public static final f k = new f(10, String.class, "dirName", false, "DIR_NAME");
        public static final f l = new f(11, Integer.class, "mapType", false, "MAP_TYPE");
        public static final f m = new f(12, Boolean.class, "isDownloading", false, "IS_DOWNLOADING");
    }

    public TileDownloadStateDao(org.greenrobot.greendao.b.a aVar, b bVar) {
        super(aVar, bVar);
    }

    public static void a(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"TILE_DOWNLOAD_STATE\" (\"_id\" INTEGER PRIMARY KEY ,\"LATITUDE_TOP_LEFT\" REAL,\"LONGITUDE_TOP_LEFT\" REAL,\"LATITUDE_BOTTOM_RIGHT\" REAL,\"LONGITUDE_BOTTOM_RIGHT\" REAL,\"ZOOM_LEVEL\" INTEGER,\"ALL\" INTEGER,\"SUCESS\" INTEGER,\"FAILURE\" INTEGER,\"SIZE\" TEXT,\"DIR_NAME\" TEXT,\"MAP_TYPE\" INTEGER,\"IS_DOWNLOADING\" INTEGER);");
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(c cVar, com.ifengyu.intercom.greendao.bean.a aVar) {
        cVar.d();
        Long a = aVar.a();
        if (a != null) {
            cVar.a(1, a.longValue());
        }
        Double b = aVar.b();
        if (b != null) {
            cVar.a(2, b.doubleValue());
        }
        Double c = aVar.c();
        if (c != null) {
            cVar.a(3, c.doubleValue());
        }
        Double d = aVar.d();
        if (d != null) {
            cVar.a(4, d.doubleValue());
        }
        Double e = aVar.e();
        if (e != null) {
            cVar.a(5, e.doubleValue());
        }
        Integer f = aVar.f();
        if (f != null) {
            cVar.a(6, (long) f.intValue());
        }
        Integer g = aVar.g();
        if (g != null) {
            cVar.a(7, (long) g.intValue());
        }
        Integer h = aVar.h();
        if (h != null) {
            cVar.a(8, (long) h.intValue());
        }
        Integer i = aVar.i();
        if (i != null) {
            cVar.a(9, (long) i.intValue());
        }
        String j = aVar.j();
        if (j != null) {
            cVar.a(10, j);
        }
        String k = aVar.k();
        if (k != null) {
            cVar.a(11, k);
        }
        Integer l = aVar.l();
        if (l != null) {
            cVar.a(12, (long) l.intValue());
        }
        Boolean m = aVar.m();
        if (m != null) {
            cVar.a(13, m.booleanValue() ? 1 : 0);
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, com.ifengyu.intercom.greendao.bean.a aVar) {
        sQLiteStatement.clearBindings();
        Long a = aVar.a();
        if (a != null) {
            sQLiteStatement.bindLong(1, a.longValue());
        }
        Double b = aVar.b();
        if (b != null) {
            sQLiteStatement.bindDouble(2, b.doubleValue());
        }
        Double c = aVar.c();
        if (c != null) {
            sQLiteStatement.bindDouble(3, c.doubleValue());
        }
        Double d = aVar.d();
        if (d != null) {
            sQLiteStatement.bindDouble(4, d.doubleValue());
        }
        Double e = aVar.e();
        if (e != null) {
            sQLiteStatement.bindDouble(5, e.doubleValue());
        }
        Integer f = aVar.f();
        if (f != null) {
            sQLiteStatement.bindLong(6, (long) f.intValue());
        }
        Integer g = aVar.g();
        if (g != null) {
            sQLiteStatement.bindLong(7, (long) g.intValue());
        }
        Integer h = aVar.h();
        if (h != null) {
            sQLiteStatement.bindLong(8, (long) h.intValue());
        }
        Integer i = aVar.i();
        if (i != null) {
            sQLiteStatement.bindLong(9, (long) i.intValue());
        }
        String j = aVar.j();
        if (j != null) {
            sQLiteStatement.bindString(10, j);
        }
        String k = aVar.k();
        if (k != null) {
            sQLiteStatement.bindString(11, k);
        }
        Integer l = aVar.l();
        if (l != null) {
            sQLiteStatement.bindLong(12, (long) l.intValue());
        }
        Boolean m = aVar.m();
        if (m != null) {
            sQLiteStatement.bindLong(13, m.booleanValue() ? 1 : 0);
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
    public com.ifengyu.intercom.greendao.bean.a readEntity(Cursor cursor, int i) {
        Boolean valueOf;
        Long valueOf2 = cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0));
        Double valueOf3 = cursor.isNull(i + 1) ? null : Double.valueOf(cursor.getDouble(i + 1));
        Double valueOf4 = cursor.isNull(i + 2) ? null : Double.valueOf(cursor.getDouble(i + 2));
        Double valueOf5 = cursor.isNull(i + 3) ? null : Double.valueOf(cursor.getDouble(i + 3));
        Double valueOf6 = cursor.isNull(i + 4) ? null : Double.valueOf(cursor.getDouble(i + 4));
        Integer valueOf7 = cursor.isNull(i + 5) ? null : Integer.valueOf(cursor.getInt(i + 5));
        Integer valueOf8 = cursor.isNull(i + 6) ? null : Integer.valueOf(cursor.getInt(i + 6));
        Integer valueOf9 = cursor.isNull(i + 7) ? null : Integer.valueOf(cursor.getInt(i + 7));
        Integer valueOf10 = cursor.isNull(i + 8) ? null : Integer.valueOf(cursor.getInt(i + 8));
        String string = cursor.isNull(i + 9) ? null : cursor.getString(i + 9);
        String string2 = cursor.isNull(i + 10) ? null : cursor.getString(i + 10);
        Integer valueOf11 = cursor.isNull(i + 11) ? null : Integer.valueOf(cursor.getInt(i + 11));
        if (cursor.isNull(i + 12)) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(cursor.getShort(i + 12) != 0);
        }
        return new com.ifengyu.intercom.greendao.bean.a(valueOf2, valueOf3, valueOf4, valueOf5, valueOf6, valueOf7, valueOf8, valueOf9, valueOf10, string, string2, valueOf11, valueOf);
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, com.ifengyu.intercom.greendao.bean.a aVar, int i) {
        Boolean bool = null;
        aVar.a(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        aVar.a(cursor.isNull(i + 1) ? null : Double.valueOf(cursor.getDouble(i + 1)));
        aVar.b(cursor.isNull(i + 2) ? null : Double.valueOf(cursor.getDouble(i + 2)));
        aVar.c(cursor.isNull(i + 3) ? null : Double.valueOf(cursor.getDouble(i + 3)));
        aVar.d(cursor.isNull(i + 4) ? null : Double.valueOf(cursor.getDouble(i + 4)));
        aVar.a(cursor.isNull(i + 5) ? null : Integer.valueOf(cursor.getInt(i + 5)));
        aVar.b(cursor.isNull(i + 6) ? null : Integer.valueOf(cursor.getInt(i + 6)));
        aVar.c(cursor.isNull(i + 7) ? null : Integer.valueOf(cursor.getInt(i + 7)));
        aVar.d(cursor.isNull(i + 8) ? null : Integer.valueOf(cursor.getInt(i + 8)));
        aVar.a(cursor.isNull(i + 9) ? null : cursor.getString(i + 9));
        aVar.b(cursor.isNull(i + 10) ? null : cursor.getString(i + 10));
        aVar.e(cursor.isNull(i + 11) ? null : Integer.valueOf(cursor.getInt(i + 11)));
        if (!cursor.isNull(i + 12)) {
            bool = Boolean.valueOf(cursor.getShort(i + 12) != 0);
        }
        aVar.a(bool);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(com.ifengyu.intercom.greendao.bean.a aVar, long j) {
        aVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(com.ifengyu.intercom.greendao.bean.a aVar) {
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    /* renamed from: b */
    public boolean hasKey(com.ifengyu.intercom.greendao.bean.a aVar) {
        return aVar.a() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
