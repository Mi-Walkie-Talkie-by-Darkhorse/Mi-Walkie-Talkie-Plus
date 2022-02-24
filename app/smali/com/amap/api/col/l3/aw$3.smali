.class final Lcom/amap/api/col/l3/aw$3;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/aw;->f(Lcom/amap/api/col/l3/av;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/av;

.field final synthetic b:Lcom/amap/api/col/l3/aw;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/aw;Lcom/amap/api/col/l3/av;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/aw$3;->b:Lcom/amap/api/col/l3/aw;

    iput-object p2, p0, Lcom/amap/api/col/l3/aw$3;->a:Lcom/amap/api/col/l3/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$3;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->e(Lcom/amap/api/col/l3/aw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$3;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->b(Lcom/amap/api/col/l3/aw;)V

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/ay;

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$3;->b:Lcom/amap/api/col/l3/aw;

    .line 4
    invoke-static {v1}, Lcom/amap/api/col/l3/aw;->c(Lcom/amap/api/col/l3/aw;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/ay;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bx;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/ax;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/aw$3;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v1}, Lcom/amap/api/col/l3/aw;->f(Lcom/amap/api/col/l3/aw;)Z

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ax;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$3;->b:Lcom/amap/api/col/l3/aw;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/aw;->c()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$3;->a:Lcom/amap/api/col/l3/av;

    sget-object v1, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$3;->a:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->f()V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "startDownloadRunnable"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
