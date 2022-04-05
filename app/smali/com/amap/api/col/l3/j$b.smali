.class final Lcom/amap/api/col/l3/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/am;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->e()Lcom/amap/api/col/l3/ew;

    move-result-object v0

    if-nez p1, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->F(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->F(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/col/l3/am;->g:Landroid/graphics/Point;

    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ew;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/col/l3/j$b$1;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3/j$b$1;-><init>(Lcom/amap/api/col/l3/j$b;Lcom/amap/api/col/l3/ew;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v2, v2, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v2

    goto :goto_1

    :cond_4
    const/high16 v2, 0x41980000    # 19.0f

    :goto_1
    iput v2, v1, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->G(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/l3/af;->isZoomControlsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->H(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v2, v2, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ew;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    iget-object v1, v1, Lcom/amap/api/col/l3/am;->g:Landroid/graphics/Point;

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iput-object p1, v1, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCenter(I)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p1, Lcom/amap/api/col/l3/am;->g:Landroid/graphics/Point;

    :cond_9
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->F(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v1}, Lcom/amap/api/col/l3/j;->F(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V

    :cond_a
    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object p1, p1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    goto :goto_2

    :cond_b
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_2
    iput v1, p1, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->G(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/af;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/af;->isZoomControlsEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->H(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {p1, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    :cond_c
    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->G(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/af;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/af;->isIndoorSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ew;->b()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->G(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/af;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amap/api/col/l3/af;->setIndoorSwitchEnabled(Z)V

    :cond_d
    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object p1, p1, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/l3/j$b$2;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3/j$b$2;-><init>(Lcom/amap/api/col/l3/j$b;Lcom/amap/api/col/l3/ew;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_e
    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->G(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/af;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/af;->isIndoorSwitchEnabled()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ew;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    invoke-static {p1}, Lcom/amap/api/col/l3/j;->G(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/af;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/af;->setIndoorSwitchEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_f
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
