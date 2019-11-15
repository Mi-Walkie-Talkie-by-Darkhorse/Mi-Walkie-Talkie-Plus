package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;

public class SealSharkChannelDao extends a<SealSharkChannel, Long> {
    public static final String TABLENAME = "SEAL_SHARK_CHANNEL";

    public static class Properties {
        public static final f a = new f(0, Long.class, "id", true, "_id");
        public static final f b = new f(1, Integer.TYPE, "no", false, "NO");
        public static final f c = new f(2, Integer.TYPE, "type", false, "TYPE");
        public static final f d = new f(3, Integer.TYPE, "txPower", false, "TX_POWER");
        public static final f e = new f(4, Integer.TYPE, "rxFreq", false, "RX_FREQ");
        public static final f f = new f(5, Integer.TYPE, "txFreq", false, "TX_FREQ");
        public static final f g = new f(6, String.class, HttpPostBodyUtil.NAME, false, "NAME");
        public static final f h = new f(7, Integer.TYPE, "sq", false, "SQ");
        public static final f i = new f(8, Integer.TYPE, "vox", false, "VOX");
        public static final f j = new f(9, Integer.TYPE, "rxCss", false, "RX_CSS");
        public static final f k = new f(10, Integer.TYPE, "txCss", false, "TX_CSS");
        public static final f l = new f(11, Boolean.TYPE, "elim", false, "ELIM");
        public static final f m = new f(12, Integer.TYPE, "band", false, "BAND");
        public static final f n = new f(13, Boolean.TYPE, "polite", false, "POLITE");
        public static final f o = new f(14, Boolean.TYPE, "isStChannel", false, "IS_ST_CHANNEL");
    }

    public SealSharkChannelDao(org.greenrobot.greendao.b.a aVar, b bVar) {
        super(aVar, bVar);
    }

    public static void a(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"SEAL_SHARK_CHANNEL\" (\"_id\" INTEGER PRIMARY KEY ,\"NO\" INTEGER NOT NULL ,\"TYPE\" INTEGER NOT NULL ,\"TX_POWER\" INTEGER NOT NULL ,\"RX_FREQ\" INTEGER NOT NULL ,\"TX_FREQ\" INTEGER NOT NULL ,\"NAME\" TEXT,\"SQ\" INTEGER NOT NULL ,\"VOX\" INTEGER NOT NULL ,\"RX_CSS\" INTEGER NOT NULL ,\"TX_CSS\" INTEGER NOT NULL ,\"ELIM\" INTEGER NOT NULL ,\"BAND\" INTEGER NOT NULL ,\"POLITE\" INTEGER NOT NULL ,\"IS_ST_CHANNEL\" INTEGER NOT NULL );");
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(c cVar, SealSharkChannel sealSharkChannel) {
        long j;
        long j2;
        long j3 = 1;
        cVar.d();
        Long a = sealSharkChannel.a();
        if (a != null) {
            cVar.a(1, a.longValue());
        }
        cVar.a(2, (long) sealSharkChannel.b());
        cVar.a(3, (long) sealSharkChannel.c());
        cVar.a(4, (long) sealSharkChannel.d());
        cVar.a(5, (long) sealSharkChannel.e());
        cVar.a(6, (long) sealSharkChannel.f());
        String g = sealSharkChannel.g();
        if (g != null) {
            cVar.a(7, g);
        }
        cVar.a(8, (long) sealSharkChannel.h());
        cVar.a(9, (long) sealSharkChannel.i());
        cVar.a(10, (long) sealSharkChannel.j());
        cVar.a(11, (long) sealSharkChannel.k());
        if (sealSharkChannel.l()) {
            j = 1;
        } else {
            j = 0;
        }
        cVar.a(12, j);
        cVar.a(13, (long) sealSharkChannel.m());
        if (sealSharkChannel.n()) {
            j2 = 1;
        } else {
            j2 = 0;
        }
        cVar.a(14, j2);
        if (!sealSharkChannel.o()) {
            j3 = 0;
        }
        cVar.a(15, j3);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, SealSharkChannel sealSharkChannel) {
        long j;
        long j2;
        long j3 = 1;
        sQLiteStatement.clearBindings();
        Long a = sealSharkChannel.a();
        if (a != null) {
            sQLiteStatement.bindLong(1, a.longValue());
        }
        sQLiteStatement.bindLong(2, (long) sealSharkChannel.b());
        sQLiteStatement.bindLong(3, (long) sealSharkChannel.c());
        sQLiteStatement.bindLong(4, (long) sealSharkChannel.d());
        sQLiteStatement.bindLong(5, (long) sealSharkChannel.e());
        sQLiteStatement.bindLong(6, (long) sealSharkChannel.f());
        String g = sealSharkChannel.g();
        if (g != null) {
            sQLiteStatement.bindString(7, g);
        }
        sQLiteStatement.bindLong(8, (long) sealSharkChannel.h());
        sQLiteStatement.bindLong(9, (long) sealSharkChannel.i());
        sQLiteStatement.bindLong(10, (long) sealSharkChannel.j());
        sQLiteStatement.bindLong(11, (long) sealSharkChannel.k());
        if (sealSharkChannel.l()) {
            j = 1;
        } else {
            j = 0;
        }
        sQLiteStatement.bindLong(12, j);
        sQLiteStatement.bindLong(13, (long) sealSharkChannel.m());
        if (sealSharkChannel.n()) {
            j2 = 1;
        } else {
            j2 = 0;
        }
        sQLiteStatement.bindLong(14, j2);
        if (!sealSharkChannel.o()) {
            j3 = 0;
        }
        sQLiteStatement.bindLong(15, j3);
    }

