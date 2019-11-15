.class public Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;
.super Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.source "GLTranslateAnimation.java"


# instance fields
.field public mCurXDelta:D

.field public mCurYDelta:D

.field public mFromXDelta:D

.field public mFromYDelta:D

.field public mToXDelta:D

.field public mToYDelta:D


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurXDelta:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurYDelta:D

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 6

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurXDelta:D

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurYDelta:D

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurXDelta:D

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurYDelta:D

    :cond_1
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurXDelta:D

    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mCurYDelta:D

    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    return-void
.end method

.method public setFromPoint(Lcom/amap/api/maps/model/LatLng;)V
    .locals 2

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    return-void
.end method
