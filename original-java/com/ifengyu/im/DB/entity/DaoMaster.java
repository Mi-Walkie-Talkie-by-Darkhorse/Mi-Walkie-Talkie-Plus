package com.ifengyu.im.DB.entity;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.util.Log;
import com.ifengyu.im.imservice.model.MessageEntityDao;
import com.ifengyu.im.imservice.model.SessionEntityDao;
import org.greenrobot.greendao.a.a;
import org.greenrobot.greendao.a.f;
import org.greenrobot.greendao.b;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

public class DaoMaster extends b {
    public static final int SCHEMA_VERSION = 1;

    public static class DevOpenHelper extends OpenHelper {
        public DevOpenHelper(Context context, String str) {
            super(context, str);
        }

        public DevOpenHelper(Context context, String str, CursorFactory cursorFactory) {
            super(context, str, cursorFactory);
        }

        public void onUpgrade(a aVar, int i, int i2) {
            Log.i("greenDAO", "Upgrading schema from version " + i + " to " + i2 + " by dropping all tables");
            DaoMaster.dropAllTables(aVar, true);
            onCreate(aVar);
        }
    }

    public static abstract class OpenHelper extends org.greenrobot.greendao.a.b {
        public OpenHelper(Context context, String str) {
            super(context, str, 1);
        }

        public OpenHelper(Context context, String str, CursorFactory cursorFactory) {
            super(context, str, cursorFactory, 1);
        }

        public void onCreate(a aVar) {
            Log.i("greenDAO", "Creating tables for schema version 1");
            DaoMaster.createAllTables(aVar, false);
        }
    }

    public static void createAllTables(a aVar, boolean z) {
        DepartmentEntityDao.createTable(aVar, z);
        GroupEntityDao.createTable(aVar, z);
        UserEntityDao.createTable(aVar, z);
        MessageEntityDao.createTable(aVar, z);
        SessionEntityDao.createTable(aVar, z);
    }

    public static void dropAllTables(a aVar, boolean z) {
        DepartmentEntityDao.dropTable(aVar, z);
        GroupEntityDao.dropTable(aVar, z);
        UserEntityDao.dropTable(aVar, z);
        MessageEntityDao.dropTable(aVar, z);
        SessionEntityDao.dropTable(aVar, z);
    }

    public static DaoSession newDevSession(Context context, String str) {
        return new DaoMaster(new DevOpenHelper(context, str).getWritableDb()).newSession();
    }

    public DaoMaster(SQLiteDatabase sQLiteDatabase) {
        this((a) new f(sQLiteDatabase));
    }

    public DaoMaster(a aVar) {
        super(aVar, 1);
        registerDaoClass(DepartmentEntityDao.class);
        registerDaoClass(GroupEntityDao.class);
        registerDaoClass(UserEntityDao.class);
        registerDaoClass(MessageEntityDao.class);
        registerDaoClass(SessionEntityDao.class);
    }

    public DaoSession newSession() {
        return new DaoSession(this.db, IdentityScopeType.Session, this.daoConfigMap);
    }

    public DaoSession newSession(IdentityScopeType identityScopeType) {
        return new DaoSession(this.db, identityScopeType, this.daoConfigMap);
    }
}
