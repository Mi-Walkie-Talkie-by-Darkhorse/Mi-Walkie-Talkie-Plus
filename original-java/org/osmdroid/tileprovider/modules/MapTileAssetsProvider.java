package org.osmdroid.tileprovider.modules;

import android.content.res.AssetManager;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
import microsoft.mappoint.TileSystem;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.MapTileRequestState;
import org.osmdroid.tileprovider.modules.MapTileModuleProviderBase.CantContinueException;
import org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase.LowMemoryException;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.tilesource.TileSourceFactory;

public class MapTileAssetsProvider extends MapTileFileStorageProviderBase {
    private final AssetManager mAssets;
    /* access modifiers changed from: private */
    public final AtomicReference<ITileSource> mTileSource;

    protected class TileLoader extends TileLoader {
        private AssetManager mAssets = null;

        public TileLoader(AssetManager assetManager) {
            super();
            this.mAssets = assetManager;
        }

        public Drawable loadTile(MapTileRequestState mapTileRequestState) throws CantContinueException {
            ITileSource iTileSource = (ITileSource) MapTileAssetsProvider.this.mTileSource.get();
            if (iTileSource == null) {
                return null;
            }
            try {
                Drawable drawable = iTileSource.getDrawable(this.mAssets.open(iTileSource.getTileRelativeFilenameString(mapTileRequestState.getMapTile())));
                if (drawable != null) {
                }
                return drawable;
            } catch (IOException e) {
                return null;
            } catch (LowMemoryException e2) {
                throw new CantContinueException((Throwable) e2);
            }
        }
    }

    public MapTileAssetsProvider(IRegisterReceiver iRegisterReceiver, AssetManager assetManager) {
        this(iRegisterReceiver, assetManager, TileSourceFactory.DEFAULT_TILE_SOURCE);
    }

    public MapTileAssetsProvider(IRegisterReceiver iRegisterReceiver, AssetManager assetManager, ITileSource iTileSource) {
        this(iRegisterReceiver, assetManager, iTileSource, Configuration.getInstance().getTileDownloadThreads(), Configuration.getInstance().getTileDownloadMaxQueueSize());
    }

    public MapTileAssetsProvider(IRegisterReceiver iRegisterReceiver, AssetManager assetManager, ITileSource iTileSource, int i, int i2) {
        super(iRegisterReceiver, i, i2);
        this.mTileSource = new AtomicReference<>();
        setTileSource(iTileSource);
        this.mAssets = assetManager;
    }

    public boolean getUsesDataConnection() {
        return false;
    }

    /* access modifiers changed from: protected */
    public String getName() {
        return "Assets Cache Provider";
    }

    /* access modifiers changed from: protected */
    public String getThreadGroupName() {
        return "assets";
    }

    /* access modifiers changed from: protected */
    public Runnable getTileLoader() {
        return new TileLoader(this.mAssets);
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
