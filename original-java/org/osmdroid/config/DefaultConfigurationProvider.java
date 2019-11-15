package org.osmdroid.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;
import org.osmdroid.tileprovider.modules.SqlTileWriter;
import org.osmdroid.tileprovider.util.StorageUtils;

public class DefaultConfigurationProvider implements IConfigurationProvider {
    protected short cacheMapTileCount = 9;
    protected boolean debugMapTileDownloader = false;
    protected boolean debugMapView = false;
    protected boolean debugMode = false;
    protected boolean debugTileProviders = false;
    protected long expirationAdder = 0;
    protected Long expirationOverride = null;
    protected long gpsWaitTime = IPC.LogoutAsyncTellServerTimeout;
    protected SimpleDateFormat httpHeaderDateTimeFormat = new SimpleDateFormat(OpenStreetMapTileProviderConstants.HTTP_EXPIRES_HEADER_FORMAT, Locale.US);
    protected boolean isMapViewHardwareAccelerated = false;
    protected File osmdroidBasePath;
    protected File osmdroidTileCache;
    protected short tileDownloadMaxQueueSize = 40;
    protected short tileDownloadThreads = 2;
    protected long tileFileSystemCacheMaxBytes = 629145600;
    protected long tileFileSystemCacheTrimBytes = 524288000;
    protected short tileFileSystemMaxQueueSize = 40;
    protected short tileFileSystemThreads = 8;
    protected String userAgentHttpHeader = "User-Agent";
    protected String userAgentValue = "osmdroid";

    public DefaultConfigurationProvider() {
        try {
            this.osmdroidBasePath = new File(StorageUtils.getStorage().getAbsolutePath(), "osmdroid");
            this.osmdroidTileCache = new File(getOsmdroidBasePath(), "tiles");
            this.osmdroidBasePath.mkdirs();
            this.osmdroidTileCache.mkdirs();
        } catch (Exception e) {
        }
    }

    public long getGpsWaitTime() {
        return this.gpsWaitTime;
    }

    public void setGpsWaitTime(long j) {
        this.gpsWaitTime = j;
    }

    public boolean isDebugMode() {
        return this.debugMode;
    }

    public void setDebugMode(boolean z) {
        this.debugMode = z;
    }

    public boolean isDebugMapView() {
        return this.debugMapView;
    }

    public void setDebugMapView(boolean z) {
        this.debugMapView = z;
    }

    public boolean isDebugTileProviders() {
        return this.debugTileProviders;
    }

    public void setDebugTileProviders(boolean z) {
        this.debugTileProviders = z;
    }

    public boolean isDebugMapTileDownloader() {
        return this.debugMapTileDownloader;
    }

    public void setDebugMapTileDownloader(boolean z) {
        this.debugMapTileDownloader = z;
    }

    public boolean isMapViewHardwareAccelerated() {
        return this.isMapViewHardwareAccelerated;
    }

    public void setMapViewHardwareAccelerated(boolean z) {
        this.isMapViewHardwareAccelerated = z;
    }

    public String getUserAgentValue() {
        return this.userAgentValue;
    }

    public void setUserAgentValue(String str) {
        this.userAgentValue = str;
    }

    public short getCacheMapTileCount() {
        return this.cacheMapTileCount;
    }

    public void setCacheMapTileCount(short s) {
        this.cacheMapTileCount = s;
    }

    public short getTileDownloadThreads() {
        return this.tileDownloadThreads;
    }

    public void setTileDownloadThreads(short s) {
        this.tileDownloadThreads = s;
    }

    public short getTileFileSystemThreads() {
        return this.tileFileSystemThreads;
    }

    public void setTileFileSystemThreads(short s) {
        this.tileFileSystemThreads = s;
    }

    public short getTileDownloadMaxQueueSize() {
        return this.tileDownloadMaxQueueSize;
    }

    public void setTileDownloadMaxQueueSize(short s) {
        this.tileDownloadMaxQueueSize = s;
    }

