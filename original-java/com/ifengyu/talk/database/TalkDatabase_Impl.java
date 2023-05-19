package com.ifengyu.talk.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenHelper;
import androidx.room.p045w0.DBUtil;
import androidx.room.p045w0.TableInfo;
import com.ifengyu.talk.database.p234a.HistoryMsgDao;
import com.ifengyu.talk.database.p234a.HistoryMsgDao_Impl;
import com.ifengyu.talk.database.p234a.RecentTalkDao;
import com.ifengyu.talk.database.p234a.RecentTalkDao_Impl;
import com.tencent.open.SocialConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p000a.p017g.p018a.SupportSQLiteDatabase;
import p000a.p017g.p018a.SupportSQLiteOpenHelper;

/* loaded from: classes2.dex */
public final class TalkDatabase_Impl extends TalkDatabase {

    /* renamed from: q */
    private volatile RecentTalkDao f16576q;

    /* renamed from: r */
    private volatile HistoryMsgDao f16577r;

    /* renamed from: com.ifengyu.talk.database.TalkDatabase_Impl$a */
    /* loaded from: classes2.dex */
    class C4984a extends RoomOpenHelper.AbstractC0934a {
        C4984a(int i) {
            super(i);
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: a */
        public void mo8486a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `recent_talk` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `group_id` INTEGER, `group_name` TEXT, `group_avatar` TEXT, `update_time` INTEGER NOT NULL, `last_msg_json_str` TEXT)");
            supportSQLiteDatabase.mo21771p("CREATE UNIQUE INDEX IF NOT EXISTS `index_recent_talk_group_id` ON `recent_talk` (`group_id`)");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS `history_msg` (`id` INTEGER NOT NULL, `msg_type` INTEGER NOT NULL, `body` TEXT, `msg_time` INTEGER NOT NULL, `sender` INTEGER NOT NULL, `receiver` INTEGER NOT NULL, `sender_type` INTEGER NOT NULL, `receiver_type` INTEGER NOT NULL, `speech_time` INTEGER NOT NULL, `u_name` TEXT, `account` TEXT, `gid` INTEGER NOT NULL, PRIMARY KEY(`id`))");
            supportSQLiteDatabase.mo21771p("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            supportSQLiteDatabase.mo21771p("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '1a2919491c37bcd09cd87483a6a02888')");
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: b */
        public void mo8485b(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `recent_talk`");
            supportSQLiteDatabase.mo21771p("DROP TABLE IF EXISTS `history_msg`");
            if (((RoomDatabase) TalkDatabase_Impl.this).f4328g != null) {
                int size = ((RoomDatabase) TalkDatabase_Impl.this).f4328g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0901b) ((RoomDatabase) TalkDatabase_Impl.this).f4328g.get(i)).m21914b(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: c */
        protected void mo8484c(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (((RoomDatabase) TalkDatabase_Impl.this).f4328g != null) {
                int size = ((RoomDatabase) TalkDatabase_Impl.this).f4328g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0901b) ((RoomDatabase) TalkDatabase_Impl.this).f4328g.get(i)).m21915a(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.AbstractC0934a
        /* renamed from: d */
        public void mo8483d(SupportSQLiteDatabase supportSQLiteDatabase) {
            ((RoomDatabase) TalkDatabase_Impl.this).f4322a = supportSQLiteDatabase;
            TalkDatabase_Impl.this.m21932p(supportSQLiteDatabase);
            if (((RoomDatabase) TalkDatabase_Impl.this).f4328g != null) {
                int size = ((RoomDatabase) TalkDatabase_Impl.this).f4328g.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.AbstractC0901b) ((RoomDatabase) TalkDatabase_Impl.this).f4328g.get(i)).m21913c(supportSQLiteDatabase);
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
            hashMap.put("group_id", new TableInfo.C0946a("group_id", "INTEGER", false, 0, null, 1));
            hashMap.put("group_name", new TableInfo.C0946a("group_name", "TEXT", false, 0, null, 1));
            hashMap.put("group_avatar", new TableInfo.C0946a("group_avatar", "TEXT", false, 0, null, 1));
            hashMap.put("update_time", new TableInfo.C0946a("update_time", "INTEGER", true, 0, null, 1));
            hashMap.put("last_msg_json_str", new TableInfo.C0946a("last_msg_json_str", "TEXT", false, 0, null, 1));
            HashSet hashSet = new HashSet(0);
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new TableInfo.C0949d("index_recent_talk_group_id", true, Arrays.asList("group_id")));
            TableInfo tableInfo = new TableInfo("recent_talk", hashMap, hashSet, hashSet2);
            TableInfo m21792a = TableInfo.m21792a(supportSQLiteDatabase, "recent_talk");
            if (!tableInfo.equals(m21792a)) {
                return new RoomOpenHelper.C0935b(false, "recent_talk(com.ifengyu.talk.models.RecentTalkModel).\n Expected:\n" + tableInfo + "\n Found:\n" + m21792a);
            }
            HashMap hashMap2 = new HashMap(12);
            hashMap2.put("id", new TableInfo.C0946a("id", "INTEGER", true, 1, null, 1));
            hashMap2.put("msg_type", new TableInfo.C0946a("msg_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("body", new TableInfo.C0946a("body", "TEXT", false, 0, null, 1));
            hashMap2.put("msg_time", new TableInfo.C0946a("msg_time", "INTEGER", true, 0, null, 1));
            hashMap2.put("sender", new TableInfo.C0946a("sender", "INTEGER", true, 0, null, 1));
            hashMap2.put(SocialConstants.PARAM_RECEIVER, new TableInfo.C0946a(SocialConstants.PARAM_RECEIVER, "INTEGER", true, 0, null, 1));
            hashMap2.put("sender_type", new TableInfo.C0946a("sender_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("receiver_type", new TableInfo.C0946a("receiver_type", "INTEGER", true, 0, null, 1));
            hashMap2.put("speech_time", new TableInfo.C0946a("speech_time", "INTEGER", true, 0, null, 1));
            hashMap2.put("u_name", new TableInfo.C0946a("u_name", "TEXT", false, 0, null, 1));
            hashMap2.put("account", new TableInfo.C0946a("account", "TEXT", false, 0, null, 1));
            hashMap2.put("gid", new TableInfo.C0946a("gid", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo2 = new TableInfo("history_msg", hashMap2, new HashSet(0), new HashSet(0));
            TableInfo m21792a2 = TableInfo.m21792a(supportSQLiteDatabase, "history_msg");
            if (!tableInfo2.equals(m21792a2)) {
                return new RoomOpenHelper.C0935b(false, "history_msg(com.ifengyu.talk.models.HistoryMsgModel).\n Expected:\n" + tableInfo2 + "\n Found:\n" + m21792a2);
            }
            return new RoomOpenHelper.C0935b(true, null);
        }
    }

    @Override // com.ifengyu.talk.database.TalkDatabase
    /* renamed from: C */
    public HistoryMsgDao mo8502C() {
        HistoryMsgDao historyMsgDao;
        if (this.f16577r != null) {
            return this.f16577r;
        }
        synchronized (this) {
            if (this.f16577r == null) {
                this.f16577r = new HistoryMsgDao_Impl(this);
            }
            historyMsgDao = this.f16577r;
        }
        return historyMsgDao;
    }

    @Override // com.ifengyu.talk.database.TalkDatabase
    /* renamed from: F */
    public RecentTalkDao mo8501F() {
        RecentTalkDao recentTalkDao;
        if (this.f16576q != null) {
            return this.f16576q;
        }
        synchronized (this) {
            if (this.f16576q == null) {
                this.f16576q = new RecentTalkDao_Impl(this);
            }
            recentTalkDao = this.f16576q;
        }
        return recentTalkDao;
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: e */
    protected InvalidationTracker mo8489e() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "recent_talk", "history_msg");
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: f */
    protected SupportSQLiteOpenHelper mo8488f(DatabaseConfiguration databaseConfiguration) {
        RoomOpenHelper roomOpenHelper = new RoomOpenHelper(databaseConfiguration, new C4984a(1), "1a2919491c37bcd09cd87483a6a02888", "20dee1a3a7d7ff0d31fe9c38310c7ff6");
        SupportSQLiteOpenHelper.C0025b.C0026a m26380a = SupportSQLiteOpenHelper.C0025b.m26380a(databaseConfiguration.f4545b);
        m26380a.m26377c(databaseConfiguration.f4546c);
        m26380a.m26378b(roomOpenHelper);
        return databaseConfiguration.f4544a.mo21751a(m26380a.m26379a());
    }

    @Override // androidx.room.RoomDatabase
    /* renamed from: k */
    protected Map<Class<?>, List<Class<?>>> mo8487k() {
        HashMap hashMap = new HashMap();
        hashMap.put(RecentTalkDao.class, RecentTalkDao_Impl.m8467e());
        hashMap.put(HistoryMsgDao.class, HistoryMsgDao_Impl.m8473g());
        return hashMap;
    }
}
