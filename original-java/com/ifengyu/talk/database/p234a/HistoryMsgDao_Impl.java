package com.ifengyu.talk.database.p234a;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.p045w0.CursorUtil;
import androidx.room.p045w0.DBUtil;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: com.ifengyu.talk.database.a.b */
/* loaded from: classes2.dex */
public final class HistoryMsgDao_Impl implements HistoryMsgDao {

    /* renamed from: a */
    private final RoomDatabase f16579a;

    /* renamed from: b */
    private final EntityInsertionAdapter<HistoryMsgModel> f16580b;

    /* renamed from: c */
    private final SharedSQLiteStatement f16581c;

    /* compiled from: HistoryMsgDao_Impl.java */
    /* renamed from: com.ifengyu.talk.database.a.b$a */
    /* loaded from: classes2.dex */
    class C4985a extends EntityInsertionAdapter<HistoryMsgModel> {
        C4985a(HistoryMsgDao_Impl historyMsgDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "INSERT OR REPLACE INTO `history_msg` (`id`,`msg_type`,`body`,`msg_time`,`sender`,`receiver`,`sender_type`,`receiver_type`,`speech_time`,`u_name`,`account`,`gid`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: k */
        public void mo8466g(SupportSQLiteStatement supportSQLiteStatement, HistoryMsgModel historyMsgModel) {
            supportSQLiteStatement.mo21760c(1, historyMsgModel.getId());
            supportSQLiteStatement.mo21760c(2, historyMsgModel.getMsgType());
            if (historyMsgModel.getBody() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, historyMsgModel.getBody());
            }
            supportSQLiteStatement.mo21760c(4, historyMsgModel.getMsgTime());
            supportSQLiteStatement.mo21760c(5, historyMsgModel.getSender());
            supportSQLiteStatement.mo21760c(6, historyMsgModel.getReceiver());
            supportSQLiteStatement.mo21760c(7, historyMsgModel.getSenderType());
            supportSQLiteStatement.mo21760c(8, historyMsgModel.getReceiverType());
            supportSQLiteStatement.mo21760c(9, historyMsgModel.getSpeechTime());
            if (historyMsgModel.getUname() == null) {
                supportSQLiteStatement.mo21758e(10);
            } else {
                supportSQLiteStatement.mo21762a(10, historyMsgModel.getUname());
            }
            if (historyMsgModel.getAccount() == null) {
                supportSQLiteStatement.mo21758e(11);
            } else {
                supportSQLiteStatement.mo21762a(11, historyMsgModel.getAccount());
            }
            supportSQLiteStatement.mo21760c(12, historyMsgModel.getGid());
        }
    }

    /* compiled from: HistoryMsgDao_Impl.java */
    /* renamed from: com.ifengyu.talk.database.a.b$b */
    /* loaded from: classes2.dex */
    class C4986b extends SharedSQLiteStatement {
        C4986b(HistoryMsgDao_Impl historyMsgDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "delete from history_msg where receiver = ?";
        }
    }

    public HistoryMsgDao_Impl(RoomDatabase roomDatabase) {
        this.f16579a = roomDatabase;
        this.f16580b = new C4985a(this, roomDatabase);
        this.f16581c = new C4986b(this, roomDatabase);
    }

    /* renamed from: g */
    public static List<Class<?>> m8473g() {
        return Collections.emptyList();
    }

