.class public Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/metalev/multitouch/controller/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointInfo"
.end annotation


# instance fields
.field private action:I

.field private angle:F

.field private angleIsCalculated:Z

.field private diameter:F

.field private diameterIsCalculated:Z

.field private diameterSq:F

.field private diameterSqIsCalculated:Z

.field private dx:F

.field private dy:F

.field private eventTime:J

.field private isDown:Z

.field private isMultiTouch:Z

.field private numPoints:I

.field private pointerIds:[I

.field private pressureMid:F

.field private pressures:[F

.field private xMid:F

.field private xs:[F

.field private yMid:F

.field private ys:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    return-void
.end method

.method static synthetic access$1000(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)J
    .locals 2

    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V

    return-void
.end method

.method private julery_isqrt(I)I
    .locals 7

    const/4 v2, 0x0

    const v1, 0x8000

    const/16 v0, 0xf

    move v4, v1

    move v1, p1

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    shl-int/lit8 v3, v0, 0x1

    add-int v5, v3, v4

    add-int/lit8 v3, v2, -0x1

    shl-int v2, v5, v2

    if-lt v1, v2, :cond_0

    add-int/2addr v0, v4

    sub-int/2addr v1, v2

    :cond_0
    shr-int/lit8 v2, v4, 0x1

    if-gtz v2, :cond_1

    return v0

    :cond_1
    move v4, v2

    move v2, v3

    goto :goto_0
.end method

.method private set(I[F[F[F[IIZJ)V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-wide p8, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    iput p6, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    iput p1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    aget v4, p2, v0

    aput v4, v3, v0

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    aget v4, p3, v0

    aput v4, v3, v0

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    aget v4, p4, v0

    aput v4, v3, v0

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    aget v4, p5, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p7, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_2

    aget v0, p2, v2

    aget v3, p2, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    aget v0, p3, v2

    aget v3, p3, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    aget v0, p4, v2

    aget v3, p4, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    aget v0, p2, v1

    aget v3, p2, v2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    aget v0, p3, v1

    aget v1, p3, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    :goto_2
    iput-boolean v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    aget v0, p2, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    aget v0, p3, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    aget v0, p4, v2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    goto :goto_2
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method public getMultiTouchAngle()F
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    :goto_0
    iput-boolean v4, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    :cond_0
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    return v0

    :cond_1
    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    aget v0, v0, v4

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v4

    iget-object v3, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    goto :goto_0
.end method

.method public getMultiTouchDiameter()F
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v1, :cond_2

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    :cond_1
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getMultiTouchDiameterSq()F

    move-result v1

    cmpl-float v2, v1, v0

    if-nez v2, :cond_4

    :goto_1
    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    :cond_3
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    goto :goto_0

    :cond_4
    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->julery_isqrt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public getMultiTouchDiameterSq()F
    .locals 3

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    iget v2, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    :cond_0
    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchHeight()F
    .locals 1

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchWidth()F
    .locals 1

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumTouchPoints()I
    .locals 1

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    return v0
.end method

.method public getPointerIds()[I
    .locals 1

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    return v0
.end method

.method public getPressures()[F
    .locals 1

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    return v0
.end method

.method public getXs()[F
    .locals 1

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    return-object v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    return v0
.end method

.method public getYs()[F
    .locals 1

    iget-object v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    return-object v0
.end method

.method public isDown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    return v0
.end method

.method public isMultiTouch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    return v0
.end method

.method public set(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V
    .locals 3

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->numPoints:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v0

    aput v2, v1, v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->ys:[F

    aget v2, v2, v0

    aput v2, v1, v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressures:[F

    aget v2, v2, v0

    aput v2, v1, v0

    iget-object v1, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    iget-object v2, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pointerIds:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->xMid:F

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->yMid:F

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->pressureMid:F

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dx:F

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->dy:F

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameter:F

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSq:F

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angle:F

    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isDown:Z

    iget v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    iput v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->action:I

    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->isMultiTouch:Z

    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    iget-boolean v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iget-wide v0, p1, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    iput-wide v0, p0, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->eventTime:J

    return-void
.end method
