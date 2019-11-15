.class public Lcom/ifengyu/im/DB/DBInterface;
.super Ljava/lang/Object;
.source "DBInterface.java"


# static fields
.field private static dbInterface:Lcom/ifengyu/im/DB/DBInterface;


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private loginUserId:I

.field private mReadDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

.field private mWriteDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

.field private openHelper:Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/im/DB/DBInterface;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/ifengyu/im/DB/DBInterface;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->logger:Lcom/ifengyu/im/utils/Logger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/DB/DBInterface;->loginUserId:I

    return-void
.end method

.method private initReadableDb(Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;)Lcom/ifengyu/im/DB/dao/DaoSession;
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;->getReadableDb()Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/DB/dao/DaoMaster;

    invoke-direct {v1, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/a/a;)V

    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->b:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method private initWritableDb(Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;)Lcom/ifengyu/im/DB/dao/DaoSession;
    .locals 2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/DB/dao/DaoMaster;

    invoke-direct {v1, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/a/a;)V

    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->b:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/ifengyu/im/DB/DBInterface;
    .locals 2

    sget-object v0, Lcom/ifengyu/im/DB/DBInterface;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/im/DB/DBInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/DB/DBInterface;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/DB/DBInterface;

    invoke-direct {v0}, Lcom/ifengyu/im/DB/DBInterface;-><init>()V

    sput-object v0, Lcom/ifengyu/im/DB/DBInterface;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/im/DB/DBInterface;->dbInterface:Lcom/ifengyu/im/DB/DBInterface;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isInitOk()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->openHelper:Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->mReadDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->mWriteDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "DBInterface#isInit not success or start,cause by openHelper is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DBInterface#isInit not success or start,cause by openHelper is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->isInitOk()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->mReadDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

    return-object v0
.end method

.method private openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->isInitOk()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->mWriteDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

    return-object v0
.end method


# virtual methods
.method public batchInsertOrUpdateGroup(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getGroupEntityDao()Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v2}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/im/DB/dao/GroupEntityDao$Properties;->PeerId:Lorg/greenrobot/greendao/f;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    new-array v5, v6, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v1, v4, v5}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setId(Ljava/lang/Long;)V

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public batchInsertOrUpdateSession(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/SessionEntity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getSessionEntityDao()Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/DB/dao/SessionEntityDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public batchInsertOrUpdateUser(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getUserEntityDao()Lcom/ifengyu/im/DB/dao/UserEntityDao;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v2}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v1

    sget-object v4, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->PeerId:Lorg/greenrobot/greendao/f;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    new-array v5, v6, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v1, v4, v5}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/DB/entity/UserEntity;->setId(Ljava/lang/Long;)V

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->openHelper:Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->openHelper:Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;->close()V

    iput-object v1, p0, Lcom/ifengyu/im/DB/DBInterface;->openHelper:Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;

    iput-object v1, p0, Lcom/ifengyu/im/DB/DBInterface;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/DB/DBInterface;->loginUserId:I

    :cond_0
    return-void
.end method

.method public deleteGroupByGroupId(I)V
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getGroupEntityDao()Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/GroupEntityDao$Properties;->PeerId:Lorg/greenrobot/greendao/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->b()Lorg/greenrobot/greendao/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/d;->b()V

    return-void
.end method

