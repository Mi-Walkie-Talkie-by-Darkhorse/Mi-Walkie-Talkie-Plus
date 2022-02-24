package com.ifengyu.intercom.lite.f;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.l;
import androidx.room.o;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DeviceDao_Impl.java */
/* loaded from: classes2.dex */
public final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f5428a;

    /* renamed from: b  reason: collision with root package name */
    private final androidx.room.c<DeviceModel> f5429b;

    /* renamed from: c  reason: collision with root package name */
    private final androidx.room.b<DeviceModel> f5430c;
    private final o d;

    /* compiled from: DeviceDao_Impl.java */
    /* loaded from: classes2.dex */
    class a extends androidx.room.c<DeviceModel> {
        a(f fVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "INSERT OR REPLACE INTO `device` (`id`,`name`,`address`,`device_id`,`device_type`,`device_color`,`version_soft`,`version_hw`,`version_voice`,`connected`,`create_time`,`update_time`,`enabled`,`token`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        public void a(a.g.a.f fVar, DeviceModel deviceModel) {
            if (deviceModel.getId() == null) {
                fVar.bindNull(1);
            } else {
                fVar.bindLong(1, deviceModel.getId().longValue());
            }
            if (deviceModel.getName() == null) {
                fVar.bindNull(2);
            } else {
                fVar.bindString(2, deviceModel.getName());
            }
            if (deviceModel.getAddress() == null) {
                fVar.bindNull(3);
            } else {
                fVar.bindString(3, deviceModel.getAddress());
            }
            if (deviceModel.getDeviceId() == null) {
                fVar.bindNull(4);
            } else {
                fVar.bindString(4, deviceModel.getDeviceId());
            }
            fVar.bindLong(5, deviceModel.getDeviceType());
            fVar.bindLong(6, deviceModel.getDeviceColor());
            fVar.bindLong(7, deviceModel.getVersionSoft());
            fVar.bindLong(8, deviceModel.getVersionHw());
            fVar.bindLong(9, deviceModel.getVersionVoice());
            fVar.bindLong(10, deviceModel.isConnected() ? 1L : 0L);
            fVar.bindLong(11, deviceModel.getCreateTime());
            fVar.bindLong(12, deviceModel.getUpdateTime());
            fVar.bindLong(13, deviceModel.isEnabled() ? 1L : 0L);
            if (deviceModel.getToken() == null) {
                fVar.bindNull(14);
            } else {
                fVar.bindString(14, deviceModel.getToken());
            }
        }
    }

    /* compiled from: DeviceDao_Impl.java */
    /* loaded from: classes2.dex */
    class b extends androidx.room.b<DeviceModel> {
        b(f fVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "DELETE FROM `device` WHERE `id` = ?";
        }

        public void a(a.g.a.f fVar, DeviceModel deviceModel) {
            if (deviceModel.getId() == null) {
                fVar.bindNull(1);
            } else {
                fVar.bindLong(1, deviceModel.getId().longValue());
            }
        }
    }

    /* compiled from: DeviceDao_Impl.java */
    /* loaded from: classes2.dex */
    class c extends androidx.room.b<DeviceModel> {
        c(f fVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "UPDATE OR ABORT `device` SET `id` = ?,`name` = ?,`address` = ?,`device_id` = ?,`device_type` = ?,`device_color` = ?,`version_soft` = ?,`version_hw` = ?,`version_voice` = ?,`connected` = ?,`create_time` = ?,`update_time` = ?,`enabled` = ?,`token` = ? WHERE `id` = ?";
        }

        public void a(a.g.a.f fVar, DeviceModel deviceModel) {
            if (deviceModel.getId() == null) {
                fVar.bindNull(1);
            } else {
                fVar.bindLong(1, deviceModel.getId().longValue());
            }
            if (deviceModel.getName() == null) {
                fVar.bindNull(2);
            } else {
                fVar.bindString(2, deviceModel.getName());
            }
            if (deviceModel.getAddress() == null) {
                fVar.bindNull(3);
            } else {
                fVar.bindString(3, deviceModel.getAddress());
            }
            if (deviceModel.getDeviceId() == null) {
                fVar.bindNull(4);
            } else {
                fVar.bindString(4, deviceModel.getDeviceId());
            }
            fVar.bindLong(5, deviceModel.getDeviceType());
            fVar.bindLong(6, deviceModel.getDeviceColor());
            fVar.bindLong(7, deviceModel.getVersionSoft());
            fVar.bindLong(8, deviceModel.getVersionHw());
            fVar.bindLong(9, deviceModel.getVersionVoice());
            fVar.bindLong(10, deviceModel.isConnected() ? 1L : 0L);
            fVar.bindLong(11, deviceModel.getCreateTime());
            fVar.bindLong(12, deviceModel.getUpdateTime());
            fVar.bindLong(13, deviceModel.isEnabled() ? 1L : 0L);
            if (deviceModel.getToken() == null) {
                fVar.bindNull(14);
            } else {
                fVar.bindString(14, deviceModel.getToken());
            }
            if (deviceModel.getId() == null) {
                fVar.bindNull(15);
            } else {
                fVar.bindLong(15, deviceModel.getId().longValue());
            }
        }
    }

    /* compiled from: DeviceDao_Impl.java */
    /* loaded from: classes2.dex */
    class d extends o {
        d(f fVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "delete from device where address = ?";
        }
    }

    public f(RoomDatabase roomDatabase) {
        this.f5428a = roomDatabase;
        this.f5429b = new a(this, roomDatabase);
        new b(this, roomDatabase);
        this.f5430c = new c(this, roomDatabase);
        this.d = new d(this, roomDatabase);
    }

    @Override // com.ifengyu.intercom.lite.f.e
    public long a(DeviceModel deviceModel) {
        this.f5428a.b();
        this.f5428a.c();
        try {
            long a2 = this.f5429b.a((androidx.room.c<DeviceModel>) deviceModel);
            this.f5428a.k();
            return a2;
        } finally {
            this.f5428a.e();
        }
    }

    @Override // com.ifengyu.intercom.lite.f.e
    public void b(DeviceModel deviceModel) {
        this.f5428a.b();
        this.f5428a.c();
        try {
            this.f5430c.a((androidx.room.b<DeviceModel>) deviceModel);
            this.f5428a.k();
        } finally {
            this.f5428a.e();
        }
    }

    @Override // com.ifengyu.intercom.lite.f.e
    public int a(String str) {
        this.f5428a.b();
        a.g.a.f a2 = this.d.a();
        if (str == null) {
            a2.bindNull(1);
        } else {
            a2.bindString(1, str);
        }
        this.f5428a.c();
        try {
            int executeUpdateDelete = a2.executeUpdateDelete();
            this.f5428a.k();
            return executeUpdateDelete;
        } finally {
            this.f5428a.e();
            this.d.a(a2);
        }
    }

    @Override // com.ifengyu.intercom.lite.f.e
    public DeviceModel b(String str) {
        l lVar;
        Throwable th;
        DeviceModel deviceModel;
        l b2 = l.b("select * from device where address = ? limit 1", 1);
        if (str == null) {
            b2.bindNull(1);
        } else {
            b2.bindString(1, str);
        }
        this.f5428a.b();
        Cursor a2 = androidx.room.r.c.a(this.f5428a, b2, false, null);
        try {
            int a3 = androidx.room.r.b.a(a2, "id");
            int a4 = androidx.room.r.b.a(a2, "name");
            int a5 = androidx.room.r.b.a(a2, "address");
            int a6 = androidx.room.r.b.a(a2, "device_id");
            int a7 = androidx.room.r.b.a(a2, ai.ai);
            int a8 = androidx.room.r.b.a(a2, "device_color");
            int a9 = androidx.room.r.b.a(a2, "version_soft");
            int a10 = androidx.room.r.b.a(a2, "version_hw");
            int a11 = androidx.room.r.b.a(a2, "version_voice");
            int a12 = androidx.room.r.b.a(a2, "connected");
            int a13 = androidx.room.r.b.a(a2, "create_time");
            int a14 = androidx.room.r.b.a(a2, "update_time");
            int a15 = androidx.room.r.b.a(a2, "enabled");
            int a16 = androidx.room.r.b.a(a2, "token");
            if (a2.moveToFirst()) {
                lVar = b2;
                try {
                    DeviceModel deviceModel2 = new DeviceModel();
                    deviceModel2.setId(a2.isNull(a3) ? null : Long.valueOf(a2.getLong(a3)));
                    deviceModel2.setName(a2.getString(a4));
                    deviceModel2.setAddress(a2.getString(a5));
                    deviceModel2.setDeviceId(a2.getString(a6));
                    deviceModel2.setDeviceType(a2.getInt(a7));
                    deviceModel2.setDeviceColor(a2.getInt(a8));
                    deviceModel2.setVersionSoft(a2.getInt(a9));
                    deviceModel2.setVersionHw(a2.getInt(a10));
                    deviceModel2.setVersionVoice(a2.getInt(a11));
                    deviceModel2.setConnected(a2.getInt(a12) != 0);
                    deviceModel2.setCreateTime(a2.getLong(a13));
                    deviceModel2.setUpdateTime(a2.getLong(a14));
                    deviceModel2.setEnabled(a2.getInt(a15) != 0);
                    deviceModel2.setToken(a2.getString(a16));
                    deviceModel = deviceModel2;
                } catch (Throwable th2) {
                    th = th2;
                    a2.close();
                    lVar.b();
                    throw th;
                }
            } else {
                lVar = b2;
                deviceModel = null;
            }
            a2.close();
            lVar.b();
            return deviceModel;
        } catch (Throwable th3) {
            th = th3;
            lVar = b2;
        }
    }

    @Override // com.ifengyu.intercom.lite.f.e
    public List<DeviceModel> a() {
        l lVar;
        Throwable th;
        Long l;
        l b2 = l.b("select * from device order by update_time desc", 0);
        this.f5428a.b();
        Cursor a2 = androidx.room.r.c.a(this.f5428a, b2, false, null);
        try {
            int a3 = androidx.room.r.b.a(a2, "id");
            int a4 = androidx.room.r.b.a(a2, "name");
            int a5 = androidx.room.r.b.a(a2, "address");
            int a6 = androidx.room.r.b.a(a2, "device_id");
            int a7 = androidx.room.r.b.a(a2, ai.ai);
            int a8 = androidx.room.r.b.a(a2, "device_color");
            int a9 = androidx.room.r.b.a(a2, "version_soft");
            int a10 = androidx.room.r.b.a(a2, "version_hw");
            int a11 = androidx.room.r.b.a(a2, "version_voice");
            int a12 = androidx.room.r.b.a(a2, "connected");
            int a13 = androidx.room.r.b.a(a2, "create_time");
            int a14 = androidx.room.r.b.a(a2, "update_time");
            int a15 = androidx.room.r.b.a(a2, "enabled");
            lVar = b2;
            try {
                int a16 = androidx.room.r.b.a(a2, "token");
                ArrayList arrayList = new ArrayList(a2.getCount());
                while (a2.moveToNext()) {
                    DeviceModel deviceModel = new DeviceModel();
                    if (a2.isNull(a3)) {
                        a3 = a3;
                        l = null;
                    } else {
                        l = Long.valueOf(a2.getLong(a3));
                        a3 = a3;
                    }
                    deviceModel.setId(l);
                    deviceModel.setName(a2.getString(a4));
                    deviceModel.setAddress(a2.getString(a5));
                    deviceModel.setDeviceId(a2.getString(a6));
                    deviceModel.setDeviceType(a2.getInt(a7));
                    deviceModel.setDeviceColor(a2.getInt(a8));
                    deviceModel.setVersionSoft(a2.getInt(a9));
                    deviceModel.setVersionHw(a2.getInt(a10));
                    deviceModel.setVersionVoice(a2.getInt(a11));
                    deviceModel.setConnected(a2.getInt(a12) != 0);
                    deviceModel.setCreateTime(a2.getLong(a13));
                    deviceModel.setUpdateTime(a2.getLong(a14));
                    deviceModel.setEnabled(a2.getInt(a15) != 0);
                    deviceModel.setToken(a2.getString(a16));
                    arrayList.add(deviceModel);
                    a16 = a16;
                    a4 = a4;
                }
                a2.close();
                lVar.b();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                a2.close();
                lVar.b();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            lVar = b2;
        }
    }
}
