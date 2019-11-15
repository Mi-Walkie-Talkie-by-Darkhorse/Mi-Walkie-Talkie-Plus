.class public Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;
.super Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;
.source "GLNaviOverlay.java"


# instance fields
.field mBearing:I

.field mPx:I

.field mPy:I


# direct methods
.method public constructor <init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    sget-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_NAVI:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createGLOverlay(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    return-void
.end method

.method static synthetic access$000(JIIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetArcInfo(JIIII)V

    return-void
.end method

.method private static native nativeGetCarPoistionInfo(J)[I
.end method

.method private static native nativeSetArcColorsAndAngles(JIIIII)V
.end method

.method private static native nativeSetArcInfo(JIIII)V
.end method

.method private static native nativeSetCarAnimationTime(JI)V
.end method

.method private static native nativeSetCarPosition(JIIII)V
.end method

.method private static native nativeSetDirIndicatorAngle(JI)V
.end method

.method private static native nativeSetEndPoint(JII)V
.end method

.method private static native nativeSetNaviEndLine(JIII)V
.end method

.method private static native nativeSetNaviTextures(JIIIII)V
.end method


# virtual methods
.method public SetNaviTexture(IIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    move v2, p5

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetNaviTextures(JIIIII)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mEngineID:I

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    invoke-static {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->destoryOverlay(IJ)V

    :cond_0
    return-void
.end method

.method public getCarAngle()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mBearing:I

    return v0
.end method

.method public getCarPosition()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mPx:I

    iget v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mPy:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public setArcColorsAndAngles(IIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetArcColorsAndAngles(JIIIII)V

    return-void
.end method

.method public setArcInfo(IIII)V
    .locals 7

    iget-object v6, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay$1;-><init>(Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;IIII)V

    invoke-interface {v6, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCarAnimationTime(I)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetCarAnimationTime(JI)V

    :cond_0
    return-void
.end method

.method public setCarPosition(III)V
    .locals 6

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetCarPosition(JIIII)V

    :cond_0
    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mPx:I

    iput p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mPy:I

    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mBearing:I

    return-void
.end method

.method public setDirIndicatorAngle(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetDirIndicatorAngle(JI)V

    return-void
.end method

.method public setEndLineTexture(III)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p3, p2, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetNaviEndLine(JIII)V

    return-void
.end method

.method public setEndPoint(II)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLNaviOverlay;->nativeSetEndPoint(JII)V

    return-void
.end method
