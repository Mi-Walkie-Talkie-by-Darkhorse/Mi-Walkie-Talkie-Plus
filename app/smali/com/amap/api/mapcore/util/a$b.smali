.class Lcom/amap/api/mapcore/util/a$b;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/ad;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->e()Lcom/amap/api/mapcore/util/ep;

    move-result-object v1

    if-nez p1, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->y(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->y(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/mapcore/util/ad;->g:Landroid/graphics/Point;

    :cond_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ep;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/a$b$1;

    invoke-direct {v2, p0, v1}, Lcom/amap/api/mapcore/util/a$b$1;-><init>(Lcom/amap/api/mapcore/util/a$b;Lcom/amap/api/mapcore/util/ep;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v2, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_2
    iput v0, v2, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->z(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->A(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ad;->poiid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/api/mapcore/util/ad;->poiid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ep;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ad;->poiid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amap/api/mapcore/util/ad;->poiid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ad;->g:Landroid/graphics/Point;

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iput-object p1, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCenter(I)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore/util/ad;->g:Landroid/graphics/Point;

    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->y(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->y(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v2, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_3
    iput v0, v2, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->z(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->A(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->z(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isIndoorSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ep;->d()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->z(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/w;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/w;->setIndoorSwitchEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/a$b$2;

    invoke-direct {v2, p0, v1}, Lcom/amap/api/mapcore/util/a$b$2;-><init>(Lcom/amap/api/mapcore/util/a$b;Lcom/amap/api/mapcore/util/ep;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_c
    const/high16 v0, 0x41980000    # 19.0f

    goto/16 :goto_2

    :cond_d
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_3

    :cond_e
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->z(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isIndoorSwitchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ep;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b;->a:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->z(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/w;->setIndoorSwitchEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
