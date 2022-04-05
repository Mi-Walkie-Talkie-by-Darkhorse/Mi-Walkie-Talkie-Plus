.class public Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;
.super Lcom/autonavi/amap/mapcore/message/GestureMapMessage;


# static fields
.field private static final mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool<",
            "Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pivot_x:I

.field public pivot_y:I

.field public scale_delta:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(IFII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->scale_delta:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_x:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_y:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->setParams(IFII)V

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SimplePool;->destory()V

    return-void
.end method

.method public static obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;-><init>(IFII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->reset()V

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->setParams(IFII)V

    :goto_0
    return-object v0
.end method

.method private setMapZoomer(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->scale_delta:F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    return-void
.end method

.method private setParams(IFII)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->setState(I)V

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->scale_delta:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_x:I

    iput p4, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_y:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recycle()V
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 6

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isGestureScaleByMapCenter:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->setMapZoomer(Lcom/autonavi/ae/gmap/GLMapState;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_x:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_y:I

    const/4 v2, 0x0

    if-gtz v0, :cond_2

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->setMapZoomer(Lcom/autonavi/ae/gmap/GLMapState;)V

    if-gtz v0, :cond_3

    if-lez v1, :cond_4

    :cond_3
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x2

    iget v4, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_6
    return-void
.end method
