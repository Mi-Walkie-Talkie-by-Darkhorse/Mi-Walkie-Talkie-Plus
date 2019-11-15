.class public Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;
.super Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;
.source "TmcMapLoader.java"


# instance fields
.field private mMd5Key:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMd5Key:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addRequestTiles(Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMapTiles:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMd5Key:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected processReceivedTileDataVTmc([BII)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    aget-byte v0, p1, v0

    add-int v2, v1, v0

    array-length v3, p1

    if-gt v2, v3, :cond_0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v4, p1, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p3, p2, :cond_0

    sub-int v0, p3, p2

    new-array v3, v0, [B

    const/4 v0, 0x0

    sub-int v1, p3, p2

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mEngineID:I

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mDataSource:I

    iget-object v5, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMd5Key:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapTMCData(II[BLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->doCancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1
.end method
