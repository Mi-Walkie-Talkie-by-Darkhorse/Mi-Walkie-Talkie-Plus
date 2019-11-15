package com.ifengyu.im.DB.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.account.UserInfo;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;

public class UserEntityDao extends a<UserEntity, Long> {
    public static final String TABLENAME = "User";

    public static class Properties {
        public static final f Avatar = new f(3, String.class, "avatar", false, "AVATAR");
        public static final f Created = new f(15, Long.TYPE, "created", false, "CREATED");
        public static final f DepartmentId = new f(9, Integer.TYPE, "departmentId", false, "DEPARTMENT_ID");
        public static final f Email = new f(8, String.class, "email", false, "EMAIL");
        public static final f Expires_in = new f(14, String.class, "expires_in", false, "EXPIRES_IN");
        public static final f Gender = new f(4, Integer.TYPE, "gender", false, "GENDER");
        public static final f Id = new f(0, Long.class, "id", true, "_id");
        public static final f Key = new f(12, String.class, "key", false, "KEY");
        public static final f MainName = new f(2, String.class, "mainName", false, "MAIN_NAME");
        public static final f PeerId = new f(1, Integer.TYPE, "peerId", false, "PEER_ID");
        public static final f Phone = new f(7, String.class, UserInfo.TYPE_PHONE, false, "PHONE");
        public static final f PhoneVerified = new f(11, Integer.TYPE, "phoneVerified", false, "PHONE_VERIFIED");
        public static final f PinyinName = new f(5, String.class, "pinyinName", false, "PINYIN_NAME");
        public static final f RealName = new f(6, String.class, "realName", false, "REAL_NAME");
        public static final f Status = new f(10, Integer.TYPE, "status", false, "STATUS");
        public static final f Token = new f(13, String.class, "token", false, "TOKEN");
        public static final f Updated = new f(16, Long.TYPE, "updated", false, "UPDATED");
    }

    public UserEntityDao(org.greenrobot.greendao.b.a aVar) {
        super(aVar);
    }

