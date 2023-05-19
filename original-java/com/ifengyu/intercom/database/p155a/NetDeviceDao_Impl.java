package com.ifengyu.intercom.database.p155a;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.p045w0.CursorUtil;
import androidx.room.p045w0.DBUtil;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.umeng.analytics.pro.UMCommonContent;
import java.util.Collections;
import java.util.List;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: com.ifengyu.intercom.database.a.h */
/* loaded from: classes2.dex */
public final class NetDeviceDao_Impl implements NetDeviceDao {

    /* renamed from: a */
    private final RoomDatabase f12148a;

    /* renamed from: b */
    private final EntityInsertionAdapter<NetDeviceModel> f12149b;

    /* renamed from: c */
    private final SharedSQLiteStatement f12150c;

    /* compiled from: NetDeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.h$a */
    /* loaded from: classes2.dex */
    class C3172a extends EntityInsertionAdapter<NetDeviceModel> {
        C3172a(NetDeviceDao_Impl netDeviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "INSERT OR REPLACE INTO `net_device` (`id`,`sn`,`user_id`,`account`,`nickname`,`avatar`,`user_type`,`online`,`battery`,`bindTime`,`imei`,`iccid`,`color`,`hw_version`,`sw_version`,`fw_version`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: k */
        public void mo8466g(SupportSQLiteStatement supportSQLiteStatement, NetDeviceModel netDeviceModel) {
            if (netDeviceModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, netDeviceModel.getId().longValue());
            }
            if (netDeviceModel.getSn() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21762a(2, netDeviceModel.getSn());
            }
            supportSQLiteStatement.mo21760c(3, netDeviceModel.getUserId());
            if (netDeviceModel.getAccount() == null) {
                supportSQLiteStatement.mo21758e(4);
            } else {
                supportSQLiteStatement.mo21762a(4, netDeviceModel.getAccount());
            }
            if (netDeviceModel.getNickname() == null) {
                supportSQLiteStatement.mo21758e(5);
            } else {
                supportSQLiteStatement.mo21762a(5, netDeviceModel.getNickname());
            }
            if (netDeviceModel.getAvatar() == null) {
                supportSQLiteStatement.mo21758e(6);
            } else {
                supportSQLiteStatement.mo21762a(6, netDeviceModel.getAvatar());
            }
            supportSQLiteStatement.mo21760c(7, netDeviceModel.getUserType());
            supportSQLiteStatement.mo21760c(8, netDeviceModel.getOnline());
            supportSQLiteStatement.mo21760c(9, netDeviceModel.getBattery());
            supportSQLiteStatement.mo21760c(10, netDeviceModel.getBindTime());
            if (netDeviceModel.getImei() == null) {
                supportSQLiteStatement.mo21758e(11);
            } else {
                supportSQLiteStatement.mo21762a(11, netDeviceModel.getImei());
            }
            if (netDeviceModel.getIccid() == null) {
                supportSQLiteStatement.mo21758e(12);
            } else {
                supportSQLiteStatement.mo21762a(12, netDeviceModel.getIccid());
            }
            supportSQLiteStatement.mo21760c(13, netDeviceModel.getColor());
            if (netDeviceModel.getHwVersion() == null) {
                supportSQLiteStatement.mo21758e(14);
            } else {
                supportSQLiteStatement.mo21762a(14, netDeviceModel.getHwVersion());
            }
            if (netDeviceModel.getSwVersion() == null) {
                supportSQLiteStatement.mo21758e(15);
            } else {
                supportSQLiteStatement.mo21762a(15, netDeviceModel.getSwVersion());
            }
            if (netDeviceModel.getFwVersion() == null) {
                supportSQLiteStatement.mo21758e(16);
            } else {
                supportSQLiteStatement.mo21762a(16, netDeviceModel.getFwVersion());
            }
        }
    }

