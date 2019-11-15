.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;,
        Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    }
.end annotation


# instance fields
.field protected final mMapView:Lorg/osmdroid/views/MapView;

.field protected mPendingTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field protected final mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMapView:Lorg/osmdroid/views/MapView;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMapView:Lorg/osmdroid/views/MapView;

    return-void
.end method

.method public static getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;
    .locals 9

    const/4 v8, 0x1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, p1

    mul-double/2addr v2, v4

    shl-int v4, v8, p2

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    int-to-double v4, p0

    mul-double/2addr v2, v4

    shl-int v4, v8, p2

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v4

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4
.end method

.method public static getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMapTileFromCoordinates(DDI)Landroid/graphics/Point;
    .locals 12

    const/4 v10, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, p0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v2, p0, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    sub-double v0, v8, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    shl-int v2, v10, p4

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-double v2, p2, v6

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    shl-int v1, v10, p4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public cacheCapacity()J
    .locals 2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public cancelAllJobs()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public cleanAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;

    move-result-object v3

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public cleanAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;
    .locals 6

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CleaningTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public currentCacheUsage()J
    .locals 2

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public directorySize(Ljava/io/File;)J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->directorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;"
        }
    .end annotation

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public downloadAreaAsync(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;"
        }
    .end annotation

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;II)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
    .locals 8

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public downloadAreaAsync(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
    .locals 8

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ")",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Ljava/util/ArrayList;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public downloadAreaAsyncNoUI(Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/util/BoundingBox;IILorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;Z)V

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$DownloadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public extendedBoundsFromGeoPoints(Ljava/util/ArrayList;I)Lorg/osmdroid/util/BoundingBox;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Lorg/osmdroid/util/BoundingBox;"
        }
    .end annotation

    invoke-static {p1}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, 0x1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v8

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x1

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCoordinatesFromMapTile(III)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method

.method public getPendingJobs()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 13

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getFileName(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading Maptile from url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4

    const-string v1, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem downloading MapTile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " HTTP response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    :goto_2
    move v0, v2

    goto/16 :goto_0

    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationOverrideDuration()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    :cond_5
    :goto_3
    invoke-virtual {p2, v4}, Lorg/osmdroid/tileprovider/MapTile;->setExpires(Ljava/util/Date;)V

    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mTileWriter:Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    invoke-interface {v3, p1, p2, v5}, Lorg/osmdroid/tileprovider/modules/IFilesystemCache;->saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;Ljava/io/InputStream;)Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    :goto_4
    move v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_8
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    add-long/2addr v6, v8

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v3, "Expires"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v3

    if-lez v3, :cond_5

    :try_start_9
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/util/Date;->setTime(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_a
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "OsmDroid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse expiration tag for tile, using default, server returned "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v5

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_5
    :try_start_b
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnknownHostException downloading MapTile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :goto_6
    move v0, v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v5, v3

    :goto_7
    :try_start_d
    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const-string v1, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tile not found: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :goto_8
    move v0, v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v5, v3

    :goto_9
    :try_start_f
    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const-string v1, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException downloading MapTile: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_10
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v5, v3

    :goto_a
    :try_start_11
    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    const-string v1, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error downloading MapTile: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v5, v3

    :goto_b
    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :try_start_13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    :goto_c
    throw v0

    :catch_7
    move-exception v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_6

    :catch_b
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v1

    goto :goto_c

    :catchall_1
    move-exception v1

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v5, v3

    move-object v3, v1

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_d
    move-exception v1

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catch_e
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catch_f
    move-exception v1

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_9

    :catch_10
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_9

    :catch_11
    move-exception v1

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_7

    :catch_12
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_7

    :catch_13
    move-exception v0

    move-object v1, v3

    goto/16 :goto_5

    :catch_14
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_5
.end method

.method public possibleTilesCovered(Ljava/util/ArrayList;II)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)I"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v2, 0x0

    move/from16 v6, p2

    :goto_0
    move/from16 v0, p3

    if-gt v6, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v3, v2

    move-object v9, v8

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v16

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v9, :cond_14

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    sub-double/2addr v4, v10

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    sub-double/2addr v10, v12

    div-double/2addr v4, v10

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    cmpl-double v2, v10, v12

    if-lez v2, :cond_7

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    sub-double v4, v10, v4

    move-wide v10, v4

    :goto_2
    new-instance v18, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v12, v13}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v12, v3

    :cond_0
    :goto_3
    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_10

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    :cond_2
    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_4

    :cond_3
    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v9}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_10

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    :cond_4
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v4, v4, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide v22, 0x415854a640000000L    # 6378137.0

    div-double v22, v16, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    const-wide v24, 0x415854a640000000L    # 6378137.0

    div-double v24, v16, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    const-wide v24, 0x415854a640000000L    # 6378137.0

    div-double v24, v16, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    const-wide v24, 0x415854a640000000L    # 6378137.0

    div-double v24, v16, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v2, v2, v26

    sub-double v2, v24, v2

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    add-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v4, v4, v20

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    div-double v4, v4, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_8

    const/4 v2, 0x0

    move v4, v2

    :goto_4
    iget v2, v3, Landroid/graphics/Point;->y:I

    if-ltz v2, :cond_9

    const/4 v2, 0x0

    move v5, v2

    :goto_5
    iget v2, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    move v7, v2

    :goto_6
    iget v2, v3, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    if-gt v7, v2, :cond_b

    iget v2, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v5

    move v12, v2

    :goto_7
    iget v2, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v5

    if-gt v12, v2, :cond_a

    new-instance v19, Landroid/graphics/Point;

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v12}, Landroid/graphics/Point;-><init>(II)V

    const/4 v13, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_8
    if-nez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_7

    :cond_7
    const-wide v10, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    sub-double v4, v10, v4

    move-wide v10, v4

    goto/16 :goto_2

    :cond_8
    iget v2, v3, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    move v4, v2

    goto :goto_4

    :cond_9
    iget v2, v3, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    move v5, v2

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6

    :cond_b
    move-object v12, v3

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v12

    iget v2, v12, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_d

    const/4 v2, 0x0

    :goto_9
    iget v3, v12, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_e

    const/4 v3, 0x0

    :goto_a
    iget v4, v12, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v2

    :goto_b
    iget v5, v12, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v2

    if-gt v4, v5, :cond_10

    iget v5, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v3

    :goto_c
    iget v7, v12, Landroid/graphics/Point;->y:I

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v3

    if-gt v5, v7, :cond_f

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    const/4 v9, 0x0

    invoke-virtual {v14, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_d
    iget v2, v12, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    goto :goto_9

    :cond_e
    iget v3, v12, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    goto :goto_a

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_10
    move-object v2, v12

    :goto_d
    move-object v3, v2

    move-object v9, v8

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v6, v6, 0x1

    move-object v2, v3

    move-object v8, v9

    goto/16 :goto_0

    :cond_12
    const-string v2, "OsmDroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Tiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    :cond_13
    move v2, v13

    goto/16 :goto_8

    :cond_14
    move-object v2, v3

    goto :goto_d
.end method

.method public possibleTilesInArea(Lorg/osmdroid/util/BoundingBox;II)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-gt p2, p3, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getMapTileFromCoordinates(DDI)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected zoomMessage(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling zoom level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