    public UserEntityDao(org.greenrobot.greendao.b.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    public static void createTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"User\" (\"_id\" INTEGER PRIMARY KEY ,\"PEER_ID\" INTEGER NOT NULL ,\"MAIN_NAME\" TEXT,\"AVATAR\" TEXT,\"GENDER\" INTEGER NOT NULL ,\"PINYIN_NAME\" TEXT,\"REAL_NAME\" TEXT,\"PHONE\" TEXT,\"EMAIL\" TEXT,\"DEPARTMENT_ID\" INTEGER NOT NULL ,\"STATUS\" INTEGER NOT NULL ,\"PHONE_VERIFIED\" INTEGER NOT NULL ,\"KEY\" TEXT,\"TOKEN\" TEXT,\"EXPIRES_IN\" TEXT,\"CREATED\" INTEGER NOT NULL ,\"UPDATED\" INTEGER NOT NULL );");
    }

    public static void dropTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("DROP TABLE " + (z ? "IF EXISTS " : "") + "\"User\"");
    }

    /* access modifiers changed from: protected */
    public final void bindValues(c cVar, UserEntity userEntity) {
        cVar.d();
        Long id = userEntity.getId();
        if (id != null) {
            cVar.a(1, id.longValue());
        }
        cVar.a(2, (long) userEntity.getPeerId());
        String mainName = userEntity.getMainName();
        if (mainName != null) {
            cVar.a(3, mainName);
        }
        String avatar = userEntity.getAvatar();
        if (avatar != null) {
            cVar.a(4, avatar);
        }
        cVar.a(5, (long) userEntity.getGender());
        String pinyinName = userEntity.getPinyinName();
        if (pinyinName != null) {
            cVar.a(6, pinyinName);
        }
        String realName = userEntity.getRealName();
        if (realName != null) {
            cVar.a(7, realName);
        }
        String phone = userEntity.getPhone();
        if (phone != null) {
            cVar.a(8, phone);
        }
        String email = userEntity.getEmail();
        if (email != null) {
            cVar.a(9, email);
        }
        cVar.a(10, (long) userEntity.getDepartmentId());
        cVar.a(11, (long) userEntity.getStatus());
        cVar.a(12, (long) userEntity.getPhoneVerified());
        String key = userEntity.getKey();
        if (key != null) {
            cVar.a(13, key);
        }
        String token = userEntity.getToken();
        if (token != null) {
            cVar.a(14, token);
        }
        String expires_in = userEntity.getExpires_in();
        if (expires_in != null) {
            cVar.a(15, expires_in);
        }
        cVar.a(16, userEntity.getCreated());
        cVar.a(17, userEntity.getUpdated());
    }

    /* access modifiers changed from: protected */
    public final void bindValues(SQLiteStatement sQLiteStatement, UserEntity userEntity) {
        sQLiteStatement.clearBindings();
        Long id = userEntity.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, (long) userEntity.getPeerId());
        String mainName = userEntity.getMainName();
        if (mainName != null) {
            sQLiteStatement.bindString(3, mainName);
        }
        String avatar = userEntity.getAvatar();
        if (avatar != null) {
            sQLiteStatement.bindString(4, avatar);
        }
        sQLiteStatement.bindLong(5, (long) userEntity.getGender());
        String pinyinName = userEntity.getPinyinName();
        if (pinyinName != null) {
            sQLiteStatement.bindString(6, pinyinName);
        }
        String realName = userEntity.getRealName();
        if (realName != null) {
            sQLiteStatement.bindString(7, realName);
        }
        String phone = userEntity.getPhone();
        if (phone != null) {
            sQLiteStatement.bindString(8, phone);
        }
        String email = userEntity.getEmail();
        if (email != null) {
            sQLiteStatement.bindString(9, email);
        }
        sQLiteStatement.bindLong(10, (long) userEntity.getDepartmentId());
        sQLiteStatement.bindLong(11, (long) userEntity.getStatus());
        sQLiteStatement.bindLong(12, (long) userEntity.getPhoneVerified());
        String key = userEntity.getKey();
        if (key != null) {
            sQLiteStatement.bindString(13, key);
        }
        String token = userEntity.getToken();
        if (token != null) {
            sQLiteStatement.bindString(14, token);
        }
        String expires_in = userEntity.getExpires_in();
        if (expires_in != null) {
            sQLiteStatement.bindString(15, expires_in);
        }
        sQLiteStatement.bindLong(16, userEntity.getCreated());
        sQLiteStatement.bindLong(17, userEntity.getUpdated());
    }

    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    public UserEntity readEntity(Cursor cursor, int i) {
        return new UserEntity(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)), cursor.getInt(i + 1), cursor.isNull(i + 2) ? null : cursor.getString(i + 2), cursor.isNull(i + 3) ? null : cursor.getString(i + 3), cursor.getInt(i + 4), cursor.isNull(i + 5) ? null : cursor.getString(i + 5), cursor.isNull(i + 6) ? null : cursor.getString(i + 6), cursor.isNull(i + 7) ? null : cursor.getString(i + 7), cursor.isNull(i + 8) ? null : cursor.getString(i + 8), cursor.getInt(i + 9), cursor.getInt(i + 10), cursor.getInt(i + 11), cursor.isNull(i + 12) ? null : cursor.getString(i + 12), cursor.isNull(i + 13) ? null : cursor.getString(i + 13), cursor.isNull(i + 14) ? null : cursor.getString(i + 14), cursor.getLong(i + 15), cursor.getLong(i + 16));
    }

    public void readEntity(Cursor cursor, UserEntity userEntity, int i) {
        String str = null;
        userEntity.setId(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        userEntity.setPeerId(cursor.getInt(i + 1));
        userEntity.setMainName(cursor.isNull(i + 2) ? null : cursor.getString(i + 2));
        userEntity.setAvatar(cursor.isNull(i + 3) ? null : cursor.getString(i + 3));
        userEntity.setGender(cursor.getInt(i + 4));
        userEntity.setPinyinName(cursor.isNull(i + 5) ? null : cursor.getString(i + 5));
        userEntity.setRealName(cursor.isNull(i + 6) ? null : cursor.getString(i + 6));
        userEntity.setPhone(cursor.isNull(i + 7) ? null : cursor.getString(i + 7));
        userEntity.setEmail(cursor.isNull(i + 8) ? null : cursor.getString(i + 8));
        userEntity.setDepartmentId(cursor.getInt(i + 9));
        userEntity.setStatus(cursor.getInt(i + 10));
        userEntity.setPhoneVerified(cursor.getInt(i + 11));
        userEntity.setKey(cursor.isNull(i + 12) ? null : cursor.getString(i + 12));
        userEntity.setToken(cursor.isNull(i + 13) ? null : cursor.getString(i + 13));
        if (!cursor.isNull(i + 14)) {
            str = cursor.getString(i + 14);
        }
        userEntity.setExpires_in(str);
        userEntity.setCreated(cursor.getLong(i + 15));
        userEntity.setUpdated(cursor.getLong(i + 16));
    }

    /* access modifiers changed from: protected */
    public final Long updateKeyAfterInsert(UserEntity userEntity, long j) {
        userEntity.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    public Long getKey(UserEntity userEntity) {
        if (userEntity != null) {
            return userEntity.getId();
        }
        return null;
    }

    public boolean hasKey(UserEntity userEntity) {
        return userEntity.getId() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
