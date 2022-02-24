package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.umeng.analytics.pro.am;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;

/* loaded from: classes.dex */
public class UserChannelDao extends AbstractDao<UserChannel, Long> {
    public static final String TABLENAME = "USER_CHANNEL";

    /* loaded from: classes.dex */
    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, am.d);
        public static final Property No = new Property(1, Integer.TYPE, "no", false, "NO");
        public static final Property Type = new Property(2, Integer.TYPE, "type", false, "TYPE");
        public static final Property Name = new Property(3, String.class, "name", false, "NAME");
        public static final Property Freq = new Property(4, Integer.TYPE, "freq", false, "FREQ");
        public static final Property Tone = new Property(5, Integer.TYPE, "tone", false, "TONE");
        public static final Property Freq2 = new Property(6, Integer.TYPE, "freq2", false, "FREQ2");
        public static final Property Tone2 = new Property(7, Integer.TYPE, "tone2", false, "TONE2");
    }

    public UserChannelDao(DaoConfig daoConfig, b bVar) {
        super(daoConfig, bVar);
    }

    public static void a(Database database, boolean z) {
        String str = z ? "IF NOT EXISTS " : "";
        database.execSQL("CREATE TABLE " + str + "\"USER_CHANNEL\" (\"_id\" INTEGER PRIMARY KEY ,\"NO\" INTEGER NOT NULL ,\"TYPE\" INTEGER NOT NULL ,\"NAME\" TEXT,\"FREQ\" INTEGER NOT NULL ,\"TONE\" INTEGER NOT NULL ,\"FREQ2\" INTEGER NOT NULL ,\"TONE2\" INTEGER NOT NULL );");
    }

    /* renamed from: b */
    public boolean hasKey(UserChannel userChannel) {
        return userChannel.c() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(DatabaseStatement databaseStatement, UserChannel userChannel) {
        databaseStatement.clearBindings();
        Long c2 = userChannel.c();
        if (c2 != null) {
            databaseStatement.bindLong(1, c2.longValue());
        }
        databaseStatement.bindLong(2, userChannel.e());
        databaseStatement.bindLong(3, userChannel.h());
        String d = userChannel.d();
        if (d != null) {
            databaseStatement.bindString(4, d);
        }
        databaseStatement.bindLong(5, userChannel.a());
        databaseStatement.bindLong(6, userChannel.f());
        databaseStatement.bindLong(7, userChannel.b());
        databaseStatement.bindLong(8, userChannel.g());
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
    public UserChannel readEntity(Cursor cursor, int i) {
        int i2 = i + 0;
        Long valueOf = cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2));
        int i3 = i + 3;
        return new UserChannel(valueOf, cursor.getInt(i + 1), cursor.getInt(i + 2), cursor.isNull(i3) ? null : cursor.getString(i3), cursor.getInt(i + 4), cursor.getInt(i + 5), cursor.getInt(i + 6), cursor.getInt(i + 7));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, UserChannel userChannel) {
        sQLiteStatement.clearBindings();
        Long c2 = userChannel.c();
        if (c2 != null) {
            sQLiteStatement.bindLong(1, c2.longValue());
        }
        sQLiteStatement.bindLong(2, userChannel.e());
        sQLiteStatement.bindLong(3, userChannel.h());
        String d = userChannel.d();
        if (d != null) {
            sQLiteStatement.bindString(4, d);
        }
        sQLiteStatement.bindLong(5, userChannel.a());
        sQLiteStatement.bindLong(6, userChannel.f());
        sQLiteStatement.bindLong(7, userChannel.b());
        sQLiteStatement.bindLong(8, userChannel.g());
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, UserChannel userChannel, int i) {
        int i2 = i + 0;
        String str = null;
        userChannel.a(cursor.isNull(i2) ? null : Long.valueOf(cursor.getLong(i2)));
        userChannel.c(cursor.getInt(i + 1));
        userChannel.f(cursor.getInt(i + 2));
        int i3 = i + 3;
        if (!cursor.isNull(i3)) {
            str = cursor.getString(i3);
        }
        userChannel.a(str);
        userChannel.a(cursor.getInt(i + 4));
        userChannel.d(cursor.getInt(i + 5));
        userChannel.b(cursor.getInt(i + 6));
        userChannel.e(cursor.getInt(i + 7));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(UserChannel userChannel, long j) {
        userChannel.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(UserChannel userChannel) {
        if (userChannel != null) {
            return userChannel.c();
        }
        return null;
    }
}