    /* renamed from: a */
    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    /* renamed from: b */
    public SealSharkChannel readEntity(Cursor cursor, int i) {
        return new SealSharkChannel(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)), cursor.getInt(i + 1), cursor.getInt(i + 2), cursor.getInt(i + 3), cursor.getInt(i + 4), cursor.getInt(i + 5), cursor.isNull(i + 6) ? null : cursor.getString(i + 6), cursor.getInt(i + 7), cursor.getInt(i + 8), cursor.getInt(i + 9), cursor.getInt(i + 10), cursor.getShort(i + 11) != 0, cursor.getInt(i + 12), cursor.getShort(i + 13) != 0, cursor.getShort(i + 14) != 0);
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, SealSharkChannel sealSharkChannel, int i) {
        boolean z;
        boolean z2;
        String str = null;
        boolean z3 = true;
        sealSharkChannel.a(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        sealSharkChannel.a(cursor.getInt(i + 1));
        sealSharkChannel.b(cursor.getInt(i + 2));
        sealSharkChannel.c(cursor.getInt(i + 3));
        sealSharkChannel.d(cursor.getInt(i + 4));
        sealSharkChannel.e(cursor.getInt(i + 5));
        if (!cursor.isNull(i + 6)) {
            str = cursor.getString(i + 6);
        }
        sealSharkChannel.a(str);
        sealSharkChannel.f(cursor.getInt(i + 7));
        sealSharkChannel.g(cursor.getInt(i + 8));
        sealSharkChannel.h(cursor.getInt(i + 9));
        sealSharkChannel.i(cursor.getInt(i + 10));
        if (cursor.getShort(i + 11) != 0) {
            z = true;
        } else {
            z = false;
        }
        sealSharkChannel.a(z);
        sealSharkChannel.j(cursor.getInt(i + 12));
        if (cursor.getShort(i + 13) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        sealSharkChannel.b(z2);
        if (cursor.getShort(i + 14) == 0) {
            z3 = false;
        }
        sealSharkChannel.c(z3);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(SealSharkChannel sealSharkChannel, long j) {
        sealSharkChannel.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(SealSharkChannel sealSharkChannel) {
        if (sealSharkChannel != null) {
            return sealSharkChannel.a();
        }
        return null;
    }

    /* renamed from: b */
    public boolean hasKey(SealSharkChannel sealSharkChannel) {
        return sealSharkChannel.a() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
