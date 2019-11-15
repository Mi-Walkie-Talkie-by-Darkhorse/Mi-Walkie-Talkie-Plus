.class public Lcom/amap/api/mapcore/util/v;
.super Ljava/lang/Object;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/v$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cn;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/mapcore/util/v$a;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/amap/api/mapcore/util/cv;

.field e:[F

.field private f:Lcom/amap/api/mapcore/util/l;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    new-instance v0, Lcom/amap/api/mapcore/util/v$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/v$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->b:Lcom/amap/api/mapcore/util/v$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:[F

    iput-object p2, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/v;->g:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/mapcore/util/dk;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-direct {v0, v2, v2, v1}, Lcom/amap/api/mapcore/util/dk;-><init>(IILcom/autonavi/amap/mapcore/MapConfig;)V

    new-instance v1, Lcom/amap/api/maps/model/TileOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object v0

    const/high16 v1, 0xa00000

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    const/16 v1, 0x5000

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    new-instance v1, Lcom/amap/api/mapcore/util/cv;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/amap/api/mapcore/util/cv;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/v;Z)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    return-void
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/l;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lcom/amap/api/mapcore/util/cv;

    const/4 v0, 0x0

    invoke-direct {v2, p1, p0, v0}, Lcom/amap/api/mapcore/util/cv;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/util/v;Z)V

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/v;->a(Lcom/amap/api/mapcore/util/cn;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/cv;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    new-instance v0, Lcom/amap/api/maps/model/TileOverlay;

    invoke-direct {v0, v2}, Lcom/amap/api/maps/model/TileOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/cn;)V
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/v;->b(Lcom/amap/api/mapcore/util/cn;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v;->d()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cv;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cv;->a(Z)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cn;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cn;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cn;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TileOverlayView"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cv;->a(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_6
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->b(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv;->a()V

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cn;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cn;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cn;->a()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cv;->b(Z)V

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cn;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/cn;->b(Z)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/amap/api/mapcore/util/cn;)Z
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cn;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/amap/api/mapcore/util/cn;->destroy(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->b:Lcom/amap/api/mapcore/util/v$a;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->g:Landroid/content/Context;

    return-object v0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv;->remove()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    return-void
.end method

.method public g()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->f:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->e:[F

    goto :goto_0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->d:Lcom/amap/api/mapcore/util/cv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cv;->clearTileCache()V

    invoke-static {}, Lcom/amap/api/mapcore/util/dw;->a()Lcom/amap/api/mapcore/util/dw;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/dw;->a(J)V

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cn;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cn;->clearTileCache()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
