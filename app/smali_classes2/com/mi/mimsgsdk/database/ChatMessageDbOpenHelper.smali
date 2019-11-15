.class public Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;
.super Lcom/mi/mimsgsdk/database/BaseSQLiteOpenHelper;
.source "ChatMessageDbOpenHelper.java"


# static fields
.field private static final COLUMNS_GROUP_CALL_MESSAGE:[Ljava/lang/String;

.field private static final COLUMNS_SINGLE_CALL_MESSAGE:[Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "MiMsgSDK.db"

.field private static DATABASE_VERSION:I = 0x0

.field private static final TABLE_GROUP_CALL_COLUMNS_DEFINITION:[Ljava/lang/String;

.field private static final TABLE_GROUP_CALL_MESSAGE:Ljava/lang/String; = "group_call_message"

.field private static final TABLE_SINGLE_CALL_COLUMNS_DEFINITION:[Ljava/lang/String;

.field private static final TABLE_SINGLE_CALL_MESSAGE:Ljava/lang/String; = "single_call_message"

.field private static final TAG:Ljava/lang/String; = "ChatMessageDbOpenHelper"

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sput v3, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->DATABASE_VERSION:I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "appid"

    aput-object v1, v0, v4

    const-string v1, " TEXT "

    aput-object v1, v0, v3

    const-string v1, "from_guid"

    aput-object v1, v0, v5

    const-string v1, " TEXT "

    aput-object v1, v0, v6

    const-string v1, "to_guid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, " TEXT "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msg_seq"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " INTEGER DEFAULT 0 "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sent_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " BLOB "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " TEXT "

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->TABLE_SINGLE_CALL_COLUMNS_DEFINITION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v4

    const-string v1, "appid"

    aput-object v1, v0, v3

    const-string v1, "from_guid"

    aput-object v1, v0, v5

    const-string v1, "to_guid"

    aput-object v1, v0, v6

    const-string v1, "msg_seq"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sent_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->COLUMNS_SINGLE_CALL_MESSAGE:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "appid"

    aput-object v1, v0, v4

    const-string v1, " TEXT "

    aput-object v1, v0, v3

    const-string v1, "from_guid"

    aput-object v1, v0, v5

    const-string v1, " TEXT "

    aput-object v1, v0, v6

    const-string v1, "to_guid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, " TEXT "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msg_seq"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " INTEGER DEFAULT 0 "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sent_time"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " LONG DEFAULT 0 "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " BLOB "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " TEXT "

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->TABLE_GROUP_CALL_COLUMNS_DEFINITION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_ID"

    aput-object v1, v0, v4

    const-string v1, "appid"

    aput-object v1, v0, v3

    const-string v1, "from_guid"

    aput-object v1, v0, v5

    const-string v1, "to_guid"

    aput-object v1, v0, v6

    const-string v1, "msg_seq"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sent_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->COLUMNS_GROUP_CALL_MESSAGE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MiMsgSDK.db"

    const/4 v1, 0x0

    sget v2, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->DATABASE_VERSION:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mi/mimsgsdk/database/BaseSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createGroupCallMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getDatabaseLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "group_call_message"

    sget-object v2, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->TABLE_GROUP_CALL_COLUMNS_DEFINITION:[Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/mi/mimsgsdk/database/DBUtils;->safeCreateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS SINGLE_INDEX_SENT_TIME ON single_call_message(sent_time)"

    invoke-static {p1, v0}, Lcom/mi/mimsgsdk/database/DBUtils;->safeExecuteSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ChatMessageDbOpenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in createSingleCallMessageTable(), the exception code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createSingleCallMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->getDatabaseLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "single_call_message"

    sget-object v2, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->TABLE_SINGLE_CALL_COLUMNS_DEFINITION:[Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/mi/mimsgsdk/database/DBUtils;->safeCreateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS SINGLE_INDEX_SENT_TIME ON single_call_message(sent_time)"

    invoke-static {p1, v0}, Lcom/mi/mimsgsdk/database/DBUtils;->safeExecuteSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ChatMessageDbOpenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in createSingleCallMessageTable(), the exception code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static getGroupCallMessageTableColumns()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->COLUMNS_GROUP_CALL_MESSAGE:[Ljava/lang/String;

    return-object v0
.end method

.method public static getGroupCallMessageTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "group_call_message"

    return-object v0
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;
    .locals 2

    sget-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->sInstance:Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;

    sget-object v1, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->sInstance:Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;

    :cond_0
    :goto_0
    sget-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->sInstance:Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;

    return-object v0

    :cond_1
    const-string v0, "ChatMessageDbOpenHelper"

    const-string v1, "sContext is null in getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSingleCallMessageTableColumns()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->COLUMNS_SINGLE_CALL_MESSAGE:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSingleCallMessageTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "single_call_message"

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->sContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAllTablesName()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "single_call_message"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "group_call_message"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "MiMsgSDK.db"

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->createSingleCallMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/database/ChatMessageDbOpenHelper;->createGroupCallMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
