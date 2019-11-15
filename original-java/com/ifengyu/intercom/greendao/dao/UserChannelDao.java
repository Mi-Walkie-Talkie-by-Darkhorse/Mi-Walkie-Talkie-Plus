package com.ifengyu.intercom.greendao.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.mi.milinkforgame.sdk.data.Const;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;

public class UserChannelDao extends a<UserChannel, Long> {
    public static final String TABLENAME = "USER_CHANNEL";

    public static class Properties {
        public static final f a = new f(0, Long.class, "id", true, "_id");
        public static final f b = new f(1, Integer.TYPE, "no", false, "NO");
        public static final f c = new f(2, Integer.TYPE, "type", false, "TYPE");
        public static final f d = new f(3, String.class, HttpPostBodyUtil.NAME, false, "NAME");
        public static final f e = new f(4, Integer.TYPE, Const.PARAM_FREQ, false, "FREQ");
        public static final f f = new f(5, Integer.TYPE, "tone", false, "TONE");
        public static final f g = new f(6, Integer.TYPE, "freq2", false, "FREQ2");
        public static final f h = new f(7, Integer.TYPE, "tone2", false, "TONE2");
    }

    public UserChannelDao(org.greenrobot.greendao.b.a aVar, b bVar) {
        super(aVar, bVar);
    }

    public static void a(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"USER_CHANNEL\" (\"_id\" INTEGER PRIMARY KEY ,\"NO\" INTEGER NOT NULL ,\"TYPE\" INTEGER NOT NULL ,\"NAME\" TEXT,\"FREQ\" INTEGER NOT NULL ,\"TONE\" INTEGER NOT NULL ,\"FREQ2\" INTEGER NOT NULL ,\"TONE2\" INTEGER NOT NULL );");
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(c cVar, UserChannel userChannel) {
        cVar.d();
        Long a = userChannel.a();
        if (a != null) {
            cVar.a(1, a.longValue());
        }
        cVar.a(2, (long) userChannel.b());
        cVar.a(3, (long) userChannel.c());
        String d = userChannel.d();
        if (d != null) {
            cVar.a(4, d);
        }
        cVar.a(5, (long) userChannel.e());
        cVar.a(6, (long) userChannel.f());
        cVar.a(7, (long) userChannel.g());
        cVar.a(8, (long) userChannel.h());
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final void bindValues(SQLiteStatement sQLiteStatement, UserChannel userChannel) {
        sQLiteStatement.clearBindings();
        Long a = userChannel.a();
        if (a != null) {
            sQLiteStatement.bindLong(1, a.longValue());
        }
        sQLiteStatement.bindLong(2, (long) userChannel.b());
        sQLiteStatement.bindLong(3, (long) userChannel.c());
        String d = userChannel.d();
        if (d != null) {
            sQLiteStatement.bindString(4, d);
        }
        sQLiteStatement.bindLong(5, (long) userChannel.e());
        sQLiteStatement.bindLong(6, (long) userChannel.f());
        sQLiteStatement.bindLong(7, (long) userChannel.g());
        sQLiteStatement.bindLong(8, (long) userChannel.h());
    }

    /* renamed from: a */
    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    /* renamed from: b */
    public UserChannel readEntity(Cursor cursor, int i) {
        String str = null;
        Long valueOf = cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0));
        int i2 = cursor.getInt(i + 1);
        int i3 = cursor.getInt(i + 2);
        if (!cursor.isNull(i + 3)) {
            str = cursor.getString(i + 3);
        }
        return new UserChannel(valueOf, i2, i3, str, cursor.getInt(i + 4), cursor.getInt(i + 5), cursor.getInt(i + 6), cursor.getInt(i + 7));
    }

    /* renamed from: a */
    public void readEntity(Cursor cursor, UserChannel userChannel, int i) {
        String str = null;
        userChannel.a(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        userChannel.a(cursor.getInt(i + 1));
        userChannel.b(cursor.getInt(i + 2));
        if (!cursor.isNull(i + 3)) {
            str = cursor.getString(i + 3);
        }
        userChannel.a(str);
        userChannel.c(cursor.getInt(i + 4));
        userChannel.d(cursor.getInt(i + 5));
        userChannel.e(cursor.getInt(i + 6));
        userChannel.f(cursor.getInt(i + 7));
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final Long updateKeyAfterInsert(UserChannel userChannel, long j) {
        userChannel.a(Long.valueOf(j));
        return Long.valueOf(j);
    }

    /* renamed from: a */
    public Long getKey(UserChannel userChannel) {
        if (userChannel != null) {
            return userChannel.a();
        }
        return null;
    }

    /* renamed from: b */
    public boolean hasKey(UserChannel userChannel) {
        return userChannel.a() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
