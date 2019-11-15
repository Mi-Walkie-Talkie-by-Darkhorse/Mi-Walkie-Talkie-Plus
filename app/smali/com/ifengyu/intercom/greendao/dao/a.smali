.class public Lcom/ifengyu/intercom/greendao/dao/a;
.super Lorg/greenrobot/greendao/b;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/greendao/dao/a$a;,
        Lcom/ifengyu/intercom/greendao/dao/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/a/f;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/a/f;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/greendao/dao/a;-><init>(Lorg/greenrobot/greendao/a/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/a/a;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/b;-><init>(Lorg/greenrobot/greendao/a/a;I)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/greendao/dao/a;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/greendao/dao/a;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/greendao/dao/a;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/greendao/dao/a;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/greendao/dao/a;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/greendao/dao/a;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Lorg/greenrobot/greendao/a/a;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/greendao/dao/UserLocationDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/greendao/dao/SealSharkChannelDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/intercom/greendao/dao/UserChannelDao;->a(Lorg/greenrobot/greendao/a/a;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/a;->db:Lorg/greenrobot/greendao/a/a;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->a:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/ifengyu/intercom/greendao/dao/a;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/greendao/dao/b;-><init>(Lorg/greenrobot/greendao/a/a;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/dao/a;->db:Lorg/greenrobot/greendao/a/a;

    iget-object v2, p0, Lcom/ifengyu/intercom/greendao/dao/a;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/ifengyu/intercom/greendao/dao/b;-><init>(Lorg/greenrobot/greendao/a/a;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public synthetic newSession()Lorg/greenrobot/greendao/c;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/greendao/dao/a;->a()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/greendao/dao/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    return-object v0
.end method
