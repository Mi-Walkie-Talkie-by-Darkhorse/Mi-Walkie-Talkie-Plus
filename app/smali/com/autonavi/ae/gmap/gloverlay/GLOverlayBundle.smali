.class public Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;
.super Ljava/lang/Object;
.source "GLOverlayBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle$GLAmapFocusHits;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay",
        "<**>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mEngineID:I

.field mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private mNativeInstance:J

.field private final mOverlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mTextureCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mNativeInstance:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mEngineID:I

    iput-object p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getGlOverlayMgrPtr()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mNativeInstance:J

    return-void
.end method

.method public static IntClr2PVRClr([FI)V
    .locals 3

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v0, 0x2

    and-int/lit16 v1, p1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x3

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method private static native nativeAddGLOverlay(JJJ)V
.end method

.method private static native nativeClearAllGLOverlay(JZ)V
.end method

.method private static native nativeOnSingleTapLineOverlay(JII[J)Z
.end method

.method private static native nativeOnSingleTapPointOverlay(JII[J)Z
.end method

.method private static native nativeRemoveGLOverlay(JJ)V
.end method


# virtual methods
.method public addOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mNativeInstance:J

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->getGLOverlay()Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->getNativeInstatnce()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->getGLOverlay()Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->getCode()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->nativeAddGLOverlay(JJJ)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOverlayTextureItem(IIFFII)Z
    .locals 7

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;-><init>(IIFFII)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOverlayTextureItem(IIII)Z
    .locals 3

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;-><init>(IIII)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->clearFocus()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearOverlayTexture()V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cotainsOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOverlay(I)Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    monitor-enter v1

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOverlayCount()I
    .locals 2

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOverlayTextureItem(II)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;
    .locals 2

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mTextureCaches:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasOverlayTextureItem(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->nativeClearAllGLOverlay(JZ)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mNativeInstance:J

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->getGLOverlay()Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->getNativeInstatnce()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->nativeRemoveGLOverlay(JJ)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
