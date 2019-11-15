.class public abstract Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;
.super Ljava/lang/Object;
.source "BaseMapLoader.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x4e20


# instance fields
.field protected volatile isCanceled:Z

.field protected volatile isFinished:Z

.field private isGetRequestMethod:Z

.field protected volatile isInRequest:Z

.field protected isReceivedHeader:Z

.field protected mCapaticy:I

.field protected mCapaticyExt:I

.field protected mCreateTime:J

.field protected mDataSource:I

.field protected mEngineID:I

.field protected mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

.field public mMapTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field protected mNextImgDataLength:I

.field protected mReceivedDataBuffer:[B

.field protected mReceivedDataSize:I

.field private mURLConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    const/16 v0, 0x7800

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    const/16 v0, 0x2800

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticyExt:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isReceivedHeader:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    iput p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    return-void
.end method

.method private declared-synchronized onConnectionOver()V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedVersion()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, v2, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->removeTile(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->downLoadOver(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private onConnectionReceivedData([BI)V
    .locals 5

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticyExt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isNeedReturn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isReceivedHeader:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataByType()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract addRequestHeader(Ljava/net/HttpURLConnection;)V
.end method

.method public addRequestTiles(Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized doCancel()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doRequest()V
    .locals 9

    const/16 v7, 0xa

    const/16 v6, 0x3ed

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isRequestValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getMapAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getMapServerPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getGridParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getRequestParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&csid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_e

    const/4 v1, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v4, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    :cond_5
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_6

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    :cond_6
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 v4, 0x4e20

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 v4, 0x4e20

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->addRequestHeader(Ljava/net/HttpURLConnection;)V

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processHttpResponse(Ljava/net/HttpURLConnection;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_15

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "csid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v5, v5, Lcom/autonavi/ae/gmap/GLMapEngine;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utf-8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_19

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOpened()V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    const/16 v2, 0x200

    :try_start_5
    new-array v2, v2, [B

    :goto_4
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_a

    iget-boolean v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_b

    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v2, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_17

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :cond_b
    :try_start_7
    invoke-direct {p0, v2, v3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionReceivedData([BI)V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v2, v1

    goto :goto_3

    :cond_c
    :try_start_8
    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    if-ne v1, v7, :cond_d

    move-object v0, p0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->switchFloorFailed()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    move-object v1, v2

    goto :goto_5

    :cond_d
    const/16 v1, 0x3ea

    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_e
    move-object v1, v2

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_6
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1b

    goto/16 :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :catch_7
    move-exception v1

    :goto_7
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1d

    goto/16 :goto_0

    :catch_8
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :catch_9
    move-exception v1

    :goto_8
    :try_start_b
    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    if-ne v1, v7, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->switchFloorFailed()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_f
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_1f

    goto/16 :goto_0

    :catch_a
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :catch_b
    move-exception v1

    :goto_9
    const/16 v1, 0x3ed

    :try_start_d
    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_21

    goto/16 :goto_0

    :catch_c
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :catch_d
    move-exception v1

    :goto_a
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_23

    goto/16 :goto_0

    :catch_e
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :catch_f
    move-exception v1

    :goto_b
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_25

    goto/16 :goto_0

    :catch_10
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :catch_11
    move-exception v1

    :goto_c
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_0

    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_27

    goto/16 :goto_0

    :catch_12
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :goto_d
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_10

    iget-boolean v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v3, :cond_10

    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_29

    :cond_10
    :goto_e
    throw v1

    :catch_13
    move-exception v2

    invoke-virtual {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto :goto_e

    :catch_14
    move-exception v1

    goto/16 :goto_0

    :catch_15
    move-exception v1

    goto/16 :goto_0

    :catch_16
    move-exception v1

    goto/16 :goto_0

    :catch_17
    move-exception v1

    goto/16 :goto_0

    :catch_18
    move-exception v1

    goto/16 :goto_0

    :catch_19
    move-exception v1

    goto/16 :goto_0

    :catch_1a
    move-exception v1

    goto/16 :goto_0

    :catch_1b
    move-exception v1

    goto/16 :goto_0

    :catch_1c
    move-exception v1

    goto/16 :goto_0

    :catch_1d
    move-exception v1

    goto/16 :goto_0

    :catch_1e
    move-exception v1

    goto/16 :goto_0

    :catch_1f
    move-exception v1

    goto/16 :goto_0

    :catch_20
    move-exception v1

    goto/16 :goto_0

    :catch_21
    move-exception v1

    goto/16 :goto_0

    :catch_22
    move-exception v1

    goto/16 :goto_0

    :catch_23
    move-exception v1

    goto/16 :goto_0

    :catch_24
    move-exception v1

    goto/16 :goto_0

    :catch_25
    move-exception v1

    goto/16 :goto_0

    :catch_26
    move-exception v1

    goto/16 :goto_0

    :catch_27
    move-exception v1

    goto/16 :goto_0

    :catch_28
    move-exception v2

    goto :goto_e

    :catch_29
    move-exception v2

    goto :goto_e

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_d

    :catch_2a
    move-exception v2

    move-object v2, v1

    goto :goto_c

    :catch_2b
    move-exception v2

    move-object v2, v1

    goto/16 :goto_b

    :catch_2c
    move-exception v2

    move-object v2, v1

    goto/16 :goto_a

    :catch_2d
    move-exception v2

    move-object v2, v1

    goto/16 :goto_9

    :catch_2e
    move-exception v2

    move-object v2, v1

    goto/16 :goto_8

    :catch_2f
    move-exception v2

    move-object v2, v1

    goto/16 :goto_7

    :catch_30
    move-exception v2

    move-object v2, v1

    goto/16 :goto_6
.end method

.method protected downLoadOver(I)V
    .locals 0

    return-void
.end method

.method protected abstract getGridParams()Ljava/lang/String;
.end method

.method protected abstract getMapAddress()Ljava/lang/String;
.end method

.method protected abstract getMapServerPath()Ljava/lang/String;
.end method

.method protected getRequestParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapdataver=6&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&aetraffic=8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized hasFinished()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isContainIllegal(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isNeedReturn()Z
.end method

.method public abstract isRequestValid()Z
.end method

.method protected onConnectionOpened()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isReceivedHeader:Z

    return-void
.end method

.method public onException(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    if-eq v0, v7, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->onException(II)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->downLoadOver(I)V

    iput-boolean v7, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->onException(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->onException(II)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    const/16 v2, 0x1389

    move v3, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_0
.end method

.method protected processHttpResponse(Ljava/net/HttpURLConnection;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected processReceivedData()V
    .locals 6

    const/16 v1, 0x8

    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/16 v2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v1, v2, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileData([BII)V

    :goto_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x80

    new-array v3, v3, [B

    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileData([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method protected abstract processReceivedDataByType()V
.end method

.method protected abstract processReceivedDataHeader()Z
.end method

.method protected processReceivedDataV4()V
    .locals 6

    const/16 v1, 0x8

    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/16 v1, 0x8

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileDataV4([BII)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected processReceivedTileData([BII)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

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

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt p3, p2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    sub-int v4, p3, p2

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V
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

.method protected processReceivedTileDataV4([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    const-string v6, ""

    if-lez v0, :cond_0

    add-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v2, p3, :cond_0

    new-instance v6, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v6, p1, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :cond_0
    add-int/2addr v0, v1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-le p3, p2, :cond_1

    sub-int v3, p3, p2

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->putMapData([BIIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v5, v7

    :cond_3
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1
.end method

.method protected abstract processReceivedVersion()V
.end method

.method protected processReceivedVersionData([BII)V
    .locals 9

    const/4 v0, 0x0

    if-lez p3, :cond_0

    :try_start_0
    array-length v1, p1

    if-gt p3, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    invoke-static {p1, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v4

    const/16 v2, 0xc

    const/4 v1, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    const-string v6, ""

    if-ge v3, p3, :cond_3

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    if-lez v3, :cond_3

    add-int v7, v6, v3

    if-ge v7, p3, :cond_3

    new-instance v7, Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-direct {v7, p1, v6, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    const/4 v3, 0x0

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected putMapData([BIIIILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z

    return-void
.end method

.method public setGetRequestMethod(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    return-void
.end method
