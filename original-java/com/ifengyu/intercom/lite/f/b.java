package com.ifengyu.intercom.lite.f;

import a.g.a.f;
import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.c;
import androidx.room.l;
import com.ifengyu.intercom.lite.models.ChannelModel;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ChannelDao_Impl.java */
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f5423a;

    /* renamed from: b  reason: collision with root package name */
    private final c<ChannelModel> f5424b;

    /* compiled from: ChannelDao_Impl.java */
    /* loaded from: classes2.dex */
    class a extends c<ChannelModel> {
        a(b bVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "INSERT OR ABORT INTO `channel` (`id`,`config_id`,`channel_seq`,`receive_freq`,`send_freq`,`receive_tone_type`,`receive_tone_value`,`send_tone_type`,`send_tone_value`) VALUES (?,?,?,?,?,?,?,?,?)";
        }

        public void a(f fVar, ChannelModel channelModel) {
            if (channelModel.getId() == null) {
                fVar.bindNull(1);
            } else {
                fVar.bindLong(1, channelModel.getId().longValue());
            }
            if (channelModel.getConfigId() == null) {
                fVar.bindNull(2);
            } else {
                fVar.bindLong(2, channelModel.getConfigId().longValue());
            }
            fVar.bindLong(3, channelModel.getChannelSeq());
            fVar.bindLong(4, channelModel.getReceiveFreq());
            fVar.bindLong(5, channelModel.getSendFreq());
            fVar.bindLong(6, channelModel.getReceiveToneType());
            fVar.bindLong(7, channelModel.getReceiveToneValue());
            fVar.bindLong(8, channelModel.getSendToneType());
            fVar.bindLong(9, channelModel.getSendToneValue());
        }
    }

    public b(RoomDatabase roomDatabase) {
        this.f5423a = roomDatabase;
        this.f5424b = new a(this, roomDatabase);
    }

    @Override // com.ifengyu.intercom.lite.f.a
    public List<Long> a(List<ChannelModel> list) {
        this.f5423a.b();
        this.f5423a.c();
        try {
            List<Long> a2 = this.f5424b.a(list);
            this.f5423a.k();
            return a2;
        } finally {
            this.f5423a.e();
        }
    }

    @Override // com.ifengyu.intercom.lite.f.a
    public List<ChannelModel> a(Long l) {
        l b2 = l.b("select * from channel where config_id = ?", 1);
        if (l == null) {
            b2.bindNull(1);
        } else {
            b2.bindLong(1, l.longValue());
        }
        this.f5423a.b();
        Cursor a2 = androidx.room.r.c.a(this.f5423a, b2, false, null);
        try {
            int a3 = androidx.room.r.b.a(a2, "id");
            int a4 = androidx.room.r.b.a(a2, "config_id");
            int a5 = androidx.room.r.b.a(a2, "channel_seq");
            int a6 = androidx.room.r.b.a(a2, "receive_freq");
            int a7 = androidx.room.r.b.a(a2, "send_freq");
            int a8 = androidx.room.r.b.a(a2, "receive_tone_type");
            int a9 = androidx.room.r.b.a(a2, "receive_tone_value");
            int a10 = androidx.room.r.b.a(a2, "send_tone_type");
            int a11 = androidx.room.r.b.a(a2, "send_tone_value");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                ChannelModel channelModel = new ChannelModel();
                channelModel.setId(a2.isNull(a3) ? null : Long.valueOf(a2.getLong(a3)));
                channelModel.setConfigId(a2.isNull(a4) ? null : Long.valueOf(a2.getLong(a4)));
                channelModel.setChannelSeq(a2.getInt(a5));
                channelModel.setReceiveFreq(a2.getInt(a6));
                channelModel.setSendFreq(a2.getInt(a7));
                channelModel.setReceiveToneType(a2.getInt(a8));
                channelModel.setReceiveToneValue(a2.getInt(a9));
                channelModel.setSendToneType(a2.getInt(a10));
                channelModel.setSendToneValue(a2.getInt(a11));
                arrayList.add(channelModel);
            }
            return arrayList;
        } finally {
            a2.close();
            b2.b();
        }
    }
}
