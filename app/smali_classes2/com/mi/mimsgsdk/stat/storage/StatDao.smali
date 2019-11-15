.class public Lcom/mi/mimsgsdk/stat/storage/StatDao;
.super Ljava/lang/Object;
.source "StatDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;,
        Lcom/mi/mimsgsdk/stat/storage/StatDao$StatDaoHolder;
    }
.end annotation


# static fields
.field private static final FIELDS:Ljava/lang/String; = "JSON_DATA, RETRY_TIMES, LAST_SEND_TIME"

.field private static final FULL_FIELDS:Ljava/lang/String; = "_id, JSON_DATA, RETRY_TIMES, LAST_SEND_TIME"

.field private static final INIT_RETRY_TIMES:I = -0x1

.field private static final SQL_CREATE_TABLE_STAT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS \'stat\' (\'_id\' INTEGER PRIMARY KEY AUTOINCREMENT ,\'JSON_DATA\' TEXT,\'RETRY_TIMES\' INTEGER,\'LAST_SEND_TIME\' INTEGER);"

.field private static final SQL_DELETE_ROW:Ljava/lang/String; = "DELETE FROM stat WHERE _id = ?"

.field private static final SQL_INSERT_NEW:Ljava/lang/String; = "INSERT INTO stat (JSON_DATA, RETRY_TIMES, LAST_SEND_TIME) VALUES(?,?,?)"

.field private static final SQL_SELECT_FAILED_ROWS:Ljava/lang/String; = "SELECT _id, JSON_DATA, RETRY_TIMES, LAST_SEND_TIME FROM stat WHERE RETRY_TIMES >= ? AND RETRY_TIMES < ? AND LAST_SEND_TIME + ? <= ?"

.field private static final SQL_SELECT_LAST_ROW_ID:Ljava/lang/String; = "SELECT last_insert_rowid() FROM stat"

.field private static final SQL_UPDATE_RETRY_TIMES:Ljava/lang/String; = "UPDATE stat SET RETRY_TIMES = RETRY_TIMES + 1 WHERE _id = ?"

.field private static final TABLE_NAME:Ljava/lang/String; = "stat"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/stat/storage/StatDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/stat/storage/StatDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS \'stat\' (\'_id\' INTEGER PRIMARY KEY AUTOINCREMENT ,\'JSON_DATA\' TEXT,\'RETRY_TIMES\' INTEGER,\'LAST_SEND_TIME\' INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatDaoHolder;->holder:Lcom/mi/mimsgsdk/stat/storage/StatDao;

    return-object v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;->getInstance()Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;->getInstance()Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/stat/storage/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNew(Ljava/lang/String;)I
    .locals 8

    const/4 v1, 0x0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT INTO stat (JSON_DATA, RETRY_TIMES, LAST_SEND_TIME) VALUES(?,?,?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "SELECT last_insert_rowid() FROM stat"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public addRetryTimes(I)V
    .locals 5

    invoke-direct {p0}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE stat SET RETRY_TIMES = RETRY_TIMES + 1 WHERE _id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getFailedRows(IJ)Ljava/util/List;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "SELECT _id, JSON_DATA, RETRY_TIMES, LAST_SEND_TIME FROM stat WHERE RETRY_TIMES >= ? AND RETRY_TIMES < ? AND LAST_SEND_TIME + ? <= ?"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->access$002(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;I)I

    const/4 v3, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->access$102(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->access$202(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;I)I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->access$302(Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;J)J

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public remove(I)V
    .locals 5

    invoke-direct {p0}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM stat WHERE _id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
