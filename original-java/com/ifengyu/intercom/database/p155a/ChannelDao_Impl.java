package com.ifengyu.intercom.database.p155a;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.p045w0.CursorUtil;
import androidx.room.p045w0.DBUtil;
import com.ifengyu.intercom.models.ChannelModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: com.ifengyu.intercom.database.a.b */
/* loaded from: classes2.dex */
public final class ChannelDao_Impl implements ChannelDao {

    /* renamed from: a */
    private final RoomDatabase f12137a;

    /* renamed from: b */
    private final EntityInsertionAdapter<ChannelModel> f12138b;

    /* compiled from: ChannelDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.b$a */
    /* loaded from: classes2.dex */
    class C3163a extends EntityInsertionAdapter<ChannelModel> {
        C3163a(ChannelDao_Impl channelDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "INSERT OR ABORT INTO `channel` (`id`,`config_id`,`channel_seq`,`receive_freq`,`send_freq`,`receive_tone_type`,`receive_tone_value`,`send_tone_type`,`send_tone_value`,`channel_type`,`channel_name`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: k */
        public void mo8466g(SupportSQLiteStatement supportSQLiteStatement, ChannelModel channelModel) {
            if (channelModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, channelModel.getId().longValue());
            }
            if (channelModel.getConfigId() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21760c(2, channelModel.getConfigId().longValue());
            }
            supportSQLiteStatement.mo21760c(3, channelModel.getChannelSeq());
            supportSQLiteStatement.mo21760c(4, channelModel.getReceiveFreq());
            supportSQLiteStatement.mo21760c(5, channelModel.getSendFreq());
            supportSQLiteStatement.mo21760c(6, channelModel.getReceiveToneType());
            supportSQLiteStatement.mo21760c(7, channelModel.getReceiveToneValue());
            supportSQLiteStatement.mo21760c(8, channelModel.getSendToneType());
            supportSQLiteStatement.mo21760c(9, channelModel.getSendToneValue());
            supportSQLiteStatement.mo21760c(10, channelModel.getChannelType());
            if (channelModel.getChannelName() == null) {
                supportSQLiteStatement.mo21758e(11);
            } else {
                supportSQLiteStatement.mo21762a(11, channelModel.getChannelName());
            }
        }
    }

    public ChannelDao_Impl(RoomDatabase roomDatabase) {
        this.f12137a = roomDatabase;
        this.f12138b = new C3163a(this, roomDatabase);
    }

    /* renamed from: c */
    public static List<Class<?>> m14254c() {
        return Collections.emptyList();
    }

    @Override // com.ifengyu.intercom.database.p155a.ChannelDao
    /* renamed from: a */
    public List<Long> mo14256a(List<ChannelModel> list) {
        this.f12137a.m21943b();
        this.f12137a.m21942c();
        try {
            List<Long> m21902j = this.f12138b.m21902j(list);
            this.f12137a.m21922z();
            return m21902j;
        } finally {
            this.f12137a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.ChannelDao
    /* renamed from: b */
    public List<ChannelModel> mo14255b(Long l) {
        int i;
        Long valueOf;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from channel where config_id = ?", 1);
        if (l == null) {
            m21831h.mo21758e(1);
        } else {
            m21831h.mo21760c(1, l.longValue());
        }
        this.f12137a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12137a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "config_id");
            int m21799e3 = CursorUtil.m21799e(m21797b, "channel_seq");
            int m21799e4 = CursorUtil.m21799e(m21797b, "receive_freq");
            int m21799e5 = CursorUtil.m21799e(m21797b, "send_freq");
            int m21799e6 = CursorUtil.m21799e(m21797b, "receive_tone_type");
            int m21799e7 = CursorUtil.m21799e(m21797b, "receive_tone_value");
            int m21799e8 = CursorUtil.m21799e(m21797b, "send_tone_type");
            int m21799e9 = CursorUtil.m21799e(m21797b, "send_tone_value");
            int m21799e10 = CursorUtil.m21799e(m21797b, "channel_type");
            int m21799e11 = CursorUtil.m21799e(m21797b, "channel_name");
            ArrayList arrayList = new ArrayList(m21797b.getCount());
            while (m21797b.moveToNext()) {
                ChannelModel channelModel = new ChannelModel();
                if (m21797b.isNull(m21799e)) {
                    i = m21799e;
                    valueOf = null;
                } else {
                    i = m21799e;
                    valueOf = Long.valueOf(m21797b.getLong(m21799e));
                }
                channelModel.setId(valueOf);
                channelModel.setConfigId(m21797b.isNull(m21799e2) ? null : Long.valueOf(m21797b.getLong(m21799e2)));
                channelModel.setChannelSeq(m21797b.getInt(m21799e3));
                channelModel.setReceiveFreq(m21797b.getInt(m21799e4));
                channelModel.setSendFreq(m21797b.getInt(m21799e5));
                channelModel.setReceiveToneType(m21797b.getInt(m21799e6));
                channelModel.setReceiveToneValue(m21797b.getInt(m21799e7));
                channelModel.setSendToneType(m21797b.getInt(m21799e8));
                channelModel.setSendToneValue(m21797b.getInt(m21799e9));
                channelModel.setChannelType(m21797b.getInt(m21799e10));
                channelModel.setChannelName(m21797b.isNull(m21799e11) ? null : m21797b.getString(m21799e11));
                arrayList.add(channelModel);
                m21799e = i;
            }
            return arrayList;
        } finally {
            m21797b.close();
            m21831h.m21828k();
        }
    }
}
