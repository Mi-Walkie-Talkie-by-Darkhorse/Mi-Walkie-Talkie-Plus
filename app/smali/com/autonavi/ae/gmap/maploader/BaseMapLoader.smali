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
            "Ljava/util/List<",
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    .line 6
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    .line 7
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    const/16 v1, 0x7800

    .line 8
    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    const/16 v1, 0x2800

    .line 9
    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticyExt:I

    .line 10
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isReceivedHeader:Z

    .line 11
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z

    .line 12
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z

    .line 13
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    .line 14
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    .line 15
    iput p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    return-void
.end method

.method private generateQueryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    .line 3
    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "&key="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->sortReEncoderParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/amap/api/col/l3/fz;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&ts="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&scode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v1, p2}, Lcom/amap/api/col/l3/fz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized onConnectionOver()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedVersion()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    .line 6
    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    .line 7
    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 8
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    .line 10
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v3, v3, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->removeTile(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :catch_1
    :cond_1
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->downLoadOver(I)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onConnectionReceivedData([BI)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    add-int v2, v1, p2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 2
    :try_start_0
    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticyExt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    .line 3
    new-array v0, v0, [B

    .line 4
    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    return-void

    .line 7
    :catch_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    return-void

    .line 8
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 9
    iget p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    .line 10
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isNeedReturn()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 11
    :cond_1
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isReceivedHeader:Z

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataHeader()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataByType()V

    return-void

    .line 14
    :catch_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    return-void

    .line 15
    :catch_3
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    return-void
.end method

.method private sortReEncoderParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "&"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 5
    invoke-direct {p0, v6}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->strReEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method private strReEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "AbstractProtocalHandler"

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "utf-8"

    .line 1
    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "strReEncoderException"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "strReEncoder"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method protected abstract addRequestHeader(Ljava/net/HttpURLConnection;)V
.end method

.method public addRequestTiles(Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized doCancel()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    .line 3
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doRequest()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isRequestValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getMapAddress()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getMapServerPath()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getGridParams()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v2}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->getRequestParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    if-eqz v2, :cond_3

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&csid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "csid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->generateQueryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x3ef

    const/16 v4, 0xa

    const/16 v5, 0x3ed

    .line 18
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_4

    .line 20
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 v6, 0x4e20

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 22
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 23
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->addRequestHeader(Ljava/net/HttpURLConnection;)V

    .line 24
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 28
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 29
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 30
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v7, "User-Agent"

    iget-object v8, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v8, v8, Lcom/autonavi/ae/gmap/GLMapEngine;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "utf-8"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 34
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 35
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 36
    :goto_1
    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isInRequest:Z

    .line 37
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 38
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processHttpResponse(Ljava/net/HttpURLConnection;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 39
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    return-void

    .line 40
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    .line 41
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOpened()V

    .line 42
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 43
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_9

    .line 44
    iget-boolean v6, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v6, :cond_9

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionReceivedData([BI)V

    goto :goto_2

    .line 46
    :cond_7
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    if-ne v0, v4, :cond_8

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->switchFloorFailed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    invoke-virtual {p0, v3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    goto :goto_3

    :cond_8
    const/16 v0, 0x3ea

    .line 49
    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 51
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 52
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    .line 53
    :catch_1
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    nop

    .line 54
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 55
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 56
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void

    .line 57
    :catch_4
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    :catch_5
    nop

    .line 58
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 59
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 60
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_6
    return-void

    .line 61
    :catch_7
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    :catch_8
    nop

    .line 62
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 63
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 64
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9

    :catch_9
    return-void

    .line 65
    :catch_a
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    .line 66
    :catch_b
    :try_start_6
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 68
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 69
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_c

    :catch_c
    return-void

    .line 70
    :catch_d
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    .line 71
    :catch_e
    :try_start_8
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    if-ne v0, v4, :cond_a

    .line 72
    move-object v0, p0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->switchFloorFailed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 73
    invoke-virtual {p0, v3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 74
    :cond_a
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 75
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 76
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_f

    :catch_f
    return-void

    .line 77
    :catch_10
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    .line 78
    :goto_4
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_b

    .line 79
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v1, :cond_b

    .line 80
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_12

    goto :goto_5

    .line 81
    :catch_11
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    .line 82
    :catch_12
    :cond_b
    :goto_5
    throw v0

    :catch_13
    nop

    .line 83
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 84
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 85
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_14

    :catch_14
    return-void

    .line 86
    :catch_15
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    :catch_16
    nop

    .line 87
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 88
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 89
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_18
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_17

    :catch_17
    return-void

    .line 90
    :catch_18
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    return-void

    :catch_19
    nop

    .line 91
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onConnectionOver()V

    if-eqz v2, :cond_c

    .line 92
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_c

    .line 93
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1a

    :catch_1a
    return-void

    .line 94
    :catch_1b
    invoke-virtual {p0, v5}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->onException(I)V

    :cond_c
    return-void

    .line 95
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    :cond_e
    :goto_7
    return-void
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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mapdataver=6&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&aetraffic=8"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&key="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amap/api/col/l3/y;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    :cond_0
    return-object p1
.end method

.method public declared-synchronized hasFinished()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isContainIllegal(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract isNeedReturn()Z
.end method

.method public abstract isRequestValid()Z
.end method

.method protected onConnectionOpened()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mCapaticy:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    .line 3
    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    .line 4
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isReceivedHeader:Z

    return-void
.end method

.method public onException(I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isCanceled:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    const/16 v3, 0x3ec

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->onException(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {v0, v2, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->onException(II)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {v0, v2, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->onException(II)V

    .line 7
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    const/16 v5, 0x1389

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->downLoadOver(I)V

    .line 9
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isFinished:Z

    return-void
.end method

.method protected processHttpResponse(Ljava/net/HttpURLConnection;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected processReceivedData()V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    if-lt v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v0, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V

    return-void

    .line 5
    :cond_0
    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    if-lt v3, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v0, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    .line 7
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v1, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileData([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 9
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    invoke-direct {v4, v5, v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 10
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x80

    new-array v4, v4, [B

    .line 12
    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_2

    .line 13
    invoke-virtual {v1, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, v2, v3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileData([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    if-eqz v1, :cond_3

    .line 18
    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    .line 19
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    .line 20
    iput v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected abstract processReceivedDataByType()V
.end method

.method protected abstract processReceivedDataHeader()Z
.end method

.method protected processReceivedDataV4()V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    if-lt v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V

    return-void

    .line 5
    :cond_0
    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    if-lt v3, v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    invoke-virtual {p0, v3, v2, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileDataV4([BII)V

    .line 7
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataBuffer:[B

    if-eqz v0, :cond_1

    .line 8
    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    sub-int/2addr v3, v2

    invoke-static {v0, v2, v0, v1, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    .line 9
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mReceivedDataSize:I

    .line 10
    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mNextImgDataLength:I

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected processReceivedTileData([BII)V
    .locals 11

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1
    :try_start_0
    aget-byte v0, p1, v0

    const-string v2, ""

    const/4 v3, 0x1

    if-lez v0, :cond_0

    add-int v4, v1, v0

    sub-int/2addr v4, v3

    if-ge v4, p3, :cond_0

    .line 2
    new-instance v2, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v2, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_3

    if-gt p3, p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    sub-int v8, p3, p2

    iget v9, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v4 .. v10}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z

    .line 5
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget p2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result p1

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget p2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    iget-object p3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result p1

    xor-int/2addr v3, p1

    :cond_2
    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected processReceivedTileDataV4([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    add-int v3, v1, v0

    sub-int/2addr v3, v2

    if-ge v3, p3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-gt p3, p2, :cond_2

    return-void

    :cond_2
    sub-int v7, p3, p2

    .line 4
    iget v8, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->putMapData([BIIIILjava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget p2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    invoke-virtual {p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result p1

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 7
    iget-object p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget p2, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    iget-object p3, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mMapTiles:Ljava/util/List;

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result p1

    xor-int/2addr v2, p1

    :cond_3
    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    :cond_4
    return-void
.end method

.method protected abstract processReceivedVersion()V
.end method

.method protected processReceivedVersionData([BII)V
    .locals 8

    if-lez p3, :cond_4

    .line 1
    :try_start_0
    array-length p2, p1

    if-gt p3, p2, :cond_4

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-static {p1, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x8

    .line 4
    invoke-static {p1, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    const/16 v1, 0xc

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    if-ge v1, p3, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 6
    aget-byte v1, p1, v1

    if-lez v1, :cond_3

    add-int v5, v4, v1

    if-ge v5, p3, :cond_3

    .line 7
    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, p1, v4, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 8
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v5, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mEngineID:I

    const/4 v3, 0x0

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->mDataSource:I

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected putMapData([BIIIILjava/lang/String;)V
    .locals 7

    .line 1
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

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isGetRequestMethod:Z

    return-void
.end method
