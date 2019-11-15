.class public Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;
.super Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;
.source "HeatMapLoader.java"


# instance fields
.field private mMapHeatPoiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapHeatPoiId:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mDataSource:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mCreateTime:J

    return-void
.end method


# virtual methods
.method protected addRequestHeader(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method protected getGridParams()Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ";"

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-super {p0, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isContainIllegal(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLMapUtil;->isAssic(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_3
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&channel=amapapi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp=1&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&poiid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapHeatPoiId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected getMapAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapSvrAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMapServerPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/ws/mps/hot/?"

    return-object v0
.end method

.method protected isNeedReturn()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mDataSource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestValid()Z
    .locals 4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    return v0
.end method

.method protected processReceivedDataByType()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V

    return-void
.end method

.method protected processReceivedDataHeader()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataSize:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->doCancel()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x8

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataSize:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataSize:I

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataSize:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataBuffer:[B

    iget-object v4, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataBuffer:[B

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataSize:I

    invoke-static {v3, v2, v4, v0, v5}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    :cond_2
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mNextImgDataLength:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->isReceivedHeader:Z

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V

    move v0, v1

    goto :goto_0
.end method

.method protected processReceivedTileData([BII)V
    .locals 0

    if-nez p2, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileData([BII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->processReceivedTileDataBmp([BII)V

    goto :goto_0
.end method

.method protected processReceivedTileDataBmp([BII)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    aget-byte v2, p1, v0

    const-string v0, ""

    if-lez v2, :cond_4

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v9, v0

    :goto_0
    add-int v0, v1, v2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt p3, p2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mEngineID:I

    sub-int v4, p3, p2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapHeatPoiId:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapHeatData(I[BIIILjava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    :goto_2
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2

    :cond_3
    move v0, v7

    goto :goto_2

    :cond_4
    move-object v9, v0

    goto :goto_0
.end method

.method protected processReceivedVersion()V
    .locals 3

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mDataSource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataBuffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mReceivedDataSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->processReceivedVersionData([BII)V

    :cond_0
    return-void
.end method

.method public setMapHeatPoiId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->mMapHeatPoiId:Ljava/lang/String;

    return-void
.end method
