.class public abstract Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;
.super Ljava/lang/Object;
.source "BaseMapOverlay.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEngineID:I

.field protected mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mItemList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected mLastFocusedIndex:I

.field protected mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mEngineID:I

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mEngineID:I

    iput-object p2, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->iniGLOverlay()V

    return-void
.end method


# virtual methods
.method public abstract addItem(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public clear()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->clearFocus()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->removeAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mLastFocusedIndex:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->clearFocus()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->releaseInstance()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getGLOverlay()Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected abstract iniGLOverlay()V
.end method

.method public isClickable()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->isClickable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->getGLOverlay()Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMaploaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->removeGLOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->getGLOverlay()Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->releaseInstance()V

    :cond_1
    return-void
.end method

.method public removeAll()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->clear()Z

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mLastFocusedIndex:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mLastFocusedIndex:I

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->clearFocus()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeItem(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mItemList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->removeItem(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract resumeMarker(Landroid/graphics/Bitmap;)V
.end method

.method public setClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;->setVisible(Z)V

    :cond_0
    return-void
.end method
