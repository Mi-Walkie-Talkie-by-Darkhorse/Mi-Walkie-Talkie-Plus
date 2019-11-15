.class public Lcom/ifengyu/intercom/greendao/dao/b;
.super Lorg/greenrobot/greendao/c;
.source "DaoSession.java"


# instance fields
.field private final a:Lorg/greenrobot/greendao/b/a;

.field private final b:Lorg/greenrobot/greendao/b/a;

.field private final c:Lorg/greenrobot/greendao/b/a;

.field private final d:Lorg/greenrobot/greendao/b/a;

.field private final e:Lorg/greenrobot/greendao/b/a;

.field private final f:Lorg/greenrobot/greendao/b/a;

.field private final g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

.field private final h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

.field private final i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

.field private final j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

.field private final k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

.field private final l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/a/a;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a/a;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/a",
            "<**>;>;",
            "Lorg/greenrobot/greendao/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/c;-><init>(Lorg/greenrobot/greendao/a/a;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->a:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->a:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->b:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->b:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->c:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->c:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->d:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->d:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->e:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->e:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->f:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->f:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->a:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->b:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->c:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->d:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->e:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->f:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/intercom/greendao/dao/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    const-class v0, Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/greendao/dao/b;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/greendao/dao/b;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/bean/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/greendao/dao/b;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/bean/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/greendao/dao/b;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/greendao/dao/b;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/b;->l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/greendao/dao/b;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->a:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->b:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->c:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->d:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->e:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->f:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    return-void
.end method

.method public b()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->g:Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    return-object v0
.end method

.method public c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->h:Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    return-object v0
.end method

.method public d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->i:Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    return-object v0
.end method

.method public e()Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->j:Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    return-object v0
.end method

.method public f()Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->k:Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    return-object v0
.end method

.method public g()Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/dao/b;->l:Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    return-object v0
.end method
