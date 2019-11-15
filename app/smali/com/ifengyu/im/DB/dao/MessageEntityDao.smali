.class public Lcom/ifengyu/im/DB/dao/MessageEntityDao;
.super Lorg/greenrobot/greendao/a;
.source "MessageEntityDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/DB/dao/MessageEntityDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/a",
        "<",
        "Lcom/ifengyu/im/imservice/model/MessageEntity;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "MESSAGE_ENTITY"


# instance fields
.field private final attachmentConverter:Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/b/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/a;-><init>(Lorg/greenrobot/greendao/b/a;)V

    new-instance v0, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->attachmentConverter:Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/b/a;Lcom/ifengyu/im/DB/dao/DaoSession;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/a;-><init>(Lorg/greenrobot/greendao/b/a;Lorg/greenrobot/greendao/c;)V

    new-instance v0, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->attachmentConverter:Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

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

    const-string v1, "\"MESSAGE_ENTITY\" (\"_id\" INTEGER PRIMARY KEY ,\"MSG_ID\" INTEGER NOT NULL ,\"MSG_SEQ\" INTEGER NOT NULL ,\"FROM_ID\" TEXT,\"TO_ID\" TEXT,\"SESSION_TYPE\" INTEGER NOT NULL ,\"MSG_TYPE\" INTEGER NOT NULL ,\"STATUS\" INTEGER NOT NULL ,\"DIRECT\" INTEGER NOT NULL ,\"CONTENT\" TEXT,\"TIME\" INTEGER NOT NULL ,\"ATTACHMENT\" TEXT,\"ATTACH_STATUS\" INTEGER NOT NULL );"

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

    const-string v1, "\"MESSAGE_ENTITY\""

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
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgSeq()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getToId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getStatus()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getDirect()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->attachmentConverter:Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;->convertToDatabaseValue(Lcom/ifengyu/im/imservice/model/MsgAttachment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/16 v0, 0xd

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachStatus()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/a/c;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 4

    invoke-interface {p1}, Lorg/greenrobot/greendao/a/c;->d()V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgSeq()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getFromId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getToId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getSessionType()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0x8

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getStatus()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getDirect()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->attachmentConverter:Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;->convertToDatabaseValue(Lcom/ifengyu/im/imservice/model/MsgAttachment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/a/c;->a(ILjava/lang/String;)V

    :cond_4
    const/16 v0, 0xd

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachStatus()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/a/c;->a(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/a/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->bindValues(Lorg/greenrobot/greendao/a/c;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method public getKey(Lcom/ifengyu/im/imservice/model/MessageEntity;)Ljava/lang/Long;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->getKey(Lcom/ifengyu/im/imservice/model/MessageEntity;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasKey(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getId()Ljava/lang/Long;

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

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->hasKey(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    return v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 19

    new-instance v2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 v6, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v8, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v10, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v14, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    :goto_3
    add-int/lit8 v15, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    add-int/lit8 v17, p2, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    :goto_4
    add-int/lit8 v18, p2, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-direct/range {v2 .. v18}, Lcom/ifengyu/im/imservice/model/MessageEntity;-><init>(Ljava/lang/Long;JJLjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;JLcom/ifengyu/im/imservice/model/MsgAttachment;I)V

    return-object v2

    :cond_0
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v8, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    add-int/lit8 v9, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    add-int/lit8 v14, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->attachmentConverter:Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;->convertToEntityProperty(Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v17

    goto :goto_4
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->readEntity(Landroid/database/Cursor;I)Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/ifengyu/im/imservice/model/MessageEntity;I)V
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgId(J)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgSeq(J)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setFromId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setToId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setSessionType(I)V

    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setMsgType(I)V

    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setDirect(I)V

    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setContent(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setTime(J)V

    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p2, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setAttachment(Lcom/ifengyu/im/imservice/model/MsgAttachment;)V

    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setAttachStatus(I)V

    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->attachmentConverter:Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;

    add-int/lit8 v1, p3, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/model/MessageEntity$AttachmentConverter;->convertToEntityProperty(Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v1

    goto :goto_4
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->readEntity(Landroid/database/Cursor;Lcom/ifengyu/im/imservice/model/MessageEntity;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final updateKeyAfterInsert(Lcom/ifengyu/im/imservice/model/MessageEntity;J)Ljava/lang/Long;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setId(Ljava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/im/DB/dao/MessageEntityDao;->updateKeyAfterInsert(Lcom/ifengyu/im/imservice/model/MessageEntity;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
