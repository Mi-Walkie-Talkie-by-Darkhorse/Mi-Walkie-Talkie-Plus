.class public Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;
.super Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.source "RotateGestureMapMessage.java"


# static fields
.field private static final mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool",
            "<",
            "Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public angle_delta:F

.field public pivot_x:I

.field public pivot_y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(IFII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;-><init>(I)V

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_x:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->angle_delta:F

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->setParams(IFII)V

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->angle_delta:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_x:I

    iput p4, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_y:I

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->destory()V

    return-void
.end method

.method public static obtain(IFII)Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;-><init>(IFII)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->reset()V

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->setParams(IFII)V

    goto :goto_0
.end method

.method private setParams(IFII)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->setState(I)V

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->angle_delta:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_x:I

    iput p4, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_y:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public recycle()V
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->angle_delta:F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v2

    add-float v4, v2, v1

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->isGestureScaleByMapCenter:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v4}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_x:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_y:I

    iget-boolean v3, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->isUseAnchor:Z

    if-eqz v3, :cond_7

    iget v2, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->anchorX:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->anchorY:I

    move v3, v2

    move v2, v1

    :goto_1
    if-gtz v3, :cond_2

    if-lez v2, :cond_6

    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v5, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v5, v6}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    :goto_2
    invoke-virtual {p1, v4}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    if-gtz v3, :cond_3

    if-lez v2, :cond_4

    :cond_3
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_2

    :cond_7
    move v3, v2

    move v2, v1

    goto :goto_1
.end method
