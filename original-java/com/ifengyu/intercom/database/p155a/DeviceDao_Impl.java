package com.ifengyu.intercom.database.p155a;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.p045w0.CursorUtil;
import androidx.room.p045w0.DBUtil;
import com.ifengyu.intercom.models.DeviceModel;
import com.umeng.analytics.pro.UMCommonContent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: com.ifengyu.intercom.database.a.f */
/* loaded from: classes2.dex */
public final class DeviceDao_Impl implements DeviceDao {

    /* renamed from: a */
    private final RoomDatabase f12143a;

    /* renamed from: b */
    private final EntityInsertionAdapter<DeviceModel> f12144b;

    /* renamed from: c */
    private final EntityDeletionOrUpdateAdapter<DeviceModel> f12145c;

    /* renamed from: d */
    private final SharedSQLiteStatement f12146d;

    /* renamed from: e */
    private final SharedSQLiteStatement f12147e;

    /* compiled from: DeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.f$a */
    /* loaded from: classes2.dex */
    class C3167a extends EntityInsertionAdapter<DeviceModel> {
        C3167a(DeviceDao_Impl deviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "INSERT OR REPLACE INTO `device` (`id`,`name`,`address`,`device_id`,`device_type`,`device_color`,`version_soft`,`version_hw`,`version_voice`,`connected`,`create_time`,`update_time`,`enabled`,`token`,`agreed_protocol_version`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: k */
        public void mo8466g(SupportSQLiteStatement supportSQLiteStatement, DeviceModel deviceModel) {
            if (deviceModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, deviceModel.getId().longValue());
            }
            if (deviceModel.getName() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21762a(2, deviceModel.getName());
            }
            if (deviceModel.getAddress() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, deviceModel.getAddress());
            }
            if (deviceModel.getDeviceId() == null) {
                supportSQLiteStatement.mo21758e(4);
            } else {
                supportSQLiteStatement.mo21762a(4, deviceModel.getDeviceId());
            }
            supportSQLiteStatement.mo21760c(5, deviceModel.getDeviceType());
            supportSQLiteStatement.mo21760c(6, deviceModel.getDeviceColor());
            supportSQLiteStatement.mo21760c(7, deviceModel.getVersionSoft());
            supportSQLiteStatement.mo21760c(8, deviceModel.getVersionHw());
            supportSQLiteStatement.mo21760c(9, deviceModel.getVersionVoice());
            supportSQLiteStatement.mo21760c(10, deviceModel.isConnected() ? 1L : 0L);
            supportSQLiteStatement.mo21760c(11, deviceModel.getCreateTime());
            supportSQLiteStatement.mo21760c(12, deviceModel.getUpdateTime());
            supportSQLiteStatement.mo21760c(13, deviceModel.isEnabled() ? 1L : 0L);
            if (deviceModel.getToken() == null) {
                supportSQLiteStatement.mo21758e(14);
            } else {
                supportSQLiteStatement.mo21762a(14, deviceModel.getToken());
            }
            supportSQLiteStatement.mo21760c(15, deviceModel.getAgreedProtocolVersion());
        }
    }

    /* compiled from: DeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.f$b */
    /* loaded from: classes2.dex */
    class C3168b extends EntityDeletionOrUpdateAdapter<DeviceModel> {
        C3168b(DeviceDao_Impl deviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "DELETE FROM `device` WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: j */
        public void mo14216g(SupportSQLiteStatement supportSQLiteStatement, DeviceModel deviceModel) {
            if (deviceModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, deviceModel.getId().longValue());
            }
        }
    }

    /* compiled from: DeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.f$c */
    /* loaded from: classes2.dex */
    class C3169c extends EntityDeletionOrUpdateAdapter<DeviceModel> {
        C3169c(DeviceDao_Impl deviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "UPDATE OR ABORT `device` SET `id` = ?,`name` = ?,`address` = ?,`device_id` = ?,`device_type` = ?,`device_color` = ?,`version_soft` = ?,`version_hw` = ?,`version_voice` = ?,`connected` = ?,`create_time` = ?,`update_time` = ?,`enabled` = ?,`token` = ?,`agreed_protocol_version` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: j */
        public void mo14216g(SupportSQLiteStatement supportSQLiteStatement, DeviceModel deviceModel) {
            if (deviceModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, deviceModel.getId().longValue());
            }
            if (deviceModel.getName() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21762a(2, deviceModel.getName());
            }
            if (deviceModel.getAddress() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, deviceModel.getAddress());
            }
            if (deviceModel.getDeviceId() == null) {
                supportSQLiteStatement.mo21758e(4);
            } else {
                supportSQLiteStatement.mo21762a(4, deviceModel.getDeviceId());
            }
            supportSQLiteStatement.mo21760c(5, deviceModel.getDeviceType());
            supportSQLiteStatement.mo21760c(6, deviceModel.getDeviceColor());
            supportSQLiteStatement.mo21760c(7, deviceModel.getVersionSoft());
            supportSQLiteStatement.mo21760c(8, deviceModel.getVersionHw());
            supportSQLiteStatement.mo21760c(9, deviceModel.getVersionVoice());
            supportSQLiteStatement.mo21760c(10, deviceModel.isConnected() ? 1L : 0L);
            supportSQLiteStatement.mo21760c(11, deviceModel.getCreateTime());
            supportSQLiteStatement.mo21760c(12, deviceModel.getUpdateTime());
            supportSQLiteStatement.mo21760c(13, deviceModel.isEnabled() ? 1L : 0L);
            if (deviceModel.getToken() == null) {
                supportSQLiteStatement.mo21758e(14);
            } else {
                supportSQLiteStatement.mo21762a(14, deviceModel.getToken());
            }
            supportSQLiteStatement.mo21760c(15, deviceModel.getAgreedProtocolVersion());
            if (deviceModel.getId() == null) {
                supportSQLiteStatement.mo21758e(16);
            } else {
                supportSQLiteStatement.mo21760c(16, deviceModel.getId().longValue());
            }
        }
    }

    /* compiled from: DeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.f$d */
    /* loaded from: classes2.dex */
    class C3170d extends SharedSQLiteStatement {
        C3170d(DeviceDao_Impl deviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "delete from device where address = ?";
        }
    }

    /* compiled from: DeviceDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.f$e */
    /* loaded from: classes2.dex */
    class C3171e extends SharedSQLiteStatement {
        C3171e(DeviceDao_Impl deviceDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "delete from device where device_type = ?";
        }
    }

    public DeviceDao_Impl(RoomDatabase roomDatabase) {
        this.f12143a = roomDatabase;
        this.f12144b = new C3167a(this, roomDatabase);
        new C3168b(this, roomDatabase);
        this.f12145c = new C3169c(this, roomDatabase);
        this.f12146d = new C3170d(this, roomDatabase);
        this.f12147e = new C3171e(this, roomDatabase);
    }

    /* renamed from: k */
    public static List<Class<?>> m14234k() {
        return Collections.emptyList();
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: a */
    public void mo14244a(List<DeviceModel> list) {
        this.f12143a.m21943b();
        this.f12143a.m21942c();
        try {
            this.f12144b.m21904h(list);
            this.f12143a.m21922z();
        } finally {
            this.f12143a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: b */
    public List<DeviceModel> mo14243b() {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        Long valueOf;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from device order by update_time desc", 0);
        this.f12143a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12143a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "name");
            int m21799e3 = CursorUtil.m21799e(m21797b, "address");
            int m21799e4 = CursorUtil.m21799e(m21797b, "device_id");
            int m21799e5 = CursorUtil.m21799e(m21797b, UMCommonContent.f19381ai);
            int m21799e6 = CursorUtil.m21799e(m21797b, "device_color");
            int m21799e7 = CursorUtil.m21799e(m21797b, "version_soft");
            int m21799e8 = CursorUtil.m21799e(m21797b, "version_hw");
            int m21799e9 = CursorUtil.m21799e(m21797b, "version_voice");
            int m21799e10 = CursorUtil.m21799e(m21797b, "connected");
            int m21799e11 = CursorUtil.m21799e(m21797b, "create_time");
            int m21799e12 = CursorUtil.m21799e(m21797b, "update_time");
            int m21799e13 = CursorUtil.m21799e(m21797b, "enabled");
            int m21799e14 = CursorUtil.m21799e(m21797b, "token");
            roomSQLiteQuery = m21831h;
            try {
                int m21799e15 = CursorUtil.m21799e(m21797b, "agreed_protocol_version");
                int i2 = m21799e14;
                ArrayList arrayList = new ArrayList(m21797b.getCount());
                while (m21797b.moveToNext()) {
                    DeviceModel deviceModel = new DeviceModel();
                    if (m21797b.isNull(m21799e)) {
                        i = m21799e;
                        valueOf = null;
                    } else {
                        i = m21799e;
                        valueOf = Long.valueOf(m21797b.getLong(m21799e));
                    }
                    deviceModel.setId(valueOf);
                    deviceModel.setName(m21797b.isNull(m21799e2) ? null : m21797b.getString(m21799e2));
                    deviceModel.setAddress(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                    deviceModel.setDeviceId(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                    deviceModel.setDeviceType(m21797b.getInt(m21799e5));
                    deviceModel.setDeviceColor(m21797b.getInt(m21799e6));
                    deviceModel.setVersionSoft(m21797b.getInt(m21799e7));
                    deviceModel.setVersionHw(m21797b.getInt(m21799e8));
                    deviceModel.setVersionVoice(m21797b.getInt(m21799e9));
                    deviceModel.setConnected(m21797b.getInt(m21799e10) != 0);
                    int i3 = m21799e2;
                    int i4 = m21799e3;
                    deviceModel.setCreateTime(m21797b.getLong(m21799e11));
                    deviceModel.setUpdateTime(m21797b.getLong(m21799e12));
                    deviceModel.setEnabled(m21797b.getInt(m21799e13) != 0);
                    int i5 = i2;
                    deviceModel.setToken(m21797b.isNull(i5) ? null : m21797b.getString(i5));
                    int i6 = m21799e15;
                    deviceModel.setAgreedProtocolVersion(m21797b.getInt(i6));
                    arrayList.add(deviceModel);
                    i2 = i5;
                    m21799e2 = i3;
                    m21799e = i;
                    m21799e15 = i6;
                    m21799e3 = i4;
                }
                m21797b.close();
                roomSQLiteQuery.m21828k();
                return arrayList;
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

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: c */
    public DeviceModel mo14242c(String str) {
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
        DeviceModel deviceModel;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from device where device_id = ? limit 1", 1);
        if (str == null) {
            m21831h.mo21758e(1);
        } else {
            m21831h.mo21762a(1, str);
        }
        this.f12143a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12143a, m21831h, false, null);
        try {
            m21799e = CursorUtil.m21799e(m21797b, "id");
            m21799e2 = CursorUtil.m21799e(m21797b, "name");
            m21799e3 = CursorUtil.m21799e(m21797b, "address");
            m21799e4 = CursorUtil.m21799e(m21797b, "device_id");
            m21799e5 = CursorUtil.m21799e(m21797b, UMCommonContent.f19381ai);
            m21799e6 = CursorUtil.m21799e(m21797b, "device_color");
            m21799e7 = CursorUtil.m21799e(m21797b, "version_soft");
            m21799e8 = CursorUtil.m21799e(m21797b, "version_hw");
            m21799e9 = CursorUtil.m21799e(m21797b, "version_voice");
            m21799e10 = CursorUtil.m21799e(m21797b, "connected");
            m21799e11 = CursorUtil.m21799e(m21797b, "create_time");
            m21799e12 = CursorUtil.m21799e(m21797b, "update_time");
            m21799e13 = CursorUtil.m21799e(m21797b, "enabled");
            m21799e14 = CursorUtil.m21799e(m21797b, "token");
            roomSQLiteQuery = m21831h;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = m21831h;
        }
        try {
            int m21799e15 = CursorUtil.m21799e(m21797b, "agreed_protocol_version");
            if (m21797b.moveToFirst()) {
                DeviceModel deviceModel2 = new DeviceModel();
                deviceModel2.setId(m21797b.isNull(m21799e) ? null : Long.valueOf(m21797b.getLong(m21799e)));
                deviceModel2.setName(m21797b.isNull(m21799e2) ? null : m21797b.getString(m21799e2));
                deviceModel2.setAddress(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                deviceModel2.setDeviceId(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                deviceModel2.setDeviceType(m21797b.getInt(m21799e5));
                deviceModel2.setDeviceColor(m21797b.getInt(m21799e6));
                deviceModel2.setVersionSoft(m21797b.getInt(m21799e7));
                deviceModel2.setVersionHw(m21797b.getInt(m21799e8));
                deviceModel2.setVersionVoice(m21797b.getInt(m21799e9));
                deviceModel2.setConnected(m21797b.getInt(m21799e10) != 0);
                deviceModel2.setCreateTime(m21797b.getLong(m21799e11));
                deviceModel2.setUpdateTime(m21797b.getLong(m21799e12));
                deviceModel2.setEnabled(m21797b.getInt(m21799e13) != 0);
                deviceModel2.setToken(m21797b.isNull(m21799e14) ? null : m21797b.getString(m21799e14));
                deviceModel2.setAgreedProtocolVersion(m21797b.getInt(m21799e15));
                deviceModel = deviceModel2;
            } else {
                deviceModel = null;
            }
            m21797b.close();
            roomSQLiteQuery.m21828k();
            return deviceModel;
        } catch (Throwable th2) {
            th = th2;
            m21797b.close();
            roomSQLiteQuery.m21828k();
            throw th;
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: d */
    public int mo14241d(String str) {
        this.f12143a.m21943b();
        SupportSQLiteStatement m21820a = this.f12146d.m21820a();
        if (str == null) {
            m21820a.mo21758e(1);
        } else {
            m21820a.mo21762a(1, str);
        }
        this.f12143a.m21942c();
        try {
            int mo21752q = m21820a.mo21752q();
            this.f12143a.m21922z();
            return mo21752q;
        } finally {
            this.f12143a.m21940g();
            this.f12146d.m21816f(m21820a);
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: e */
    public int mo14240e(int i) {
        this.f12143a.m21943b();
        SupportSQLiteStatement m21820a = this.f12147e.m21820a();
        m21820a.mo21760c(1, i);
        this.f12143a.m21942c();
        try {
            int mo21752q = m21820a.mo21752q();
            this.f12143a.m21922z();
            return mo21752q;
        } finally {
            this.f12143a.m21940g();
            this.f12147e.m21816f(m21820a);
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: f */
    public DeviceModel mo14239f(String str) {
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
        DeviceModel deviceModel;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from device where address = ? limit 1", 1);
        if (str == null) {
            m21831h.mo21758e(1);
        } else {
            m21831h.mo21762a(1, str);
        }
        this.f12143a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12143a, m21831h, false, null);
        try {
            m21799e = CursorUtil.m21799e(m21797b, "id");
            m21799e2 = CursorUtil.m21799e(m21797b, "name");
            m21799e3 = CursorUtil.m21799e(m21797b, "address");
            m21799e4 = CursorUtil.m21799e(m21797b, "device_id");
            m21799e5 = CursorUtil.m21799e(m21797b, UMCommonContent.f19381ai);
            m21799e6 = CursorUtil.m21799e(m21797b, "device_color");
            m21799e7 = CursorUtil.m21799e(m21797b, "version_soft");
            m21799e8 = CursorUtil.m21799e(m21797b, "version_hw");
            m21799e9 = CursorUtil.m21799e(m21797b, "version_voice");
            m21799e10 = CursorUtil.m21799e(m21797b, "connected");
            m21799e11 = CursorUtil.m21799e(m21797b, "create_time");
            m21799e12 = CursorUtil.m21799e(m21797b, "update_time");
            m21799e13 = CursorUtil.m21799e(m21797b, "enabled");
            m21799e14 = CursorUtil.m21799e(m21797b, "token");
            roomSQLiteQuery = m21831h;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = m21831h;
        }
        try {
            int m21799e15 = CursorUtil.m21799e(m21797b, "agreed_protocol_version");
            if (m21797b.moveToFirst()) {
                DeviceModel deviceModel2 = new DeviceModel();
                deviceModel2.setId(m21797b.isNull(m21799e) ? null : Long.valueOf(m21797b.getLong(m21799e)));
                deviceModel2.setName(m21797b.isNull(m21799e2) ? null : m21797b.getString(m21799e2));
                deviceModel2.setAddress(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                deviceModel2.setDeviceId(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                deviceModel2.setDeviceType(m21797b.getInt(m21799e5));
                deviceModel2.setDeviceColor(m21797b.getInt(m21799e6));
                deviceModel2.setVersionSoft(m21797b.getInt(m21799e7));
                deviceModel2.setVersionHw(m21797b.getInt(m21799e8));
                deviceModel2.setVersionVoice(m21797b.getInt(m21799e9));
                deviceModel2.setConnected(m21797b.getInt(m21799e10) != 0);
                deviceModel2.setCreateTime(m21797b.getLong(m21799e11));
                deviceModel2.setUpdateTime(m21797b.getLong(m21799e12));
                deviceModel2.setEnabled(m21797b.getInt(m21799e13) != 0);
                deviceModel2.setToken(m21797b.isNull(m21799e14) ? null : m21797b.getString(m21799e14));
                deviceModel2.setAgreedProtocolVersion(m21797b.getInt(m21799e15));
                deviceModel = deviceModel2;
            } else {
                deviceModel = null;
            }
            m21797b.close();
            roomSQLiteQuery.m21828k();
            return deviceModel;
        } catch (Throwable th2) {
            th = th2;
            m21797b.close();
            roomSQLiteQuery.m21828k();
            throw th;
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: g */
    public void mo14238g(List<DeviceModel> list) {
        this.f12143a.m21943b();
        this.f12143a.m21942c();
        try {
            this.f12145c.m21905i(list);
            this.f12143a.m21922z();
        } finally {
            this.f12143a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: h */
    public void mo14237h(DeviceModel deviceModel) {
        this.f12143a.m21943b();
        this.f12143a.m21942c();
        try {
            this.f12145c.m21906h(deviceModel);
            this.f12143a.m21922z();
        } finally {
            this.f12143a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: i */
    public List<DeviceModel> mo14236i(int i) {
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
        int i2;
        Long valueOf;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from device where device_type = ?", 1);
        m21831h.mo21760c(1, i);
        this.f12143a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12143a, m21831h, false, null);
        try {
            m21799e = CursorUtil.m21799e(m21797b, "id");
            m21799e2 = CursorUtil.m21799e(m21797b, "name");
            m21799e3 = CursorUtil.m21799e(m21797b, "address");
            m21799e4 = CursorUtil.m21799e(m21797b, "device_id");
            m21799e5 = CursorUtil.m21799e(m21797b, UMCommonContent.f19381ai);
            m21799e6 = CursorUtil.m21799e(m21797b, "device_color");
            m21799e7 = CursorUtil.m21799e(m21797b, "version_soft");
            m21799e8 = CursorUtil.m21799e(m21797b, "version_hw");
            m21799e9 = CursorUtil.m21799e(m21797b, "version_voice");
            m21799e10 = CursorUtil.m21799e(m21797b, "connected");
            m21799e11 = CursorUtil.m21799e(m21797b, "create_time");
            m21799e12 = CursorUtil.m21799e(m21797b, "update_time");
            m21799e13 = CursorUtil.m21799e(m21797b, "enabled");
            m21799e14 = CursorUtil.m21799e(m21797b, "token");
            roomSQLiteQuery = m21831h;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = m21831h;
        }
        try {
            int m21799e15 = CursorUtil.m21799e(m21797b, "agreed_protocol_version");
            int i3 = m21799e14;
            ArrayList arrayList = new ArrayList(m21797b.getCount());
            while (m21797b.moveToNext()) {
                DeviceModel deviceModel = new DeviceModel();
                if (m21797b.isNull(m21799e)) {
                    i2 = m21799e;
                    valueOf = null;
                } else {
                    i2 = m21799e;
                    valueOf = Long.valueOf(m21797b.getLong(m21799e));
                }
                deviceModel.setId(valueOf);
                deviceModel.setName(m21797b.isNull(m21799e2) ? null : m21797b.getString(m21799e2));
                deviceModel.setAddress(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                deviceModel.setDeviceId(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                deviceModel.setDeviceType(m21797b.getInt(m21799e5));
                deviceModel.setDeviceColor(m21797b.getInt(m21799e6));
                deviceModel.setVersionSoft(m21797b.getInt(m21799e7));
                deviceModel.setVersionHw(m21797b.getInt(m21799e8));
                deviceModel.setVersionVoice(m21797b.getInt(m21799e9));
                deviceModel.setConnected(m21797b.getInt(m21799e10) != 0);
                int i4 = m21799e2;
                int i5 = m21799e3;
                deviceModel.setCreateTime(m21797b.getLong(m21799e11));
                deviceModel.setUpdateTime(m21797b.getLong(m21799e12));
                deviceModel.setEnabled(m21797b.getInt(m21799e13) != 0);
                int i6 = i3;
                deviceModel.setToken(m21797b.isNull(i6) ? null : m21797b.getString(i6));
                int i7 = m21799e15;
                deviceModel.setAgreedProtocolVersion(m21797b.getInt(i7));
                arrayList.add(deviceModel);
                i3 = i6;
                m21799e2 = i4;
                m21799e = i2;
                m21799e15 = i7;
                m21799e3 = i5;
            }
            m21797b.close();
            roomSQLiteQuery.m21828k();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            m21797b.close();
            roomSQLiteQuery.m21828k();
            throw th;
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.DeviceDao
    /* renamed from: j */
    public long mo14235j(DeviceModel deviceModel) {
        this.f12143a.m21943b();
        this.f12143a.m21942c();
        try {
            long m21903i = this.f12144b.m21903i(deviceModel);
            this.f12143a.m21922z();
            return m21903i;
        } finally {
            this.f12143a.m21940g();
        }
    }
}