    public short getTileFileSystemMaxQueueSize() {
        return this.tileFileSystemMaxQueueSize;
    }

    public void setTileFileSystemMaxQueueSize(short s) {
        this.tileFileSystemMaxQueueSize = s;
    }

    public long getTileFileSystemCacheMaxBytes() {
        return this.tileFileSystemCacheMaxBytes;
    }

    public void setTileFileSystemCacheMaxBytes(long j) {
        this.tileFileSystemCacheMaxBytes = j;
    }

    public long getTileFileSystemCacheTrimBytes() {
        return this.tileFileSystemCacheTrimBytes;
    }

    public void setTileFileSystemCacheTrimBytes(long j) {
        this.tileFileSystemCacheTrimBytes = j;
    }

    public SimpleDateFormat getHttpHeaderDateTimeFormat() {
        return this.httpHeaderDateTimeFormat;
    }

    public void setHttpHeaderDateTimeFormat(SimpleDateFormat simpleDateFormat) {
        this.httpHeaderDateTimeFormat = simpleDateFormat;
    }

    public File getOsmdroidBasePath() {
        return this.osmdroidBasePath;
    }

    public void setOsmdroidBasePath(File file) {
        this.osmdroidBasePath = file;
    }

    public File getOsmdroidTileCache() {
        return this.osmdroidTileCache;
    }

    public void setOsmdroidTileCache(File file) {
        this.osmdroidTileCache = file;
    }

    public String getUserAgentHttpHeader() {
        return this.userAgentHttpHeader;
    }

    public void setUserAgentHttpHeader(String str) {
        this.userAgentHttpHeader = str;
    }

    public void load(Context context, SharedPreferences sharedPreferences) {
        if (!sharedPreferences.contains("osmdroid.basePath")) {
            File osmdroidBasePath2 = getOsmdroidBasePath();
            File osmdroidTileCache2 = getOsmdroidTileCache();
            if (!osmdroidBasePath2.exists() || !StorageUtils.isWritable(osmdroidBasePath2)) {
                osmdroidTileCache2 = new File("/data/data/" + context.getPackageName() + "/osmdroid/");
                osmdroidTileCache2.mkdirs();
                osmdroidBasePath2 = osmdroidTileCache2;
            }
            Editor edit = sharedPreferences.edit();
            edit.putString("osmdroid.basePath", osmdroidBasePath2.getAbsolutePath());
            edit.putString("osmdroid.cachePath", osmdroidTileCache2.getAbsolutePath());
            edit.commit();
            setOsmdroidBasePath(osmdroidBasePath2);
            setOsmdroidTileCache(osmdroidTileCache2);
            setUserAgentValue(context.getPackageName());
            save(context, sharedPreferences);
        } else {
            setOsmdroidBasePath(new File(sharedPreferences.getString("osmdroid.basePath", getOsmdroidBasePath().getAbsolutePath())));
            setOsmdroidTileCache(new File(sharedPreferences.getString("osmdroid.cachePath", getOsmdroidTileCache().getAbsolutePath())));
            setDebugMode(sharedPreferences.getBoolean("osmdroid.DebugMode", false));
            setDebugMapTileDownloader(sharedPreferences.getBoolean("osmdroid.DebugDownloading", false));
            setDebugMapView(sharedPreferences.getBoolean("osmdroid.DebugMapView", false));
            setDebugTileProviders(sharedPreferences.getBoolean("osmdroid.DebugTileProvider", false));
            setMapViewHardwareAccelerated(sharedPreferences.getBoolean("osmdroid.HardwareAcceleration", false));
            setUserAgentValue(sharedPreferences.getString("osmdroid.userAgentValue", context.getPackageName()));
            setGpsWaitTime(sharedPreferences.getLong("osmdroid.gpsWaitTime", this.gpsWaitTime));
            setTileDownloadThreads((short) sharedPreferences.getInt("osmdroid.tileDownloadThreads", this.tileDownloadThreads));
            setTileFileSystemThreads((short) sharedPreferences.getInt("osmdroid.tileFileSystemThreads", this.tileFileSystemThreads));
            setTileDownloadMaxQueueSize((short) sharedPreferences.getInt("osmdroid.tileDownloadMaxQueueSize", this.tileDownloadMaxQueueSize));
            setTileFileSystemMaxQueueSize((short) sharedPreferences.getInt("osmdroid.tileFileSystemMaxQueueSize", this.tileFileSystemMaxQueueSize));
            setExpirationExtendedDuration(sharedPreferences.getLong("osmdroid.ExpirationExtendedDuration", this.expirationAdder));
            if (sharedPreferences.contains("osmdroid.ExpirationOverride")) {
                this.expirationOverride = Long.valueOf(sharedPreferences.getLong("osmdroid.ExpirationOverride", -1));
                if (this.expirationOverride != null && this.expirationOverride.longValue() == -1) {
                    this.expirationOverride = null;
                }
            }
        }
        if (VERSION.SDK_INT >= 9) {
            File file = new File(getOsmdroidTileCache().getAbsolutePath() + File.separator + SqlTileWriter.DATABASE_FILENAME);
            if (file.exists()) {
                long length = file.length();
                long freeSpace = getOsmdroidTileCache().getFreeSpace();
                if (getTileFileSystemCacheMaxBytes() > freeSpace + length) {
                    setTileFileSystemCacheMaxBytes((long) (((double) (freeSpace + length)) * 0.95d));
                    setTileFileSystemCacheTrimBytes((long) (((double) (length + freeSpace)) * 0.9d));
                    return;
                }
                return;
            }
            long length2 = getOsmdroidTileCache().length();
            if (getTileFileSystemCacheMaxBytes() > length2) {
                setTileFileSystemCacheMaxBytes((long) (((double) length2) * 0.95d));
                setTileFileSystemCacheMaxBytes((long) (((double) length2) * 0.9d));
            }
        }
    }

