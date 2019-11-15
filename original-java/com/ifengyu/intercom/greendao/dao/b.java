package com.ifengyu.intercom.greendao.dao;

import com.ifengyu.intercom.greendao.bean.d;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.util.Map;
import org.greenrobot.greendao.b.a;
import org.greenrobot.greendao.c;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

/* compiled from: DaoSession */
public class b extends c {
    private final a a;
    private final a b;
    private final a c;
    private final a d;
    private final a e;
    private final a f;
    private final TileDownloadStateDao g = new TileDownloadStateDao(this.a, this);
    private final TrackInfoDataDao h = new TrackInfoDataDao(this.b, this);
    private final TrackPointDao i = new TrackPointDao(this.c, this);
    private final UserLocationDao j = new UserLocationDao(this.d, this);
    private final SealSharkChannelDao k = new SealSharkChannelDao(this.e, this);
    private final UserChannelDao l = new UserChannelDao(this.f, this);

    public b(org.greenrobot.greendao.a.a aVar, IdentityScopeType identityScopeType, Map<Class<? extends org.greenrobot.greendao.a<?, ?>>, a> map) {
        super(aVar);
        this.a = ((a) map.get(TileDownloadStateDao.class)).clone();
        this.a.a(identityScopeType);
        this.b = ((a) map.get(TrackInfoDataDao.class)).clone();
        this.b.a(identityScopeType);
        this.c = ((a) map.get(TrackPointDao.class)).clone();
        this.c.a(identityScopeType);
        this.d = ((a) map.get(UserLocationDao.class)).clone();
        this.d.a(identityScopeType);
        this.e = ((a) map.get(SealSharkChannelDao.class)).clone();
        this.e.a(identityScopeType);
        this.f = ((a) map.get(UserChannelDao.class)).clone();
        this.f.a(identityScopeType);
        registerDao(com.ifengyu.intercom.greendao.bean.a.class, this.g);
        registerDao(com.ifengyu.intercom.greendao.bean.b.class, this.h);
        registerDao(com.ifengyu.intercom.greendao.bean.c.class, this.i);
        registerDao(d.class, this.j);
        registerDao(SealSharkChannel.class, this.k);
        registerDao(UserChannel.class, this.l);
    }

    public void a() {
        this.a.c();
        this.b.c();
        this.c.c();
        this.d.c();
        this.e.c();
        this.f.c();
    }

    public TileDownloadStateDao b() {
        return this.g;
    }

    public TrackInfoDataDao c() {
        return this.h;
    }

    public TrackPointDao d() {
        return this.i;
    }

    public UserLocationDao e() {
        return this.j;
    }

    public SealSharkChannelDao f() {
        return this.k;
    }

    public UserChannelDao g() {
        return this.l;
    }
}
