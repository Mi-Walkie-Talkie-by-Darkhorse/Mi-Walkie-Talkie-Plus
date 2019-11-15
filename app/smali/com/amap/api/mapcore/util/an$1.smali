.class Lcom/amap/api/mapcore/util/an$1;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/an;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/mapcore/util/an;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/an;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/an$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/an;Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    iget-object v2, v1, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    iget-object v2, v1, Lcom/amap/api/mapcore/util/am;->e:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->b(Lcom/amap/api/mapcore/util/am;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->getPinyin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/bc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/bc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->getVersion()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sget-object v2, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    sget-object v3, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/an;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->j()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->b(Lcom/amap/api/mapcore/util/an;)V

    new-instance v0, Lcom/amap/api/mapcore/util/ap;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/an;->c(Lcom/amap/api/mapcore/util/an;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore/util/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ap;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ao;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->b(Lcom/amap/api/mapcore/util/am;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :cond_5
    :try_start_7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/an;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->b(Lcom/amap/api/mapcore/util/am;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    :try_start_9
    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catch_2
    move-exception v0

    :try_start_a
    const-string v1, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    monitor-enter v2

    :try_start_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->b(Lcom/amap/api/mapcore/util/am;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_4
    :try_start_c
    monitor-exit v2

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :catch_4
    move-exception v0

    :try_start_d
    const-string v1, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_4

    :catchall_4
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    monitor-enter v2

    :try_start_e
    iget-object v3, p0, Lcom/amap/api/mapcore/util/an$1;->b:Lcom/amap/api/mapcore/util/an;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/amap/api/mapcore/util/an$a;->b(Lcom/amap/api/mapcore/util/am;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_5
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_7
    throw v0

    :catch_5
    move-exception v1

    :try_start_10
    const-string v3, "OfflineDownloadManager"

    const-string v4, "checkUpdatefinally"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0
.end method