    public void save(Context context, SharedPreferences sharedPreferences) {
        Editor edit = sharedPreferences.edit();
        edit.putString("osmdroid.basePath", getOsmdroidBasePath().getAbsolutePath());
        edit.putString("osmdroid.cachePath", getOsmdroidTileCache().getAbsolutePath());
        edit.putBoolean("osmdroid.DebugMode", isDebugMode());
        edit.putBoolean("osmdroid.DebugDownloading", isDebugMapTileDownloader());
        edit.putBoolean("osmdroid.DebugMapView", isDebugMapView());
        edit.putBoolean("osmdroid.DebugTileProvider", isDebugTileProviders());
        edit.putBoolean("osmdroid.HardwareAcceleration", isMapViewHardwareAccelerated());
        edit.putString("osmdroid.userAgentValue", getUserAgentValue());
        edit.putLong("osmdroid.gpsWaitTime", this.gpsWaitTime);
        edit.putInt("osmdroid.cacheMapTileCount", this.cacheMapTileCount);
        edit.putInt("osmdroid.tileDownloadThreads", this.tileDownloadThreads);
        edit.putInt("osmdroid.tileFileSystemThreads", this.tileFileSystemThreads);
        edit.putInt("osmdroid.tileDownloadMaxQueueSize", this.tileDownloadMaxQueueSize);
        edit.putInt("osmdroid.tileFileSystemMaxQueueSize", this.tileFileSystemMaxQueueSize);
        edit.putLong("osmdroid.ExpirationExtendedDuration", this.expirationAdder);
        if (this.expirationOverride != null) {
            edit.putLong("osmdroid.ExpirationOverride", this.expirationOverride.longValue());
        }
        edit.commit();
    }

    public long getExpirationExtendedDuration() {
        return this.expirationAdder;
    }

    public void setExpirationExtendedDuration(long j) {
        if (j < 0) {
            this.expirationAdder = 0;
        } else {
            this.expirationAdder = j;
        }
    }

    public void setExpirationOverrideDuration(Long l) {
        this.expirationOverride = l;
    }

    public Long getExpirationOverrideDuration() {
        return this.expirationOverride;
    }
}
