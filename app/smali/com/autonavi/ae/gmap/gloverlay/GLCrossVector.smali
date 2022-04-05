.class public Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;
.super Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;,
        Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;,
        Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    sget-object p1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_VECTOR:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createGLOverlay(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    return-void
.end method

.method private copy2Inter([IILcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;)I
    .locals 3

    iget v0, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->nCount:I

    iget-object v1, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->xs:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget-object v1, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->ys:[I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget-object p3, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->zs:[I

    invoke-static {p3, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    return p2
.end method

.method private static native nativeAddVectorCar(JIII)V
.end method

.method private static native nativeAddVectorData(J[I[B)I
.end method

.method private static native nativeAddVectorItem(J[I[I)V
.end method

.method private static native nativeAddVectorRemainDis(JI)V
.end method

.method private static native nativeSetArrowResId(JZI)V
.end method

.method private static native nativeSetCarResId(JI)V
.end method

.method private static native nativeSetRoadResId(JZI)V
.end method

.method private static native nativeSetSkyResId(JZI)V
.end method


# virtual methods
.method public addVectorCar(III)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorCar(JIII)V

    return-void
.end method

.method public addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;[Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;I)V
    .locals 8

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v0, 0x1f

    new-array v0, v0, [I

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterY:I

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    aput v5, v0, v1

    iget v1, v4, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x3

    aput v1, v0, v5

    const/4 v1, 0x4

    iget v6, v4, Landroid/graphics/Rect;->right:I

    aput v6, v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x5

    aput v1, v0, v4

    const/4 v1, 0x6

    iget-object v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    aput v7, v0, v1

    const/4 v1, 0x7

    iget v7, v6, Landroid/graphics/Rect;->top:I

    aput v7, v0, v1

    const/16 v1, 0x8

    iget v7, v6, Landroid/graphics/Rect;->right:I

    aput v7, v0, v1

    const/16 v1, 0x9

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aput v6, v0, v1

    const/16 v1, 0xa

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nAngle:I

    aput v6, v0, v1

    const/16 v1, 0xb

    iget-object v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    aput v7, v0, v1

    const/16 v1, 0xc

    iget v7, v6, Landroid/graphics/Rect;->top:I

    aput v7, v0, v1

    const/16 v1, 0xd

    iget v7, v6, Landroid/graphics/Rect;->right:I

    aput v7, v0, v1

    const/16 v1, 0xe

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aput v6, v0, v1

    const/16 v1, 0xf

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaColor:I

    aput v6, v0, v1

    const/16 v1, 0x10

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    aput v6, v0, v1

    const/16 v1, 0x11

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    aput v6, v0, v1

    const/16 v1, 0x12

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportBorderWidth:I

    aput v6, v0, v1

    const/16 v1, 0x13

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    aput v6, v0, v1

    const/16 v1, 0x14

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowBorderWidth:I

    aput v6, v0, v1

    const/16 v1, 0x15

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowBorderColor:I

    aput v6, v0, v1

    const/16 v1, 0x16

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    aput v6, v0, v1

    const/16 v1, 0x17

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    aput v6, v0, v1

    const/16 v1, 0x18

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportLineWidth:I

    aput v6, v0, v1

    const/16 v1, 0x19

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportLineColor:I

    aput v6, v0, v1

    const/16 v1, 0x1a

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fDashLineWidth:I

    aput v6, v0, v1

    const/16 v1, 0x1b

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stDashLineColor:I

    aput v6, v0, v1

    const/16 v1, 0x1c

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowLineWidth:I

    aput v6, v0, v1

    const/16 v1, 0x1d

    iget v6, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowLineColor:I

    aput v6, v0, v1

    const/16 v1, 0x1e

    iget-boolean p1, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    aput p1, v0, v1

    const/4 p1, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge p1, p3, :cond_1

    aget-object v6, p2, p1

    iget v6, v6, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->nCount:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    add-int/2addr v1, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput p3, p1, v2

    :goto_1
    if-ge v2, p3, :cond_2

    aget-object v1, p2, v2

    add-int/lit8 v4, v3, 0x1

    iget-object v5, v1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->stAttr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

    iget v6, v5, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->nRoadClass:I

    aput v6, p1, v3

    add-int/lit8 v3, v4, 0x1

    iget v6, v5, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->nFormway:I

    aput v6, p1, v4

    add-int/lit8 v4, v3, 0x1

    iget v6, v5, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->IsRoute:I

    aput v6, p1, v3

    add-int/lit8 v3, v4, 0x1

    iget v5, v5, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->IsExitLink:I

    aput v5, p1, v4

    add-int/lit8 v4, v3, 0x1

    iget v5, v1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->nCount:I

    aput v5, p1, v3

    invoke-direct {p0, p1, v4, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->copy2Inter([IILcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;)I

    move-result v1

    add-int v3, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-wide p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {p2, p3, v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorItem(J[I[I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;[BI)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p3, 0x1f

    new-array p3, p3, [I

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterX:I

    aput v1, p3, v0

    iget v1, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterY:I

    const/4 v2, 0x1

    aput v1, p3, v2

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    aput v4, p3, v1

    const/4 v1, 0x3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    aput v4, p3, v1

    const/4 v1, 0x4

    iget v4, v3, Landroid/graphics/Rect;->right:I

    aput v4, p3, v1

    const/4 v1, 0x5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    aput v3, p3, v1

    const/4 v1, 0x6

    iget-object v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    aput v4, p3, v1

    const/4 v1, 0x7

    iget v4, v3, Landroid/graphics/Rect;->top:I

    aput v4, p3, v1

    const/16 v1, 0x8

    iget v4, v3, Landroid/graphics/Rect;->right:I

    aput v4, p3, v1

    const/16 v1, 0x9

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    aput v3, p3, v1

    const/16 v1, 0xa

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nAngle:I

    aput v3, p3, v1

    const/16 v1, 0xb

    iget-object v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    aput v4, p3, v1

    const/16 v1, 0xc

    iget v4, v3, Landroid/graphics/Rect;->top:I

    aput v4, p3, v1

    const/16 v1, 0xd

    iget v4, v3, Landroid/graphics/Rect;->right:I

    aput v4, p3, v1

    const/16 v1, 0xe

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    aput v3, p3, v1

    const/16 v1, 0xf

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaColor:I

    aput v3, p3, v1

    const/16 v1, 0x10

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    aput v3, p3, v1

    const/16 v1, 0x11

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    aput v3, p3, v1

    const/16 v1, 0x12

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportBorderWidth:I

    aput v3, p3, v1

    const/16 v1, 0x13

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    aput v3, p3, v1

    const/16 v1, 0x14

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowBorderWidth:I

    aput v3, p3, v1

    const/16 v1, 0x15

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowBorderColor:I

    aput v3, p3, v1

    const/16 v1, 0x16

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    aput v3, p3, v1

    const/16 v1, 0x17

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    aput v3, p3, v1

    const/16 v1, 0x18

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportLineWidth:I

    aput v3, p3, v1

    const/16 v1, 0x19

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportLineColor:I

    aput v3, p3, v1

    const/16 v1, 0x1a

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fDashLineWidth:I

    aput v3, p3, v1

    const/16 v1, 0x1b

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stDashLineColor:I

    aput v3, p3, v1

    const/16 v1, 0x1c

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowLineWidth:I

    aput v3, p3, v1

    const/16 v1, 0x1d

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowLineColor:I

    aput v3, p3, v1

    const/16 v1, 0x1e

    iget-boolean p1, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    aput p1, p3, v1

    iget-wide v3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v3, v4, p3, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorData(J[I[B)I

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method public addVectorRemainDis(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorRemainDis(JI)V

    return-void
.end method

.method public setArrowResId(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetArrowResId(JZI)V

    return-void
.end method

.method public setCarResId(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetCarResId(JI)V

    return-void
.end method

.method public setRoadResId(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetRoadResId(JZI)V

    return-void
.end method

.method public setSkyResId(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetSkyResId(JZI)V

    return-void
.end method
