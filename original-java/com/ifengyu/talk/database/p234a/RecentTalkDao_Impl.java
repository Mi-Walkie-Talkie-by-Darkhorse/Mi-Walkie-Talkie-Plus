package com.ifengyu.talk.database.p234a;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.p045w0.CursorUtil;
import androidx.room.p045w0.DBUtil;
import com.ifengyu.talk.models.RecentTalkModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: com.ifengyu.talk.database.a.d */
/* loaded from: classes2.dex */
public final class RecentTalkDao_Impl implements RecentTalkDao {

    /* renamed from: a */
    private final RoomDatabase f16582a;

    /* renamed from: b */
    private final EntityInsertionAdapter<RecentTalkModel> f16583b;

    /* renamed from: c */
    private final SharedSQLiteStatement f16584c;

    /* renamed from: d */
    private final SharedSQLiteStatement f16585d;

    /* compiled from: RecentTalkDao_Impl.java */
    /* renamed from: com.ifengyu.talk.database.a.d$a */
    /* loaded from: classes2.dex */
    class C4987a extends EntityInsertionAdapter<RecentTalkModel> {
        C4987a(RecentTalkDao_Impl recentTalkDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "INSERT OR REPLACE INTO `recent_talk` (`id`,`group_id`,`group_name`,`group_avatar`,`update_time`,`last_msg_json_str`) VALUES (?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: k */
        public void mo8466g(SupportSQLiteStatement supportSQLiteStatement, RecentTalkModel recentTalkModel) {
            if (recentTalkModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, recentTalkModel.getId().longValue());
            }
            if (recentTalkModel.getGroupId() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21760c(2, recentTalkModel.getGroupId().longValue());
            }
            if (recentTalkModel.getGroupName() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, recentTalkModel.getGroupName());
            }
            if (recentTalkModel.getGroupAvatar() == null) {
                supportSQLiteStatement.mo21758e(4);
            } else {
                supportSQLiteStatement.mo21762a(4, recentTalkModel.getGroupAvatar());
            }
            supportSQLiteStatement.mo21760c(5, recentTalkModel.getUpdateTime());
            if (recentTalkModel.getLastMsgJsonStr() == null) {
                supportSQLiteStatement.mo21758e(6);
            } else {
                supportSQLiteStatement.mo21762a(6, recentTalkModel.getLastMsgJsonStr());
            }
        }
    }

    /* compiled from: RecentTalkDao_Impl.java */
    /* renamed from: com.ifengyu.talk.database.a.d$b */
    /* loaded from: classes2.dex */
    class C4988b extends SharedSQLiteStatement {
        C4988b(RecentTalkDao_Impl recentTalkDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "delete from recent_talk where group_id = ?";
        }
    }

    /* compiled from: RecentTalkDao_Impl.java */
    /* renamed from: com.ifengyu.talk.database.a.d$c */
    /* loaded from: classes2.dex */
    class C4989c extends SharedSQLiteStatement {
        C4989c(RecentTalkDao_Impl recentTalkDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "delete from recent_talk";
        }
    }

    public RecentTalkDao_Impl(RoomDatabase roomDatabase) {
        this.f16582a = roomDatabase;
        this.f16583b = new C4987a(this, roomDatabase);
        this.f16584c = new C4988b(this, roomDatabase);
        this.f16585d = new C4989c(this, roomDatabase);
    }

    /* renamed from: e */
    public static List<Class<?>> m8467e() {
        return Collections.emptyList();
    }

    @Override // com.ifengyu.talk.database.p234a.RecentTalkDao
    /* renamed from: a */
    public void mo8471a(long j) {
        this.f16582a.m21943b();
        SupportSQLiteStatement m21820a = this.f16584c.m21820a();
        m21820a.mo21760c(1, j);
        this.f16582a.m21942c();
        try {
            m21820a.mo21752q();
            this.f16582a.m21922z();
        } finally {
            this.f16582a.m21940g();
            this.f16584c.m21816f(m21820a);
        }
    }

    @Override // com.ifengyu.talk.database.p234a.RecentTalkDao
    /* renamed from: b */
    public List<RecentTalkModel> mo8470b() {
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from recent_talk", 0);
        this.f16582a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f16582a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "group_id");
            int m21799e3 = CursorUtil.m21799e(m21797b, "group_name");
            int m21799e4 = CursorUtil.m21799e(m21797b, "group_avatar");
            int m21799e5 = CursorUtil.m21799e(m21797b, "update_time");
            int m21799e6 = CursorUtil.m21799e(m21797b, "last_msg_json_str");
            ArrayList arrayList = new ArrayList(m21797b.getCount());
            while (m21797b.moveToNext()) {
                RecentTalkModel recentTalkModel = new RecentTalkModel();
                recentTalkModel.setId(m21797b.isNull(m21799e) ? null : Long.valueOf(m21797b.getLong(m21799e)));
                recentTalkModel.setGroupId(m21797b.isNull(m21799e2) ? null : Long.valueOf(m21797b.getLong(m21799e2)));
                recentTalkModel.setGroupName(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                recentTalkModel.setGroupAvatar(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                recentTalkModel.setUpdateTime(m21797b.getLong(m21799e5));
                recentTalkModel.setLastMsgJsonStr(m21797b.isNull(m21799e6) ? null : m21797b.getString(m21799e6));
                arrayList.add(recentTalkModel);
            }
            return arrayList;
        } finally {
            m21797b.close();
            m21831h.m21828k();
        }
    }

    @Override // com.ifengyu.talk.database.p234a.RecentTalkDao
    /* renamed from: c */
    public void mo8469c() {
        this.f16582a.m21943b();
        SupportSQLiteStatement m21820a = this.f16585d.m21820a();
        this.f16582a.m21942c();
        try {
            m21820a.mo21752q();
            this.f16582a.m21922z();
        } finally {
            this.f16582a.m21940g();
            this.f16585d.m21816f(m21820a);
        }
    }

    @Override // com.ifengyu.talk.database.p234a.RecentTalkDao
    /* renamed from: d */
    public Long mo8468d(RecentTalkModel recentTalkModel) {
        this.f16582a.m21943b();
        this.f16582a.m21942c();
        try {
            long m21903i = this.f16583b.m21903i(recentTalkModel);
            this.f16582a.m21922z();
            return Long.valueOf(m21903i);
        } finally {
            this.f16582a.m21940g();
        }
    }
}
