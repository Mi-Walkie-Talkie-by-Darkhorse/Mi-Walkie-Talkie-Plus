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
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;IZ)V

    .line 2
    sget-object p1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createGLOverlay(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeAddRouteName(J)V

    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0

    .line 1
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
    .locals 16

    move-object/from16 v0, p3

    if-eqz v0, :cond_1

    .line 1
    iget v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mX1:F

    iget v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mY1:F

    iget v5, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mX2:F

    iget v6, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mY2:F

    iget v7, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mGLStart:F

    iget v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mTextureLen:F

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsTextureInfo(JFFFFFF)V

    .line 2
    iget-boolean v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isUseCap:Z

    if-eqz v1, :cond_0

    .line 3
    iget v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapX1:F

    iget v5, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapY1:F

    iget v6, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapX2:F

    iget v7, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mCapY2:F

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsCapTextureInfo(JFFFF)V

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->euRouteTexture:Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty$EAMapRouteTexture;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mLineWidth:I

    mul-int/lit8 v5, v1, 0x4

    iget v6, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mFilledColor:I

    iget v7, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mBgColor:I

    iget v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mFilledResId:I

    iget v9, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->mBgResId:I

    move-wide/from16 v2, p1

    .line 6
    invoke-static/range {v2 .. v9}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsWAC(JIIIIII)V

    .line 7
    iget-boolean v12, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isLineExtract:Z

    iget-boolean v13, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isUseColor:Z

    iget-boolean v14, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isUseCap:Z

    iget-boolean v15, v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;->isCanCovered:Z

    move-wide/from16 v10, p1

    invoke-static/range {v10 .. v15}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeSetRouteParamsBool(JZZZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addRouteItem(I[Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;ZJIZ)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    .line 1
    iget-wide v2, v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    array-length v2, v1

    .line 3
    new-array v11, v2, [J

    const/4 v12, 0x0

    const/4 v3, 0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 4
    invoke-static {}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeCreateRouteParams()J

    move-result-wide v4

    aput-wide v4, v11, v3

    .line 5
    aget-wide v4, v11, v3

    aget-object v6, v1, v3

    invoke-direct {p0, v4, v5, v6}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->setRouteColorWithParams(JLcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_2
    iget-wide v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    move v5, p1

    move-object v6, v11

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeAddRouteItem(JI[JIJI)V

    :goto_2
    if-ge v12, v2, :cond_3

    .line 7
    aget-wide v3, v11, v12

    invoke-static {v3, v4}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->nativeDestoryRouteParams(J)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 8
    :cond_3
    iget-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v2, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$1;

    move/from16 v3, p7

    invoke-direct {v2, p0, v3}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$1;-><init>(Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;Z)V

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public removeRouteName(Z)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v1, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay$2;-><init>(Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;Z)V

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
