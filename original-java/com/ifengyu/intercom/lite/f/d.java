package com.ifengyu.intercom.lite.f;

import a.g.a.f;
import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.l;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ConfigFileDao_Impl.java */
/* loaded from: classes2.dex */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final RoomDatabase f5425a;

    /* renamed from: b  reason: collision with root package name */
    private final androidx.room.c<ConfigFileModel> f5426b;

    /* renamed from: c  reason: collision with root package name */
    private final androidx.room.b<ConfigFileModel> f5427c;
    private final androidx.room.b<ConfigFileModel> d;

    /* compiled from: ConfigFileDao_Impl.java */
    /* loaded from: classes2.dex */
    class a extends androidx.room.c<ConfigFileModel> {
        a(d dVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "INSERT OR ABORT INTO `config_file` (`id`,`name`,`from`,`create_time`,`update_time`) VALUES (?,?,?,?,?)";
        }

        public void a(f fVar, ConfigFileModel configFileModel) {
            if (configFileModel.getId() == null) {
                fVar.bindNull(1);
            } else {
                fVar.bindLong(1, configFileModel.getId().longValue());
            }
            if (configFileModel.getName() == null) {
                fVar.bindNull(2);
            } else {
                fVar.bindString(2, configFileModel.getName());
            }
            if (configFileModel.getFrom() == null) {
                fVar.bindNull(3);
            } else {
                fVar.bindString(3, configFileModel.getFrom());
            }
            fVar.bindLong(4, configFileModel.getCreateTime());
            fVar.bindLong(5, configFileModel.getUpdateTime());
        }
    }

    /* compiled from: ConfigFileDao_Impl.java */
    /* loaded from: classes2.dex */
    class b extends androidx.room.b<ConfigFileModel> {
        b(d dVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "DELETE FROM `config_file` WHERE `id` = ?";
        }

        public void a(f fVar, ConfigFileModel configFileModel) {
            if (configFileModel.getId() == null) {
                fVar.bindNull(1);
            } else {
                fVar.bindLong(1, configFileModel.getId().longValue());
            }
        }
    }

    /* compiled from: ConfigFileDao_Impl.java */
    /* loaded from: classes2.dex */
    class c extends androidx.room.b<ConfigFileModel> {
        c(d dVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.o
        public String c() {
            return "UPDATE OR ABORT `config_file` SET `id` = ?,`name` = ?,`from` = ?,`create_time` = ?,`update_time` = ? WHERE `id` = ?";
        }

        public void a(f fVar, ConfigFileModel configFileModel) {
            if (configFileModel.getId() == null) {
                fVar.bindNull(1);
            } else {
                fVar.bindLong(1, configFileModel.getId().longValue());
            }
            if (configFileModel.getName() == null) {
                fVar.bindNull(2);
            } else {
                fVar.bindString(2, configFileModel.getName());
            }
            if (configFileModel.getFrom() == null) {
                fVar.bindNull(3);
            } else {
                fVar.bindString(3, configFileModel.getFrom());
            }
            fVar.bindLong(4, configFileModel.getCreateTime());
            fVar.bindLong(5, configFileModel.getUpdateTime());
            if (configFileModel.getId() == null) {
                fVar.bindNull(6);
            } else {
                fVar.bindLong(6, configFileModel.getId().longValue());
            }
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f5425a = roomDatabase;
        this.f5426b = new a(this, roomDatabase);
        this.f5427c = new b(this, roomDatabase);
        this.d = new c(this, roomDatabase);
    }

    @Override // com.ifengyu.intercom.lite.f.c
    public void a(List<ConfigFileModel> list) {
        this.f5425a.b();
        this.f5425a.c();
        try {
            this.f5427c.a(list);
            this.f5425a.k();
        } finally {
            this.f5425a.e();
        }
    }

    @Override // com.ifengyu.intercom.lite.f.c
    public long b(ConfigFileModel configFileModel) {
        this.f5425a.b();
        this.f5425a.c();
        try {
            long a2 = this.f5426b.a((androidx.room.c<ConfigFileModel>) configFileModel);
            this.f5425a.k();
            return a2;
        } finally {
            this.f5425a.e();
        }
    }

    @Override // com.ifengyu.intercom.lite.f.c
    public void a(ConfigFileModel configFileModel) {
        this.f5425a.b();
        this.f5425a.c();
        try {
            this.d.a((androidx.room.b<ConfigFileModel>) configFileModel);
            this.f5425a.k();
        } finally {
            this.f5425a.e();
        }
    }

    @Override // com.ifengyu.intercom.lite.f.c
    public List<ConfigFileModel> a() {
        l b2 = l.b("select * from config_file order by create_time desc", 0);
        this.f5425a.b();
        Cursor a2 = androidx.room.r.c.a(this.f5425a, b2, false, null);
        try {
            int a3 = androidx.room.r.b.a(a2, "id");
            int a4 = androidx.room.r.b.a(a2, "name");
            int a5 = androidx.room.r.b.a(a2, "from");
            int a6 = androidx.room.r.b.a(a2, "create_time");
            int a7 = androidx.room.r.b.a(a2, "update_time");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                ConfigFileModel configFileModel = new ConfigFileModel();
                configFileModel.setId(a2.isNull(a3) ? null : Long.valueOf(a2.getLong(a3)));
                configFileModel.setName(a2.getString(a4));
                configFileModel.setFrom(a2.getString(a5));
                configFileModel.setCreateTime(a2.getLong(a6));
                configFileModel.setUpdateTime(a2.getLong(a7));
                arrayList.add(configFileModel);
            }
            return arrayList;
        } finally {
            a2.close();
            b2.b();
        }
    }
}
