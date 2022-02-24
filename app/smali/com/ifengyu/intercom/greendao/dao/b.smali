.class public Lcom/ifengyu/intercom/greendao/dao/b;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final a:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final b:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final c:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final d:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final e:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final f:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

.field private final h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

.field private final i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

.field private final j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

.field private final k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

.field private final l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 2
    const-class p1, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->a:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 4
    const-class p1, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->b:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 5
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 6
    const-class p1, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->c:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 7
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 8
    const-class p1, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->d:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 9
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 10
    const-class p1, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->e:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 11
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 12
    const-class p1, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->f:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 13
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 14
    new-instance p1, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->a:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    .line 15
    new-instance p1, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->b:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    .line 16
    new-instance p1, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->c:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    .line 17
    new-instance p1, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->d:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    .line 18
    new-instance p1, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->e:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    .line 19
    new-instance p1, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->f:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    .line 20
    const-class p1, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 21
    const-class p1, Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 22
    const-class p1, Lcom/ifengyu/intercom/greendao/bean/c;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 23
    const-class p1, Lcom/ifengyu/intercom/greendao/bean/d;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 24
    const-class p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 25
    const-class p1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object p2, p0, Lcom/ifengyu/intercom/greendao/dao/b;->l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->a:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->b:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->c:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->d:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->e:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->f:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public b()Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    return-object v0
.end method

.method public c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    return-object v0
.end method

.method public d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    return-object v0
.end method

.method public e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    return-object v0
.end method

.method public f()Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    return-object v0
.end method

.method public g()Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    return-object v0
.end method
