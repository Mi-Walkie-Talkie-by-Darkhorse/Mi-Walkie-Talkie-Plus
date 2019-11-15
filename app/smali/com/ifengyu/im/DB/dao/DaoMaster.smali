.class public Lcom/ifengyu/im/DB/dao/DaoMaster;
.super Lorg/greenrobot/greendao/b;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;,
        Lcom/ifengyu/im/DB/dao/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/a/f;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/a/f;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/a/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/a/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/b;-><init>(Lorg/greenrobot/greendao/a/a;I)V

    const-class v0, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/GroupEntityDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/UserEntityDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/ifengyu/im/DB/dao/SessionEntityDao;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/a/a;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;->createTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->createTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->createTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->createTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/SessionEntityDao;->createTable(Lorg/greenrobot/greendao/a/a;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/a/a;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/DepartmentEntityDao;->dropTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->dropTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/UserEntityDao;->dropTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->dropTable(Lorg/greenrobot/greendao/a/a;Z)V

    invoke-static {p0, p1}, Lcom/ifengyu/im/DB/dao/SessionEntityDao;->dropTable(Lorg/greenrobot/greendao/a/a;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/ifengyu/im/DB/dao/DaoSession;
    .locals 2

    new-instance v0, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/dao/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/a/a;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/DB/dao/DaoMaster;

    invoke-direct {v1, v0}, Lcom/ifengyu/im/DB/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/a/a;)V

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/dao/DaoMaster;->newSession()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newSession()Lcom/ifengyu/im/DB/dao/DaoSession;
    .locals 4

    new-instance v0, Lcom/ifengyu/im/DB/dao/DaoSession;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoMaster;->db:Lorg/greenrobot/greendao/a/a;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->a:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/ifengyu/im/DB/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/im/DB/dao/DaoSession;-><init>(Lorg/greenrobot/greendao/a/a;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/ifengyu/im/DB/dao/DaoSession;
    .locals 3

    new-instance v0, Lcom/ifengyu/im/DB/dao/DaoSession;

    iget-object v1, p0, Lcom/ifengyu/im/DB/dao/DaoMaster;->db:Lorg/greenrobot/greendao/a/a;

    iget-object v2, p0, Lcom/ifengyu/im/DB/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/ifengyu/im/DB/dao/DaoSession;-><init>(Lorg/greenrobot/greendao/a/a;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/c;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/DB/dao/DaoMaster;->newSession()Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/DB/dao/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/ifengyu/im/DB/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method
