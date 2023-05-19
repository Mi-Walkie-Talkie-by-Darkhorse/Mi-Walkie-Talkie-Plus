.class Lcom/xiaomi/push/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/xiaomi/push/ci$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ci$a;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iput-object p2, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/ci$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v2, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/ci$a;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v1, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ci$a;->a(Landroid/content/Context;)V

    return-void

    :goto_2
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v0, v0, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/push/ck;->a:Lcom/xiaomi/push/ci$a;

    iget-object v2, p0, Lcom/xiaomi/push/ck;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/ci$a;->a(Landroid/content/Context;)V

    throw v1
.end method
