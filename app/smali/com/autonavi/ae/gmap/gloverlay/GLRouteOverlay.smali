.class public Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;
.super Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;
.source "GLRouteOverlay.java"


# static fields
.field public static final AMAPOVERLAY_ROUTE_CHARGE:I = 0x1

.field public static final AMAPOVERLAY_ROUTE_CIMMUTE:I = 0x3

.field public static final AMAPOVERLAY_ROUTE_LIMIT:I = 0x2

.field public static final AMAPOVERLAY_ROUTE_NORMAL:I = 0x0

.field public static final AMAPOVERLAY_ROUTE_WRONG:I = 0x4


# direct methods
.method public constructor <init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;IZ)V

    sget-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createGLOverlay(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mNativeInstance:J

    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeAddRouteName(J)V

    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeRemoveRouteName(J)V

    return-void
.end method

.method private static native nativeAddRouteItem(JI[JIJI)V
.end method

.method private static native nativeAddRouteName(J)V
.end method

.method private static native nativeCreateRouteData(J)J
.end method

.method private static native nativeCreateRouteParams()J
.end method

.method private static native nativeDestoryRouteData(J)V
.end method

.method private static native nativeDestoryRouteParams(J)V
.end method

.method private static native nativeRemoveRouteName(J)V
.end method

.method private static native nativeSetRouteParamsBool(JZZZZ)V
.end method

.method private static native nativeSetRouteParamsCapTextureInfo(JFFFF)V
.end method

.method private static native nativeSetRouteParamsTextureInfo(JFFFFFF)V
.end method

.method private static native nativeSetRouteParamsWAC(JIIIIII)V
.end method

.method private setRouteColorWithParams(JLcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;)V
    .locals 9

    if-eqz p3, :cond_1

    iget v2, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mX1:F

    iget v3, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mY1:F

    iget v4, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mX2:F

    iget v5, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mY2:F

    iget v6, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mGLStart:F

    iget v7, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mTextureLen:F

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsTextureInfo(JFFFFFF)V

    iget-boolean v0, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isUseCap:Z

    if-eqz v0, :cond_0

    iget v2, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapX1:F

    iget v3, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapY1:F

    iget v4, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapX2:F

    iget v5, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapY2:F

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsCapTextureInfo(JFFFF)V

    :cond_0
    iget-object v0, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->euRouteTexture:Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty$EAMapRouteTexture;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty$EAMapRouteTexture;->ordinal()I

    move-result v2

    iget v0, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mLineWidth:I

    mul-int/lit8 v3, v0, 0x4

    iget v4, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mFilledColor:I

    iget v5, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mBgColor:I

    iget v6, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mFilledResId:I

    iget v7, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mBgResId:I

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsWAC(JIIIIII)V

    iget-boolean v2, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isLineExtract:Z

    iget-boolean v3, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isUseColor:Z

    iget-boolean v4, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isUseCap:Z

    iget-boolean v5, p3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isCanCovered:Z

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsBool(JZZZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addRouteItem(I[Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;ZJIZ)V
    .locals 12

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mNativeInstance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v10, p2

    new-array v5, v10, [J

    const/4 v6, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    const/4 v6, 0x1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_3

    invoke-static {}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeCreateRouteParams()J

    move-result-wide v8

    aput-wide v8, v5, v2

    aget-wide v8, v5, v2

    aget-object v3, p2, v2

    invoke-direct {p0, v8, v9, v3}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->setRouteColorWithParams(JLcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mNativeInstance:J

    move v4, p1

    move-wide/from16 v7, p4

    move/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeAddRouteItem(JI[JIJI)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_4

    aget-wide v6, v5, v2

    invoke-static {v6, v7}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeDestoryRouteParams(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v3, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$1;

    move/from16 v0, p7

    invoke-direct {v3, p0, v0}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$1;-><init>(Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;Z)V

    invoke-interface {v2, v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeRouteName(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v1, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;-><init>(Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;Z)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
