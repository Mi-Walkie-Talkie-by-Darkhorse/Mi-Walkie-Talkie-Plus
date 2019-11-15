.class Lcom/amap/api/mapcore/util/i$1;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/i;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/i;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/i$1;->a:Lcom/amap/api/mapcore/util/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/i$1;->a:Lcom/amap/api/mapcore/util/i;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i$1;->a:Lcom/amap/api/mapcore/util/i;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/mapcore/util/i;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i$1;->a:Lcom/amap/api/mapcore/util/i;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/mapcore/util/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i$1;->a:Lcom/amap/api/mapcore/util/i;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/mapcore/util/i;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/i$1;->a:Lcom/amap/api/mapcore/util/i;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/i;->b:Lcom/amap/api/mapcore/util/i$a;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
