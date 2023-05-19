package com.ifengyu.intercom.database;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import androidx.room.p044v0.Migration;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.database.p155a.ChannelDao;
import com.ifengyu.intercom.database.p155a.ConfigFileDao;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.database.p155a.NetDeviceDao;
import com.ifengyu.intercom.database.p155a.ShareLocationDao;
import com.ifengyu.intercom.device.oldDevice.model.ShareLocationModel;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.library.BuildConfig;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.DateConverter;
import p000a.p017g.p018a.SupportSQLiteDatabase;

@TypeConverters({DateConverter.class})
@Database(entities = {ConfigFileModel.class, ChannelModel.class, DeviceModel.class, NetDeviceModel.class, ShareLocationModel.class}, exportSchema = false, version = 6)
/* loaded from: classes2.dex */
public abstract class AppDatabase extends RoomDatabase {

    /* renamed from: m */
    private static final String f12122m = "AppDatabase";

    /* renamed from: n */
    private static String f12123n;

    /* renamed from: o */
    private static volatile AppDatabase f12124o;

    /* renamed from: p */
    private static String f12125p;

    /* renamed from: q */
    static final Migration f12126q;

    /* renamed from: r */
    static final Migration f12127r;

    /* renamed from: s */
    static final Migration f12128s;

    /* renamed from: t */
    static final Migration f12129t;

    /* renamed from: u */
    static final Migration f12130u;

    /* renamed from: com.ifengyu.intercom.database.AppDatabase$a */
    /* loaded from: classes2.dex */
    class C3157a extends Migration {
        C3157a(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p044v0.Migration
        /* renamed from: a */
        public void mo14273a(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("ALTER TABLE device ADD COLUMN token VERCHAR(64) DEFAULT NULL");
        }
    }

    /* renamed from: com.ifengyu.intercom.database.AppDatabase$b */
    /* loaded from: classes2.dex */
    class C3158b extends Migration {
        C3158b(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p044v0.Migration
        /* renamed from: a */
        public void mo14273a(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("UPDATE `device` SET `device_type` = 9 WHERE `device_type` = 36611");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `net_device` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `sn` TEXT, `user_id` INTEGER NOT NULL, `account` TEXT, `nickname` TEXT, `avatar` TEXT, `user_type` INTEGER NOT NULL, `online` INTEGER NOT NULL, `battery` INTEGER NOT NULL, `bindTime` INTEGER NOT NULL, `imei` TEXT, `iccid` TEXT, `color` INTEGER NOT NULL, `hw_version` TEXT, `sw_version` TEXT, FOREIGN KEY(`sn`) REFERENCES `device`(`device_id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_net_device_sn` ON `net_device` (`sn`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `dolphin_channel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `no` INTEGER NOT NULL, `type` INTEGER NOT NULL, `name` TEXT, `freq` INTEGER NOT NULL, `tone` INTEGER NOT NULL, `freq2` INTEGER NOT NULL, `tone2` INTEGER NOT NULL)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_dolphin_channel_id` ON `dolphin_channel` (`id`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `seal_shark_channel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `no` INTEGER NOT NULL, `type` INTEGER NOT NULL, `tx_power` INTEGER NOT NULL, `rx_freq` INTEGER NOT NULL, `tx_freq` INTEGER NOT NULL, `name` TEXT, `sq` INTEGER NOT NULL, `vox` INTEGER NOT NULL, `rx_css` INTEGER NOT NULL, `tx_css` INTEGER NOT NULL, `elim` INTEGER NOT NULL, `band` INTEGER NOT NULL, `polite` INTEGER NOT NULL, `is_st_channel` INTEGER NOT NULL)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_seal_shark_channel_id` ON `seal_shark_channel` (`id`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `share_location` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `user_id` INTEGER NOT NULL, `name` TEXT, `img_url` TEXT, `longitude` INTEGER NOT NULL, `latitude` INTEGER NOT NULL, `altitude` INTEGER NOT NULL, `time` INTEGER NOT NULL, `freq` INTEGER NOT NULL, `rx_css` INTEGER NOT NULL, `from_dev_type` INTEGER NOT NULL)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_share_location_user_id` ON `share_location` (`user_id`)");
        }
    }

    /* renamed from: com.ifengyu.intercom.database.AppDatabase$c */
    /* loaded from: classes2.dex */
    class C3159c extends Migration {
        C3159c(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p044v0.Migration
        /* renamed from: a */
        public void mo14273a(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("ALTER TABLE device ADD COLUMN agreed_protocol_version INTEGER NOT NULL DEFAULT 0");
            supportSQLiteDatabase.mo21771p("ALTER TABLE net_device ADD COLUMN fw_version TEXT");
        }
    }

    /* renamed from: com.ifengyu.intercom.database.AppDatabase$d */
    /* loaded from: classes2.dex */
    class C3160d extends Migration {
        C3160d(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p044v0.Migration
        /* renamed from: a */
        public void mo14273a(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `dolphin_channel`");
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `seal_shark_channel`");
        }
    }

    /* renamed from: com.ifengyu.intercom.database.AppDatabase$e */
    /* loaded from: classes2.dex */
    class C3161e extends Migration {
        C3161e(int i, int i2) {
            super(i, i2);
        }

        @Override // androidx.room.p044v0.Migration
        /* renamed from: a */
        public void mo14273a(@NonNull SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("ALTER TABLE channel ADD COLUMN channel_type INTEGER NOT NULL DEFAULT 2");
            supportSQLiteDatabase.mo21771p("ALTER TABLE channel ADD COLUMN channel_name TEXT");
            supportSQLiteDatabase.mo21771p("ALTER TABLE config_file ADD COLUMN from_device_type INTEGER NOT NULL DEFAULT 9");
        }
    }

    static {
        f12123n = BuildConfig.f16360a.booleanValue() ? "intercom_%s.db" : "intercom_test_%s.db";
        f12126q = new C3157a(1, 2);
        f12127r = new C3158b(2, 3);
        f12128s = new C3159c(3, 4);
        f12129t = new C3160d(4, 5);
        f12130u = new C3161e(5, 6);
    }

    /* renamed from: B */
    private static AppDatabase m14277B(Context context, String str) {
        RoomDatabase.C0900a m21844a = Room.m21844a(context, AppDatabase.class, str);
        m21844a.m21918b();
        m21844a.m21916d();
        m21844a.m21919a(f12126q, f12127r, f12128s, f12129t, f12130u);
        return (AppDatabase) m21844a.m21917c();
    }

    /* renamed from: F */
    public static AppDatabase m14276F() {
        return m14275G(MiTalkiApp.m14296h());
    }

    /* renamed from: G */
    public static AppDatabase m14275G(Context context) {
        if (f12124o == null) {
            m14274J(context, f12125p);
        }
        return f12124o;
    }

    /* renamed from: J */
    public static void m14274J(Context context, String str) {
        if (context != null && str != null) {
            String str2 = f12125p;
            if (str2 == null || !str2.equals(str)) {
                f12125p = str;
                String str3 = f12122m;
                C4971k.m8654f(str3, "Database init, loginUserId: " + str);
                f12124o = m14277B(context, String.format(f12123n, str));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Database init exception!");
    }

    /* renamed from: C */
    public abstract ChannelDao mo14272C();

    /* renamed from: D */
    public abstract ConfigFileDao mo14271D();

    /* renamed from: E */
    public abstract DeviceDao mo14270E();

    /* renamed from: H */
    public abstract NetDeviceDao mo14269H();

    /* renamed from: I */
    public abstract ShareLocationDao mo14268I();
}
