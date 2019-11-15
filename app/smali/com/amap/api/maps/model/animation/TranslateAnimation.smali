.class public Lcom/amap/api/maps/model/animation/TranslateAnimation;
.super Lcom/amap/api/maps/model/animation/Animation;
.source "TranslateAnimation.java"


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/maps/model/animation/Animation;-><init>()V

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    invoke-direct {v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/animation/TranslateAnimation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method


# virtual methods
.method public setDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/animation/TranslateAnimation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/animation/TranslateAnimation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
