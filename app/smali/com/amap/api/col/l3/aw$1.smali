.class final Lcom/amap/api/col/l3/aw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/aw;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/col/l3/aw;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/aw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    iput-object p2, p0, Lcom/amap/api/col/l3/aw$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/aw;->a(Lcom/amap/api/col/l3/aw;Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/col/l3/av;->e:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->a(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/bl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/bl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object v2, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_4

    sget-object v2, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3/aw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v1}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/col/l3/aw$a;->b(Lcom/amap/api/col/l3/av;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    return-void

    :cond_4
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v1}, Lcom/amap/api/col/l3/aw;->b(Lcom/amap/api/col/l3/aw;)V

    new-instance v1, Lcom/amap/api/col/l3/ay;

    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->c(Lcom/amap/api/col/l3/aw;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/l3/ay;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bx;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/ax;

    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v1}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/col/l3/aw$a;->b(Lcom/amap/api/col/l3/av;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    return-void

    :cond_6
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/col/l3/ax;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/aw;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v1}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/col/l3/aw$a;->b(Lcom/amap/api/col/l3/av;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    return-void

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_6
    move-exception v1

    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v3}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amap/api/col/l3/aw$a;->b(Lcom/amap/api/col/l3/av;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v0

    :try_start_a
    const-string v3, "OfflineDownloadManager"

    const-string v4, "checkUpdatefinally"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8
    :goto_6
    throw v1

    :catch_0
    nop

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v1}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/amap/api/col/l3/aw$1;->b:Lcom/amap/api/col/l3/aw;

    invoke-static {v2}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/col/l3/aw$a;->b(Lcom/amap/api/col/l3/av;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception v0

    :try_start_c
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    return-void
.end method
