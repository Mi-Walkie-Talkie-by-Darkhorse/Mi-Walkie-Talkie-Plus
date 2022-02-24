package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.umeng.analytics.pro.am;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class SealSharkChannelDao extends AbstractDao<SealSharkChannel, Long> {
    public static final String TABLENAME = "SEAL_SHARK_CHANNEL";

    /* loaded from: classes.dex */
    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, am.d);
        public static final Property No = new Property(1, Integer.TYPE, "no", false, "NO");
        public static final Property Type = new Property(2, Integer.TYPE, "type", false, "TYPE");
        public static final Property TxPower = new Property(3, Integer.TYPE, "txPower", false, "TX_POWER");
        public static final Property RxFreq = new Property(4, Integer.TYPE, "rxFreq", false, "RX_FREQ");
        public static final Property TxFreq = new Property(5, Integer.TYPE, "txFreq", false, "TX_FREQ");
        public static final Property Name = new Property(6, String.class, "name", false, "NAME");
        public static final Property Sq = new Property(7, Integer.TYPE, "sq", false, "SQ");
        public static final Property Vox = new Property(8, Integer.TYPE, "vox", false, "VOX");
        public static final Property RxCss = new Property(9, Integer.TYPE, "rxCss", false, "RX_CSS");
        public static final Property TxCss = new Property(10, Integer.TYPE, "txCss", false, "TX_CSS");
        public static final Property Elim = new Property(11, Boolean.TYPE, "elim", false, "ELIM");
        public static final Property Band = new Property(12, Integer.TYPE, "band", false, "BAND");
        public static final Property Polite = new Property(13, Boolean.TYPE, "polite", false, "POLITE");
        public static final Property IsStChannel = new Property(14, Boolean.TYPE, "isStChannel", false, "IS_ST_CHANNEL");
    }

    public SealSharkChannelDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"SEAL_SHARK_CHANNEL\" (\"_id\" INTEGER PRIMARY KEY ,\"NO\" INTEGER NOT NULL ,\"TYPE\" INTEGER NOT NULL ,\"TX_POWER\" INTEGER NOT NULL ,\"RX_FREQ\" INTEGER NOT NULL ,\"TX_FREQ\" INTEGER NOT NULL ,\"NAME\" TEXT,\"SQ\" INTEGER NOT NULL ,\"VOX\" INTEGER NOT NULL ,\"RX_CSS\" INTEGER NOT NULL ,\"TX_CSS\" INTEGER NOT NULL ,\"ELIM\" INTEGER NOT NULL ,\"BAND\" INTEGER NOT NULL ,\"POLITE\" INTEGER NOT NULL ,\"IS_ST_CHANNEL\" INTEGER NOT NULL );");
    }

    /* renamed from: b */
    public boolean hasKey(SealSharkChannel sealSharkChannel) {
        return sealSharkChannel.c() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(DatabaseStatement databaseStatement, SealSharkChannel sealSharkChannel) {
        databaseStatement.clearBindings();
        Long c2 = sealSharkChannel.c();
        if (c2 != null) {
            databaseStatement.bindLong(1, c2.longValue());
        }
        databaseStatement.bindLong(2, sealSharkChannel.f());
        databaseStatement.bindLong(3, sealSharkChannel.n());
        databaseStatement.bindLong(4, sealSharkChannel.m());
        databaseStatement.bindLong(5, sealSharkChannel.i());
        databaseStatement.bindLong(6, sealSharkChannel.l());
        String e = sealSharkChannel.e();
        if (e != null) {
            databaseStatement.bindString(7, e);
        }
        databaseStatement.bindLong(8, sealSharkChannel.j());
        databaseStatement.bindLong(9, sealSharkChannel.o());
        databaseStatement.bindLong(10, sealSharkChannel.h());
        databaseStatement.bindLong(11, sealSharkChannel.k());
        long j = 1;
        databaseStatement.bindLong(12, sealSharkChannel.b() ? 1L : 0L);
        databaseStatement.bindLong(13, sealSharkChannel.a());
        databaseStatement.bindLong(14, sealSharkChannel.g() ? 1L : 0L);
        if (!sealSharkChannel.d()) {
            j = 0;
        }
        databaseStatement.bindLong(15, j);
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
    public SealSharkChannel readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        String str = null;
        Long valueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = cursor.getInt(i + 1);
        int i4 = cursor.getInt(i + 2);
        int i5 = cursor.getInt(i + 3);
        int i6 = cursor.getInt(i + 4);
        int i7 = cursor.getInt(i + 5);
        int i8 = i + 6;
        if (!cursor.isNull(i8)) {
            str = cursor.getString(i8);
        }
        return new SealSharkChannel(valueOf, i3, i4, i5, i6, i7, str, cursor.getInt(i + 7), cursor.getInt(i + 8), cursor.getInt(i + 9), cursor.getInt(i + 10), cursor.getShort(i + 11) != 0, cursor.getInt(i + 12), cursor.getShort(i + 13) != 0, cursor.getShort(i + 14) != 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, SealSharkChannel sealSharkChannel) {
        sQLiteStatement.clearBindings();
        Long c2 = sealSharkChannel.c();
        if (c2 != null) {
            sQLiteStatement.bindLong(1, c2.longValue());
        }
        sQLiteStatement.bindLong(2, sealSharkChannel.f());
        sQLiteStatement.bindLong(3, sealSharkChannel.n());
        sQLiteStatement.bindLong(4, sealSharkChannel.m());
        sQLiteStatement.bindLong(5, sealSharkChannel.i());
        sQLiteStatement.bindLong(6, sealSharkChannel.l());
        String e = sealSharkChannel.e();
        if (e != null) {
            sQLiteStatement.bindString(7, e);
        }
        sQLiteStatement.bindLong(8, sealSharkChannel.j());
        sQLiteStatement.bindLong(9, sealSharkChannel.o());
        sQLiteStatement.bindLong(10, sealSharkChannel.h());
        sQLiteStatement.bindLong(11, sealSharkChannel.k());
        long j = 1;
        sQLiteStatement.bindLong(12, sealSharkChannel.b() ? 1L : 0L);
        sQLiteStatement.bindLong(13, sealSharkChannel.a());
        sQLiteStatement.bindLong(14, sealSharkChannel.g() ? 1L : 0L);
        if (!sealSharkChannel.d()) {
            j = 0;
        }
        sQLiteStatement.bindLong(15, j);
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, SealSharkChannel sealSharkChannel, int i) {
        int i2 = i + 0;
        String str = null;
        sealSharkChannel.a(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        sealSharkChannel.b(cursor.getInt(i + 1));
        sealSharkChannel.i(cursor.getInt(i + 2));
        sealSharkChannel.h(cursor.getInt(i + 3));
        sealSharkChannel.d(cursor.getInt(i + 4));
        sealSharkChannel.g(cursor.getInt(i + 5));
        int i3 = i + 6;
        if (!cursor.isNull(i3)) {
            str = cursor.getString(i3);
        }
        sealSharkChannel.a(str);
        sealSharkChannel.e(cursor.getInt(i + 7));
        sealSharkChannel.j(cursor.getInt(i + 8));
        sealSharkChannel.c(cursor.getInt(i + 9));
        sealSharkChannel.f(cursor.getInt(i + 10));
        boolean z = true;
        sealSharkChannel.a(cursor.getShort(i + 11) != 0);
        sealSharkChannel.a(cursor.getInt(i + 12));
        sealSharkChannel.c(cursor.getShort(i + 13) != 0);
        if (cursor.getShort(i + 14) == 0) {
            z = false;
        }
        sealSharkChannel.b(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(SealSharkChannel sealSharkChannel, long j) {
        sealSharkChannel.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(SealSharkChannel sealSharkChannel) {
        if (sealSharkChannel != null) {
            return sealSharkChannel.c();
        }
        return null;
    }
}
