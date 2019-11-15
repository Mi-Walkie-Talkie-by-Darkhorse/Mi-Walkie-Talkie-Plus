.class public Lcom/ifengyu/im/DB/entity/DaoSession;
.super Lorg/greenrobot/greendao/c;
.source "DaoSession.java"


# instance fields
.field private final departmentEntityDao:Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;

.field private final departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final groupEntityDao:Lcom/ifengyu/im/DB/entity/GroupEntityDao;

.field private final groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final messageEntityDao:Lcom/ifengyu/im/imservice/model/MessageEntityDao;

.field private final messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final sessionEntityDao:Lcom/ifengyu/im/imservice/model/SessionEntityDao;

.field private final sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

.field private final userEntityDao:Lcom/ifengyu/im/DB/entity/UserEntityDao;

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

    const-class v0, Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/DB/entity/GroupEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/DB/entity/UserEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/imservice/model/MessageEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/ifengyu/im/imservice/model/SessionEntityDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->a()Lorg/greenrobot/greendao/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/b/a;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance v0, Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/entity/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->departmentEntityDao:Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;

    new-instance v0, Lcom/ifengyu/im/DB/entity/GroupEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/entity/GroupEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/entity/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->groupEntityDao:Lcom/ifengyu/im/DB/entity/GroupEntityDao;

    new-instance v0, Lcom/ifengyu/im/DB/entity/UserEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/DB/entity/UserEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/entity/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->userEntityDao:Lcom/ifengyu/im/DB/entity/UserEntityDao;

    new-instance v0, Lcom/ifengyu/im/imservice/model/MessageEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/imservice/model/MessageEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/entity/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->messageEntityDao:Lcom/ifengyu/im/imservice/model/MessageEntityDao;

    new-instance v0, Lcom/ifengyu/im/imservice/model/SessionEntityDao;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/im/imservice/model/SessionEntityDao;-><init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/entity/DaoSession;)V

    iput-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->sessionEntityDao:Lcom/ifengyu/im/imservice/model/SessionEntityDao;

    const-class v0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->departmentEntityDao:Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/entity/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/DB/entity/GroupEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->groupEntityDao:Lcom/ifengyu/im/DB/entity/GroupEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/entity/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/DB/entity/UserEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->userEntityDao:Lcom/ifengyu/im/DB/entity/UserEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/entity/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->messageEntityDao:Lcom/ifengyu/im/imservice/model/MessageEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/entity/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    const-class v0, Lcom/ifengyu/im/imservice/model/SessionEntity;

    iget-object v1, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->sessionEntityDao:Lcom/ifengyu/im/imservice/model/SessionEntityDao;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/DB/entity/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/a;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->departmentEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->groupEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->userEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->messageEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->sessionEntityDaoConfig:Lorg/greenrobot/greendao/b/a;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/b/a;->c()V

    return-void
.end method

.method public getDepartmentEntityDao()Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->departmentEntityDao:Lcom/ifengyu/im/DB/entity/DepartmentEntityDao;

    return-object v0
.end method

.method public getGroupEntityDao()Lcom/ifengyu/im/DB/entity/GroupEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->groupEntityDao:Lcom/ifengyu/im/DB/entity/GroupEntityDao;

    return-object v0
.end method

.method public getMessageEntityDao()Lcom/ifengyu/im/imservice/model/MessageEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->messageEntityDao:Lcom/ifengyu/im/imservice/model/MessageEntityDao;

    return-object v0
.end method

.method public getSessionEntityDao()Lcom/ifengyu/im/imservice/model/SessionEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->sessionEntityDao:Lcom/ifengyu/im/imservice/model/SessionEntityDao;

    return-object v0
.end method

.method public getUserEntityDao()Lcom/ifengyu/im/DB/entity/UserEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/DB/entity/DaoSession;->userEntityDao:Lcom/ifengyu/im/DB/entity/UserEntityDao;

    return-object v0
.end method
