.class public Lcom/autonavi/amap/mapcore/MapConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_RATIO:I = 0x1

.field private static final GEO_POINT_ZOOM:I = 0x14

.field public static final MAX_ZOOM:F = 19.0f

.field public static final MAX_ZOOM_INDOOR:F = 20.0f

.field public static final MIN_ZOOM:F = 3.0f

.field public static final MSG_ACTION_ONBASEPOICLICK:I = 0x14

.field public static final MSG_ACTION_ONMAPCLICK:I = 0x13

.field public static final MSG_AUTH_FAILURE:I = 0x2

.field public static final MSG_CALLBACK_MAPLOADED:I = 0x10

.field public static final MSG_CALLBACK_ONTOUCHEVENT:I = 0xe

.field public static final MSG_CALLBACK_SCREENSHOT:I = 0xf

.field public static final MSG_CAMERAUPDATE_CHANGE:I = 0xa

.field public static final MSG_CAMERAUPDATE_FINISH:I = 0xb

.field public static final MSG_COMPASSVIEW_CHANGESTATE:I = 0xd

.field public static final MSG_INFOWINDOW_UPDATE:I = 0x12

.field public static final MSG_TILEOVERLAY_REFRESH:I = 0x11

.field public static final MSG_ZOOMVIEW_CHANGESTATE:I = 0xc

.field private static final TILE_SIZE_POW:I = 0x8


# instance fields
.field private anchorX:I

.field private anchorY:I

.field private volatile changeGridRatio:D

.field private volatile changeRatio:D

.field private volatile changedCounter:I

.field private customBackgroundColor:I

.field private customTextureResourcePath:Ljava/lang/String;

.field private geoRectangle:Lcom/autonavi/amap/mapcore/Rectangle;

.field private grid_x:I

.field private grid_y:I

.field private isBearingChanged:Z

.field private isBuildingEnable:Z

.field private isCenterChanged:Z

.field private isCustomStyleEnabled:Z

.field private isHideLogoEnable:Z

.field private isIndoorEnable:Z

.field private isMapTextEnable:Z

.field private isNeedUpdateMapRectNextFrame:Z

.field private isNeedUpdateZoomControllerState:Z

.field private isSetLimitZoomLevel:Z

.field private isTiltChanged:Z

.field private isTrafficEnabled:Z

.field private isWorldMapEnable:Z

.field private isZoomChanged:Z

.field last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

