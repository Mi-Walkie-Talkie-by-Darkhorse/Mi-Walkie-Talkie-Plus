.class public Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;
.super Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;
.source "IndoorMapLoader.java"


# static fields
.field private static final AM_INVALID_FLOOR:I = -0x270f

.field private static final INDOOR_CHANNEL:Ljava/lang/String; = "amap7"

.field private static final INDOOR_SIGN_KEY:Ljava/lang/String; = "@1071a2a4e3gte2Uc32cY3a98Tf33H1c4Gc23f"


# direct methods
.method public constructor <init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;-><init>(I)V

    iput-object p2, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mDataSource:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mCreateTime:J

    return-void
.end method

.method private getIndoorMD5Params(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amap7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@1071a2a4e3gte2Uc32cY3a98Tf33H1c4Gc23f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLMD5Util;->getStringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndoorRequestParams()Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, ";"

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    iget v8, v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorIndex:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    iget v0, v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorVersion:I

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-super {p0, v7}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isContainIllegal(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7}, Lcom/autonavi/ae/gmap/utils/GLMapUtil;->isAssic(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v4, "from=AMAP_ENGINE_INDOOR_V4&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "poiid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sign="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->getIndoorMD5Params(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "language=zh_CN&output=bin&channel=amap7&servicetype=unify&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomlevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mEngineID:I

    invoke-virtual {v2, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    move-object v2, v3

    goto/16 :goto_2
.end method

.method private processReceivedIndoorData()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v0, v5}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt2([BI)I

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->processReceivedIndoorData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    invoke-virtual {p0, v0, v5, v1}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->processReceivedIndoorTileDataV4([BII)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    iget v4, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    iput v5, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->processReceivedIndoorData()V

    goto :goto_0
.end method


# virtual methods
.method protected addRequestHeader(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "platform"

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getGridParams()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->getIndoorRequestParams()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMapAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapIndoorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMapServerPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/ws/transfer/auth/map/indoor_maps/?"

    return-object v0
.end method

.method protected isNeedReturn()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mDataSource:I

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
    .locals 3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->isIndoorGridsInScreen(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method protected processHttpResponse(Ljava/net/HttpURLConnection;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mEngineID:I

    const/16 v2, 0x402

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method protected processReceivedDataByType()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->processReceivedIndoorData()V

    return-void
.end method

.method protected processReceivedDataHeader()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    const/4 v2, 0x6

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    iget-object v4, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    invoke-static {v3, v2, v4, v1, v5}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    :cond_0
    iput v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mNextImgDataLength:I

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->isReceivedHeader:Z

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->processReceivedIndoorData()V

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected processReceivedIndoorTileDataV4([BII)V
    .locals 10

    const/4 v7, 0x0

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v0, v3, 0x1

    :try_start_0
    aget-byte v1, p1, v3

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, ""

    if-lez v1, :cond_2

    add-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v2, p3, :cond_2

    new-instance v8, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v8, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :cond_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-le p3, v3, :cond_0

    invoke-static {p1, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getShort2([BI)S

    move-result v9

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mEngineID:I

    sub-int v4, p3, v3

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mDataSource:I

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mDataSource:I

    invoke-virtual {v1, v2, v0, v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->isIndoorGridInScreen(ILjava/lang/String;S)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_2

    :cond_4
    move-object v0, v8

    goto :goto_1
.end method

.method protected processReceivedVersion()V
    .locals 3

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mDataSource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataBuffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mReceivedDataSize:I

    invoke-super {p0, v0, v1, v2}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedVersionData([BII)V

    :cond_0
    return-void
.end method

.method public switchFloorFailed()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorVersion:I

    if-nez v4, :cond_0

    iget v0, v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mIndoorIndex:I

    const/16 v4, -0x270f

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
