package org.osmdroid.tileprovider.modules;

import android.graphics.drawable.Drawable;
import android.util.Log;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;
import microsoft.mappoint.TileSystem;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.ExpirableBitmapDrawable;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.MapTileRequestState;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;
import org.osmdroid.tileprovider.modules.MapTileModuleProviderBase.CantContinueException;
import org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase.LowMemoryException;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.tilesource.TileSourceFactory;
import org.osmdroid.tileprovider.util.Counters;

public class MapTileFilesystemProvider extends MapTileFileStorageProviderBase {
    /* access modifiers changed from: private */
    public final long mMaximumCachedFileAge;
    /* access modifiers changed from: private */
    public final AtomicReference<ITileSource> mTileSource;

    protected class TileLoader extends TileLoader {
        protected TileLoader() {
            super();
        }

        public Drawable loadTile(MapTileRequestState mapTileRequestState) throws CantContinueException {
            ITileSource iTileSource = (ITileSource) MapTileFilesystemProvider.this.mTileSource.get();
            if (iTileSource == null) {
                return null;
            }
            MapTile mapTile = mapTileRequestState.getMapTile();
            if (!MapTileFileStorageProviderBase.isSdCardAvailable()) {
                if (Configuration.getInstance().isDebugMode()) {
                    Log.d(IMapView.LOGTAG, "No sdcard - do nothing for tile: " + mapTile);
                }
                Counters.fileCacheMiss++;
                return null;
            }
            File file = new File(Configuration.getInstance().getOsmdroidTileCache(), iTileSource.getTileRelativeFilenameString(mapTile) + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION);
            if (file.exists()) {
                try {
                    Drawable drawable = iTileSource.getDrawable(file.getPath());
                    if ((file.lastModified() < System.currentTimeMillis() - MapTileFilesystemProvider.this.mMaximumCachedFileAge) && drawable != null) {
                        if (Configuration.getInstance().isDebugMode()) {
                            Log.d(IMapView.LOGTAG, "Tile expired: " + mapTile);
                        }
                        ExpirableBitmapDrawable.setDrawableExpired(drawable);
                    }
                    Counters.fileCacheHit++;
                    return drawable;
                } catch (LowMemoryException e) {
                    Log.w(IMapView.LOGTAG, "LowMemoryException downloading MapTile: " + mapTile + " : " + e);
                    Counters.fileCacheOOM++;
                    throw new CantContinueException((Throwable) e);
                }
            } else {
                Counters.fileCacheMiss++;
                return null;
            }
        }
    }

    public MapTileFilesystemProvider(IRegisterReceiver iRegisterReceiver) {
        this(iRegisterReceiver, TileSourceFactory.DEFAULT_TILE_SOURCE);
    }

    public MapTileFilesystemProvider(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource) {
        this(iRegisterReceiver, iTileSource, Configuration.getInstance().getExpirationExtendedDuration() + 604800000);
    }

    public MapTileFilesystemProvider(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource, long j) {
        this(iRegisterReceiver, iTileSource, j, Configuration.getInstance().getTileFileSystemThreads(), Configuration.getInstance().getTileFileSystemMaxQueueSize());
    }

    public MapTileFilesystemProvider(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource, long j, int i, int i2) {
        super(iRegisterReceiver, i, i2);
        this.mTileSource = new AtomicReference<>();
        setTileSource(iTileSource);
        this.mMaximumCachedFileAge = j;
    }

    public boolean getUsesDataConnection() {
        return false;
    }

    /* access modifiers changed from: protected */
    public String getName() {
        return "File System Cache Provider";
    }

    /* access modifiers changed from: protected */
    public String getThreadGroupName() {
        return "filesystem";
    }

    /* access modifiers changed from: protected */
    public Runnable getTileLoader() {
        return new TileLoader();
    }

    public int getMinimumZoomLevel() {
        ITileSource iTileSource = (ITileSource) this.mTileSource.get();
        if (iTileSource != null) {
            return iTileSource.getMinimumZoomLevel();
        }
        return 0;
    }

    public int getMaximumZoomLevel() {
        ITileSource iTileSource = (ITileSource) this.mTileSource.get();
        if (iTileSource != null) {
            return iTileSource.getMaximumZoomLevel();
        }
        return TileSystem.getMaximumZoomLevel();
    }

    public void setTileSource(ITileSource iTileSource) {
        this.mTileSource.set(iTileSource);
    }
}
