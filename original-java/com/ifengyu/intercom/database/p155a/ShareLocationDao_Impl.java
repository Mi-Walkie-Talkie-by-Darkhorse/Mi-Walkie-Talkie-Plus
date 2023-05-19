package com.ifengyu.intercom.database.p155a;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.p045w0.CursorUtil;
import androidx.room.p045w0.DBUtil;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ifengyu.intercom.device.oldDevice.model.ShareLocationModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p000a.p017g.p018a.SupportSQLiteStatement;

/* renamed from: com.ifengyu.intercom.database.a.j */
/* loaded from: classes2.dex */
public final class ShareLocationDao_Impl implements ShareLocationDao {

    /* renamed from: a */
    private final RoomDatabase f12151a;

    /* renamed from: b */
    private final EntityInsertionAdapter<ShareLocationModel> f12152b;

    /* compiled from: ShareLocationDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.j$a */
    /* loaded from: classes2.dex */
    class C3175a extends EntityInsertionAdapter<ShareLocationModel> {
        C3175a(ShareLocationDao_Impl shareLocationDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "INSERT OR REPLACE INTO `share_location` (`id`,`user_id`,`name`,`img_url`,`longitude`,`latitude`,`altitude`,`time`,`freq`,`rx_css`,`from_dev_type`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: k */
        public void mo8466g(SupportSQLiteStatement supportSQLiteStatement, ShareLocationModel shareLocationModel) {
            if (shareLocationModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, shareLocationModel.getId().longValue());
            }
            supportSQLiteStatement.mo21760c(2, shareLocationModel.getUserId());
            if (shareLocationModel.getName() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, shareLocationModel.getName());
            }
            if (shareLocationModel.getImgUrl() == null) {
                supportSQLiteStatement.mo21758e(4);
            } else {
                supportSQLiteStatement.mo21762a(4, shareLocationModel.getImgUrl());
            }
            supportSQLiteStatement.mo21760c(5, shareLocationModel.getLongitude());
            supportSQLiteStatement.mo21760c(6, shareLocationModel.getLatitude());
            supportSQLiteStatement.mo21760c(7, shareLocationModel.getAltitude());
            supportSQLiteStatement.mo21760c(8, shareLocationModel.getTime());
            supportSQLiteStatement.mo21760c(9, shareLocationModel.getFreq());
            supportSQLiteStatement.mo21760c(10, shareLocationModel.getRxCss());
            supportSQLiteStatement.mo21760c(11, shareLocationModel.getFromDevType());
        }
    }

    /* compiled from: ShareLocationDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.j$b */
    /* loaded from: classes2.dex */
    class C3176b extends EntityDeletionOrUpdateAdapter<ShareLocationModel> {
        C3176b(ShareLocationDao_Impl shareLocationDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "DELETE FROM `share_location` WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: j */
        public void mo14216g(SupportSQLiteStatement supportSQLiteStatement, ShareLocationModel shareLocationModel) {
            if (shareLocationModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, shareLocationModel.getId().longValue());
            }
        }
    }

    /* compiled from: ShareLocationDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.j$c */
    /* loaded from: classes2.dex */
    class C3177c extends EntityDeletionOrUpdateAdapter<ShareLocationModel> {
        C3177c(ShareLocationDao_Impl shareLocationDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "UPDATE OR ABORT `share_location` SET `id` = ?,`user_id` = ?,`name` = ?,`img_url` = ?,`longitude` = ?,`latitude` = ?,`altitude` = ?,`time` = ?,`freq` = ?,`rx_css` = ?,`from_dev_type` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: j */
        public void mo14216g(SupportSQLiteStatement supportSQLiteStatement, ShareLocationModel shareLocationModel) {
            if (shareLocationModel.getId() == null) {
                supportSQLiteStatement.mo21758e(1);
            } else {
                supportSQLiteStatement.mo21760c(1, shareLocationModel.getId().longValue());
            }
            supportSQLiteStatement.mo21760c(2, shareLocationModel.getUserId());
            if (shareLocationModel.getName() == null) {
                supportSQLiteStatement.mo21758e(3);
            } else {
                supportSQLiteStatement.mo21762a(3, shareLocationModel.getName());
            }
            if (shareLocationModel.getImgUrl() == null) {
                supportSQLiteStatement.mo21758e(4);
            } else {
                supportSQLiteStatement.mo21762a(4, shareLocationModel.getImgUrl());
            }
            supportSQLiteStatement.mo21760c(5, shareLocationModel.getLongitude());
            supportSQLiteStatement.mo21760c(6, shareLocationModel.getLatitude());
            supportSQLiteStatement.mo21760c(7, shareLocationModel.getAltitude());
            supportSQLiteStatement.mo21760c(8, shareLocationModel.getTime());
            supportSQLiteStatement.mo21760c(9, shareLocationModel.getFreq());
            supportSQLiteStatement.mo21760c(10, shareLocationModel.getRxCss());
            supportSQLiteStatement.mo21760c(11, shareLocationModel.getFromDevType());
            if (shareLocationModel.getId() == null) {
                supportSQLiteStatement.mo21758e(12);
            } else {
                supportSQLiteStatement.mo21760c(12, shareLocationModel.getId().longValue());
            }
        }
    }

    /* compiled from: ShareLocationDao_Impl.java */
    /* renamed from: com.ifengyu.intercom.database.a.j$d */
    /* loaded from: classes2.dex */
    class C3178d extends SharedSQLiteStatement {
        C3178d(ShareLocationDao_Impl shareLocationDao_Impl, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        /* renamed from: d */
        public String mo8464d() {
            return "DELETE FROM share_location";
        }
    }

    public ShareLocationDao_Impl(RoomDatabase roomDatabase) {
        this.f12151a = roomDatabase;
        this.f12152b = new C3175a(this, roomDatabase);
        new C3176b(this, roomDatabase);
        new C3177c(this, roomDatabase);
        new C3178d(this, roomDatabase);
    }

    /* renamed from: d */
    public static List<Class<?>> m14219d() {
        return Collections.emptyList();
    }

    @Override // com.ifengyu.intercom.database.p155a.ShareLocationDao
    /* renamed from: a */
    public List<ShareLocationModel> mo14222a(int i, int i2) {
        int i3;
        Long valueOf;
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from share_location where user_id != ? and time > ?", 2);
        m21831h.mo21760c(1, i);
        m21831h.mo21760c(2, i2);
        this.f12151a.m21943b();
        Cursor m21797b = DBUtil.m21797b(this.f12151a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "user_id");
            int m21799e3 = CursorUtil.m21799e(m21797b, "name");
            int m21799e4 = CursorUtil.m21799e(m21797b, "img_url");
            int m21799e5 = CursorUtil.m21799e(m21797b, "longitude");
            int m21799e6 = CursorUtil.m21799e(m21797b, "latitude");
            int m21799e7 = CursorUtil.m21799e(m21797b, "altitude");
            int m21799e8 = CursorUtil.m21799e(m21797b, CrashHianalyticsData.TIME);
            int m21799e9 = CursorUtil.m21799e(m21797b, "freq");
            int m21799e10 = CursorUtil.m21799e(m21797b, "rx_css");
            int m21799e11 = CursorUtil.m21799e(m21797b, "from_dev_type");
            ArrayList arrayList = new ArrayList(m21797b.getCount());
            while (m21797b.moveToNext()) {
                ShareLocationModel shareLocationModel = new ShareLocationModel();
                if (m21797b.isNull(m21799e)) {
                    i3 = m21799e;
                    valueOf = null;
                } else {
                    i3 = m21799e;
                    valueOf = Long.valueOf(m21797b.getLong(m21799e));
                }
                shareLocationModel.setId(valueOf);
                shareLocationModel.setUserId(m21797b.getInt(m21799e2));
                shareLocationModel.setName(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                shareLocationModel.setImgUrl(m21797b.isNull(m21799e4) ? null : m21797b.getString(m21799e4));
                shareLocationModel.setLongitude(m21797b.getInt(m21799e5));
                shareLocationModel.setLatitude(m21797b.getInt(m21799e6));
                shareLocationModel.setAltitude(m21797b.getInt(m21799e7));
                shareLocationModel.setTime(m21797b.getInt(m21799e8));
                shareLocationModel.setFreq(m21797b.getInt(m21799e9));
                shareLocationModel.setRxCss(m21797b.getInt(m21799e10));
                shareLocationModel.setFromDevType(m21797b.getInt(m21799e11));
                arrayList.add(shareLocationModel);
                m21799e = i3;
            }
            return arrayList;
        } finally {
            m21797b.close();
            m21831h.m21828k();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.ShareLocationDao
    /* renamed from: b */
    public long mo14221b(ShareLocationModel shareLocationModel) {
        this.f12151a.m21943b();
        this.f12151a.m21942c();
        try {
            long m21903i = this.f12152b.m21903i(shareLocationModel);
            this.f12151a.m21922z();
            return m21903i;
        } finally {
            this.f12151a.m21940g();
        }
    }

    @Override // com.ifengyu.intercom.database.p155a.ShareLocationDao
    /* renamed from: c */
    public ShareLocationModel mo14220c(int i) {
        RoomSQLiteQuery m21831h = RoomSQLiteQuery.m21831h("select * from share_location where user_id = ? limit 1", 1);
        m21831h.mo21760c(1, i);
        this.f12151a.m21943b();
        ShareLocationModel shareLocationModel = null;
        String string = null;
        Cursor m21797b = DBUtil.m21797b(this.f12151a, m21831h, false, null);
        try {
            int m21799e = CursorUtil.m21799e(m21797b, "id");
            int m21799e2 = CursorUtil.m21799e(m21797b, "user_id");
            int m21799e3 = CursorUtil.m21799e(m21797b, "name");
            int m21799e4 = CursorUtil.m21799e(m21797b, "img_url");
            int m21799e5 = CursorUtil.m21799e(m21797b, "longitude");
            int m21799e6 = CursorUtil.m21799e(m21797b, "latitude");
            int m21799e7 = CursorUtil.m21799e(m21797b, "altitude");
            int m21799e8 = CursorUtil.m21799e(m21797b, CrashHianalyticsData.TIME);
            int m21799e9 = CursorUtil.m21799e(m21797b, "freq");
            int m21799e10 = CursorUtil.m21799e(m21797b, "rx_css");
            int m21799e11 = CursorUtil.m21799e(m21797b, "from_dev_type");
            if (m21797b.moveToFirst()) {
                ShareLocationModel shareLocationModel2 = new ShareLocationModel();
                shareLocationModel2.setId(m21797b.isNull(m21799e) ? null : Long.valueOf(m21797b.getLong(m21799e)));
                shareLocationModel2.setUserId(m21797b.getInt(m21799e2));
                shareLocationModel2.setName(m21797b.isNull(m21799e3) ? null : m21797b.getString(m21799e3));
                if (!m21797b.isNull(m21799e4)) {
                    string = m21797b.getString(m21799e4);
                }
                shareLocationModel2.setImgUrl(string);
                shareLocationModel2.setLongitude(m21797b.getInt(m21799e5));
                shareLocationModel2.setLatitude(m21797b.getInt(m21799e6));
                shareLocationModel2.setAltitude(m21797b.getInt(m21799e7));
                shareLocationModel2.setTime(m21797b.getInt(m21799e8));
                shareLocationModel2.setFreq(m21797b.getInt(m21799e9));
                shareLocationModel2.setRxCss(m21797b.getInt(m21799e10));
                shareLocationModel2.setFromDevType(m21797b.getInt(m21799e11));
                shareLocationModel = shareLocationModel2;
            }
            return shareLocationModel;
        } finally {
            m21797b.close();
            m21831h.m21828k();
        }
    }
}
