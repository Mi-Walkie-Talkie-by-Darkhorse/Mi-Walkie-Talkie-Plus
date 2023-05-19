package com.ifengyu.talk.database;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import com.ifengyu.library.BuildConfig;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.DateConverter;
import com.ifengyu.talk.database.p234a.HistoryMsgDao;
import com.ifengyu.talk.database.p234a.RecentTalkDao;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.RecentTalkModel;

@TypeConverters({DateConverter.class})
@Database(entities = {RecentTalkModel.class, HistoryMsgModel.class}, exportSchema = false, version = 1)
/* loaded from: classes2.dex */
public abstract class TalkDatabase extends RoomDatabase {

    /* renamed from: m */
    private static final String f16572m = "TalkDatabase";

    /* renamed from: n */
    private static String f16573n;

    /* renamed from: o */
    private static volatile TalkDatabase f16574o;

    /* renamed from: p */
    private static String f16575p;

    static {
        f16573n = BuildConfig.f16360a.booleanValue() ? "talk_%s.db" : "talk_test_%s.db";
    }

    /* renamed from: B */
    private static TalkDatabase m8506B(Context context, String str) {
        RoomDatabase.C0900a m21844a = Room.m21844a(context, TalkDatabase.class, str);
        m21844a.m21918b();
        m21844a.m21916d();
        return (TalkDatabase) m21844a.m21917c();
    }

    /* renamed from: D */
    public static TalkDatabase m8505D() {
        return m8504E(BaseApp.m8712b());
    }

    /* renamed from: E */
    public static TalkDatabase m8504E(Context context) {
        if (f16574o == null) {
            m8503G(context, f16575p);
        }
        return f16574o;
    }

    /* renamed from: G */
    public static void m8503G(Context context, String str) {
        if (context != null && str != null) {
            String str2 = f16575p;
            if (str2 == null || !str2.equals(str)) {
                f16575p = str;
                String str3 = f16572m;
                C4971k.m8654f(str3, "Database init, loginUserId: " + str);
                f16574o = m8506B(context, String.format(f16573n, str));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Database init exception!");
    }

    /* renamed from: C */
    public abstract HistoryMsgDao mo8502C();

    /* renamed from: F */
    public abstract RecentTalkDao mo8501F();
}
