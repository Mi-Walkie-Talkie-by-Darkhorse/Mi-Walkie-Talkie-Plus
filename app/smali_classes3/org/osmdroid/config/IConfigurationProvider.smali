.class public interface abstract Lorg/osmdroid/config/IConfigurationProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCacheMapTileCount()S
.end method

.method public abstract getExpirationExtendedDuration()J
.end method

.method public abstract getExpirationOverrideDuration()Ljava/lang/Long;
.end method

.method public abstract getGpsWaitTime()J
.end method

.method public abstract getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;
.end method

.method public abstract getOsmdroidBasePath()Ljava/io/File;
.end method

.method public abstract getOsmdroidTileCache()Ljava/io/File;
.end method

.method public abstract getTileDownloadMaxQueueSize()S
.end method

.method public abstract getTileDownloadThreads()S
.end method

.method public abstract getTileFileSystemCacheMaxBytes()J
.end method

.method public abstract getTileFileSystemCacheTrimBytes()J
.end method

.method public abstract getTileFileSystemMaxQueueSize()S
.end method

.method public abstract getTileFileSystemThreads()S
.end method

.method public abstract getUserAgentHttpHeader()Ljava/lang/String;
.end method

.method public abstract getUserAgentValue()Ljava/lang/String;
.end method

.method public abstract isDebugMapTileDownloader()Z
.end method

.method public abstract isDebugMapView()Z
.end method

.method public abstract isDebugMode()Z
.end method

.method public abstract isDebugTileProviders()Z
.end method

.method public abstract isMapViewHardwareAccelerated()Z
.end method

.method public abstract load(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end method

.method public abstract save(Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end method

.method public abstract setCacheMapTileCount(S)V
.end method

.method public abstract setDebugMapTileDownloader(Z)V
.end method

.method public abstract setDebugMapView(Z)V
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract setDebugTileProviders(Z)V
.end method

.method public abstract setExpirationExtendedDuration(J)V
.end method

.method public abstract setExpirationOverrideDuration(Ljava/lang/Long;)V
.end method

.method public abstract setGpsWaitTime(J)V
.end method

.method public abstract setHttpHeaderDateTimeFormat(Ljava/text/SimpleDateFormat;)V
.end method

.method public abstract setMapViewHardwareAccelerated(Z)V
.end method

.method public abstract setOsmdroidBasePath(Ljava/io/File;)V
.end method

.method public abstract setOsmdroidTileCache(Ljava/io/File;)V
.end method

.method public abstract setTileDownloadMaxQueueSize(S)V
.end method

.method public abstract setTileDownloadThreads(S)V
.end method

.method public abstract setTileFileSystemCacheMaxBytes(J)V
.end method

.method public abstract setTileFileSystemCacheTrimBytes(J)V
.end method

.method public abstract setTileFileSystemMaxQueueSize(S)V
.end method

.method public abstract setTileFileSystemThreads(S)V
.end method

.method public abstract setUserAgentHttpHeader(Ljava/lang/String;)V
.end method

.method public abstract setUserAgentValue(Ljava/lang/String;)V
.end method
