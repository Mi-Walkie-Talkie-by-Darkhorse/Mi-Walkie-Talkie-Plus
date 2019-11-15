.class public Lcom/mi/mimsgsdk/database/GroupMessageDao;
.super Lcom/mi/mimsgsdk/database/AbstractDaoImpl;
.source "GroupMessageDao.java"

# interfaces
.implements Lcom/mi/mimsgsdk/database/IMessageDao;


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupMessageDao"

.field private static sInstance:Lcom/mi/mimsgsdk/database/GroupMessageDao;


# instance fields
.field protected mLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/database/AbstractDaoImpl;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/database/GroupMessageDao;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/database/GroupMessageDao;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/database/GroupMessageDao;->sInstance:Lcom/mi/mimsgsdk/database/GroupMessageDao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/mimsgsdk/database/GroupMessageDao;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/database/GroupMessageDao;->sInstance:Lcom/mi/mimsgsdk/database/GroupMessageDao;

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/database/GroupMessageDao;->sInstance:Lcom/mi/mimsgsdk/database/GroupMessageDao;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->setContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/database/GroupMessageDao;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getInstance()Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getTableColumns()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getGroupCallMessageTableColumns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getGroupCallMessageTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getInstance()Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcom/mi/mimsgsdk/database/pojo/ChatMessage;)V
    .locals 5

    iget-object v1, p0, Lcom/mi/mimsgsdk/database/GroupMessageDao;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/database/pojo/ChatMessage;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/mi/mimsgsdk/database/GroupMessageDao;->mLock:Ljava/lang/Object;

    monitor-enter v10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/GroupMessageDao;->getTableColumns()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg_id =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/database/pojo/ChatMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v9

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_3
    const-string v2, "GroupMessageDao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in query, exception code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