    /* compiled from: NetDeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.h$b */
    /* loaded from: classes2.dex */
    class C3173b extends EntityDeletionOrUpdateAdapter<NetDeviceModel> {
        C3173b(NetDeviceDao_Impl netDeviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "UPDATE OR ABORT `net_device` SET `id` = ?,`sn` = ?,`user_id` = ?,`account` = ?,`nickname` = ?,`avatar` = ?,`user_type` = ?,`online` = ?,`battery` = ?,`bindTime` = ?,`imei` = ?,`iccid` = ?,`color` = ?,`hw_version` = ?,`sw_version` = ?,`fw_version` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: j */
        public void mo14216g(SupportSQLiteStatement supportSQLiteStatement, NetDeviceModel netDeviceModel) {
            if (netDeviceModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, netDeviceModel.getId().longValue());
            }
            if (netDeviceModel.getSn() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21762a(2, netDeviceModel.getSn());
            }
            supportSQLiteStatement.mo21760c(3, netDeviceModel.getUserId());
            if (netDeviceModel.getAccount() == null) {
                supportSQLiteStatement.mo21758e(4);
            } else {
                supportSQLiteStatement.mo21762a(4, netDeviceModel.getAccount());
            }
            if (netDeviceModel.getNickname() == null) {
                supportSQLiteStatement.mo21758e(5);
            } else {
                supportSQLiteStatement.mo21762a(5, netDeviceModel.getNickname());
            }
            if (netDeviceModel.getAvatar() == null) {
                supportSQLiteStatement.mo21758e(6);
            } else {
                supportSQLiteStatement.mo21762a(6, netDeviceModel.getAvatar());
            }
            supportSQLiteStatement.mo21760c(7, netDeviceModel.getUserType());
            supportSQLiteStatement.mo21760c(8, netDeviceModel.getOnline());
            supportSQLiteStatement.mo21760c(9, netDeviceModel.getBattery());
            supportSQLiteStatement.mo21760c(10, netDeviceModel.getBindTime());
            if (netDeviceModel.getImei() == null) {
                supportSQLiteStatement.mo21758e(11);
            } else {
                supportSQLiteStatement.mo21762a(11, netDeviceModel.getImei());
            }
            if (netDeviceModel.getIccid() == null) {
                supportSQLiteStatement.mo21758e(12);
            } else {
                supportSQLiteStatement.mo21762a(12, netDeviceModel.getIccid());
            }
            supportSQLiteStatement.mo21760c(13, netDeviceModel.getColor());
            if (netDeviceModel.getHwVersion() == null) {
                supportSQLiteStatement.mo21758e(14);
            } else {
                supportSQLiteStatement.mo21762a(14, netDeviceModel.getHwVersion());
            }
            if (netDeviceModel.getSwVersion() == null) {
                supportSQLiteStatement.mo21758e(15);
            } else {
                supportSQLiteStatement.mo21762a(15, netDeviceModel.getSwVersion());
            }
            if (netDeviceModel.getFwVersion() == null) {
                supportSQLiteStatement.mo21758e(16);
            } else {
                supportSQLiteStatement.mo21762a(16, netDeviceModel.getFwVersion());
            }
            if (netDeviceModel.getId() == null) {
                supportSQLiteStatement.mo21758e(17);
            } else {
                supportSQLiteStatement.mo21760c(17, netDeviceModel.getId().longValue());
            }
        }
    }

    /* compiled from: NetDeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.h$c */
    /* loaded from: classes2.dex */
    class C3174c extends SharedSQLiteStatement {
        C3174c(NetDeviceDao_Impl netDeviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "delete from net_device where sn = ?";
        }
    }

    public NetDeviceDao_Impl(RoomDatabase roomDatabase) {
        this.f12148a = roomDatabase;
        this.f12149b = new C3172a(this, roomDatabase);
        new C3173b(this, roomDatabase);
        this.f12150c = new C3174c(this, roomDatabase);
    }

    /* renamed from: f */
    public static List<Class<?>> m14225f() {
        return Collections.emptyList();
    }

