.class final Lcom/amap/api/col/l3/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/r;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/r;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/r$1;->a:Lcom/amap/api/col/l3/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/r$1;->a:Lcom/amap/api/col/l3/r;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/r$1;->a:Lcom/amap/api/col/l3/r;

    invoke-static {v1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/col/l3/r;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/r$1;->a:Lcom/amap/api/col/l3/r;

    invoke-static {v1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/col/l3/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/r$1;->a:Lcom/amap/api/col/l3/r;

    invoke-static {v1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/col/l3/r;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/r$1;->a:Lcom/amap/api/col/l3/r;

    iget-object v2, v2, Lcom/amap/api/col/l3/r;->b:Lcom/amap/api/col/l3/r$a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_3
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
