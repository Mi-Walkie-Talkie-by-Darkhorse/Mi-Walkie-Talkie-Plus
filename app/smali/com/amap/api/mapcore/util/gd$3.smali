.class final Lcom/amap/api/mapcore/util/gd$3;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/gd;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/gd;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore/util/gj;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/gd;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore/util/gj;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/amap/api/mapcore/util/gd;->a(Landroid/content/Context;I)Lcom/amap/api/mapcore/util/gj;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/gj;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/gj;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/gj;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ic;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ia;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/mapcore/util/gj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/gj$b;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v5, p0, Lcom/amap/api/mapcore/util/gd$3;->a:Landroid/content/Context;

    invoke-interface {v0, v5}, Lcom/amap/api/mapcore/util/gj$b;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_5
    const-string v4, "Lg"

    const-string v5, "proL"

    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore/util/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_1
    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_2
    :goto_3
    return-void

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_5
    throw v0

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_7
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gj;->d()V

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gj;->d()V

    :cond_a
    if-eqz v1, :cond_2

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v1, v0

    move-object v2, v3

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_5
.end method