    @Override // com.ifengyu.intercom.database.p155a.NetDeviceDao
    /* renamed from: a */
    public void mo14230a(List<NetDeviceModel> list) {
        this.f12148a.m21943b();
        this.f12148a.m21942c();
        try {
            this.f12149b.m21904h(list);
            this.f12148a.m21922z();
        } finally {
            this.f12148a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.NetDeviceDao
    /* renamed from: b */
    public void mo14229b(String str) {
        this.f12148a.m21943b();
        SupportSQLiteStatement m21820a = this.f12150c.m21820a();
        if (str == null) {
            m21820a.mo21758e(1);
        } else {
            m21820a.mo21762a(1, str);
        }
        this.f12148a.m21942c();
        try {
            m21820a.mo21752q();
            this.f12148a.m21922z();
        } finally {
            this.f12148a.m21940g();
            this.f12150c.m21816f(m21820a);
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.NetDeviceDao
    /* renamed from: c */
    public NetDeviceModel mo14228c(String str) {
        RoomSQLiteQuery roomSQLiteQuery;
        int m21799e;
        int m21799e2;
        int m21799e3;
        int m21799e4;
        int m21799e5;
        int m21799e6;
        int m21799e7;
        int m21799e8;
        int m21799e9;
        int m21799e10;
        int m21799e11;
        int m21799e12;
        int m21799e13;
        int m21799e14;
        NetDeviceModel netDeviceModel;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from net_device where sn = ? limit 1", 1);
        if (str == null) {
            m21831h.mo21758e(1);
        } else {
            m21831h.mo21762a(1, str);
        }
        this.f12148a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12148a, m21831h, false, null);
        try {
            m21799e = CursorUtil.m21799e(m21797b, "id");
            m21799e2 = CursorUtil.m21799e(m21797b, "sn");
            m21799e3 = CursorUtil.m21799e(m21797b, "user_id");
            m21799e4 = CursorUtil.m21799e(m21797b, "account");
            m21799e5 = CursorUtil.m21799e(m21797b, "nickname");
            m21799e6 = CursorUtil.m21799e(m21797b, "avatar");
            m21799e7 = CursorUtil.m21799e(m21797b, "user_type");
            m21799e8 = CursorUtil.m21799e(m21797b, "online");
            m21799e9 = CursorUtil.m21799e(m21797b, UMCommonContent.f19345Z);
            m21799e10 = CursorUtil.m21799e(m21797b, "bindTime");
            m21799e11 = CursorUtil.m21799e(m21797b, "imei");
            m21799e12 = CursorUtil.m21799e(m21797b, UMCommonContent.f19373aa);
            m21799e13 = CursorUtil.m21799e(m21797b, "color");
            m21799e14 = CursorUtil.m21799e(m21797b, "hw_version");
            roomSQLiteQuery = m21831h;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = m21831h;
        }
        try {
            int m21799e15 = CursorUtil.m21799e(m21797b, "sw_version");
            int m21799e16 = CursorUtil.m21799e(m21797b, "fw_version");
            if (m21797b.moveToFirst()) {
                NetDeviceModel netDeviceModel2 = new NetDeviceModel();
                netDeviceModel2.setId(m21797b.isNull(m21799e) ? null : Long.valueOf(m21797b.getLong(m21799e)));
                netDeviceModel2.setSn(m21797b.isNull(m21799e2) ? null : m21797b.getString(m21799e2));
                netDeviceModel2.setUserId(m21797b.getLong(m21799e3));
                netDeviceModel2.setAccount(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                netDeviceModel2.setNickname(m21797b.isNull(m21799e5) ? null : m21797b.getString(m21799e5));
                netDeviceModel2.setAvatar(m21797b.isNull(m21799e6) ? null : m21797b.getString(m21799e6));
                netDeviceModel2.setUserType(m21797b.getInt(m21799e7));
                netDeviceModel2.setOnline(m21797b.getInt(m21799e8));
                netDeviceModel2.setBattery(m21797b.getInt(m21799e9));
                netDeviceModel2.setBindTime(m21797b.getLong(m21799e10));
                netDeviceModel2.setImei(m21797b.isNull(m21799e11) ? null : m21797b.getString(m21799e11));
                netDeviceModel2.setIccid(m21797b.isNull(m21799e12) ? null : m21797b.getString(m21799e12));
                netDeviceModel2.setColor(m21797b.getInt(m21799e13));
                netDeviceModel2.setHwVersion(m21797b.isNull(m21799e14) ? null : m21797b.getString(m21799e14));
                netDeviceModel2.setSwVersion(m21797b.isNull(m21799e15) ? null : m21797b.getString(m21799e15));
                netDeviceModel2.setFwVersion(m21797b.isNull(m21799e16) ? null : m21797b.getString(m21799e16));
                netDeviceModel = netDeviceModel2;
            } else {
                netDeviceModel = null;
            }
            m21797b.close();
            roomSQLiteQuery.m21828k();
            return netDeviceModel;
        } catch (Throwable th2) {
            th = th2;
            m21797b.close();
            roomSQLiteQuery.m21828k();
            throw th;
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.NetDeviceDao
    /* renamed from: d */
    public long mo14227d(NetDeviceModel netDeviceModel) {
        this.f12148a.m21943b();
        this.f12148a.m21942c();
        try {
            long m21903i = this.f12149b.m21903i(netDeviceModel);
            this.f12148a.m21922z();
            return m21903i;
        } finally {
            this.f12148a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.NetDeviceDao
    /* renamed from: e */
    public NetDeviceModel mo14226e(long j) {
        RoomSQLiteQuery roomSQLiteQuery;
        NetDeviceModel netDeviceModel;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from net_device where user_id = ? limit 1", 1);
        m21831h.mo21760c(1, j);
        this.f12148a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12148a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "sn");
            int m21799e3 = CursorUtil.m21799e(m21797b, "user_id");
            int m21799e4 = CursorUtil.m21799e(m21797b, "account");
            int m21799e5 = CursorUtil.m21799e(m21797b, "nickname");
            int m21799e6 = CursorUtil.m21799e(m21797b, "avatar");
            int m21799e7 = CursorUtil.m21799e(m21797b, "user_type");
            int m21799e8 = CursorUtil.m21799e(m21797b, "online");
            int m21799e9 = CursorUtil.m21799e(m21797b, UMCommonContent.f19345Z);
            int m21799e10 = CursorUtil.m21799e(m21797b, "bindTime");
            int m21799e11 = CursorUtil.m21799e(m21797b, "imei");
            int m21799e12 = CursorUtil.m21799e(m21797b, UMCommonContent.f19373aa);
            int m21799e13 = CursorUtil.m21799e(m21797b, "color");
            int m21799e14 = CursorUtil.m21799e(m21797b, "hw_version");
            roomSQLiteQuery = m21831h;
            try {
                int m21799e15 = CursorUtil.m21799e(m21797b, "sw_version");
                int m21799e16 = CursorUtil.m21799e(m21797b, "fw_version");
                if (m21797b.moveToFirst()) {
                    NetDeviceModel netDeviceModel2 = new NetDeviceModel();
                    netDeviceModel2.setId(m21797b.isNull(m21799e) ? null : Long.valueOf(m21797b.getLong(m21799e)));
                    netDeviceModel2.setSn(m21797b.isNull(m21799e2) ? null : m21797b.getString(m21799e2));
                    netDeviceModel2.setUserId(m21797b.getLong(m21799e3));
                    netDeviceModel2.setAccount(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                    netDeviceModel2.setNickname(m21797b.isNull(m21799e5) ? null : m21797b.getString(m21799e5));
                    netDeviceModel2.setAvatar(m21797b.isNull(m21799e6) ? null : m21797b.getString(m21799e6));
                    netDeviceModel2.setUserType(m21797b.getInt(m21799e7));
                    netDeviceModel2.setOnline(m21797b.getInt(m21799e8));
                    netDeviceModel2.setBattery(m21797b.getInt(m21799e9));
                    netDeviceModel2.setBindTime(m21797b.getLong(m21799e10));
                    netDeviceModel2.setImei(m21797b.isNull(m21799e11) ? null : m21797b.getString(m21799e11));
                    netDeviceModel2.setIccid(m21797b.isNull(m21799e12) ? null : m21797b.getString(m21799e12));
                    netDeviceModel2.setColor(m21797b.getInt(m21799e13));
                    netDeviceModel2.setHwVersion(m21797b.isNull(m21799e14) ? null : m21797b.getString(m21799e14));
                    netDeviceModel2.setSwVersion(m21797b.isNull(m21799e15) ? null : m21797b.getString(m21799e15));
                    netDeviceModel2.setFwVersion(m21797b.isNull(m21799e16) ? null : m21797b.getString(m21799e16));
                    netDeviceModel = netDeviceModel2;
                } else {
                    netDeviceModel = null;
                }
                m21797b.close();
                roomSQLiteQuery.m21828k();
                return netDeviceModel;
            } catch (Throwable th) {
                th = th;
                m21797b.close();
                roomSQLiteQuery.m21828k();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = m21831h;
        }
    }
}
