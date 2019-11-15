.class Lcom/xiaomi/mistatistic/sdk/controller/d$b;
.super Landroid/os/HandlerThread;
.source "AsyncJobDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;Landroid/os/Handler;)Landroid/os/Handler;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPendingJob(cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not empty, clone a job list and clear original list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    :try_start_1
    const-string v2, "execute a pending job"

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d$a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "error while executing job."

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void
.end method
