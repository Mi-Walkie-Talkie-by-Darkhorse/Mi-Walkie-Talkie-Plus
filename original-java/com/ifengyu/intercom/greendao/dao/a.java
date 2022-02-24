package com.ifengyu.intercom.greendao.dao;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import org.greenrobot.greendao.AbstractDaoMaster;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseOpenHelper;
import org.greenrobot.greendao.database.StandardDatabase;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

/* compiled from: DaoMaster.java */
/* loaded from: classes.dex */
public class a extends AbstractDaoMaster {

    /* compiled from: DaoMaster.java */
    /* renamed from: com.ifengyu.intercom.greendao.dao.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0151a extends b {
        public C0151a(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory);
        }

        @Override // org.greenrobot.greendao.database.DatabaseOpenHelper
        public void onUpgrade(Database database, int i, int i2) {
            Log.i("greenDAO", "Upgrading schema from version " + i + " to " + i2);
            if (i < i2) {
                switch (i) {
                    case 1:
                        database.execSQL("ALTER TABLE USER_LOCATION ADD \"FREQ\" INT DEFAULT 0");
                    case 2:
                    case 3:
                        TrackInfoDataDao.a(database, false);
                        TrackPointDao.a(database, false);
                    case 4:
                        database.execSQL("DROP TABLE IF EXISTS USER_DEFINE_CHANNEL");
                        database.execSQL("DROP TABLE IF EXISTS USER_RELAY_CHANNEL");
                        UserChannelDao.a(database, false);
                    case 5:
                        SealSharkChannelDao.a(database, false);
                        break;
                    case 6:
                        break;
                    default:
                        return;
                }
                UserLocationDao.b(database, true);
                UserLocationDao.a(database, false);
            }
        }
    }

    /* compiled from: DaoMaster.java */
    /* loaded from: classes.dex */
    public static abstract class b extends DatabaseOpenHelper {
        public b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory, 7);
        }

        @Override // org.greenrobot.greendao.database.DatabaseOpenHelper
        public void onCreate(Database database) {
            Log.i("greenDAO", "Creating tables for schema version 7");
            a.a(database, false);
        }
    }

    public a(SQLiteDatabase sQLiteDatabase) {
        this(new StandardDatabase(sQLiteDatabase));
    }

    public static void a(Database database, boolean z) {
        TileDownloadStateDao.a(database, z);
        TrackInfoDataDao.a(database, z);
        TrackPointDao.a(database, z);
        UserLocationDao.a(database, z);
        SealSharkChannelDao.a(database, z);
        UserChannelDao.a(database, z);
    }

    public a(Database database) {
        super(database, 7);
        registerDaoClass(TileDownloadStateDao.class);
        registerDaoClass(TrackInfoDataDao.class);
        registerDaoClass(TrackPointDao.class);
        registerDaoClass(UserLocationDao.class);
        registerDaoClass(SealSharkChannelDao.class);
        registerDaoClass(UserChannelDao.class);
    }

    @Override // org.greenrobot.greendao.AbstractDaoMaster
    public b newSession() {
        return new b(this.db, IdentityScopeType.Session, this.daoConfigMap);
    }

    @Override // org.greenrobot.greendao.AbstractDaoMaster
    public b newSession(IdentityScopeType identityScopeType) {
        return new b(this.db, identityScopeType, this.daoConfigMap);
    }
}
