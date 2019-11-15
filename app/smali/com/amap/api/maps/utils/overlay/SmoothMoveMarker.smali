.class public Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;
.super Ljava/lang/Object;
.source "SmoothMoveMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;
    }
.end annotation


# instance fields
.field private animation:Lcom/amap/api/maps/model/animation/TranslateAnimation;

.field private descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private duration:J

.field private eachDistance:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private endPoint:Lcom/amap/api/maps/model/LatLng;

.field exitFlag:Z

.field private index:I

.field private lastEndPoint:Lcom/amap/api/maps/model/LatLng;

.field private mAMap:Lcom/amap/api/maps/AMap;

.field private marker:Lcom/amap/api/maps/model/Marker;

.field private moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

.field private moveThread:Ljava/lang/Thread;

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private remainDistance:D

.field private tempPosition:Lcom/amap/api/maps/model/LatLng;

.field private timer:Ljava/util/Timer;

.field private totalDistance:D

.field private useDefaultDescriptor:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/AMap;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    iput-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    iput-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    iput-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    iput v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    iput-boolean v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    iput-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    iput-boolean v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    return-void
.end method

.method static synthetic access$000(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->getRotate(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/AMap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->animation:Lcom/amap/api/maps/model/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/model/animation/TranslateAnimation;)Lcom/amap/api/maps/model/animation/TranslateAnimation;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->animation:Lcom/amap/api/maps/model/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->setEndRotate()V

    return-void
.end method

.method static synthetic access$300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;D)D
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    return-wide p1
.end method

.method static synthetic access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$908(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return v0
.end method

.method private checkMarkerIcon()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    goto :goto_0
.end method

.method private getRotate(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v4, v6, v4

    sub-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method private setEndRotate()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->lastEndPoint:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->lastEndPoint:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->lastEndPoint:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->lastEndPoint:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->getRotate(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->stopMove()V

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return v0
.end method

.method public getMarker()Lcom/amap/api/maps/model/Marker;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public removeMarker()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public resetIndex()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return-void
.end method

.method public setDescriptor(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    :cond_1
    return-void
.end method

.method public setMoveListener(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->endPoint:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->lastEndPoint:Lcom/amap/api/maps/model/LatLng;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    float-to-double v0, v0

    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->checkMarkerIcon()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    :cond_5
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public setRotate(F)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public setTotalDuration(I)V
    .locals 2

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public startSmoothMove()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    iput-boolean v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;

    invoke-direct {v1, p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;-><init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopMove()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Z

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return-void
.end method
