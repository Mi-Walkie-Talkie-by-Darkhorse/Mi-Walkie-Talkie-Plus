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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelMapDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapDataHs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMapDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/autonavi/ae/gmap/maploader/VMapDataCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataCacheInstance:Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;-><init>()V

    sput-object v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataCacheInstance:Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    .line 3
    :cond_0
    sget-object v0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataCacheInstance:Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    return-object v0
.end method

.method private getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getCancelRecoder(Ljava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget p2, p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mCreateTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRecoder(Ljava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    if-eqz p1, :cond_0

    .line 2
    iget p2, p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mTimes:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized putCancelRecoder([BLjava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getRecoder(Ljava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    invoke-direct {p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;-><init>(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mGridName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 5
    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putRecoder([BLjava/lang/String;I)Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;

    invoke-direct {p1, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;-><init>(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p1, Lcom/autonavi/ae/gmap/maploader/VMapDataRecoder;->mGridName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mMapDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataHs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->mCancelMapDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
