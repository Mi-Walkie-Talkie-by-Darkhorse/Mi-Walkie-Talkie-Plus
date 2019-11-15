.class public Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;
.super Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;
.source "CrossVectorOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay",
        "<",
        "Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

.field mIndex:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    return-void
.end method


# virtual methods
.method public AddOverlayTexture(Landroid/graphics/Bitmap;II)V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;-><init>()V

    iput p2, v0, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iput p3, v0, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iput-object p1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->isGenMimps:Z

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    iget v2, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mEngineID:I

    invoke-interface {v1, v2, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V

    return-void
.end method

.method public addItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public dipToPixel(Landroid/content/Context;I)I
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return p2

    :cond_0
    const/4 v0, 0x1

    int-to-float v1, p2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected iniGLOverlay()V
    .locals 4

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;

    iget v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    return-void
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->releaseInstance()V

    return-void
.end method

.method public resumeMarker(Landroid/graphics/Bitmap;)V
    .locals 3

    const/16 v1, 0x3039

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->AddOverlayTexture(Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->setArrowResId(ZI)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->setCarResId(I)V

    return-void
.end method

.method public setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    return-void
.end method

.method public setData([B)V
    .locals 9

    const/16 v8, 0x16

    const/16 v7, 0x12

    const/16 v6, 0x5f

    const/16 v5, 0xff

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iput v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterX:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iput v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterY:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iput v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nAngle:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0xb

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    const/16 v1, 0xd9

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v8}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget v1, v1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportBorderWidth:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget v1, v1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v8}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowBorderWidth:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    const/16 v1, 0x32

    const/16 v2, 0x14

    invoke-static {v4, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowBorderColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v7}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    const/16 v1, 0x96

    const/16 v2, 0xaa

    const/16 v3, 0xc8

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget v1, v1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportLineWidth:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget v1, v1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportLineColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fDashLineWidth:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget v1, v1, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stDashLineColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v7}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->dipToPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowLineWidth:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    const/16 v1, 0xfd

    const/16 v2, 0x41

    invoke-static {v5, v5, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowLineColor:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iput-boolean v4, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;[BI)Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector;->setVisible(Z)V

    :cond_1
    return-void
.end method
