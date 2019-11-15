.class public Lorg/osmdroid/config/DefaultConfigurationProvider;
.super Ljava/lang/Object;
.source "DefaultConfigurationProvider.java"

# interfaces
.implements Lorg/osmdroid/config/IConfigurationProvider;


# instance fields
.field protected cacheMapTileCount:S

.field protected debugMapTileDownloader:Z

.field protected debugMapView:Z

.field protected debugMode:Z

.field protected debugTileProviders:Z

.field protected expirationAdder:J

.field protected expirationOverride:Ljava/lang/Long;

.field protected gpsWaitTime:J

.field protected httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

.field protected isMapViewHardwareAccelerated:Z

.field protected osmdroidBasePath:Ljava/io/File;

.field protected osmdroidTileCache:Ljava/io/File;

.field protected tileDownloadMaxQueueSize:S

.field protected tileDownloadThreads:S

.field protected tileFileSystemCacheMaxBytes:J

.field protected tileFileSystemCacheTrimBytes:J

.field protected tileFileSystemMaxQueueSize:S

.field protected tileFileSystemThreads:S

.field protected userAgentHttpHeader:Ljava/lang/String;

.field protected userAgentValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x28

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    iput-boolean v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    const-string v0, "osmdroid"

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    const-string v0, "User-Agent"

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    const/16 v0, 0x9

    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    const/16 v0, 0x8

    iput-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    iput-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    iput-short v3, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    const-wide/32 v0, 0x25800000

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    const-wide/32 v0, 0x1f400000

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osmdroid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v1

    const-string v2, "tiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCacheMapTileCount()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return v0
.end method

.method public getExpirationExtendedDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    return-wide v0
.end method

.method public getExpirationOverrideDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-object v0
.end method

.method public getGpsWaitTime()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-wide v0
.end method

.method public getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getOsmdroidBasePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-object v0
.end method

.method public getOsmdroidTileCache()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-object v0
.end method

.method public getTileDownloadMaxQueueSize()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return v0
.end method

.method public getTileDownloadThreads()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return v0
.end method

.method public getTileFileSystemCacheMaxBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-wide v0
.end method

.method public getTileFileSystemCacheTrimBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-wide v0
.end method

.method public getTileFileSystemMaxQueueSize()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return v0
.end method

.method public getTileFileSystemThreads()S
    .locals 1

    iget-short v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return v0
.end method

.method public getUserAgentHttpHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugMapTileDownloader()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return v0
.end method

.method public isDebugMapView()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return v0
.end method

.method public isDebugTileProviders()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return v0
.end method

.method public isMapViewHardwareAccelerated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 12

    const-wide/16 v4, -0x1

    const-wide v10, 0x3fee666666666666L    # 0.95

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    const/4 v3, 0x0

    const-string v0, "osmdroid.basePath"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/osmdroid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-object v1, v0

    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "osmdroid.basePath"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "osmdroid.cachePath"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/config/DefaultConfigurationProvider;->save(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v4

    add-long v6, v2, v0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    add-long v4, v2, v0

    long-to-double v4, v4

    mul-double/2addr v4, v10

    double-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    add-long/2addr v0, v2

    long-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheTrimBytes(J)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "osmdroid.basePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "osmdroid.cachePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    const-string v0, "osmdroid.DebugMode"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMode(Z)V

    const-string v0, "osmdroid.DebugDownloading"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapTileDownloader(Z)V

    const-string v0, "osmdroid.DebugMapView"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugMapView(Z)V

    const-string v0, "osmdroid.DebugTileProvider"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setDebugTileProviders(Z)V

    const-string v0, "osmdroid.HardwareAcceleration"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setMapViewHardwareAccelerated(Z)V

    const-string v0, "osmdroid.userAgentValue"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    const-string v0, "osmdroid.gpsWaitTime"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setGpsWaitTime(J)V

    const-string v0, "osmdroid.tileDownloadThreads"

    iget-short v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadThreads(S)V

    const-string v0, "osmdroid.tileFileSystemThreads"

    iget-short v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemThreads(S)V

    const-string v0, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileDownloadMaxQueueSize(S)V

    const-string v0, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemMaxQueueSize(S)V

    const-string v0, "osmdroid.ExpirationExtendedDuration"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setExpirationExtendedDuration(J)V

    const-string v0, "osmdroid.ExpirationOverride"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "osmdroid.ExpirationOverride"

    invoke-interface {p2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_3

    long-to-double v2, v0

    mul-double/2addr v2, v10

    double-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    long-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/config/DefaultConfigurationProvider;->setTileFileSystemCacheMaxBytes(J)V

    goto/16 :goto_1
.end method

.method public save(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "osmdroid.basePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidBasePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.cachePath"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.DebugMode"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMode()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.DebugDownloading"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapTileDownloader()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.DebugMapView"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugMapView()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.DebugTileProvider"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isDebugTileProviders()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.HardwareAcceleration"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.userAgentValue"

    invoke-virtual {p0}, Lorg/osmdroid/config/DefaultConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.gpsWaitTime"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.cacheMapTileCount"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.tileDownloadThreads"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.tileFileSystemThreads"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.tileDownloadMaxQueueSize"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.tileFileSystemMaxQueueSize"

    iget-short v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "osmdroid.ExpirationExtendedDuration"

    iget-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "osmdroid.ExpirationOverride"

    iget-object v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCacheMapTileCount(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->cacheMapTileCount:S

    return-void
.end method

.method public setDebugMapTileDownloader(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapTileDownloader:Z

    return-void
.end method

.method public setDebugMapView(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMapView:Z

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugMode:Z

    return-void
.end method

.method public setDebugTileProviders(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->debugTileProviders:Z

    return-void
.end method

.method public setExpirationExtendedDuration(J)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationAdder:J

    goto :goto_0
.end method

.method public setExpirationOverrideDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->expirationOverride:Ljava/lang/Long;

    return-void
.end method

.method public setGpsWaitTime(J)V
    .locals 1

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->gpsWaitTime:J

    return-void
.end method

.method public setHttpHeaderDateTimeFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->httpHeaderDateTimeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public setMapViewHardwareAccelerated(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->isMapViewHardwareAccelerated:Z

    return-void
.end method

.method public setOsmdroidBasePath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidBasePath:Ljava/io/File;

    return-void
.end method

.method public setOsmdroidTileCache(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->osmdroidTileCache:Ljava/io/File;

    return-void
.end method

.method public setTileDownloadMaxQueueSize(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadMaxQueueSize:S

    return-void
.end method

.method public setTileDownloadThreads(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileDownloadThreads:S

    return-void
.end method

.method public setTileFileSystemCacheMaxBytes(J)V
    .locals 1

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheMaxBytes:J

    return-void
.end method

.method public setTileFileSystemCacheTrimBytes(J)V
    .locals 1

    iput-wide p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemCacheTrimBytes:J

    return-void
.end method

.method public setTileFileSystemMaxQueueSize(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemMaxQueueSize:S

    return-void
.end method

.method public setTileFileSystemThreads(S)V
    .locals 0

    iput-short p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->tileFileSystemThreads:S

    return-void
.end method

.method public setUserAgentHttpHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentHttpHeader:Ljava/lang/String;

    return-void
.end method

.method public setUserAgentValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/config/DefaultConfigurationProvider;->userAgentValue:Ljava/lang/String;

    return-void
.end method
