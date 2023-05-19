package com.ifengyu.intercom.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenHelper;
import androidx.room.p045w0.DBUtil;
import androidx.room.p045w0.TableInfo;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ifengyu.intercom.database.p155a.ChannelDao;
import com.ifengyu.intercom.database.p155a.ChannelDao_Impl;
import com.ifengyu.intercom.database.p155a.ConfigFileDao;
import com.ifengyu.intercom.database.p155a.ConfigFileDao_Impl;
import com.ifengyu.intercom.database.p155a.DeviceDao;
import com.ifengyu.intercom.database.p155a.DeviceDao_Impl;
import com.ifengyu.intercom.database.p155a.NetDeviceDao;
import com.ifengyu.intercom.database.p155a.NetDeviceDao_Impl;
import com.ifengyu.intercom.database.p155a.ShareLocationDao;
import com.ifengyu.intercom.database.p155a.ShareLocationDao_Impl;
import com.umeng.analytics.pro.UMCommonContent;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p000a.p017g.p018a.SupportSQLiteDatabase;
import p000a.p017g.p018a.SupportSQLiteOpenHelper;

/* loaded from: classes2.dex */
public final class AppDatabase_Impl extends AppDatabase {

    /* renamed from: v */
    private volatile ConfigFileDao f12131v;

    /* renamed from: w */
    private volatile ChannelDao f12132w;

    /* renamed from: x */
    private volatile DeviceDao f12133x;

    /* renamed from: y */
    private volatile NetDeviceDao f12134y;

    /* renamed from: z */
    private volatile ShareLocationDao f12135z;

