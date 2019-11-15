.class public Lcom/amap/api/mapcore/util/ak;
.super Ljava/lang/Object;
.source "MultiPointOverlayManagerLayer.java"


# instance fields
.field a:Lcom/amap/api/mapcore/util/cx;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

.field private d:Lcom/amap/api/mapcore/util/l;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ak;->d:Lcom/amap/api/mapcore/util/l;

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/cx;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->d:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->v()Lcom/amap/api/mapcore/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ak;->a:Lcom/amap/api/mapcore/util/cx;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->a:Lcom/amap/api/mapcore/util/cx;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/aj;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/mapcore/util/aj;-><init>(Lcom/amap/api/maps/model/MultiPointOverlayOptions;Lcom/amap/api/mapcore/util/ak;)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ak;->a(Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/amap/api/mapcore/util/aj;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ak;->c:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/MapConfig;[F[F)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->draw(Lcom/autonavi/amap/mapcore/MapConfig;[F[F)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MultiPointOverlayManagerLayer"

    const-string v2, "draw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->c:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->onClick(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/model/MultiPointItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ak;->c:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ak;->c:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnMultiPointClickListener;->onPointClick(Lcom/amap/api/maps/model/MultiPointItem;)Z

    move-result v0

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ak;->c:Lcom/amap/api/maps/AMap$OnMultiPointClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->destroy(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

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
    const-string v1, "MultiPointOverlayManagerLayer"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

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
    const-string v1, "MultiPointOverlayManagerLayer"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->d:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ak;->d:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method
