package com.ifengyu.intercom.lite.database;

import a.g.a.b;
import a.g.a.c;
import androidx.room.RoomDatabase;
import androidx.room.g;
import androidx.room.k;
import androidx.room.r.f;
import com.ifengyu.intercom.lite.f.c;
import com.ifengyu.intercom.lite.f.d;
import com.ifengyu.intercom.lite.f.e;
import com.umeng.analytics.pro.ai;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class LiteDatabase_Impl extends LiteDatabase {
    private volatile c o;
    private volatile com.ifengyu.intercom.lite.f.a p;
    private volatile e q;

    /* loaded from: classes2.dex */
    class a extends k.a {
        a(int i) {
            super(i);
        }

        @Override // androidx.room.k.a
        public void a(b bVar) {
            bVar.execSQL("CREATE TABLE IF NOT EXISTS `config_file` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `from` TEXT, `create_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL)");
            bVar.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_config_file_name` ON `config_file` (`name`)");
            bVar.execSQL("CREATE TABLE IF NOT EXISTS `channel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `config_id` INTEGER, `channel_seq` INTEGER NOT NULL, `receive_freq` INTEGER NOT NULL, `send_freq` INTEGER NOT NULL, `receive_tone_type` INTEGER NOT NULL, `receive_tone_value` INTEGER NOT NULL, `send_tone_type` INTEGER NOT NULL, `send_tone_value` INTEGER NOT NULL, FOREIGN KEY(`config_id`) REFERENCES `config_file`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
            bVar.execSQL("CREATE INDEX IF NOT EXISTS `index_channel_config_id` ON `channel` (`config_id`)");
            bVar.execSQL("CREATE TABLE IF NOT EXISTS `device` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT, `address` TEXT, `device_id` TEXT, `device_type` INTEGER NOT NULL, `device_color` INTEGER NOT NULL, `version_soft` INTEGER NOT NULL, `version_hw` INTEGER NOT NULL, `version_voice` INTEGER NOT NULL, `connected` INTEGER NOT NULL, `create_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `enabled` INTEGER NOT NULL, `token` TEXT)");
            bVar.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_device_address` ON `device` (`address`)");
            bVar.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_device_device_id` ON `device` (`device_id`)");
            bVar.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            bVar.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'f34577af7bab5f91c229bf2cd96116d1')");
        }

        @Override // androidx.room.k.a
        public void b(b bVar) {
            bVar.execSQL("DROP TABLE IF EXISTS `config_file`");
            bVar.execSQL("DROP TABLE IF EXISTS `channel`");
            bVar.execSQL("DROP TABLE IF EXISTS `device`");
            if (((RoomDatabase) LiteDatabase_Impl.this).g != null) {
                int size = ((RoomDatabase) LiteDatabase_Impl.this).g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.b) ((RoomDatabase) LiteDatabase_Impl.this).g.get(i)).b(bVar);
                }
            }
        }

        @Override // androidx.room.k.a
        protected void c(b bVar) {
            if (((RoomDatabase) LiteDatabase_Impl.this).g != null) {
                int size = ((RoomDatabase) LiteDatabase_Impl.this).g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.b) ((RoomDatabase) LiteDatabase_Impl.this).g.get(i)).a(bVar);
                }
            }
        }

        @Override // androidx.room.k.a
        public void d(b bVar) {
            ((RoomDatabase) LiteDatabase_Impl.this).f2584a = bVar;
            bVar.execSQL("PRAGMA foreign_keys = ON");
            LiteDatabase_Impl.this.a(bVar);
            if (((RoomDatabase) LiteDatabase_Impl.this).g != null) {
                int size = ((RoomDatabase) LiteDatabase_Impl.this).g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.b) ((RoomDatabase) LiteDatabase_Impl.this).g.get(i)).c(bVar);
                }
            }
        }

        @Override // androidx.room.k.a
        public void e(b bVar) {
        }

        @Override // androidx.room.k.a
        public void f(b bVar) {
            androidx.room.r.c.a(bVar);
        }

        @Override // androidx.room.k.a
        protected k.b g(b bVar) {
            HashMap hashMap = new HashMap(5);
            hashMap.put("id", new f.a("id", "INTEGER", false, 1, null, 1));
            hashMap.put("name", new f.a("name", "TEXT", false, 0, null, 1));
            hashMap.put("from", new f.a("from", "TEXT", false, 0, null, 1));
            hashMap.put("create_time", new f.a("create_time", "INTEGER", true, 0, null, 1));
            hashMap.put("update_time", new f.a("update_time", "INTEGER", true, 0, null, 1));
            HashSet hashSet = new HashSet(0);
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new f.d("index_config_file_name", true, Arrays.asList("name")));
            f fVar = new f("config_file", hashMap, hashSet, hashSet2);
            f a2 = f.a(bVar, "config_file");
            if (!fVar.equals(a2)) {
                return new k.b(false, "config_file(com.ifengyu.intercom.lite.models.ConfigFileModel).\n Expected:\n" + fVar + "\n Found:\n" + a2);
            }
            HashMap hashMap2 = new HashMap(9);
            hashMap2.put("id", new f.a("id", "INTEGER", false, 1, null, 1));
            hashMap2.put("config_id", new f.a("config_id", "INTEGER", false, 0, null, 1));
            hashMap2.put("channel_seq", new f.a("channel_seq", "INTEGER", true, 0, null, 1));
            hashMap2.put("receive_freq", new f.a("receive_freq", "INTEGER", true, 0, null, 1));
            hashMap2.put("send_freq", new f.a("send_freq", "INTEGER", true, 0, null, 1));
            hashMap2.put("receive_tone_type", new f.a("receive_tone_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("receive_tone_value", new f.a("receive_tone_value", "INTEGER", true, 0, null, 1));
            hashMap2.put("send_tone_type", new f.a("send_tone_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("send_tone_value", new f.a("send_tone_value", "INTEGER", true, 0, null, 1));
            HashSet hashSet3 = new HashSet(1);
            hashSet3.add(new f.b("config_file", "CASCADE", "NO ACTION", Arrays.asList("config_id"), Arrays.asList("id")));
            HashSet hashSet4 = new HashSet(1);
            hashSet4.add(new f.d("index_channel_config_id", false, Arrays.asList("config_id")));
            f fVar2 = new f("channel", hashMap2, hashSet3, hashSet4);
            f a3 = f.a(bVar, "channel");
            if (!fVar2.equals(a3)) {
                return new k.b(false, "channel(com.ifengyu.intercom.lite.models.ChannelModel).\n Expected:\n" + fVar2 + "\n Found:\n" + a3);
            }
            HashMap hashMap3 = new HashMap(14);
            hashMap3.put("id", new f.a("id", "INTEGER", false, 1, null, 1));
            hashMap3.put("name", new f.a("name", "TEXT", false, 0, null, 1));
            hashMap3.put("address", new f.a("address", "TEXT", false, 0, null, 1));
            hashMap3.put("device_id", new f.a("device_id", "TEXT", false, 0, null, 1));
            hashMap3.put(ai.ai, new f.a(ai.ai, "INTEGER", true, 0, null, 1));
            hashMap3.put("device_color", new f.a("device_color", "INTEGER", true, 0, null, 1));
            hashMap3.put("version_soft", new f.a("version_soft", "INTEGER", true, 0, null, 1));
            hashMap3.put("version_hw", new f.a("version_hw", "INTEGER", true, 0, null, 1));
            hashMap3.put("version_voice", new f.a("version_voice", "INTEGER", true, 0, null, 1));
            hashMap3.put("connected", new f.a("connected", "INTEGER", true, 0, null, 1));
            hashMap3.put("create_time", new f.a("create_time", "INTEGER", true, 0, null, 1));
            hashMap3.put("update_time", new f.a("update_time", "INTEGER", true, 0, null, 1));
            hashMap3.put("enabled", new f.a("enabled", "INTEGER", true, 0, null, 1));
            hashMap3.put("token", new f.a("token", "TEXT", false, 0, null, 1));
            HashSet hashSet5 = new HashSet(0);
            HashSet hashSet6 = new HashSet(2);
            hashSet6.add(new f.d("index_device_address", true, Arrays.asList("address")));
            hashSet6.add(new f.d("index_device_device_id", true, Arrays.asList("device_id")));
            f fVar3 = new f("device", hashMap3, hashSet5, hashSet6);
            f a4 = f.a(bVar, "device");
            if (fVar3.equals(a4)) {
                return new k.b(true, null);
            }
            return new k.b(false, "device(com.ifengyu.intercom.lite.models.DeviceModel).\n Expected:\n" + fVar3 + "\n Found:\n" + a4);
        }
    }

    @Override // com.ifengyu.intercom.lite.database.LiteDatabase
    public com.ifengyu.intercom.lite.f.a l() {
        com.ifengyu.intercom.lite.f.a aVar;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new com.ifengyu.intercom.lite.f.b(this);
            }
            aVar = this.p;
        }
        return aVar;
    }

    @Override // com.ifengyu.intercom.lite.database.LiteDatabase
    public c m() {
        c cVar;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new d(this);
            }
            cVar = this.o;
        }
        return cVar;
    }

    @Override // com.ifengyu.intercom.lite.database.LiteDatabase
    public e n() {
        e eVar;
        if (this.q != null) {
            return this.q;
        }
        synchronized (this) {
            if (this.q == null) {
                this.q = new com.ifengyu.intercom.lite.f.f(this);
            }
            eVar = this.q;
        }
        return eVar;
    }

    @Override // androidx.room.RoomDatabase
    protected g d() {
        return new g(this, new HashMap(0), new HashMap(0), "config_file", "channel", "device");
    }

    @Override // androidx.room.RoomDatabase
    protected a.g.a.c a(androidx.room.a aVar) {
        k kVar = new k(aVar, new a(2), "f34577af7bab5f91c229bf2cd96116d1", "9af1cbaad0db77a241e3d2e287723eef");
        c.b.a a2 = c.b.a(aVar.f2595b);
        a2.a(aVar.f2596c);
        a2.a(kVar);
        return aVar.f2594a.a(a2.a());
    }
}
