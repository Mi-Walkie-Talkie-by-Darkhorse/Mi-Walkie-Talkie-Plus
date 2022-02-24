package com.ifengyu.intercom.lite.database;

import a.g.a.b;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.room.Database;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import androidx.room.i;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.lite.f.c;
import com.ifengyu.intercom.lite.f.e;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.library.a.g;

@TypeConverters({a.class})
@Database(entities = {ConfigFileModel.class, ChannelModel.class, DeviceModel.class}, exportSchema = false, version = 2)
/* loaded from: classes2.dex */
public abstract class LiteDatabase extends RoomDatabase {
    private static final String j = "LiteDatabase";
    private static String k = "intercom_%s.db";
    private static volatile LiteDatabase l;
    private static String m;
    static final androidx.room.q.a n = new a(1, 2);

    /* loaded from: classes2.dex */
    static class a extends androidx.room.q.a {
        a(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.q.a
        public void a(@NonNull b bVar) {
            bVar.execSQL("ALTER TABLE device ADD COLUMN token VERCHAR(64) DEFAULT NULL");
        }
    }

    public static LiteDatabase a(Context context) {
        if (l == null) {
            b(context, m);
        }
        return l;
    }

    public static void b(Context context, String str) {
        if (context == null || str == null) {
            throw new IllegalArgumentException("Database init exception!");
        }
        String str2 = m;
        if (str2 == null || !str2.equals(str)) {
            m = str;
            String str3 = j;
            g.c(str3, "Database init, loginUserId: " + str);
            l = a(context.getApplicationContext(), String.format(k, str));
        }
    }

    public static LiteDatabase o() {
        return a(MiTalkiApp.b());
    }

    public abstract com.ifengyu.intercom.lite.f.a l();

    public abstract c m();

    public abstract e n();

    private static LiteDatabase a(Context context, String str) {
        RoomDatabase.a a2 = i.a(context, LiteDatabase.class, str);
        a2.a();
        a2.a(n);
        return (LiteDatabase) a2.b();
    }
}
