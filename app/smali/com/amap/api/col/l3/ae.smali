.class public final Lcom/amap/api/col/l3/ae;
.super Ljava/lang/Object;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/ae$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/cw;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/col/l3/ae$a;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/amap/api/col/l3/de;

.field e:[F

.field private f:Lcom/amap/api/col/l3/u;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/ae$a;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ae$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ae;->b:Lcom/amap/api/col/l3/ae$a;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ae;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/ae;->e:[F

    .line 7
    iput-object p2, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    .line 8
    iput-object p1, p0, Lcom/amap/api/col/l3/ae;->g:Landroid/content/Context;

    .line 9
    new-instance p1, Lcom/amap/api/col/l3/dt;

    iget-object p2, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    invoke-interface {p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/dt;-><init>(Lcom/autonavi/amap/mapcore/MapConfig;)V

    .line 10
    new-instance p2, Lcom/amap/api/maps/model/TileOverlayOptions;

    invoke-direct {p2}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>()V

    .line 11
    invoke-virtual {p2, p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object p1

    const/high16 p2, 0xa00000

    .line 12
    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    const/16 p2, 0x5000

    .line 13
    invoke-virtual {p1, p2}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    .line 14
    new-instance p2, Lcom/amap/api/col/l3/de;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Lcom/amap/api/col/l3/de;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3/ae;Z)V

    iput-object p2, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    return-void
.end method

.method private h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    return-object v0
.end method

.method public final a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3/de;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/amap/api/col/l3/de;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3/ae;Z)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/ae;->a(Lcom/amap/api/col/l3/cw;)Z

    iget-object v3, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ae;->d()V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/de;->a(Z)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 7
    new-instance p1, Lcom/amap/api/maps/model/TileOverlay;

    invoke-direct {p1, v1}, Lcom/amap/api/maps/model/TileOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V

    return-object p1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit p1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/ae;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-boolean v1, v0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/de;->a(Z)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/de;->a(Z)V

    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/de;->b()V

    .line 24
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    .line 26
    iget-object v3, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/cw;

    if-eqz v3, :cond_5

    .line 27
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 28
    invoke-interface {v3, p1}, Lcom/amap/api/col/l3/cw;->a(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 29
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "TileOverlayView"

    const-string v1, "refresh"

    .line 30
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/cw;)Z
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method

.method public final b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->b(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-direct {p0}, Lcom/amap/api/col/l3/ae;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/col/l3/de;->a()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 9
    iget-object v3, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/cw;

    .line 10
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v3}, Lcom/amap/api/col/l3/cw;->a()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/de;->b(Z)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    iget-object v3, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/cw;

    if-eqz v3, :cond_1

    .line 18
    invoke-interface {v3, p1}, Lcom/amap/api/col/l3/cw;->b(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget-object v4, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3/cw;

    if-eqz v4, :cond_0

    .line 4
    invoke-interface {v4, v2}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->destroy(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/col/l3/ae;->b:Lcom/amap/api/col/l3/ae$a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final f()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->f:Lcom/amap/api/col/l3/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->e:[F

    return-object v0
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/de;->clearTileCache()V

    .line 3
    invoke-static {}, Lcom/amap/api/col/l3/ee;->a()Lcom/amap/api/col/l3/ee;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/ee;->a(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    iget-object v3, p0, Lcom/amap/api/col/l3/ae;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/cw;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->clearTileCache()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