    /* renamed from: com.ifengyu.intercom.database.AppDatabase_Impl$a */
    /* loaded from: classes2.dex */
    class C3162a extends RoomOpenHelper.AbstractC0934a {
        C3162a(int i) {
            super(i);
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: a */
        public void mo8486a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `config_file` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `from` TEXT, `create_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `from_device_type` INTEGER NOT NULL)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_config_file_name` ON `config_file` (`name`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `channel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `config_id` INTEGER, `channel_seq` INTEGER NOT NULL, `receive_freq` INTEGER NOT NULL, `send_freq` INTEGER NOT NULL, `receive_tone_type` INTEGER NOT NULL, `receive_tone_value` INTEGER NOT NULL, `send_tone_type` INTEGER NOT NULL, `send_tone_value` INTEGER NOT NULL, `channel_type` INTEGER NOT NULL, `channel_name` TEXT, FOREIGN KEY(`config_id`) REFERENCES `config_file`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
            supportSQLiteDatabase.mo21771p("CREATE INDEX IF NOT EXISTS `index_channel_config_id` ON `channel` (`config_id`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `device` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `address` TEXT, `device_id` TEXT, `device_type` INTEGER NOT NULL, `device_color` INTEGER NOT NULL, `version_soft` INTEGER NOT NULL, `version_hw` INTEGER NOT NULL, `version_voice` INTEGER NOT NULL, `connected` INTEGER NOT NULL, `create_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `enabled` INTEGER NOT NULL, `token` TEXT, `agreed_protocol_version` INTEGER NOT NULL)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_device_address` ON `device` (`address`)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_device_device_id` ON `device` (`device_id`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `net_device` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `sn` TEXT, `user_id` INTEGER NOT NULL, `account` TEXT, `nickname` TEXT, `avatar` TEXT, `user_type` INTEGER NOT NULL, `online` INTEGER NOT NULL, `battery` INTEGER NOT NULL, `bindTime` INTEGER NOT NULL, `imei` TEXT, `iccid` TEXT, `color` INTEGER NOT NULL, `hw_version` TEXT, `sw_version` TEXT, `fw_version` TEXT, FOREIGN KEY(`sn`) REFERENCES `device`(`device_id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_net_device_sn` ON `net_device` (`sn`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `share_location` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `user_id` INTEGER NOT NULL, `name` TEXT, `img_url` TEXT, `longitude` INTEGER NOT NULL, `latitude` INTEGER NOT NULL, `altitude` INTEGER NOT NULL, `time` INTEGER NOT NULL, `freq` INTEGER NOT NULL, `rx_css` INTEGER NOT NULL, `from_dev_type` INTEGER NOT NULL)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_share_location_user_id` ON `share_location` (`user_id`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            supportSQLiteDatabase.mo21771p("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'dfa212f23e9f6c3367e7dc3c76f0a2a4')");
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: b */
        public void mo8485b(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `config_file`");
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `channel`");
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `device`");
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `net_device`");
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `share_location`");
            if (((RoomDatabase) AppDatabase_Impl.this).f4328g != null) {
                int size = ((RoomDatabase) AppDatabase_Impl.this).f4328g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0901b) ((RoomDatabase) AppDatabase_Impl.this).f4328g.get(i)).m21914b(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: c */
        protected void mo8484c(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (((RoomDatabase) AppDatabase_Impl.this).f4328g != null) {
                int size = ((RoomDatabase) AppDatabase_Impl.this).f4328g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0901b) ((RoomDatabase) AppDatabase_Impl.this).f4328g.get(i)).m21915a(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: d */
        public void mo8483d(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) AppDatabase_Impl.this).f4322a = supportSQLiteDatabase;
            supportSQLiteDatabase.mo21771p("PRAGMA foreign_keys = ON");
            AppDatabase_Impl.this.m21932p(supportSQLiteDatabase);
            if (((RoomDatabase) AppDatabase_Impl.this).f4328g != null) {
                int size = ((RoomDatabase) AppDatabase_Impl.this).f4328g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0901b) ((RoomDatabase) AppDatabase_Impl.this).f4328g.get(i)).m21913c(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: e */
        public void mo8482e(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: f */
        public void mo8481f(SupportSQLiteDatabase supportSQLiteDatabase) {
            DBUtil.m21798a(supportSQLiteDatabase);
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: g */
        protected RoomOpenHelper.C0935b mo8480g(SupportSQLiteDatabase supportSQLiteDatabase) {
            HashMap hashMap = new HashMap(6);
            hashMap.put("id", new TableInfo.C0946a("id", "INTEGER", false, 1, null, 1));
            hashMap.put("name", new TableInfo.C0946a("name", "TEXT", false, 0, null, 1));
            hashMap.put("from", new TableInfo.C0946a("from", "TEXT", false, 0, null, 1));
            hashMap.put("create_time", new TableInfo.C0946a("create_time", "INTEGER", true, 0, null, 1));
            hashMap.put("update_time", new TableInfo.C0946a("update_time", "INTEGER", true, 0, null, 1));
            hashMap.put("from_device_type", new TableInfo.C0946a("from_device_type", "INTEGER", true, 0, null, 1));
            HashSet hashSet = new HashSet(0);
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new TableInfo.C0949d("index_config_file_name", true, Arrays.asList("name")));
            TableInfo tableInfo = new TableInfo("config_file", hashMap, hashSet, hashSet2);
            TableInfo m21792a = TableInfo.m21792a(supportSQLiteDatabase, "config_file");
            if (!tableInfo.equals(m21792a)) {
                return new RoomOpenHelper.C0935b(false, "config_file(com.ifengyu.intercom.models.ConfigFileModel).\n Expected:\n" + tableInfo + "\n Found:\n" + m21792a);
            }
            HashMap hashMap2 = new HashMap(11);
            hashMap2.put("id", new TableInfo.C0946a("id", "INTEGER", false, 1, null, 1));
            hashMap2.put("config_id", new TableInfo.C0946a("config_id", "INTEGER", false, 0, null, 1));
            hashMap2.put("channel_seq", new TableInfo.C0946a("channel_seq", "INTEGER", true, 0, null, 1));
            hashMap2.put("receive_freq", new TableInfo.C0946a("receive_freq", "INTEGER", true, 0, null, 1));
            hashMap2.put("send_freq", new TableInfo.C0946a("send_freq", "INTEGER", true, 0, null, 1));
            hashMap2.put("receive_tone_type", new TableInfo.C0946a("receive_tone_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("receive_tone_value", new TableInfo.C0946a("receive_tone_value", "INTEGER", true, 0, null, 1));
            hashMap2.put("send_tone_type", new TableInfo.C0946a("send_tone_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("send_tone_value", new TableInfo.C0946a("send_tone_value", "INTEGER", true, 0, null, 1));
            hashMap2.put("channel_type", new TableInfo.C0946a("channel_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("channel_name", new TableInfo.C0946a("channel_name", "TEXT", false, 0, null, 1));
            HashSet hashSet3 = new HashSet(1);
            hashSet3.add(new TableInfo.C0947b("config_file", "CASCADE", "NO ACTION", Arrays.asList("config_id"), Arrays.asList("id")));
            HashSet hashSet4 = new HashSet(1);
            hashSet4.add(new TableInfo.C0949d("index_channel_config_id", false, Arrays.asList("config_id")));
            TableInfo tableInfo2 = new TableInfo("channel", hashMap2, hashSet3, hashSet4);
            TableInfo m21792a2 = TableInfo.m21792a(supportSQLiteDatabase, "channel");
            if (!tableInfo2.equals(m21792a2)) {
                return new RoomOpenHelper.C0935b(false, "channel(com.ifengyu.intercom.models.ChannelModel).\n Expected:\n" + tableInfo2 + "\n Found:\n" + m21792a2);
            }
            HashMap hashMap3 = new HashMap(15);
            hashMap3.put("id", new TableInfo.C0946a("id", "INTEGER", false, 1, null, 1));
            hashMap3.put("name", new TableInfo.C0946a("name", "TEXT", false, 0, null, 1));
            hashMap3.put("address", new TableInfo.C0946a("address", "TEXT", false, 0, null, 1));
            hashMap3.put("device_id", new TableInfo.C0946a("device_id", "TEXT", false, 0, null, 1));
            hashMap3.put(UMCommonContent.f19381ai, new TableInfo.C0946a(UMCommonContent.f19381ai, "INTEGER", true, 0, null, 1));
            hashMap3.put("device_color", new TableInfo.C0946a("device_color", "INTEGER", true, 0, null, 1));
            hashMap3.put("version_soft", new TableInfo.C0946a("version_soft", "INTEGER", true, 0, null, 1));
            hashMap3.put("version_hw", new TableInfo.C0946a("version_hw", "INTEGER", true, 0, null, 1));
            hashMap3.put("version_voice", new TableInfo.C0946a("version_voice", "INTEGER", true, 0, null, 1));
            hashMap3.put("connected", new TableInfo.C0946a("connected", "INTEGER", true, 0, null, 1));
            hashMap3.put("create_time", new TableInfo.C0946a("create_time", "INTEGER", true, 0, null, 1));
            hashMap3.put("update_time", new TableInfo.C0946a("update_time", "INTEGER", true, 0, null, 1));
            hashMap3.put("enabled", new TableInfo.C0946a("enabled", "INTEGER", true, 0, null, 1));
            hashMap3.put("token", new TableInfo.C0946a("token", "TEXT", false, 0, null, 1));
            hashMap3.put("agreed_protocol_version", new TableInfo.C0946a("agreed_protocol_version", "INTEGER", true, 0, null, 1));
            HashSet hashSet5 = new HashSet(0);
            HashSet hashSet6 = new HashSet(2);
            hashSet6.add(new TableInfo.C0949d("index_device_address", true, Arrays.asList("address")));
            hashSet6.add(new TableInfo.C0949d("index_device_device_id", true, Arrays.asList("device_id")));
            TableInfo tableInfo3 = new TableInfo("device", hashMap3, hashSet5, hashSet6);
            TableInfo m21792a3 = TableInfo.m21792a(supportSQLiteDatabase, "device");
            if (!tableInfo3.equals(m21792a3)) {
                return new RoomOpenHelper.C0935b(false, "device(com.ifengyu.intercom.models.DeviceModel).\n Expected:\n" + tableInfo3 + "\n Found:\n" + m21792a3);
            }
            HashMap hashMap4 = new HashMap(16);
            hashMap4.put("id", new TableInfo.C0946a("id", "INTEGER", false, 1, null, 1));
            hashMap4.put("sn", new TableInfo.C0946a("sn", "TEXT", false, 0, null, 1));
            hashMap4.put("user_id", new TableInfo.C0946a("user_id", "INTEGER", true, 0, null, 1));
            hashMap4.put("account", new TableInfo.C0946a("account", "TEXT", false, 0, null, 1));
            hashMap4.put("nickname", new TableInfo.C0946a("nickname", "TEXT", false, 0, null, 1));
            hashMap4.put("avatar", new TableInfo.C0946a("avatar", "TEXT", false, 0, null, 1));
            hashMap4.put("user_type", new TableInfo.C0946a("user_type", "INTEGER", true, 0, null, 1));
            hashMap4.put("online", new TableInfo.C0946a("online", "INTEGER", true, 0, null, 1));
            hashMap4.put(UMCommonContent.f19345Z, new TableInfo.C0946a(UMCommonContent.f19345Z, "INTEGER", true, 0, null, 1));
            hashMap4.put("bindTime", new TableInfo.C0946a("bindTime", "INTEGER", true, 0, null, 1));
            hashMap4.put("imei", new TableInfo.C0946a("imei", "TEXT", false, 0, null, 1));
            hashMap4.put(UMCommonContent.f19373aa, new TableInfo.C0946a(UMCommonContent.f19373aa, "TEXT", false, 0, null, 1));
            hashMap4.put("color", new TableInfo.C0946a("color", "INTEGER", true, 0, null, 1));
            hashMap4.put("hw_version", new TableInfo.C0946a("hw_version", "TEXT", false, 0, null, 1));
            hashMap4.put("sw_version", new TableInfo.C0946a("sw_version", "TEXT", false, 0, null, 1));
            hashMap4.put("fw_version", new TableInfo.C0946a("fw_version", "TEXT", false, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new TableInfo.C0947b("device", "CASCADE", "NO ACTION", Arrays.asList("sn"), Arrays.asList("device_id")));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new TableInfo.C0949d("index_net_device_sn", true, Arrays.asList("sn")));
            TableInfo tableInfo4 = new TableInfo("net_device", hashMap4, hashSet7, hashSet8);
            TableInfo m21792a4 = TableInfo.m21792a(supportSQLiteDatabase, "net_device");
            if (!tableInfo4.equals(m21792a4)) {
                return new RoomOpenHelper.C0935b(false, "net_device(com.ifengyu.intercom.models.NetDeviceModel).\n Expected:\n" + tableInfo4 + "\n Found:\n" + m21792a4);
            }
            HashMap hashMap5 = new HashMap(11);
            hashMap5.put("id", new TableInfo.C0946a("id", "INTEGER", false, 1, null, 1));
            hashMap5.put("user_id", new TableInfo.C0946a("user_id", "INTEGER", true, 0, null, 1));
            hashMap5.put("name", new TableInfo.C0946a("name", "TEXT", false, 0, null, 1));
            hashMap5.put("img_url", new TableInfo.C0946a("img_url", "TEXT", false, 0, null, 1));
            hashMap5.put("longitude", new TableInfo.C0946a("longitude", "INTEGER", true, 0, null, 1));
            hashMap5.put("latitude", new TableInfo.C0946a("latitude", "INTEGER", true, 0, null, 1));
            hashMap5.put("altitude", new TableInfo.C0946a("altitude", "INTEGER", true, 0, null, 1));
            hashMap5.put(CrashHianalyticsData.TIME, new TableInfo.C0946a(CrashHianalyticsData.TIME, "INTEGER", true, 0, null, 1));
            hashMap5.put("freq", new TableInfo.C0946a("freq", "INTEGER", true, 0, null, 1));
            hashMap5.put("rx_css", new TableInfo.C0946a("rx_css", "INTEGER", true, 0, null, 1));
            hashMap5.put("from_dev_type", new TableInfo.C0946a("from_dev_type", "INTEGER", true, 0, null, 1));
            HashSet hashSet9 = new HashSet(0);
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new TableInfo.C0949d("index_share_location_user_id", true, Arrays.asList("user_id")));
            TableInfo tableInfo5 = new TableInfo("share_location", hashMap5, hashSet9, hashSet10);
            TableInfo m21792a5 = TableInfo.m21792a(supportSQLiteDatabase, "share_location");
            if (!tableInfo5.equals(m21792a5)) {
                return new RoomOpenHelper.C0935b(false, "share_location(com.ifengyu.intercom.device.oldDevice.model.ShareLocationModel).\n Expected:\n" + tableInfo5 + "\n Found:\n" + m21792a5);
            }
            return new RoomOpenHelper.C0935b(true, null);
        }
    }

    @Override // com.ifengyu.intercom.database.AppDatabase
    /* renamed from: C */
    public ChannelDao mo14272C() {
        ChannelDao channelDao;
        if (this.f12132w != null) {
            return this.f12132w;
        }
        synchronized (this) {
            if (this.f12132w == null) {
                this.f12132w = new ChannelDao_Impl(this);
            }
            channelDao = this.f12132w;
        }
        return channelDao;
    }

    @Override // com.ifengyu.intercom.database.AppDatabase
    /* renamed from: D */
    public ConfigFileDao mo14271D() {
        ConfigFileDao configFileDao;
        if (this.f12131v != null) {
            return this.f12131v;
        }
        synchronized (this) {
            if (this.f12131v == null) {
                this.f12131v = new ConfigFileDao_Impl(this);
            }
            configFileDao = this.f12131v;
        }
        return configFileDao;
    }

    @Override // com.ifengyu.intercom.database.AppDatabase
    /* renamed from: E */
    public DeviceDao mo14270E() {
        DeviceDao deviceDao;
        if (this.f12133x != null) {
            return this.f12133x;
        }
        synchronized (this) {
            if (this.f12133x == null) {
                this.f12133x = new DeviceDao_Impl(this);
            }
            deviceDao = this.f12133x;
        }
        return deviceDao;
    }

    @Override // com.ifengyu.intercom.database.AppDatabase
    /* renamed from: H */
    public NetDeviceDao mo14269H() {
        NetDeviceDao netDeviceDao;
        if (this.f12134y != null) {
            return this.f12134y;
        }
        synchronized (this) {
            if (this.f12134y == null) {
                this.f12134y = new NetDeviceDao_Impl(this);
            }
            netDeviceDao = this.f12134y;
        }
        return netDeviceDao;
    }

    @Override // com.ifengyu.intercom.database.AppDatabase
    /* renamed from: I */
    public ShareLocationDao mo14268I() {
        ShareLocationDao shareLocationDao;
        if (this.f12135z != null) {
            return this.f12135z;
        }
        synchronized (this) {
            if (this.f12135z == null) {
                this.f12135z = new ShareLocationDao_Impl(this);
            }
            shareLocationDao = this.f12135z;
        }
        return shareLocationDao;
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: e */
    protected InvalidationTracker mo8489e() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "config_file", "channel", "device", "net_device", "share_location");
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: f */
    protected SupportSQLiteOpenHelper mo8488f(DatabaseConfiguration databaseConfiguration) {
        RoomOpenHelper roomOpenHelper = new RoomOpenHelper(databaseConfiguration, new C3162a(6), "dfa212f23e9f6c3367e7dc3c76f0a2a4", "0a5843b520e98b0cd0a185210be1c365");
        SupportSQLiteOpenHelper.C0025b.C0026a m26380a = SupportSQLiteOpenHelper.C0025b.m26380a(databaseConfiguration.f4545b);
        m26380a.m26377c(databaseConfiguration.f4546c);
        m26380a.m26378b(roomOpenHelper);
        return databaseConfiguration.f4544a.mo21751a(m26380a.m26379a());
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: k */
    protected Map<Class<?>, List<Class<?>>> mo8487k() {
        HashMap hashMap = new HashMap();
        hashMap.put(ConfigFileDao.class, ConfigFileDao_Impl.m14252a());
        hashMap.put(ChannelDao.class, ChannelDao_Impl.m14254c());
        hashMap.put(DeviceDao.class, DeviceDao_Impl.m14234k());
        hashMap.put(NetDeviceDao.class, NetDeviceDao_Impl.m14225f());
        hashMap.put(ShareLocationDao.class, ShareLocationDao_Impl.m14219d());
        return hashMap;
    }
}
