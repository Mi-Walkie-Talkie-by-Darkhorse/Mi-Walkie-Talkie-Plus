package com.ifengyu.im.DB.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.im.DB.entity.DepartmentEntity;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;

public class DepartmentEntityDao extends a<DepartmentEntity, Long> {
    public static final String TABLENAME = "Department";

    public static class Properties {
        public static final f Created = new f(5, Integer.TYPE, "created", false, "CREATED");
        public static final f DepartId = new f(1, Integer.TYPE, "departId", false, "DEPART_ID");
        public static final f DepartName = new f(2, String.class, "departName", false, "DEPART_NAME");
        public static final f Id = new f(0, Long.class, "id", true, "_id");
        public static final f Priority = new f(3, Integer.TYPE, "priority", false, "PRIORITY");
        public static final f Status = new f(4, Integer.TYPE, "status", false, "STATUS");
        public static final f Updated = new f(6, Integer.TYPE, "updated", false, "UPDATED");
    }

    public DepartmentEntityDao(org.greenrobot.greendao.b.a aVar) {
        super(aVar);
    }

    public DepartmentEntityDao(org.greenrobot.greendao.b.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    public static void createTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"Department\" (\"_id\" INTEGER PRIMARY KEY ,\"DEPART_ID\" INTEGER NOT NULL ,\"DEPART_NAME\" TEXT,\"PRIORITY\" INTEGER NOT NULL ,\"STATUS\" INTEGER NOT NULL ,\"CREATED\" INTEGER NOT NULL ,\"UPDATED\" INTEGER NOT NULL );");
    }

    public static void dropTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("DROP TABLE " + (z ? "IF EXISTS " : "") + "\"Department\"");
    }

    /* access modifiers changed from: protected */
    public final void bindValues(c cVar, DepartmentEntity departmentEntity) {
        cVar.d();
        Long id = departmentEntity.getId();
        if (id != null) {
            cVar.a(1, id.longValue());
        }
        cVar.a(2, (long) departmentEntity.getDepartId());
        String departName = departmentEntity.getDepartName();
        if (departName != null) {
            cVar.a(3, departName);
        }
        cVar.a(4, (long) departmentEntity.getPriority());
        cVar.a(5, (long) departmentEntity.getStatus());
        cVar.a(6, (long) departmentEntity.getCreated());
        cVar.a(7, (long) departmentEntity.getUpdated());
    }

    /* access modifiers changed from: protected */
    public final void bindValues(SQLiteStatement sQLiteStatement, DepartmentEntity departmentEntity) {
        sQLiteStatement.clearBindings();
        Long id = departmentEntity.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, (long) departmentEntity.getDepartId());
        String departName = departmentEntity.getDepartName();
        if (departName != null) {
            sQLiteStatement.bindString(3, departName);
        }
        sQLiteStatement.bindLong(4, (long) departmentEntity.getPriority());
        sQLiteStatement.bindLong(5, (long) departmentEntity.getStatus());
        sQLiteStatement.bindLong(6, (long) departmentEntity.getCreated());
        sQLiteStatement.bindLong(7, (long) departmentEntity.getUpdated());
    }

    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    public DepartmentEntity readEntity(Cursor cursor, int i) {
        String str = null;
        Long valueOf = cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0));
        int i2 = cursor.getInt(i + 1);
        if (!cursor.isNull(i + 2)) {
            str = cursor.getString(i + 2);
        }
        return new DepartmentEntity(valueOf, i2, str, cursor.getInt(i + 3), cursor.getInt(i + 4), cursor.getInt(i + 5), cursor.getInt(i + 6));
    }

    public void readEntity(Cursor cursor, DepartmentEntity departmentEntity, int i) {
        String str = null;
        departmentEntity.setId(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        departmentEntity.setDepartId(cursor.getInt(i + 1));
        if (!cursor.isNull(i + 2)) {
            str = cursor.getString(i + 2);
        }
        departmentEntity.setDepartName(str);
        departmentEntity.setPriority(cursor.getInt(i + 3));
        departmentEntity.setStatus(cursor.getInt(i + 4));
        departmentEntity.setCreated(cursor.getInt(i + 5));
        departmentEntity.setUpdated(cursor.getInt(i + 6));
    }

    /* access modifiers changed from: protected */
    public final Long updateKeyAfterInsert(DepartmentEntity departmentEntity, long j) {
        departmentEntity.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    public Long getKey(DepartmentEntity departmentEntity) {
        if (departmentEntity != null) {
            return departmentEntity.getId();
        }
        return null;
    }

    public boolean hasKey(DepartmentEntity departmentEntity) {
        return departmentEntity.getId() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