.field private limitIPoints:[Lcom/autonavi/amap/mapcore/IPoint;

.field private limitLatLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

.field private mCustomStyleID:Ljava/lang/String;

.field private mCustomStylePath:Ljava/lang/String;

.field private mMapLanguage:Ljava/lang/String;

.field private mMapStyleMode:I

.field private mMapStyleState:I

.field private mMapStyleTime:I

.field private mapHeight:I

.field private mapPerPixelUnitLength:F

.field private mapRect:[Lcom/autonavi/amap/mapcore/FPoint;

.field private mapWidth:I

.field private mapZoomScale:F

.field public maxZoomLevel:F

.field public minZoomLevel:F

.field private s_c:F

.field private s_r:F

.field private s_x:I

.field private s_y:I

.field private s_z:F


# direct methods
.method public constructor <init>(Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41980000    # 19.0f

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->minZoomLevel:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    new-instance v1, Lcom/autonavi/amap/mapcore/Rectangle;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/Rectangle;-><init>()V

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->geoRectangle:Lcom/autonavi/amap/mapcore/Rectangle;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isBuildingEnable:Z

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isMapTextEnable:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnabled:Z

    const v3, 0xd2c595b

    iput v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    const v3, 0x60fc907

    iput v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_c:F

    iput v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_r:F

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isCenterChanged:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isZoomChanged:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isBearingChanged:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleMode:I

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleTime:I

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleState:I

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->anchorX:I

    const-string v0, "zh_cn"

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapLanguage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isHideLogoEnable:Z

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isWorldMapEnable:Z

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->anchorY:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->customBackgroundColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapZoomScale:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changedCounter:I

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    iput-wide v4, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_x:I

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_y:I

    if-eqz p1, :cond_0

    new-instance p1, Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-direct {p1, v1}, Lcom/autonavi/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v1, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setGridXY(II)V

    iget-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_x(I)V

    iget-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_y(I)V

    iget-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_z(F)V

    iget-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_c(F)V

    iget-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_r(F)V

    :cond_0
    return-void
.end method

.method private changeRatio()V
    .locals 13

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v3

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v4

    iget v5, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v0, v7

    if-nez v11, :cond_0

    move-wide v0, v9

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    mul-double v0, v0, v5

    :goto_0
    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    iget v11, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    cmpl-float v12, v2, v11

    if-nez v12, :cond_1

    move-wide v11, v9

    goto :goto_1

    :cond_1
    sub-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v11, v2

    :goto_1
    mul-double v0, v0, v11

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v0

    if-nez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_2
    iget v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_r:F

    cmpl-float v3, v4, v2

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_3
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    float-to-double v11, v0

    mul-double v2, v2, v11

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    float-to-double v0, v1

    mul-double v2, v2, v0

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGrid_X()I

    move-result v2

    iget v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_x:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getGrid_Y()I

    move-result v3

    iget v4, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_y:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    cmpl-double v4, v2, v7

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    mul-double v9, v2, v5

    :goto_4
    iput-wide v9, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    mul-double v2, v2, v11

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    mul-double v2, v2, v0

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    return-void
.end method


# virtual methods
.method public getAnchorX()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->anchorX:I

    return v0
.end method

.method public getAnchorY()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->anchorY:I

    return v0
.end method

.method public getChangeGridRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeGridRatio:D

    return-wide v0
.end method

.method public getChangeRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio:D

    return-wide v0
.end method

.method public getChangedCounter()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changedCounter:I

    return v0
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->customBackgroundColor:I

    return v0
.end method

.method public getCustomStyleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mCustomStyleID:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomStylePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mCustomStylePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTextureResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->customTextureResourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->geoRectangle:Lcom/autonavi/amap/mapcore/Rectangle;

    return-object v0
.end method

.method protected getGrid_X()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_x:I

    return v0
.end method

.method protected getGrid_Y()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_y:I

    return v0
.end method

.method public getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->limitIPoints:[Lcom/autonavi/amap/mapcore/IPoint;

    return-object v0
.end method

.method public getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->limitLatLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapHeight:I

    return v0
.end method

.method public getMapLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMapPerPixelUnitLength()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapPerPixelUnitLength:F

    return v0
.end method

.method public getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public getMapStyleMode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleMode:I

    return v0
.end method

.method public getMapStyleState()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleState:I

    return v0
.end method

.method public getMapStyleTime()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleTime:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapWidth:I

    return v0
.end method

.method public getMapZoomScale()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapZoomScale:F

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->minZoomLevel:F

    return v0
.end method

.method public getS_c()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_c:F

    return v0
.end method

.method public getS_r()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_r:F

    return v0
.end method

.method public getS_x()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    return v0
.end method

.method public getS_y()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    return v0
.end method

.method public getS_z()F
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    return v0
.end method

.method public isBearingChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isBearingChanged:Z

    return v0
.end method

.method public isBuildingEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isBuildingEnable:Z

    return v0
.end method

.method public isCustomStyleEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnabled:Z

    return v0
.end method

.method public isHideLogoEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isHideLogoEnable:Z

    return v0
.end method

.method public isIndoorEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable:Z

    return v0
.end method

.method public isMapStateChange()Z
    .locals 8

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v3

    iget-object v4, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v4

    iget-object v5, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v5

    iget v6, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    const/4 v7, 0x1

    if-eq v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isCenterChanged:Z

    iget v6, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    if-eq v2, v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isCenterChanged:Z

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isZoomChanged:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->minZoomLevel:F

    cmpg-float v2, v3, v0

    if-lez v2, :cond_4

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    cmpg-float v0, v2, v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    cmpl-float v3, v3, v0

    if-gez v3, :cond_4

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    goto :goto_3

    :cond_4
    :goto_2
    iput-boolean v7, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    :cond_5
    :goto_3
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_c:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged:Z

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_r:F

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isBearingChanged:Z

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isCenterChanged:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isZoomChanged:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged:Z

    if-nez v2, :cond_9

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changedCounter:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changedCounter:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    float-to-int v1, v1

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    rsub-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x8

    shr-int/2addr v2, v1

    iget v3, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    shr-int v1, v3, v1

    invoke-virtual {p0, v2, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setGridXY(II)V

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->changeRatio()V

    :cond_a
    move v1, v0

    :cond_b
    return v1
.end method

.method public isMapTextEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isMapTextEnable:Z

    return v0
.end method

.method public isNeedUpdateZoomControllerState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    return v0
.end method

.method public isSetLimitZoomLevel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    return v0
.end method

.method public isTiltChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged:Z

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled:Z

    return v0
.end method

.method public isWorldMapEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isWorldMapEnable:Z

    return v0
.end method

.method public isZoomChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isZoomChanged:Z

    return v0
.end method

.method public resetChangedCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->changedCounter:I

    return-void
.end method

.method public resetMinMaxZoomPreference()V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->minZoomLevel:F

    const/high16 v0, 0x41980000    # 19.0f

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    return-void
.end method

.method public setAnchorX(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->anchorX:I

    return-void
.end method

.method public setAnchorY(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->anchorY:I

    return-void
.end method

.method public setBuildingEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isBuildingEnable:Z

    return-void
.end method

.method public setCustomBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->customBackgroundColor:I

    return-void
.end method

.method public setCustomStyleEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnabled:Z

    return-void
.end method

.method public setCustomStyleID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mCustomStyleID:Ljava/lang/String;

    return-void
.end method

.method public setCustomStylePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mCustomStylePath:Ljava/lang/String;

    return-void
.end method

.method public setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->customTextureResourcePath:Ljava/lang/String;

    return-void
.end method

.method protected setGridXY(II)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_x:I

    iget v2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_y:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setGridXY(II)V

    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_x:I

    iput p2, p0, Lcom/autonavi/amap/mapcore/MapConfig;->grid_y:I

    return-void
.end method

.method public setHideLogoEnble(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isHideLogoEnable:Z

    return-void
.end method

.method public setIndoorEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable:Z

    return-void
.end method

.method public setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->limitIPoints:[Lcom/autonavi/amap/mapcore/IPoint;

    return-void
.end method

.method public setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->limitLatLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    :cond_0
    return-void
.end method

.method public setMapHeight(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapHeight:I

    return-void
.end method

.method public setMapLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapLanguage:Ljava/lang/String;

    return-void
.end method

.method public setMapPerPixelUnitLength(F)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapPerPixelUnitLength:F

    return-void
.end method

.method public setMapRect([Lcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/amap/mapcore/FPoint;)V

    :cond_0
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapRect:[Lcom/autonavi/amap/mapcore/FPoint;

    return-void
.end method

.method public setMapStyleMode(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleMode:I

    return-void
.end method

.method public setMapStyleState(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleState:I

    return-void
.end method

.method public setMapStyleTime(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mMapStyleTime:I

    return-void
.end method

.method public setMapTextEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isMapTextEnable:Z

    return-void
.end method

.method public setMapWidth(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapWidth:I

    return-void
.end method

.method public setMapZoomScale(F)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->mapZoomScale:F

    return-void
.end method

.method public setMaxZoomLevel(F)V
    .locals 2

    const/high16 v0, 0x41980000    # 19.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x41980000    # 19.0f

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/high16 p1, 0x40400000    # 3.0f

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result p1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    return-void
.end method

.method public setMinZoomLevel(F)V
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    :cond_0
    const/high16 v0, 0x41980000    # 19.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41980000    # 19.0f

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result p1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->minZoomLevel:F

    return-void
.end method

.method public setS_c(F)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_c:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_c(F)V

    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_c:F

    return-void
.end method

.method public setS_r(F)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_r:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_r(F)V

    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_r:F

    return-void
.end method

.method public setS_x(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_x(I)V

    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    return-void
.end method

.method public setS_y(I)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_y(I)V

    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    return-void
.end method

.method public setS_z(F)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->last_mapconfig:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_z(F)V

    :cond_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled:Z

    return-void
.end method

.method public setWorldMapEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isWorldMapEnable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " s_x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " s_y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " s_z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " s_c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " s_r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->s_r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMapRectNextFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    return-void
.end method
