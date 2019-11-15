package com.ifengyu.intercom.greendao.dao;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.util.Log;
import org.greenrobot.greendao.a.f;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

/* compiled from: DaoMaster */
public class a extends org.greenrobot.greendao.b {

    /* renamed from: com.ifengyu.intercom.greendao.dao.a$a reason: collision with other inner class name */
    /* compiled from: DaoMaster */
    public static class C0024a extends b {
        public C0024a(Context context, String str, CursorFactory cursorFactory) {
            super(context, str, cursorFactory);
        }

        /* JADX INFO: used method not loaded: com.ifengyu.intercom.greendao.dao.TrackInfoDataDao.a(org.greenrobot.greendao.a.a, boolean):null, types can be incorrect */
        /* JADX INFO: used method not loaded: com.ifengyu.intercom.greendao.dao.TrackPointDao.a(org.greenrobot.greendao.a.a, boolean):null, types can be incorrect */
        /* JADX INFO: used method not loaded: com.ifengyu.intercom.greendao.dao.UserLocationDao.b(org.greenrobot.greendao.a.a, boolean):null, types can be incorrect */
        /* JADX INFO: used method not loaded: com.ifengyu.intercom.greendao.dao.UserLocationDao.a(org.greenrobot.greendao.a.a, boolean):null, types can be incorrect */
        /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:4:0x002e, code lost:
            com.ifengyu.intercom.greendao.dao.TrackInfoDataDao.a(r5, false);
            com.ifengyu.intercom.greendao.dao.TrackPointDao.a(r5, false);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:5:0x0034, code lost:
            r5.a("DROP TABLE IF EXISTS USER_DEFINE_CHANNEL");
            r5.a("DROP TABLE IF EXISTS USER_RELAY_CHANNEL");
            com.ifengyu.intercom.greendao.dao.UserChannelDao.a(r5, false);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:6:0x0041, code lost:
            com.ifengyu.intercom.greendao.dao.SealSharkChannelDao.a(r5, false);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:7:0x0044, code lost:
            com.ifengyu.intercom.greendao.dao.UserLocationDao.b(r5, true);
            com.ifengyu.intercom.greendao.dao.UserLocationDao.a(r5, false);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onUpgrade(org.greenrobot.greendao.a.a r5, int r6, int r7) {
            /*
                r4 = this;
                r3 = 0
                java.lang.String r0 = "greenDAO"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Upgrading schema from version "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r1 = r1.append(r6)
                java.lang.String r2 = " to "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r1 = r1.append(r7)
                java.lang.String r1 = r1.toString()
                android.util.Log.i(r0, r1)
                if (r6 >= r7) goto L_0x0028
                switch(r6) {
                    case 1: goto L_0x0029;
                    case 2: goto L_0x002e;
                    case 3: goto L_0x002e;
                    case 4: goto L_0x0034;
                    case 5: goto L_0x0041;
                    case 6: goto L_0x0044;
                    default: goto L_0x0028;
                }
            L_0x0028:
                return
            L_0x0029:
                java.lang.String r0 = "ALTER TABLE USER_LOCATION ADD \"FREQ\" INT DEFAULT 0"
                r5.a(r0)
            L_0x002e:
                com.ifengyu.intercom.greendao.dao.TrackInfoDataDao.a(r5, r3)
                com.ifengyu.intercom.greendao.dao.TrackPointDao.a(r5, r3)
            L_0x0034:
                java.lang.String r0 = "DROP TABLE IF EXISTS USER_DEFINE_CHANNEL"
                java.lang.String r1 = "DROP TABLE IF EXISTS USER_RELAY_CHANNEL"
                r5.a(r0)
                r5.a(r1)
                com.ifengyu.intercom.greendao.dao.UserChannelDao.a(r5, r3)
            L_0x0041:
                com.ifengyu.intercom.greendao.dao.SealSharkChannelDao.a(r5, r3)
            L_0x0044:
                r0 = 1
                com.ifengyu.intercom.greendao.dao.UserLocationDao.b(r5, r0)
                com.ifengyu.intercom.greendao.dao.UserLocationDao.a(r5, r3)
                goto L_0x0028
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.greendao.dao.a.C0024a.onUpgrade(org.greenrobot.greendao.a.a, int, int):void");
        }
    }

    /* compiled from: DaoMaster */
    public static abstract class b extends org.greenrobot.greendao.a.b {
        public b(Context context, String str, CursorFactory cursorFactory) {
            super(context, str, cursorFactory, 7);
        }

        public void onCreate(org.greenrobot.greendao.a.a aVar) {
            Log.i("greenDAO", "Creating tables for schema version 7");
            a.a(aVar, false);
        }
    }

    public static void a(org.greenrobot.greendao.a.a aVar, boolean z) {
        TileDownloadStateDao.a(aVar, z);
        TrackInfoDataDao.a(aVar, z);
        TrackPointDao.a(aVar, z);
        UserLocationDao.a(aVar, z);
        SealSharkChannelDao.a(aVar, z);
        UserChannelDao.a(aVar, z);
    }

    public a(SQLiteDatabase sQLiteDatabase) {
        this((org.greenrobot.greendao.a.a) new f(sQLiteDatabase));
    }

    public a(org.greenrobot.greendao.a.a aVar) {
        super(aVar, 7);
        registerDaoClass(TileDownloadStateDao.class);
        registerDaoClass(TrackInfoDataDao.class);
        registerDaoClass(TrackPointDao.class);
        registerDaoClass(UserLocationDao.class);
        registerDaoClass(SealSharkChannelDao.class);
        registerDaoClass(UserChannelDao.class);
    }

    /* renamed from: a */
    public b newSession() {
        return new b(this.db, IdentityScopeType.Session, this.daoConfigMap);
    }

    /* renamed from: a */
    public b newSession(IdentityScopeType identityScopeType) {
        return new b(this.db, identityScopeType, this.daoConfigMap);
    }
}
