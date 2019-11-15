package com.ifengyu.intercom.greendao.bean;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class UserLocationDao extends a<d, Long> {
    public static final String TABLENAME = "USER_LOCATION";

    public static class Properties {
        public static final f a = new f(0, Long.class, "id", true, "_id");
        public static final f b = new f(1, Integer.class, AuthorizeActivityBase.KEY_USERID, false, "USERID");
        public static final f c = new f(2, String.class, HttpPostBodyUtil.NAME, false, "NAME");
        public static final f d = new f(3, String.class, "imgurl", false, "IMGURL");
        public static final f e = new f(4, Integer.class, "longitude", false, "LONGITUDE");
        public static final f f = new f(5, Integer.class, "latitude", false, "LATITUDE");
        public static final f g = new f(6, Integer.class, "altitude", false, "ALTITUDE");
        public static final f h = new f(7, Integer.class, Values.TIME, false, "TIME");
        public static final f i = new f(8, Integer.class, Const.PARAM_FREQ, false, "FREQ");
        public static final f j = new f(9, Integer.class, "rxCss", false, "RX_CSS");
        public static final f k = new f(10, Integer.class, "fromDevType", false, "FROM_DEV_TYPE");
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(c cVar, d dVar) {
        cVar.d();
        Long a = dVar.a();
        if (a != null) {
            cVar.a(1, a.longValue());
        }
        Integer b = dVar.b();
        if (b != null) {
            cVar.a(2, (long) b.intValue());
        }
        String c = dVar.c();
        if (c != null) {
            cVar.a(3, c);
        }
        String d = dVar.d();
        if (d != null) {
            cVar.a(4, d);
        }
        Integer e = dVar.e();
        if (e != null) {
            cVar.a(5, (long) e.intValue());
        }
        Integer f = dVar.f();
        if (f != null) {
            cVar.a(6, (long) f.intValue());
        }
        Integer g = dVar.g();
        if (g != null) {
            cVar.a(7, (long) g.intValue());
        }
        Integer h = dVar.h();
        if (h != null) {
            cVar.a(8, (long) h.intValue());
        }
        Integer i = dVar.i();
        if (i != null) {
            cVar.a(9, (long) i.intValue());
        }
        Integer j = dVar.j();
        if (j != null) {
            cVar.a(10, (long) j.intValue());
        }
        Integer k = dVar.k();
        if (k != null) {
            cVar.a(11, (long) k.intValue());
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, d dVar) {
        sQLiteStatement.clearBindings();
        Long a = dVar.a();
        if (a != null) {
            sQLiteStatement.bindLong(1, a.longValue());
        }
        Integer b = dVar.b();
        if (b != null) {
            sQLiteStatement.bindLong(2, (long) b.intValue());
        }
        String c = dVar.c();
        if (c != null) {
            sQLiteStatement.bindString(3, c);
        }
        String d = dVar.d();
        if (d != null) {
            sQLiteStatement.bindString(4, d);
        }
        Integer e = dVar.e();
        if (e != null) {
            sQLiteStatement.bindLong(5, (long) e.intValue());
        }
        Integer f = dVar.f();
        if (f != null) {
            sQLiteStatement.bindLong(6, (long) f.intValue());
        }
        Integer g = dVar.g();
        if (g != null) {
            sQLiteStatement.bindLong(7, (long) g.intValue());
        }
        Integer h = dVar.h();
        if (h != null) {
            sQLiteStatement.bindLong(8, (long) h.intValue());
        }
        Integer i = dVar.i();
        if (i != null) {
            sQLiteStatement.bindLong(9, (long) i.intValue());
        }
        Integer j = dVar.j();
        if (j != null) {
            sQLiteStatement.bindLong(10, (long) j.intValue());
        }
        Integer k = dVar.k();
        if (k != null) {
            sQLiteStatement.bindLong(11, (long) k.intValue());
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
    public d readEntity(Cursor cursor, int i) {
        Integer num = null;
        Long valueOf = cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0));
        Integer valueOf2 = cursor.isNull(i + 1) ? null : Integer.valueOf(cursor.getInt(i + 1));
        String string = cursor.isNull(i + 2) ? null : cursor.getString(i + 2);
        String string2 = cursor.isNull(i + 3) ? null : cursor.getString(i + 3);
        Integer valueOf3 = cursor.isNull(i + 4) ? null : Integer.valueOf(cursor.getInt(i + 4));
        Integer valueOf4 = cursor.isNull(i + 5) ? null : Integer.valueOf(cursor.getInt(i + 5));
        Integer valueOf5 = cursor.isNull(i + 6) ? null : Integer.valueOf(cursor.getInt(i + 6));
        Integer valueOf6 = cursor.isNull(i + 7) ? null : Integer.valueOf(cursor.getInt(i + 7));
        Integer valueOf7 = cursor.isNull(i + 8) ? null : Integer.valueOf(cursor.getInt(i + 8));
        Integer valueOf8 = cursor.isNull(i + 9) ? null : Integer.valueOf(cursor.getInt(i + 9));
        if (!cursor.isNull(i + 10)) {
            num = Integer.valueOf(cursor.getInt(i + 10));
        }
        return new d(valueOf, valueOf2, string, string2, valueOf3, valueOf4, valueOf5, valueOf6, valueOf7, valueOf8, num);
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, d dVar, int i) {
        Integer num = null;
        dVar.a(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        dVar.a(cursor.isNull(i + 1) ? null : Integer.valueOf(cursor.getInt(i + 1)));
        dVar.a(cursor.isNull(i + 2) ? null : cursor.getString(i + 2));
        dVar.b(cursor.isNull(i + 3) ? null : cursor.getString(i + 3));
        dVar.b(cursor.isNull(i + 4) ? null : Integer.valueOf(cursor.getInt(i + 4)));
        dVar.c(cursor.isNull(i + 5) ? null : Integer.valueOf(cursor.getInt(i + 5)));
        dVar.d(cursor.isNull(i + 6) ? null : Integer.valueOf(cursor.getInt(i + 6)));
        dVar.e(cursor.isNull(i + 7) ? null : Integer.valueOf(cursor.getInt(i + 7)));
        dVar.f(cursor.isNull(i + 8) ? null : Integer.valueOf(cursor.getInt(i + 8)));
        dVar.g(cursor.isNull(i + 9) ? null : Integer.valueOf(cursor.getInt(i + 9)));
        if (!cursor.isNull(i + 10)) {
            num = Integer.valueOf(cursor.getInt(i + 10));
        }
        dVar.h(num);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(d dVar, long j) {
        dVar.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(d dVar) {
        if (dVar != null) {
            return dVar.a();
        }
        return null;
    }

    /* renamed from: b */
    public boolean hasKey(d dVar) {
        return dVar.a() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
