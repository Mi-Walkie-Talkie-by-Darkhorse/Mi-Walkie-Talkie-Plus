.class public Lcom/autonavi/ae/gmap/maploader/VMapDataCache;
.super Ljava/lang/Object;
.source "VMapDataCache.java"


# static fields
.field private static final MAXSIZE:I = 0x190

.field private static mMapDataCacheInstance:Lcom/autonavi/ae/gmap/maploader/VMapDataCache;


# instance fields
.field private mCancelMapDataHs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelMapDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapDataHs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMapDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/autonavi/ae/gmap/maploader/VMapDataCache;
    .locals 1

    sget-object v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataCacheInstance:Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;-><init>()V

    sput-object v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataCacheInstance:Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    :cond_0
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataCacheInstance:Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    return-object v0
.end method

.method private getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCancelRecoder(Ljava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget v1, v0, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mCreateTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecoder(Ljava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized putCancelRecoder([BLjava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getRecoder(Ljava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    invoke-direct {v1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;-><init>(Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mGridName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x190

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putRecoder([BLjava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    invoke-direct {v0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;-><init>(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mGridName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x190

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
