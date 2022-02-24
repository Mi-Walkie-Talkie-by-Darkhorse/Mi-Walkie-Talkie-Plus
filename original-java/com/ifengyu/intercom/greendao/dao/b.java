package com.ifengyu.intercom.greendao.dao;

import com.ifengyu.intercom.greendao.bean.a;
import com.ifengyu.intercom.greendao.bean.c;
import com.ifengyu.intercom.greendao.bean.d;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.UserChannel;
import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;

/* compiled from: DaoSession.java */
/* loaded from: classes.dex */
public class b extends AbstractDaoSession {

    /* renamed from: a  reason: collision with root package name */
    private final DaoConfig f5296a;

    /* renamed from: b  reason: collision with root package name */
    private final DaoConfig f5297b;

    /* renamed from: c  reason: collision with root package name */
    private final DaoConfig f5298c;
    private final DaoConfig d;
    private final DaoConfig e;
    private final DaoConfig f;
    private final TileDownloadStateDao g;
    private final TrackInfoDataDao h;
    private final TrackPointDao i;
    private final UserLocationDao j;
    private final SealSharkChannelDao k;
    private final UserChannelDao l;

    public b(Database database, IdentityScopeType identityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> map) {
        super(database);
        DaoConfig clone = map.get(TileDownloadStateDao.class).clone();
        this.f5296a = clone;
        clone.initIdentityScope(identityScopeType);
        DaoConfig clone2 = map.get(TrackInfoDataDao.class).clone();
        this.f5297b = clone2;
        clone2.initIdentityScope(identityScopeType);
        DaoConfig clone3 = map.get(TrackPointDao.class).clone();
        this.f5298c = clone3;
        clone3.initIdentityScope(identityScopeType);
        DaoConfig clone4 = map.get(UserLocationDao.class).clone();
        this.d = clone4;
        clone4.initIdentityScope(identityScopeType);
        DaoConfig clone5 = map.get(SealSharkChannelDao.class).clone();
        this.e = clone5;
        clone5.initIdentityScope(identityScopeType);
        DaoConfig clone6 = map.get(UserChannelDao.class).clone();
        this.f = clone6;
        clone6.initIdentityScope(identityScopeType);
        this.g = new TileDownloadStateDao(this.f5296a, this);
        this.h = new TrackInfoDataDao(this.f5297b, this);
        this.i = new TrackPointDao(this.f5298c, this);
        this.j = new UserLocationDao(this.d, this);
        this.k = new SealSharkChannelDao(this.e, this);
        this.l = new UserChannelDao(this.f, this);
        registerDao(a.class, this.g);
        registerDao(com.ifengyu.intercom.greendao.bean.b.class, this.h);
        registerDao(c.class, this.i);
        registerDao(d.class, this.j);
        registerDao(SealSharkChannel.class, this.k);
        registerDao(UserChannel.class, this.l);
    }

    public void a() {
        this.f5296a.clearIdentityScope();
        this.f5297b.clearIdentityScope();
        this.f5298c.clearIdentityScope();
        this.d.clearIdentityScope();
        this.e.clearIdentityScope();
        this.f.clearIdentityScope();
    }

    public SealSharkChannelDao b() {
        return this.k;
    }

    public TileDownloadStateDao c() {
        return this.g;
    }

    public TrackInfoDataDao d() {
        return this.h;
    }

    public TrackPointDao e() {
        return this.i;
    }

    public UserChannelDao f() {
        return this.l;
    }

    public UserLocationDao g() {
        return this.j;
    }
}
