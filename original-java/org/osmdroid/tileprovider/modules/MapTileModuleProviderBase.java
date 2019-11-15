package org.osmdroid.tileprovider.modules;

import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.ExpirableBitmapDrawable;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.MapTileRequestState;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public abstract class MapTileModuleProviderBase {
    private final ExecutorService mExecutor;
    protected final LinkedHashMap<MapTile, MapTileRequestState> mPending;
    protected final Object mQueueLockObject = new Object();
    protected final HashMap<MapTile, MapTileRequestState> mWorking;

    public class CantContinueException extends Exception {
        private static final long serialVersionUID = 146526524087765133L;

        public CantContinueException(String str) {
            super(str);
        }

        public CantContinueException(Throwable th) {
            super(th);
        }
    }

    protected abstract class TileLoader implements Runnable {
        /* access modifiers changed from: protected */
        public abstract Drawable loadTile(MapTileRequestState mapTileRequestState) throws CantContinueException;

        protected TileLoader() {
        }

        /* access modifiers changed from: protected */
        public void onTileLoaderInit() {
        }

        /* access modifiers changed from: protected */
        public void onTileLoaderShutdown() {
        }

        /* access modifiers changed from: protected */
        public MapTileRequestState nextTile() {
            MapTileRequestState mapTileRequestState;
            synchronized (MapTileModuleProviderBase.this.mQueueLockObject) {
                Object obj = null;
                for (Object obj2 : MapTileModuleProviderBase.this.mPending.keySet()) {
                    if (MapTileModuleProviderBase.this.mWorking.containsKey(obj2)) {
                        obj2 = obj;
                    } else if (Configuration.getInstance().isDebugTileProviders()) {
                        Log.d(IMapView.LOGTAG, "TileLoader.nextTile() on provider: " + MapTileModuleProviderBase.this.getName() + " found tile in working queue: " + obj2);
                    }
                    obj = obj2;
                }
                if (obj != null) {
                    if (Configuration.getInstance().isDebugTileProviders()) {
                        Log.d(IMapView.LOGTAG, "TileLoader.nextTile() on provider: " + MapTileModuleProviderBase.this.getName() + " adding tile to working queue: " + obj);
                    }
                    MapTileModuleProviderBase.this.mWorking.put(obj, MapTileModuleProviderBase.this.mPending.get(obj));
                }
                mapTileRequestState = obj != null ? (MapTileRequestState) MapTileModuleProviderBase.this.mPending.get(obj) : null;
            }
            return mapTileRequestState;
        }

        /* access modifiers changed from: protected */
        public void tileLoaded(MapTileRequestState mapTileRequestState, Drawable drawable) {
            if (Configuration.getInstance().isDebugTileProviders()) {
                Log.d(IMapView.LOGTAG, "TileLoader.tileLoaded() on provider: " + MapTileModuleProviderBase.this.getName() + " with tile: " + mapTileRequestState.getMapTile());
            }
            MapTileModuleProviderBase.this.removeTileFromQueues(mapTileRequestState.getMapTile());
            mapTileRequestState.getCallback().mapTileRequestCompleted(mapTileRequestState, drawable);
        }

        /* access modifiers changed from: protected */
        public void tileLoadedExpired(MapTileRequestState mapTileRequestState, Drawable drawable) {
            if (Configuration.getInstance().isDebugTileProviders()) {
                Log.d(IMapView.LOGTAG, "TileLoader.tileLoadedExpired() on provider: " + MapTileModuleProviderBase.this.getName() + " with tile: " + mapTileRequestState.getMapTile());
            }
            MapTileModuleProviderBase.this.removeTileFromQueues(mapTileRequestState.getMapTile());
            mapTileRequestState.getCallback().mapTileRequestExpiredTile(mapTileRequestState, drawable);
        }

        /* access modifiers changed from: protected */
        public void tileLoadedFailed(MapTileRequestState mapTileRequestState) {
            if (Configuration.getInstance().isDebugTileProviders()) {
                Log.d(IMapView.LOGTAG, "TileLoader.tileLoadedFailed() on provider: " + MapTileModuleProviderBase.this.getName() + " with tile: " + mapTileRequestState.getMapTile());
            }
            MapTileModuleProviderBase.this.removeTileFromQueues(mapTileRequestState.getMapTile());
            mapTileRequestState.getCallback().mapTileRequestFailed(mapTileRequestState);
        }

        public final void run() {
            onTileLoaderInit();
            while (true) {
                MapTileRequestState nextTile = nextTile();
                if (nextTile != null) {
                    if (Configuration.getInstance().isDebugTileProviders()) {
                        Log.d(IMapView.LOGTAG, "TileLoader.run() processing next tile: " + nextTile.getMapTile() + ", pending:" + MapTileModuleProviderBase.this.mPending.size() + ", working:" + MapTileModuleProviderBase.this.mWorking.size());
                    }
                    Drawable drawable = null;
                    try {
                        drawable = loadTile(nextTile);
                    } catch (CantContinueException e) {
                        Log.i(IMapView.LOGTAG, "Tile loader can't continue: " + nextTile.getMapTile(), e);
                        MapTileModuleProviderBase.this.clearQueue();
                    } catch (Throwable th) {
                        Log.i(IMapView.LOGTAG, "Error downloading tile: " + nextTile.getMapTile(), th);
                    }
                    if (drawable == null) {
                        tileLoadedFailed(nextTile);
                    } else if (ExpirableBitmapDrawable.isDrawableExpired(drawable)) {
                        tileLoadedExpired(nextTile, drawable);
                    } else {
                        tileLoaded(nextTile, drawable);
                    }
                } else {
                    onTileLoaderShutdown();
                    return;
                }
            }
        }
    }

    public abstract int getMaximumZoomLevel();

    public abstract int getMinimumZoomLevel();

    /* access modifiers changed from: protected */
    public abstract String getName();

    /* access modifiers changed from: protected */
    public abstract String getThreadGroupName();

    /* access modifiers changed from: protected */
    public abstract Runnable getTileLoader();

    public abstract boolean getUsesDataConnection();

    public abstract void setTileSource(ITileSource iTileSource);

    public MapTileModuleProviderBase(int i, int i2) {
        if (i2 < i) {
            Log.w(IMapView.LOGTAG, "The pending queue size is smaller than the thread pool size. Automatically reducing the thread pool size.");
            i = i2;
        }
        this.mExecutor = Executors.newFixedThreadPool(i, new ConfigurablePriorityThreadFactory(5, getThreadGroupName()));
        this.mWorking = new HashMap<>();
        final int i3 = i2;
        this.mPending = new LinkedHashMap<MapTile, MapTileRequestState>(i2 + 2, 0.1f, true) {
            private static final long serialVersionUID = 6455337315681858866L;

            /* access modifiers changed from: protected */
            public boolean removeEldestEntry(Entry<MapTile, MapTileRequestState> entry) {
                if (size() > i3) {
                    MapTile mapTile = null;
                    Iterator it = MapTileModuleProviderBase.this.mPending.keySet().iterator();
                    while (mapTile == null && it.hasNext()) {
                        MapTile mapTile2 = (MapTile) it.next();
                        if (MapTileModuleProviderBase.this.mWorking.containsKey(mapTile2)) {
                            mapTile2 = mapTile;
                        }
                        mapTile = mapTile2;
                    }
                    if (mapTile != null) {
                        MapTileRequestState mapTileRequestState = (MapTileRequestState) MapTileModuleProviderBase.this.mPending.get(mapTile);
                        MapTileModuleProviderBase.this.removeTileFromQueues(mapTile);
                        mapTileRequestState.getCallback().mapTileRequestFailed(mapTileRequestState);
                    }
                }
                return false;
            }
        };
    }

    public void loadMapTileAsync(MapTileRequestState mapTileRequestState) {
        if (!this.mExecutor.isShutdown()) {
            synchronized (this.mQueueLockObject) {
                if (Configuration.getInstance().isDebugTileProviders()) {
                    Log.d(IMapView.LOGTAG, "MapTileModuleProviderBase.loadMaptileAsync() on provider: " + getName() + " for tile: " + mapTileRequestState.getMapTile());
                    if (this.mPending.containsKey(mapTileRequestState.getMapTile())) {
                        Log.d(IMapView.LOGTAG, "MapTileModuleProviderBase.loadMaptileAsync() tile already exists in request queue for modular provider. Moving to front of queue.");
                    } else {
                        Log.d(IMapView.LOGTAG, "MapTileModuleProviderBase.loadMaptileAsync() adding tile to request queue for modular provider.");
                    }
                }
                this.mPending.put(mapTileRequestState.getMapTile(), mapTileRequestState);
            }
            try {
                this.mExecutor.execute(getTileLoader());
            } catch (RejectedExecutionException e) {
                Log.w(IMapView.LOGTAG, "RejectedExecutionException", e);
            }
        }
    }

    /* access modifiers changed from: private */
    public void clearQueue() {
        synchronized (this.mQueueLockObject) {
            this.mPending.clear();
            this.mWorking.clear();
        }
    }

    public void detach() {
        clearQueue();
        this.mExecutor.shutdown();
    }

    /* access modifiers changed from: 0000 */
    public void removeTileFromQueues(MapTile mapTile) {
        synchronized (this.mQueueLockObject) {
            if (Configuration.getInstance().isDebugTileProviders()) {
                Log.d(IMapView.LOGTAG, "MapTileModuleProviderBase.removeTileFromQueues() on provider: " + getName() + " for tile: " + mapTile);
            }
            this.mPending.remove(mapTile);
            this.mWorking.remove(mapTile);
        }
    }
}
