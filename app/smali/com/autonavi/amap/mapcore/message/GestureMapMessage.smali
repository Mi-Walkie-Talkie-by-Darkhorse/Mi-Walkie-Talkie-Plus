.class public abstract Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.super Lcom/autonavi/ae/gmap/MapMessage;
.source "GestureMapMessage.java"


# instance fields
.field public anchorX:I

.field public anchorY:I

.field public height:I

.field public isGestureScaleByMapCenter:Z

.field public isUseAnchor:Z

.field private state_:I

.field public width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/MapMessage;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->width:I

    .line 3
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->height:I

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isGestureScaleByMapCenter:Z

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isUseAnchor:Z

    .line 6
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    .line 7
    iput p1, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    return-void
.end method


# virtual methods
.method public getMapGestureState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->width:I

    .line 2
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->height:I

    .line 3
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isGestureScaleByMapCenter:Z

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isUseAnchor:Z

    .line 6
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorX:I

    .line 7
    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorY:I

    return-void
.end method

.method public abstract runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    return-void
.end method

.method protected win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 2
    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 3
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget p3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    return-void
.end method
