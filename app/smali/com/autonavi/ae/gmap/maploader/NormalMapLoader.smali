.class public Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;
.super Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;
.source "NormalMapLoader.java"


# instance fields
.field private mMapLevel:I

.field private mMapMode:I

.field private mMapModeState:I


# direct methods
.method public constructor <init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;-><init>(I)V

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapLevel:I

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapMode:I

    iput v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapModeState:I

    iput-object p2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mCreateTime:J

    return-void
.end method


# virtual methods
.method protected addRequestHeader(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method protected getGridParams()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, ";"

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, v3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isContainIllegal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/autonavi/ae/gmap/utils/GLMapUtil;->isAssic(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "utf-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    return-object v4

    :cond_3
    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v0, v4

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&channel=amapapi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=2&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->getMapParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=20&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->getMapParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=11&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->getMapParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=1&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->getMapParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=4&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->getMapParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=40&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->getMapParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t=BMPBM&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->getMapParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v=6.0.0&bver=2&mesh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&diu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/dm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t=VMMV3&type=mod&cp=0&mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_6
    move-object v0, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMapAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapSvrAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapParams()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMapServerPath()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "/ws/mps/rtt?"

    goto :goto_0

    :pswitch_2
    const-string v0, "/ws/mps/smap?"

    goto :goto_0

    :pswitch_3
    const-string v0, "/ws/mps/vmap?"

    goto :goto_0

    :pswitch_4
    const-string v0, "/amapsrv/MPS?"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected isNeedReturn()Z
    .locals 2

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

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

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    return v0
.end method

.method protected processReceivedDataByType()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected processReceivedDataHeader()Z
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataSize:I

    if-le v2, v7, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataBuffer:[B

    invoke-static {v3, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->doCancel()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x8

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataSize:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataSize:I

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataSize:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataBuffer:[B

    iget-object v4, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataBuffer:[B

    const/4 v5, 0x0

    iget v6, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataSize:I

    invoke-static {v3, v2, v4, v5, v6}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->moveArray([BI[BII)V

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mNextImgDataLength:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->isReceivedHeader:Z

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    if-eq v2, v8, :cond_3

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedDataV4()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected processReceivedModels([BII)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    add-int/lit8 v0, p2, 0x1

    :try_start_0
    aget-byte v1, p1, p2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v9, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p3, p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    sub-int v4, p3, p2

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    :goto_1
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_1
.end method

.method protected processReceivedTileData([BII)V
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileData([BII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->processReceivedTileDataBmp([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->processReceivedTileDataVTmc([BII)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->processReceivedModels([BII)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedTileData([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

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

    if-lez v2, :cond_5

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_5

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v9, v0

    :goto_0
    add-int v0, v1, v2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt p3, p2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    sub-int v4, p3, p2

    iget v5, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapData(I[BIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_3

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

    :cond_3
    move v0, v8

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_2

    :cond_5
    move-object v9, v0

    goto :goto_0
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

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p3, p2, :cond_0

    sub-int v0, p3, p2

    new-array v3, v0, [B

    const/4 v0, 0x0

    sub-int v1, p3, p2

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapEngine;->putMapTMCData(II[BLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->GetCurrentGrideNameLen(I)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapTiles:Ljava/util/List;

    iget v3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridsInScreen(ILjava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V
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

.method protected processReceivedVersion()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mDataSource:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataBuffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mReceivedDataSize:I

    invoke-super {p0, v0, v1, v2}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->processReceivedVersionData([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMapParams(III)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapLevel:I

    iput p2, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapMode:I

    iput p3, p0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->mMapModeState:I

    return-void
.end method