    @Override // com.ifengyu.talk.database.p234a.HistoryMsgDao
    /* renamed from: a */
    public List<HistoryMsgModel> mo8479a(long j, long j2, int i) {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from history_msg where receiver = ? and id < ? order by msg_time desc limit ?", 3);
        m21831h.mo21760c(1, j);
        m21831h.mo21760c(2, j2);
        m21831h.mo21760c(3, i);
        this.f16579a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f16579a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "msg_type");
            int m21799e3 = CursorUtil.m21799e(m21797b, "body");
            int m21799e4 = CursorUtil.m21799e(m21797b, "msg_time");
            int m21799e5 = CursorUtil.m21799e(m21797b, "sender");
            int m21799e6 = CursorUtil.m21799e(m21797b, SocialConstants.PARAM_RECEIVER);
            int m21799e7 = CursorUtil.m21799e(m21797b, "sender_type");
            int m21799e8 = CursorUtil.m21799e(m21797b, "receiver_type");
            int m21799e9 = CursorUtil.m21799e(m21797b, "speech_time");
            int m21799e10 = CursorUtil.m21799e(m21797b, "u_name");
            int m21799e11 = CursorUtil.m21799e(m21797b, "account");
            int m21799e12 = CursorUtil.m21799e(m21797b, "gid");
            ArrayList arrayList = new ArrayList(m21797b.getCount());
            while (m21797b.moveToNext()) {
                HistoryMsgModel historyMsgModel = new HistoryMsgModel();
                roomSQLiteQuery = m21831h;
                ArrayList arrayList2 = arrayList;
                try {
                    historyMsgModel.setId(m21797b.getLong(m21799e));
                    historyMsgModel.setMsgType(m21797b.getInt(m21799e2));
                    historyMsgModel.setBody(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                    historyMsgModel.setMsgTime(m21797b.getLong(m21799e4));
                    historyMsgModel.setSender(m21797b.getLong(m21799e5));
                    historyMsgModel.setReceiver(m21797b.getLong(m21799e6));
                    historyMsgModel.setSenderType(m21797b.getInt(m21799e7));
                    historyMsgModel.setReceiverType(m21797b.getInt(m21799e8));
                    historyMsgModel.setSpeechTime(m21797b.getLong(m21799e9));
                    historyMsgModel.setUname(m21797b.isNull(m21799e10) ? null : m21797b.getString(m21799e10));
                    historyMsgModel.setAccount(m21797b.isNull(m21799e11) ? null : m21797b.getString(m21799e11));
                    historyMsgModel.setGid(m21797b.getLong(m21799e12));
                    arrayList2.add(historyMsgModel);
                    arrayList = arrayList2;
                    m21831h = roomSQLiteQuery;
                } catch (Throwable th) {
                    th = th;
                    m21797b.close();
                    roomSQLiteQuery.m21828k();
                    throw th;
                }
            }
            RoomSQLiteQuery roomSQLiteQuery2 = m21831h;
            ArrayList arrayList3 = arrayList;
            m21797b.close();
            roomSQLiteQuery2.m21828k();
            return arrayList3;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = m21831h;
        }
    }

    @Override // com.ifengyu.talk.database.p234a.HistoryMsgDao
    /* renamed from: b */
    public HistoryMsgModel mo8478b(long j) {
        HistoryMsgModel historyMsgModel;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from history_msg where id = ?", 1);
        m21831h.mo21760c(1, j);
        this.f16579a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f16579a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "msg_type");
            int m21799e3 = CursorUtil.m21799e(m21797b, "body");
            int m21799e4 = CursorUtil.m21799e(m21797b, "msg_time");
            int m21799e5 = CursorUtil.m21799e(m21797b, "sender");
            int m21799e6 = CursorUtil.m21799e(m21797b, SocialConstants.PARAM_RECEIVER);
            int m21799e7 = CursorUtil.m21799e(m21797b, "sender_type");
            int m21799e8 = CursorUtil.m21799e(m21797b, "receiver_type");
            int m21799e9 = CursorUtil.m21799e(m21797b, "speech_time");
            int m21799e10 = CursorUtil.m21799e(m21797b, "u_name");
            int m21799e11 = CursorUtil.m21799e(m21797b, "account");
            int m21799e12 = CursorUtil.m21799e(m21797b, "gid");
            if (m21797b.moveToFirst()) {
                historyMsgModel = new HistoryMsgModel();
                historyMsgModel.setId(m21797b.getLong(m21799e));
                historyMsgModel.setMsgType(m21797b.getInt(m21799e2));
                historyMsgModel.setBody(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                historyMsgModel.setMsgTime(m21797b.getLong(m21799e4));
                historyMsgModel.setSender(m21797b.getLong(m21799e5));
                historyMsgModel.setReceiver(m21797b.getLong(m21799e6));
                historyMsgModel.setSenderType(m21797b.getInt(m21799e7));
                historyMsgModel.setReceiverType(m21797b.getInt(m21799e8));
                historyMsgModel.setSpeechTime(m21797b.getLong(m21799e9));
                historyMsgModel.setUname(m21797b.isNull(m21799e10) ? null : m21797b.getString(m21799e10));
                historyMsgModel.setAccount(m21797b.isNull(m21799e11) ? null : m21797b.getString(m21799e11));
                historyMsgModel.setGid(m21797b.getLong(m21799e12));
            } else {
                historyMsgModel = null;
            }
            return historyMsgModel;
        } finally {
            m21797b.close();
            m21831h.m21828k();
        }
    }

    @Override // com.ifengyu.talk.database.p234a.HistoryMsgDao
    /* renamed from: c */
    public HistoryMsgModel mo8477c() {
        HistoryMsgModel historyMsgModel;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from history_msg order by msg_time desc limit 1", 0);
        this.f16579a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f16579a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "msg_type");
            int m21799e3 = CursorUtil.m21799e(m21797b, "body");
            int m21799e4 = CursorUtil.m21799e(m21797b, "msg_time");
            int m21799e5 = CursorUtil.m21799e(m21797b, "sender");
            int m21799e6 = CursorUtil.m21799e(m21797b, SocialConstants.PARAM_RECEIVER);
            int m21799e7 = CursorUtil.m21799e(m21797b, "sender_type");
            int m21799e8 = CursorUtil.m21799e(m21797b, "receiver_type");
            int m21799e9 = CursorUtil.m21799e(m21797b, "speech_time");
            int m21799e10 = CursorUtil.m21799e(m21797b, "u_name");
            int m21799e11 = CursorUtil.m21799e(m21797b, "account");
            int m21799e12 = CursorUtil.m21799e(m21797b, "gid");
            if (m21797b.moveToFirst()) {
                historyMsgModel = new HistoryMsgModel();
                historyMsgModel.setId(m21797b.getLong(m21799e));
                historyMsgModel.setMsgType(m21797b.getInt(m21799e2));
                historyMsgModel.setBody(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                historyMsgModel.setMsgTime(m21797b.getLong(m21799e4));
                historyMsgModel.setSender(m21797b.getLong(m21799e5));
                historyMsgModel.setReceiver(m21797b.getLong(m21799e6));
                historyMsgModel.setSenderType(m21797b.getInt(m21799e7));
                historyMsgModel.setReceiverType(m21797b.getInt(m21799e8));
                historyMsgModel.setSpeechTime(m21797b.getLong(m21799e9));
                historyMsgModel.setUname(m21797b.isNull(m21799e10) ? null : m21797b.getString(m21799e10));
                historyMsgModel.setAccount(m21797b.isNull(m21799e11) ? null : m21797b.getString(m21799e11));
                historyMsgModel.setGid(m21797b.getLong(m21799e12));
            } else {
                historyMsgModel = null;
            }
            return historyMsgModel;
        } finally {
            m21797b.close();
            m21831h.m21828k();
        }
    }

    @Override // com.ifengyu.talk.database.p234a.HistoryMsgDao
    /* renamed from: d */
    public List<Long> mo8476d(ArrayList<HistoryMsgModel> arrayList) {
        this.f16579a.m21943b();
        this.f16579a.m21942c();
        try {
            List<Long> m21902j = this.f16580b.m21902j(arrayList);
            this.f16579a.m21922z();
            return m21902j;
        } finally {
            this.f16579a.m21940g();
        }
    }

    @Override // com.ifengyu.talk.database.p234a.HistoryMsgDao
    /* renamed from: e */
    public Long mo8475e(HistoryMsgModel historyMsgModel) {
        this.f16579a.m21943b();
        this.f16579a.m21942c();
        try {
            long m21903i = this.f16580b.m21903i(historyMsgModel);
            this.f16579a.m21922z();
            return Long.valueOf(m21903i);
        } finally {
            this.f16579a.m21940g();
        }
    }

    @Override // com.ifengyu.talk.database.p234a.HistoryMsgDao
    /* renamed from: f */
    public void mo8474f(long j) {
        this.f16579a.m21943b();
        SupportSQLiteStatement m21820a = this.f16581c.m21820a();
        m21820a.mo21760c(1, j);
        this.f16579a.m21942c();
        try {
            m21820a.mo21752q();
            this.f16579a.m21922z();
        } finally {
            this.f16579a.m21940g();
            this.f16581c.m21816f(m21820a);
        }
    }
}
