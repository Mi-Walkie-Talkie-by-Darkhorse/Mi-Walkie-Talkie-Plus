.class final Lcom/amap/api/col/l3/j$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/j;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amap/api/col/l3/j$d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/l3/j$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/amap/api/col/l3/j$d;

    return p1
.end method

.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/j$d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/em;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/autonavi/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/autonavi/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/l3/ae;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    iget-object v2, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    const/16 v4, 0xa29

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/j$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_2
    move-exception v2

    move v3, v1

    move-object v1, v2

    goto :goto_1

    :catchall_3
    move-exception v2

    move-object v1, v2

    const/4 v3, 0x1

    :goto_1
    :try_start_4
    const-string v2, "AMapDelegateImp"

    const-string v4, "RemoveCacheRunnable"

    invoke-static {v1, v2, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    const/16 v4, 0xa29

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_5
    return-void

    :catchall_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_5
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->a:Lcom/amap/api/col/l3/j;

    iget-object v4, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v5, 0x1

    const/16 v6, 0xa29

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3/j$d;->c:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    invoke-interface {v1, v3}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_2

    :catchall_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    throw v0
.end method
