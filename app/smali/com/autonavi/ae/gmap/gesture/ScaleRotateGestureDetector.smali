.class public Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;
.super Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;
.source "ScaleRotateGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;)V

    return-void
.end method


# virtual methods
.method public getRotationDegreesDelta()F
    .locals 6

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getPreviousSpanY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getPreviousSpanX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getCurrentSpanY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getCurrentSpanX()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
