.class public Lcom/xiaomi/push/service/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/service/g;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/l;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "SELECT * FROM geoMessage"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/g;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/service/g;->a:Lcom/xiaomi/push/service/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/push/service/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/g;->a:Lcom/xiaomi/push/service/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/g;->a:Lcom/xiaomi/push/service/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/g;->a:Lcom/xiaomi/push/service/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/l;->a(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "geoMessage"

    const-string v3, "message_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/f;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/module/b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/l;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/g;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/xiaomi/push/service/module/b;

    invoke-direct {v2}, Lcom/xiaomi/push/service/module/b;-><init>()V

    const-string v3, "message_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/module/b;->a(Ljava/lang/String;)V

    const-string v3, "geo_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/module/b;->b(Ljava/lang/String;)V

    const-string v3, "content"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/module/b;->a([B)V

    const-string v3, "action"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/module/b;->a(I)V

    const-string v3, "deadline"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/module/b;->a(J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/f;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/l;->a(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "geoMessage"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v2, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/f;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/l;->a(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "geoMessage"

    const-string v3, "geo_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/push/service/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/f;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/f;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/module/b;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/l;->a(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/module/b;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
