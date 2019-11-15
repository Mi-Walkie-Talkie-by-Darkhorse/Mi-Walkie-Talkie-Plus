.class public Lcom/ifengyu/im/DB/dao/DaoSession;
.super Lorg/greenrobot/greendao/c;
.source "DaoSession.java"


# instance fields
.field private final departmentEntityDao:Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;

.field private final departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final groupEntityDao:Lcom/ifengyu/im/DB/dao/GroupEntityDao;

.field private final groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final messageEntityDao:Lcom/ifengyu/im/DB/dao/MessageEntityDao;

.field private final messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final sessionEntityDao:Lcom/ifengyu/im/DB/dao/SessionEntityDao;

.field private final sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final userEntityDao:Lcom/ifengyu/im/DB/dao/UserEntityDao;

.field private final userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;


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

    const-class v0, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/UserEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance v0, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/dao/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->departmentEntityDao:Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;

    new-instance v0, Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/dao/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->groupEntityDao:Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    new-instance v0, Lcom/ifengyu/im/DB/dao/UserEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/dao/UserEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/dao/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->userEntityDao:Lcom/ifengyu/im/DB/dao/UserEntityDao;

    new-instance v0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/dao/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->messageEntityDao:Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    new-instance v0, Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/dao/SessionEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/dao/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->sessionEntityDao:Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    const-class v0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->departmentEntityDao:Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->groupEntityDao:Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->userEntityDao:Lcom/ifengyu/im/DB/dao/UserEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->messageEntityDao:Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/imservice/model/SessionEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->sessionEntityDao:Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/dao/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    return-void
.end method

.method public getDepartmentEntityDao()Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->departmentEntityDao:Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;

    return-object v0
.end method

.method public getGroupEntityDao()Lcom/ifengyu/im/DB/dao/GroupEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->groupEntityDao:Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    return-object v0
.end method

.method public getMessageEntityDao()Lcom/ifengyu/im/DB/dao/MessageEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->messageEntityDao:Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    return-object v0
.end method

.method public getSessionEntityDao()Lcom/ifengyu/im/DB/dao/SessionEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->sessionEntityDao:Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    return-object v0
.end method

.method public getUserEntityDao()Lcom/ifengyu/im/DB/dao/UserEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/DaoSession;->userEntityDao:Lcom/ifengyu/im/DB/dao/UserEntityDao;

    return-object v0
.end method
