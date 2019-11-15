package org.osmdroid.config;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.text.SimpleDateFormat;

public interface IConfigurationProvider {
    short getCacheMapTileCount();

    long getExpirationExtendedDuration();

    Long getExpirationOverrideDuration();

    long getGpsWaitTime();

    SimpleDateFormat getHttpHeaderDateTimeFormat();

    File getOsmdroidBasePath();

    File getOsmdroidTileCache();

    short getTileDownloadMaxQueueSize();

    short getTileDownloadThreads();

    long getTileFileSystemCacheMaxBytes();

    long getTileFileSystemCacheTrimBytes();

    short getTileFileSystemMaxQueueSize();

    short getTileFileSystemThreads();

    String getUserAgentHttpHeader();

    String getUserAgentValue();

    boolean isDebugMapTileDownloader();

    boolean isDebugMapView();

    boolean isDebugMode();

    boolean isDebugTileProviders();

    boolean isMapViewHardwareAccelerated();

    void load(Context context, SharedPreferences sharedPreferences);

    void save(Context context, SharedPreferences sharedPreferences);

    void setCacheMapTileCount(short s);

    void setDebugMapTileDownloader(boolean z);

    void setDebugMapView(boolean z);

    void setDebugMode(boolean z);

    void setDebugTileProviders(boolean z);

    void setExpirationExtendedDuration(long j);

    void setExpirationOverrideDuration(Long l);

    void setGpsWaitTime(long j);

    void setHttpHeaderDateTimeFormat(SimpleDateFormat simpleDateFormat);

    void setMapViewHardwareAccelerated(boolean z);

    void setOsmdroidBasePath(File file);

    void setOsmdroidTileCache(File file);

    void setTileDownloadMaxQueueSize(short s);

    void setTileDownloadThreads(short s);

    void setTileFileSystemCacheMaxBytes(long j);

    void setTileFileSystemCacheTrimBytes(long j);

    void setTileFileSystemMaxQueueSize(short s);

    void setTileFileSystemThreads(short s);

    void setUserAgentHttpHeader(String str);

    void setUserAgentValue(String str);
}