.method public deleteSession(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getSessionEntityDao()Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/SessionEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/SessionEntityDao$Properties;->SessionKey:Lorg/greenrobot/greendao/f;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->b()Lorg/greenrobot/greendao/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/d;->b()V

    return-void
.end method

.method public getAllSystemMsg()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getMessageEntityDao()Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->SessionType:Lorg/greenrobot/greendao/f;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    sget-object v3, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->FromId:Lorg/greenrobot/greendao/f;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->MsgType:Lorg/greenrobot/greendao/f;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->Time:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getByLoginId(I)Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getUserEntityDao()Lcom/ifengyu/im/DB/dao/UserEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->PeerId:Lorg/greenrobot/greendao/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    return-object v0
.end method

.method public getByUserName(Ljava/lang/String;)Lcom/ifengyu/im/DB/entity/UserEntity;
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getUserEntityDao()Lcom/ifengyu/im/DB/dao/UserEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->PinyinName:Lorg/greenrobot/greendao/f;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    return-object v0
.end method

.method public getHistoryMsg(ILjava/lang/String;JI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getMessageEntityDao()Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->SessionType:Lorg/greenrobot/greendao/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    sget-object v3, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->ToId:Lorg/greenrobot/greendao/f;

    invoke-virtual {v3, p2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->Time:Lorg/greenrobot/greendao/f;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/f;->c(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/f;

    sget-object v2, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->Time:Lorg/greenrobot/greendao/f;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/greenrobot/greendao/c/g;->a(I)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageByMsgId(JLjava/lang/String;Ljava/lang/String;I)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getMessageEntityDao()Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->MsgId:Lorg/greenrobot/greendao/f;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    const/4 v3, 0x0

    sget-object v4, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->FromId:Lorg/greenrobot/greendao/f;

    invoke-virtual {v4, p3}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->ToId:Lorg/greenrobot/greendao/f;

    invoke-virtual {v4, p4}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->MsgType:Lorg/greenrobot/greendao/f;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;
    :try_end_0
    .catch Lorg/greenrobot/greendao/DaoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserInfoLastTime()I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getUserEntityDao()Lcom/ifengyu/im/DB/dao/UserEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    new-array v2, v4, [Lorg/greenrobot/greendao/f;

    sget-object v3, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->Updated:Lorg/greenrobot/greendao/f;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/c/g;->b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/c/g;->a(I)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getUpdated()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public initDbHelp(Landroid/content/Context;I)V
    .locals 5

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "#DBInterface# init DB exception!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->context:Landroid/content/Context;

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/ifengyu/im/DB/DBInterface;->loginUserId:I

    if-eq v0, p2, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/ifengyu/im/DB/DBInterface;->context:Landroid/content/Context;

    iput p2, p0, Lcom/ifengyu/im/DB/DBInterface;->loginUserId:I

    invoke-virtual {p0}, Lcom/ifengyu/im/DB/DBInterface;->close()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "DB init,loginId:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v1, p0, Lcom/ifengyu/im/DB/DBInterface;->openHelper:Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;

    invoke-direct {p0, v1}, Lcom/ifengyu/im/DB/DBInterface;->initReadableDb(Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;)Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->mReadDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

    invoke-direct {p0, v1}, Lcom/ifengyu/im/DB/DBInterface;->initWritableDb(Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;)Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/DBInterface;->mWriteDaoSession:Lcom/ifengyu/im/DB/dao/DaoSession;

    :cond_3
    return-void
.end method

.method public insertOrUpdateGroup(Lcom/ifengyu/im/DB/entity/GroupEntity;)J
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getGroupEntityDao()Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/im/DB/dao/GroupEntityDao$Properties;->PeerId:Lorg/greenrobot/greendao/f;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v2

    new-array v3, v4, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setId(Ljava/lang/Long;)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getMessageEntityDao()Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrUpdateUser(Lcom/ifengyu/im/DB/entity/UserEntity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openWritableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getUserEntityDao()Lcom/ifengyu/im/DB/dao/UserEntityDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/im/DB/dao/UserEntityDao$Properties;->PeerId:Lorg/greenrobot/greendao/f;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPeerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v2

    new-array v3, v4, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->setId(Ljava/lang/Long;)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    invoke-virtual {v1, p1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public loadAllGroup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/GroupEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getGroupEntityDao()Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadAllSession()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/SessionEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getSessionEntityDao()Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/SessionEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/f;

    const/4 v2, 0x0

    sget-object v3, Lcom/ifengyu/im/DB/dao/SessionEntityDao$Properties;->Time:Lorg/greenrobot/greendao/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/DB/entity/UserEntity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getUserEntityDao()Lcom/ifengyu/im/DB/dao/UserEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryMessageByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/im/DB/DBInterface;->openReadableDb()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoSession;->getMessageEntityDao()Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->FromId:Lorg/greenrobot/greendao/f;

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    const/4 v3, 0x0

    sget-object v4, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->Content:Lorg/greenrobot/greendao/f;

    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->ToId:Lorg/greenrobot/greendao/f;

    invoke-virtual {v4, p3}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;->MsgType:Lorg/greenrobot/greendao/f;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;
    :try_end_0
    .catch Lorg/greenrobot/greendao/DaoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
