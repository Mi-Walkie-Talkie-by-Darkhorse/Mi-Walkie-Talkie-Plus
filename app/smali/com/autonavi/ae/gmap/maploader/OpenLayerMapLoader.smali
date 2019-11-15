.class public Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;
.super Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;
.source "OpenLayerMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;
    }
.end annotation


# static fields
.field static final DATA_OPENLAYER_TYPEGEOMETRY:I = 0x11

.field private static g_arrLayerDownBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArrblayerid:[B

.field private mArrbsublayerid:[B

.field private mLayerid:I

.field private mStrGridParams:Ljava/lang/String;

.field private mStrPath:Ljava/lang/String;

.field private mStrSeverAdd:Ljava/lang/String;

.field private mSubLayerid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ILcom/autonavi/ae/gmap/GLMapEngine;Ljava/lang/String;III)V
    .locals 4

    const/16 v3, 0x3f

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;-><init>(I)V

    iput-object p2, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    const-string v0, "://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p4, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mDataSource:I

    const-string v1, "/"

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrSeverAdd:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrPath:Ljava/lang/String;

    :cond_1
    iput p5, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mLayerid:I

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mLayerid:I

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mArrblayerid:[B

    iput p6, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mSubLayerid:I

    invoke-static {p6}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->convertInt(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mArrbsublayerid:[B

    goto :goto_0
.end method

.method public static removeDownTile(ILjava/lang/String;)V
    .locals 3

    sget-object v2, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;

    iget v0, v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;->mSubLayerID:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;->mStrTile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected addRequestHeader(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method public createDownUrl([Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x11

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mDataSource:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    :goto_0
    const-string v2, "type=50&mapdataver=6&aetraffic=8&lyrtype=%d&id=%d&mesh="

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mSubLayerid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrGridParams:Ljava/lang/String;

    const-string v0, ""

    move v2, v3

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mSubLayerid:I

    aget-object v5, p1, v2

    invoke-virtual {p0, v4, v5}, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->isExistAndAdd(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->obtain()Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    move-result-object v4

    aget-object v5, p1, v2

    iget v6, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mDataSource:I

    invoke-virtual {v4, v5, v6, v3, v3}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;III)V

    iget-object v5, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrGridParams:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrGridParams:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_4

    :goto_2
    return v1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method protected downLoadOver(I)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mSubLayerid:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->removeDownTile(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getGridParams()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrGridParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&channel=amapapi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrGridParams:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrGridParams:Ljava/lang/String;

    return-object v0
.end method

.method protected getMapAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrSeverAdd:Ljava/lang/String;

    return-object v0
.end method

.method protected getMapServerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mStrPath:Ljava/lang/String;

    return-object v0
.end method

.method protected isExistAndAdd(ILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v3, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    monitor-enter v3

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;

    iget v0, v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;->mSubLayerID:I

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;->mStrTile:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;

    invoke-direct {v0, p0}, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;-><init>(Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;)V

    iput p1, v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;->mSubLayerID:I

    iput-object p2, v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader$DownTilesInfor;->mStrTile:Ljava/lang/String;

    sget-object v2, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->g_arrLayerDownBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isNeedReturn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRequestValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected processReceivedDataByType()V
    .locals 0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V

    return-void
.end method

.method protected processReceivedDataHeader()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataSize:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->doCancel()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x8

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataSize:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataSize:I

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataSize:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataBuffer:[B

    iget-object v4, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataBuffer:[B

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mReceivedDataSize:I

    invoke-static {v3, v2, v4, v0, v5}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    :cond_2
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mNextImgDataLength:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->isReceivedHeader:Z

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V

    move v0, v1

    goto :goto_0
.end method

.method protected processReceivedVersion()V
    .locals 0

    return-void
.end method

.method protected putMapData([BIIIILjava/lang/String;)V
    .locals 7

    const/4 v1, 0x4

    const/4 v3, 0x0

    add-int/lit8 v0, p3, 0x8

    new-array v2, v0, [B

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mArrblayerid:[B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mArrbsublayerid:[B

    invoke-static {v0, v3, v2, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mEngineID:I

    add-int/lit8 v4, p3, 0x8

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->resetRenderTime(I)V

    :cond_0
    return-void
.end method
