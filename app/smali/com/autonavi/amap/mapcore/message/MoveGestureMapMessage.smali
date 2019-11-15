.class public Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;
.super Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.source "MoveGestureMapMessage.java"


# static fields
.field private static final mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool",
            "<",
            "Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;",
            ">;"
        }
    .end annotation
.end field

.field static newCount:I


# instance fields
.field public touch_delta_x:F

.field public touch_delta_y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->newCount:I

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;-><init>(I)V

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_x:F

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_y:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_x:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_y:F

    sget v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->newCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->newCount:I

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->destory()V

    return-void
.end method

.method public static declared-synchronized obtain(IFF)Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;
    .locals 2

    const-class v1, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;-><init>(IFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->reset()V

    invoke-direct {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->setParams(IFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setParams(IFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->setState(I)V

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_x:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_y:F

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->mPool:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    iget v0, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_y:F

    float-to-int v1, v1

    iget v2, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->width:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->height:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    int-to-float v0, v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v1, v1

    sub-float v1, v3, v1

    float-to-int v1, v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v0, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGlCenter(FF)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    return-void
.end method
