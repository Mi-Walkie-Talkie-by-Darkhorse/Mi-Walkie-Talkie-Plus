.class public Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;
.super Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;


# instance fields
.field private mMd5Key:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMd5Key:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addRequestTiles(Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMd5Key:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected processReceivedTileDataVTmc([BII)V
    .locals 10

    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    aget-byte v0, p1, v0

    add-int v2, v1, v0

    array-length v3, p1

    if-gt v2, v3, :cond_3

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v2, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_3

    if-gt p3, p2, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p3, p2

    new-array v7, p3, [B

    const/4 v0, 0x0

    invoke-static {p1, p2, v7, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    iget v6, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;->mMd5Key:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapTMCData(II[BLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget p2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget p2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    iget-object p3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result p1

    xor-int/2addr v3, p1

    :cond_2
    if-eqz v3, :cond_3

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
