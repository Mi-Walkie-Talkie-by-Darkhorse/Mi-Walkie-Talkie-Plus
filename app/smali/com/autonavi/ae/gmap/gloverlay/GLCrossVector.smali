.class public Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;
.super Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;
.source "GLCrossVector.java"


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
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    sget-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_VECTOR:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createGLOverlay(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    return-void
.end method

.method private copy2Inter([IILcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;)I
    .locals 4

    const/4 v3, 0x0

    iget v0, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->nCount:I

    iget-object v1, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->xs:[I

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    iget-object v2, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->ys:[I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v0

    iget-object v2, p3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->zs:[I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    return v0
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

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorCar(JIII)V

    return-void
.end method

.method public addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;[Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;I)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1f

    new-array v4, v0, [I

    iget v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterX:I

    aput v0, v4, v2

    const/4 v0, 0x2

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterY:I

    aput v3, v4, v1

    const/4 v3, 0x3

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v4, v0

    const/4 v0, 0x4

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aput v5, v4, v3

    const/4 v3, 0x5

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v4, v0

    const/4 v0, 0x6

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v4, v3

    const/4 v3, 0x7

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v4, v0

    const/16 v0, 0x8

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aput v5, v4, v3

    const/16 v3, 0x9

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v4, v0

    const/16 v0, 0xa

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v4, v3

    const/16 v3, 0xb

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nAngle:I

    aput v5, v4, v0

    const/16 v0, 0xc

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v4, v3

    const/16 v3, 0xd

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aput v5, v4, v0

    const/16 v0, 0xe

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v4, v3

    const/16 v3, 0xf

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v4, v0

    const/16 v0, 0x10

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaColor:I

    aput v5, v4, v3

    const/16 v3, 0x11

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    aput v5, v4, v0

    const/16 v0, 0x12

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    aput v5, v4, v3

    const/16 v3, 0x13

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportBorderWidth:I

    aput v5, v4, v0

    const/16 v0, 0x14

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    aput v5, v4, v3

    const/16 v3, 0x15

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowBorderWidth:I

    aput v5, v4, v0

    const/16 v0, 0x16

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowBorderColor:I

    aput v5, v4, v3

    const/16 v3, 0x17

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    aput v5, v4, v0

    const/16 v0, 0x18

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    aput v5, v4, v3

    const/16 v3, 0x19

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportLineWidth:I

    aput v5, v4, v0

    const/16 v0, 0x1a

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportLineColor:I

    aput v5, v4, v3

    const/16 v3, 0x1b

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fDashLineWidth:I

    aput v5, v4, v0

    const/16 v0, 0x1c

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stDashLineColor:I

    aput v5, v4, v3

    const/16 v3, 0x1d

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowLineWidth:I

    aput v5, v4, v0

    const/16 v5, 0x1e

    iget v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowLineColor:I

    aput v0, v4, v3

    iget-boolean v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    aput v0, v4, v5

    move v0, v2

    move v3, v1

    :goto_2
    if-ge v0, p3, :cond_3

    aget-object v5, p2, v0

    iget v5, v5, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->nCount:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    new-array v0, v3, [I

    aput p3, v0, v2

    :goto_3
    if-ge v2, p3, :cond_4

    aget-object v3, p2, v2

    add-int/lit8 v5, v1, 0x1

    iget-object v6, v3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->stAttr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

    iget v6, v6, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->nRoadClass:I

    aput v6, v0, v1

    add-int/lit8 v1, v5, 0x1

    iget-object v6, v3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->stAttr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

    iget v6, v6, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->nFormway:I

    aput v6, v0, v5

    add-int/lit8 v5, v1, 0x1

    iget-object v6, v3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->stAttr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

    iget v6, v6, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->IsRoute:I

    aput v6, v0, v1

    add-int/lit8 v1, v5, 0x1

    iget-object v6, v3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->stAttr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;

    iget v6, v6, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLinkAttr;->IsExitLink:I

    aput v6, v0, v5

    add-int/lit8 v5, v1, 0x1

    iget v6, v3, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;->nCount:I

    aput v6, v0, v1

    invoke-direct {p0, v0, v5, v3}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->copy2Inter([IILcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossLink;)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v2, v3, v4, v0}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorItem(J[I[I)V

    goto/16 :goto_0
.end method

.method public addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;[BI)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v0, 0x1f

    new-array v3, v0, [I

    iget v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterX:I

    aput v0, v3, v2

    const/4 v0, 0x2

    iget v4, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterY:I

    aput v4, v3, v1

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v3, v0

    const/4 v0, 0x4

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v3, v0

    const/4 v0, 0x6

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v3, v0

    const/16 v0, 0x8

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v3, v0

    const/16 v0, 0xa

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v3, v4

    const/16 v4, 0xb

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nAngle:I

    aput v5, v3, v0

    const/16 v0, 0xc

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v3, v4

    const/16 v4, 0xd

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aput v5, v3, v0

    const/16 v0, 0xe

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v3, v4

    const/16 v4, 0xf

    iget-object v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v3, v0

    const/16 v0, 0x10

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaColor:I

    aput v5, v3, v4

    const/16 v4, 0x11

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    aput v5, v3, v0

    const/16 v0, 0x12

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    aput v5, v3, v4

    const/16 v4, 0x13

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportBorderWidth:I

    aput v5, v3, v0

    const/16 v0, 0x14

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    aput v5, v3, v4

    const/16 v4, 0x15

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowBorderWidth:I

    aput v5, v3, v0

    const/16 v0, 0x16

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowBorderColor:I

    aput v5, v3, v4

    const/16 v4, 0x17

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    aput v5, v3, v0

    const/16 v0, 0x18

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    aput v5, v3, v4

    const/16 v4, 0x19

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportLineWidth:I

    aput v5, v3, v0

    const/16 v0, 0x1a

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportLineColor:I

    aput v5, v3, v4

    const/16 v4, 0x1b

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fDashLineWidth:I

    aput v5, v3, v0

    const/16 v0, 0x1c

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stDashLineColor:I

    aput v5, v3, v4

    const/16 v4, 0x1d

    iget v5, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowLineWidth:I

    aput v5, v3, v0

    const/16 v5, 0x1e

    iget v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowLineColor:I

    aput v0, v3, v4

    iget-boolean v0, p1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    aput v0, v3, v5

    iget-wide v4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v4, v5, v3, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorData(J[I[B)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public addVectorRemainDis(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeAddVectorRemainDis(JI)V

    return-void
.end method

.method public setArrowResId(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetArrowResId(JZI)V

    return-void
.end method

.method public setCarResId(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetCarResId(JI)V

    return-void
.end method

.method public setRoadResId(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetRoadResId(JZI)V

    return-void
.end method

.method public setSkyResId(ZI)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->nativeSetSkyResId(JZI)V

    return-void
.end method
