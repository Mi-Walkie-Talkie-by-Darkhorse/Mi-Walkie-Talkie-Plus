.class public Lcom/ifengyu/im/DB/dao/GroupEntityDao;
.super Lorg/greenrobot/greendao/a;
.source "GroupEntityDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/DB/dao/GroupEntityDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/a",
        "<",
        "Lcom/ifengyu/im/DB/entity/GroupEntity;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "Group"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/a;-><init>(Lorg/greenrobot/greendao/b/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/dao/DaoSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/a;-><init>(Lorg/greenrobot/greendao/b/a;Lorg/greenrobot/greendao/c;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/a/a;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"Group\" (\"_id\" INTEGER PRIMARY KEY ,\"PEER_ID\" INTEGER NOT NULL ,\"MAIN_NAME\" TEXT,\"AVATAR\" TEXT,\"GROUP_TYPE\" INTEGER NOT NULL ,\"CREATOR_ID\" INTEGER NOT NULL ,\"USER_CNT\" INTEGER NOT NULL ,\"USER_LIST\" TEXT,\"VERSION\" INTEGER NOT NULL ,\"STATUS\" INTEGER NOT NULL ,\"CREATED\" INTEGER NOT NULL ,\"UPDATED\" INTEGER NOT NULL );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static dropTable(Lorg/greenrobot/greendao/a/a;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "IF EXISTS "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"Group\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/a/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getGroupType()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getCreatorId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserCnt()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getVersion()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getStatus()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getCreated()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUpdated()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/a/c;Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 4

    invoke-interface {p1}, Lorg/greenrobot/greendao/a/c;->d()V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPeerId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getGroupType()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getCreatorId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserCnt()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUserList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getVersion()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getStatus()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getCreated()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getUpdated()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/a/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->bindValues(Lorg/greenrobot/greendao/a/c;Lcom/ifengyu/im/DB/entity/GroupEntity;)V

    return-void
.end method

.method public getKey(Lcom/ifengyu/im/DB/entity/GroupEntity;)Ljava/lang/Long;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->getKey(Lcom/ifengyu/im/DB/entity/GroupEntity;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/ifengyu/im/DB/entity/GroupEntity;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->hasKey(Lcom/ifengyu/im/DB/entity/GroupEntity;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/ifengyu/im/DB/entity/GroupEntity;
    .locals 18

    new-instance v3, Lcom/ifengyu/im/DB/entity/GroupEntity;

    add-int/lit8 v2, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v2, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v2, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v2, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v2, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v2, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v2, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v2, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v2, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v2, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    add-int/lit8 v2, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-direct/range {v3 .. v17}, Lcom/ifengyu/im/DB/entity/GroupEntity;-><init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;IIJJ)V

    return-object v3

    :cond_0
    add-int/lit8 v2, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    add-int/lit8 v2, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->readEntity(Landroid/database/Cursor;I)Lcom/ifengyu/im/DB/entity/GroupEntity;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/ifengyu/im/DB/entity/GroupEntity;I)V
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setPeerId(I)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setMainName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setAvatar(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setGroupType(I)V

    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreatorId(I)V

    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUserCnt(I)V

    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p2, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUserList(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setVersion(I)V

    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setStatus(I)V

    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setCreated(J)V

    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setUpdated(J)V

    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->readEntity(Landroid/database/Cursor;Lcom/ifengyu/im/DB/entity/GroupEntity;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2

    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/ifengyu/im/DB/entity/GroupEntity;J)Ljava/lang/Long;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/DB/entity/GroupEntity;->setId(Ljava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/im/DB/dao/GroupEntityDao;->updateKeyAfterInsert(Lcom/ifengyu/im/DB/entity/GroupEntity;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
