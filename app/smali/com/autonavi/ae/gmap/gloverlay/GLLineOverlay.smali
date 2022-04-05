.class public Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;
.super Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;
    }
.end annotation


# instance fields
.field private mBgColor:I

.field private mBgResID:I

.field private mCanCovered:Z


# direct methods
.method public constructor <init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->mBgResID:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->mBgColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->mCanCovered:Z

    sget-object p1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_POLYLINE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createGLOverlay(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->mBgResID:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->mBgColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->mCanCovered:Z

    return-void
.end method

.method public static CheckRepeat(I)Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;
    .locals 5

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;-><init>()V

    const/16 v1, 0xbb8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    iput-boolean v2, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    goto :goto_0

    :cond_0
    if-ge p0, v1, :cond_1

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    goto :goto_0

    :cond_1
    const/16 v1, 0xbbb

    if-ge p0, v1, :cond_2

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    iput-boolean v2, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_3

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    iput-boolean v2, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    goto :goto_0

    :cond_3
    const/16 v4, 0xbc2

    if-le v4, p0, :cond_4

    if-le p0, v1, :cond_4

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    iput-boolean v2, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    goto :goto_0

    :cond_4
    const/16 v1, 0x2710

    if-lt p0, v4, :cond_5

    if-ge p0, v1, :cond_5

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    iput-boolean v2, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    goto :goto_0

    :cond_5
    if-lt p0, v1, :cond_6

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_genMimps:Z

    iput-boolean v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay$TextureGenedInfo;->m_isRepeat:Z

    :cond_6
    :goto_0
    return-object v0
.end method

.method private addLineItem([Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;IIIIIZ)V
    .locals 10

    move-object v9, p0

    iget-boolean v8, v9, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->mCanCovered:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->addLineItem([Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;IIIIIZZ)V

    return-void
.end method

.method private doAddLineItem([Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;IIIIIZZZ)V
    .locals 13

    move-object v10, p0

    move-object v0, p1

    iget-wide v1, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    new-array v5, v1, [I

    new-array v6, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    iget v3, v3, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->x:I

    aput v3, v5, v2

    aget-object v3, v0, v2

    iget v3, v3, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->y:I

    aput v3, v6, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeCreatePolyLineParams()J

    move-result-wide v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, v11

    invoke-static/range {v3 .. v8}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsPoints(J[I[I[I[I)V

    move-object v0, p0

    move-wide v1, v11

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->setLineColorWithParams(JIIIIIZZ)V

    iget-wide v0, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, v11, v12}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeAddPolylineItem(JJ)V

    invoke-static {v11, v12}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeDestoryPolyLineParams(J)V

    const/4 v0, 0x1

    move/from16 v1, p9

    if-ne v0, v1, :cond_4

    iget-object v0, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    :cond_4
    return-void
.end method

.method private doAddLineItemWithLonLat([IIIIIIZZZ)V
    .locals 13

    move-object v10, p0

    invoke-static {}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeCreatePolyLineParams()J

    move-result-wide v11

    move-object v0, p1

    invoke-static {v11, v12, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsPointsWithLonLat(J[I)V

    move-object v0, p0

    move-wide v1, v11

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->setLineColorWithParams(JIIIIIZZ)V

    iget-wide v0, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, v11, v12}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeAddPolylineItem(JJ)V

    invoke-static {v11, v12}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeDestoryPolyLineParams(J)V

    const/4 v0, 0x1

    move/from16 v1, p9

    if-ne v0, v1, :cond_0

    iget-object v0, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    :cond_0
    return-void
.end method

.method private doAddLineItemWithP20([I[IIIIIIZZZ)V
    .locals 17

    move-object/from16 v10, p0

    iget-wide v0, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-void

    :cond_1
    move-object/from16 v2, p2

    array-length v3, v2

    if-eq v1, v3, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeCreatePolyLineParams()J

    move-result-wide v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v11, v8

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v11 .. v16}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsPoints(J[I[I[I[I)V

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->setLineColorWithParams(JIIIIIZZ)V

    iget-wide v0, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, v11, v12}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeAddPolylineItem(JJ)V

    invoke-static {v11, v12}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeDestoryPolyLineParams(J)V

    const/4 v0, 0x1

    move/from16 v1, p10

    if-ne v0, v1, :cond_3

    iget-object v0, v10, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    :cond_3
    return-void
.end method

.method private static native nativeAddPolylineItem(JJ)V
.end method

.method protected static native nativeCreatePolyLineParams()J
.end method

.method protected static native nativeDestoryPolyLineParams(J)V
.end method

.method private static native nativeSetPolyLineParamsBool(JZZZZ)V
.end method

.method private static native nativeSetPolyLineParamsCapTextureInfo(JFFFF)V
.end method

.method private static native nativeSetPolyLineParamsPoints(J[I[I[I[I)V
.end method

.method private static native nativeSetPolyLineParamsPointsWithLonLat(J[I)V
.end method

.method private static native nativeSetPolyLineParamsTextureInfo(JFFFFFF)V
.end method

.method private static native nativeSetPolyLineParamsWAC(JIIIII)V
.end method


# virtual methods
.method public addLineItem(Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;)V
    .locals 8

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mGeoPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    new-array v4, v0, [I

    new-array v5, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mGeoPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    aget-object v6, v3, v2

    if-eqz v6, :cond_2

    aget-object v6, v3, v2

    iget v6, v6, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->x:I

    aput v6, v4, v2

    aget-object v3, v3, v2

    iget v3, v3, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->y:I

    aput v3, v5, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mPassPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    new-array v2, v0, [I

    new-array v3, v0, [I

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mPassPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    aget-object v7, v6, v1

    iget v7, v7, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->x:I

    aput v7, v2, v1

    aget-object v6, v6, v1

    iget v6, v6, Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;->y:I

    aput v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v6, v2

    move-object v7, v3

    goto :goto_2

    :cond_5
    move-object v6, v2

    move-object v7, v6

    :goto_2
    invoke-static {}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeCreatePolyLineParams()J

    move-result-wide v0

    move-wide v2, v0

    invoke-static/range {v2 .. v7}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsPoints(J[I[I[I[I)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->setLineColorWithParams(JLcom/autonavi/ae/gmap/gloverlay/GLLineProperty;)V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v2, v3, v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeAddPolylineItem(JJ)V

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeDestoryPolyLineParams(J)V

    iget-boolean p1, p1, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->isRefreshMap:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->requestRender()V

    :cond_6
    :goto_3
    return-void
.end method

.method public addLineItem([Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;IIIIIZZ)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->doAddLineItem([Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;IIIIIZZZ)V

    return-void
.end method

.method public addLineItem([Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;IIIIIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->doAddLineItem([Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;IIIIIZZZ)V

    return-void
.end method

.method public addLineItemWithLonLat([IIIIIIZZ)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->doAddLineItemWithLonLat([IIIIIIZZZ)V

    return-void
.end method

.method public addLineItemWithLonLat([IIIIIIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->doAddLineItemWithLonLat([IIIIIIZZZ)V

    return-void
.end method

.method public addLineItemWithP20([I[IIIIIIZZ)V
    .locals 11

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->doAddLineItemWithP20([I[IIIIIIZZZ)V

    return-void
.end method

.method public addLineItemWithP20([I[IIIIIIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->doAddLineItemWithP20([I[IIIIIIZZZ)V

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mEngineID:I

    invoke-static {v2, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->destoryOverlay(IJ)V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->finalize()V

    return-void
.end method

.method protected setLineColorWithParams(JIIIIIZZ)V
    .locals 20

    move/from16 v5, p5

    mul-int/lit8 v0, p4, 0x4

    int-to-float v0, v0

    const/16 v1, 0xbb8

    if-eq v5, v1, :cond_6

    const/16 v2, 0xbea

    if-ne v5, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ge v5, v1, :cond_1

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/high16 v13, 0x42000000    # 32.0f

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v13}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsTextureInfo(JFFFFFF)V

    const/16 v16, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f400000    # 0.75f

    move-wide/from16 v14, p1

    invoke-static/range {v14 .. v19}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsCapTextureInfo(JFFFF)V

    float-to-int v2, v0

    move-wide/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsWAC(JIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move/from16 p3, p8

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, p9

    invoke-static/range {p1 .. p6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsBool(JZZZZ)V

    return-void

    :cond_1
    const/16 v1, 0xbbb

    if-ge v5, v1, :cond_2

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42800000    # 64.0f

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v13}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsTextureInfo(JFFFFFF)V

    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v17, 0x3e800000    # 0.25f

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f19999a    # 0.6f

    move-wide/from16 v14, p1

    invoke-static/range {v14 .. v19}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsCapTextureInfo(JFFFF)V

    float-to-int v2, v0

    move-wide/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsWAC(JIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move/from16 p3, p8

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, p9

    invoke-static/range {p1 .. p6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsBool(JZZZZ)V

    return-void

    :cond_2
    if-ne v5, v1, :cond_3

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42800000    # 64.0f

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v13}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsTextureInfo(JFFFFFF)V

    float-to-int v2, v0

    move-wide/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsWAC(JIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move/from16 p3, p8

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, p9

    invoke-static/range {p1 .. p6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsBool(JZZZZ)V

    return-void

    :cond_3
    const/16 v2, 0xbc2

    if-le v2, v5, :cond_4

    if-le v5, v1, :cond_4

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42800000    # 64.0f

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v13}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsTextureInfo(JFFFFFF)V

    float-to-int v2, v0

    move-wide/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsWAC(JIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move/from16 p3, p8

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, p9

    invoke-static/range {p1 .. p6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsBool(JZZZZ)V

    return-void

    :cond_4
    if-lt v5, v2, :cond_5

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42000000    # 32.0f

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v13}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsTextureInfo(JFFFFFF)V

    float-to-int v2, v0

    move-wide/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsWAC(JIIIII)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move/from16 p3, p8

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, p9

    invoke-static/range {p1 .. p6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsBool(JZZZZ)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const v8, 0x3d4ccccd    # 0.05f

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3f733333    # 0.95f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/high16 v13, 0x42000000    # 32.0f

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v13}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsTextureInfo(JFFFFFF)V

    const v16, 0x3d4ccccd    # 0.05f

    const/high16 v17, 0x3f000000    # 0.5f

    const v18, 0x3f733333    # 0.95f

    const/high16 v19, 0x3f400000    # 0.75f

    move-wide/from16 v14, p1

    invoke-static/range {v14 .. v19}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsCapTextureInfo(JFFFF)V

    float-to-int v2, v0

    move-wide/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsWAC(JIIIII)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    move/from16 p3, p8

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, p9

    invoke-static/range {p1 .. p6}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsBool(JZZZZ)V

    return-void
.end method

.method protected setLineColorWithParams(JLcom/autonavi/ae/gmap/gloverlay/GLLineProperty;)V
    .locals 15

    move-object/from16 v0, p3

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mX1:F

    iget v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mY1:F

    iget v5, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mX2:F

    iget v6, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mY2:F

    iget v7, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mGLStart:F

    iget v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mTextureLen:F

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsTextureInfo(JFFFFFF)V

    iget-boolean v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->isUseCap:Z

    if-eqz v1, :cond_0

    iget v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mCapX1:F

    iget v5, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mCapY1:F

    iget v6, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mCapX2:F

    iget v7, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mCapY2:F

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsCapTextureInfo(JFFFF)V

    :cond_0
    iget v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mLineWidth:I

    mul-int/lit8 v4, v1, 0x4

    iget v5, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mFilledColor:I

    iget v6, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mBgColor:I

    iget v7, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mFilledResId:I

    iget v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mBgResId:I

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsWAC(JIIIII)V

    iget-boolean v11, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->isLineExtract:Z

    iget-boolean v12, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->isUseColor:Z

    iget-boolean v13, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->isUseCap:Z

    iget-boolean v14, v0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->isCanCovered:Z

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lcom/autonavi/ae/gmap/gloverlay/GLLineOverlay;->nativeSetPolyLineParamsBool(JZZZZ)V

    :cond_1
    return-void
.end method
