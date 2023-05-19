package com.ifengyu.intercom.database.p155a;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.p045w0.CursorUtil;
import androidx.room.p045w0.DBUtil;
import com.ifengyu.intercom.models.ConfigFileModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: com.ifengyu.intercom.database.a.d */
/* loaded from: classes2.dex */
public final class ConfigFileDao_Impl implements ConfigFileDao {

    /* renamed from: a */
    private final RoomDatabase f12139a;

    /* renamed from: b */
    private final EntityInsertionAdapter<ConfigFileModel> f12140b;

    /* renamed from: c */
    private final EntityDeletionOrUpdateAdapter<ConfigFileModel> f12141c;

    /* renamed from: d */
    private final EntityDeletionOrUpdateAdapter<ConfigFileModel> f12142d;

    /* compiled from: ConfigFileDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.d$a */
    /* loaded from: classes2.dex */
    class C3164a extends EntityInsertionAdapter<ConfigFileModel> {
        C3164a(ConfigFileDao_Impl configFileDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "INSERT OR ABORT INTO `config_file` (`id`,`name`,`from`,`create_time`,`update_time`,`from_device_type`) VALUES (?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: k */
        public void mo8466g(SupportSQLiteStatement supportSQLiteStatement, ConfigFileModel configFileModel) {
            if (configFileModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, configFileModel.getId().longValue());
            }
            if (configFileModel.getName() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21762a(2, configFileModel.getName());
            }
            if (configFileModel.getFrom() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, configFileModel.getFrom());
            }
            supportSQLiteStatement.mo21760c(4, configFileModel.getCreateTime());
            supportSQLiteStatement.mo21760c(5, configFileModel.getUpdateTime());
            supportSQLiteStatement.mo21760c(6, configFileModel.getFromDeviceType());
        }
    }

    /* compiled from: ConfigFileDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.d$b */
    /* loaded from: classes2.dex */
    class C3165b extends EntityDeletionOrUpdateAdapter<ConfigFileModel> {
        C3165b(ConfigFileDao_Impl configFileDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "DELETE FROM `config_file` WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: j */
        public void mo14216g(SupportSQLiteStatement supportSQLiteStatement, ConfigFileModel configFileModel) {
            if (configFileModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, configFileModel.getId().longValue());
            }
        }
    }

    /* compiled from: ConfigFileDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.d$c */
    /* loaded from: classes2.dex */
    class C3166c extends EntityDeletionOrUpdateAdapter<ConfigFileModel> {
        C3166c(ConfigFileDao_Impl configFileDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "UPDATE OR ABORT `config_file` SET `id` = ?,`name` = ?,`from` = ?,`create_time` = ?,`update_time` = ?,`from_device_type` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: j */
        public void mo14216g(SupportSQLiteStatement supportSQLiteStatement, ConfigFileModel configFileModel) {
            if (configFileModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, configFileModel.getId().longValue());
            }
            if (configFileModel.getName() == null) {
                supportSQLiteStatement.mo21758e(2);
            } else {
                supportSQLiteStatement.mo21762a(2, configFileModel.getName());
            }
            if (configFileModel.getFrom() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, configFileModel.getFrom());
            }
            supportSQLiteStatement.mo21760c(4, configFileModel.getCreateTime());
            supportSQLiteStatement.mo21760c(5, configFileModel.getUpdateTime());
            supportSQLiteStatement.mo21760c(6, configFileModel.getFromDeviceType());
            if (configFileModel.getId() == null) {
                supportSQLiteStatement.mo21758e(7);
            } else {
                supportSQLiteStatement.mo21760c(7, configFileModel.getId().longValue());
            }
        }
    }

    public ConfigFileDao_Impl(RoomDatabase roomDatabase) {
        this.f12139a = roomDatabase;
        this.f12140b = new C3164a(this, roomDatabase);
        this.f12141c = new C3165b(this, roomDatabase);
        this.f12142d = new C3166c(this, roomDatabase);
    }

    /* renamed from: a */
    public static List<Class<?>> m14252a() {
        return Collections.emptyList();
    }

    @Override // com.ifengyu.intercom.database.p155a.ConfigFileDao
    /* renamed from: b */
    public List<ConfigFileModel> mo14251b() {
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from config_file order by create_time desc", 0);
        this.f12139a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12139a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "name");
            int m21799e3 = CursorUtil.m21799e(m21797b, "from");
            int m21799e4 = CursorUtil.m21799e(m21797b, "create_time");
            int m21799e5 = CursorUtil.m21799e(m21797b, "update_time");
            int m21799e6 = CursorUtil.m21799e(m21797b, "from_device_type");
            ArrayList arrayList = new ArrayList(m21797b.getCount());
            while (m21797b.moveToNext()) {
                ConfigFileModel configFileModel = new ConfigFileModel();
                configFileModel.setId(m21797b.isNull(m21799e) ? null : Long.valueOf(m21797b.getLong(m21799e)));
                configFileModel.setName(m21797b.isNull(m21799e2) ? null : m21797b.getString(m21799e2));
                configFileModel.setFrom(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                configFileModel.setCreateTime(m21797b.getLong(m21799e4));
                configFileModel.setUpdateTime(m21797b.getLong(m21799e5));
                configFileModel.setFromDeviceType(m21797b.getInt(m21799e6));
                arrayList.add(configFileModel);
            }
            return arrayList;
        } finally {
            m21797b.close();
            m21831h.m21828k();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.ConfigFileDao
    /* renamed from: c */
    public void mo14250c(List<ConfigFileModel> list) {
        this.f12139a.m21943b();
        this.f12139a.m21942c();
        try {
            this.f12141c.m21905i(list);
            this.f12139a.m21922z();
        } finally {
            this.f12139a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.ConfigFileDao
    /* renamed from: d */
    public void mo14249d(ConfigFileModel configFileModel) {
        this.f12139a.m21943b();
        this.f12139a.m21942c();
        try {
            this.f12142d.m21906h(configFileModel);
            this.f12139a.m21922z();
        } finally {
            this.f12139a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.ConfigFileDao
    /* renamed from: e */
    public long mo14248e(ConfigFileModel configFileModel) {
        this.f12139a.m21943b();
        this.f12139a.m21942c();
        try {
            long m21903i = this.f12140b.m21903i(configFileModel);
            this.f12139a.m21922z();
            return m21903i;
        } finally {
            this.f12139a.m21940g();
        }
    }
}
