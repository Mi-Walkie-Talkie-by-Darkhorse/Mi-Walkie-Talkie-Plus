package org.osmdroid.tileprovider;

import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import microsoft.mappoint.TileSystem;
import org.osmdroid.tileprovider.modules.IFilesystemCache;
import org.osmdroid.tileprovider.modules.MapTileModuleProviderBase;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class MapTileProviderArray extends MapTileProviderBase {
    protected IRegisterReceiver mRegisterReceiver;
    protected final List<MapTileModuleProviderBase> mTileProviderList;
    protected final HashMap<MapTile, MapTileRequestState> mWorking;

    protected MapTileProviderArray(ITileSource iTileSource, IRegisterReceiver iRegisterReceiver) {
        this(iTileSource, iRegisterReceiver, new MapTileModuleProviderBase[0]);
    }

    public MapTileProviderArray(ITileSource iTileSource, IRegisterReceiver iRegisterReceiver, MapTileModuleProviderBase[] mapTileModuleProviderBaseArr) {
        super(iTileSource);
        this.mRegisterReceiver = null;
        this.mWorking = new HashMap<>();
        this.mRegisterReceiver = iRegisterReceiver;
        this.mTileProviderList = new ArrayList();
        Collections.addAll(this.mTileProviderList, mapTileModuleProviderBaseArr);
    }

    public void detach() {
        synchronized (this.mTileProviderList) {
            for (MapTileModuleProviderBase detach : this.mTileProviderList) {
                detach.detach();
            }
        }
        this.mTileCache.clear();
        synchronized (this.mWorking) {
            this.mWorking.clear();
        }
        clearTileCache();
        if (this.mRegisterReceiver != null) {
            this.mRegisterReceiver.destroy();
            this.mRegisterReceiver = null;
        }
        super.detach();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0071, code lost:
        r0 = findNextAppropriateProvider(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0075, code lost:
        if (r0 == null) goto L_0x007f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0077, code lost:
        r0.loadMapTileAsync(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x007f, code lost:
        mapTileRequestFailed(r3);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.drawable.Drawable getMapTile(org.osmdroid.tileprovider.MapTile r6) {
        /*
            r5 = this;
            org.osmdroid.tileprovider.MapTileCache r0 = r5.mTileCache
            android.graphics.drawable.Drawable r1 = r0.getMapTile(r6)
            if (r1 == 0) goto L_0x0010
            boolean r0 = org.osmdroid.tileprovider.ExpirableBitmapDrawable.isDrawableExpired(r1)
            if (r0 != 0) goto L_0x0010
            r0 = r1
        L_0x000f:
            return r0
        L_0x0010:
            java.util.HashMap<org.osmdroid.tileprovider.MapTile, org.osmdroid.tileprovider.MapTileRequestState> r2 = r5.mWorking
            monitor-enter(r2)
            java.util.HashMap<org.osmdroid.tileprovider.MapTile, org.osmdroid.tileprovider.MapTileRequestState> r0 = r5.mWorking     // Catch:{ all -> 0x0065 }
            boolean r0 = r0.containsKey(r6)     // Catch:{ all -> 0x0065 }
            monitor-exit(r2)     // Catch:{ all -> 0x0065 }
            if (r0 != 0) goto L_0x007a
            org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()
            boolean r0 = r0.isDebugTileProviders()
            if (r0 == 0) goto L_0x003e
            java.lang.String r0 = "OsmDroid"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "MapTileProviderArray.getMapTile() requested but not in cache, trying from async providers: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r6)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r0, r2)
        L_0x003e:
            java.util.List<org.osmdroid.tileprovider.modules.MapTileModuleProviderBase> r2 = r5.mTileProviderList
            monitor-enter(r2)
            java.util.List<org.osmdroid.tileprovider.modules.MapTileModuleProviderBase> r0 = r5.mTileProviderList     // Catch:{ all -> 0x0068 }
            int r0 = r0.size()     // Catch:{ all -> 0x0068 }
            org.osmdroid.tileprovider.modules.MapTileModuleProviderBase[] r0 = new org.osmdroid.tileprovider.modules.MapTileModuleProviderBase[r0]     // Catch:{ all -> 0x0068 }
            org.osmdroid.tileprovider.MapTileRequestState r3 = new org.osmdroid.tileprovider.MapTileRequestState     // Catch:{ all -> 0x0068 }
            java.util.List<org.osmdroid.tileprovider.modules.MapTileModuleProviderBase> r4 = r5.mTileProviderList     // Catch:{ all -> 0x0068 }
            java.lang.Object[] r0 = r4.toArray(r0)     // Catch:{ all -> 0x0068 }
            org.osmdroid.tileprovider.modules.MapTileModuleProviderBase[] r0 = (org.osmdroid.tileprovider.modules.MapTileModuleProviderBase[]) r0     // Catch:{ all -> 0x0068 }
            r3.<init>(r6, r0, r5)     // Catch:{ all -> 0x0068 }
            monitor-exit(r2)     // Catch:{ all -> 0x0068 }
            java.util.HashMap<org.osmdroid.tileprovider.MapTile, org.osmdroid.tileprovider.MapTileRequestState> r2 = r5.mWorking
            monitor-enter(r2)
            java.util.HashMap<org.osmdroid.tileprovider.MapTile, org.osmdroid.tileprovider.MapTileRequestState> r0 = r5.mWorking     // Catch:{ all -> 0x007c }
            boolean r0 = r0.containsKey(r6)     // Catch:{ all -> 0x007c }
            if (r0 == 0) goto L_0x006b
            monitor-exit(r2)     // Catch:{ all -> 0x007c }
            r0 = r1
            goto L_0x000f
        L_0x0065:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0065 }
            throw r0
        L_0x0068:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0068 }
            throw r0
        L_0x006b:
            java.util.HashMap<org.osmdroid.tileprovider.MapTile, org.osmdroid.tileprovider.MapTileRequestState> r0 = r5.mWorking     // Catch:{ all -> 0x007c }
            r0.put(r6, r3)     // Catch:{ all -> 0x007c }
            monitor-exit(r2)     // Catch:{ all -> 0x007c }
            org.osmdroid.tileprovider.modules.MapTileModuleProviderBase r0 = r5.findNextAppropriateProvider(r3)
            if (r0 == 0) goto L_0x007f
            r0.loadMapTileAsync(r3)
        L_0x007a:
            r0 = r1
            goto L_0x000f
        L_0x007c:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x007c }
            throw r0
        L_0x007f:
            r5.mapTileRequestFailed(r3)
            goto L_0x007a
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.MapTileProviderArray.getMapTile(org.osmdroid.tileprovider.MapTile):android.graphics.drawable.Drawable");
    }

    public void mapTileRequestCompleted(MapTileRequestState mapTileRequestState, Drawable drawable) {
        synchronized (this.mWorking) {
            this.mWorking.remove(mapTileRequestState.getMapTile());
            this.mTileCache.putTile(mapTileRequestState.getMapTile(), drawable);
        }
        super.mapTileRequestCompleted(mapTileRequestState, drawable);
    }

    public void mapTileRequestFailed(MapTileRequestState mapTileRequestState) {
        MapTileModuleProviderBase findNextAppropriateProvider = findNextAppropriateProvider(mapTileRequestState);
        if (findNextAppropriateProvider != null) {
            findNextAppropriateProvider.loadMapTileAsync(mapTileRequestState);
            return;
        }
        synchronized (this.mWorking) {
            this.mWorking.remove(mapTileRequestState.getMapTile());
        }
        super.mapTileRequestFailed(mapTileRequestState);
    }

    public void mapTileRequestExpiredTile(MapTileRequestState mapTileRequestState, Drawable drawable) {
        super.mapTileRequestExpiredTile(mapTileRequestState, drawable);
        MapTileModuleProviderBase findNextAppropriateProvider = findNextAppropriateProvider(mapTileRequestState);
        if (findNextAppropriateProvider != null) {
            findNextAppropriateProvider.loadMapTileAsync(mapTileRequestState);
            return;
        }
        synchronized (this.mWorking) {
            this.mWorking.remove(mapTileRequestState.getMapTile());
        }
    }

    public IFilesystemCache getTileWriter() {
        return null;
    }

    public long getQueueSize() {
        if (this.mWorking != null) {
            return (long) this.mWorking.size();
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public MapTileModuleProviderBase findNextAppropriateProvider(MapTileRequestState mapTileRequestState) {
        MapTileModuleProviderBase nextProvider;
        boolean z;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (true) {
            nextProvider = mapTileRequestState.getNextProvider();
            if (nextProvider != null) {
                boolean z5 = !getProviderExists(nextProvider);
                if (useDataConnection() || !nextProvider.getUsesDataConnection()) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                int zoomLevel = mapTileRequestState.getMapTile().getZoomLevel();
                if (zoomLevel > nextProvider.getMaximumZoomLevel() || zoomLevel < nextProvider.getMinimumZoomLevel()) {
                    z = true;
                } else {
                    z = false;
                }
                boolean z6 = z;
                z4 = z5;
                z2 = z6;
            }
            if (nextProvider == null || (!z4 && !z3 && !z2)) {
                return nextProvider;
            }
        }
        return nextProvider;
    }

    public boolean getProviderExists(MapTileModuleProviderBase mapTileModuleProviderBase) {
        boolean contains;
        synchronized (this.mTileProviderList) {
            contains = this.mTileProviderList.contains(mapTileModuleProviderBase);
        }
        return contains;
    }

    public int getMinimumZoomLevel() {
        int i;
        int maximumZoomLevel = TileSystem.getMaximumZoomLevel();
        synchronized (this.mTileProviderList) {
            for (MapTileModuleProviderBase mapTileModuleProviderBase : this.mTileProviderList) {
                if (mapTileModuleProviderBase.getMinimumZoomLevel() < maximumZoomLevel) {
                    i = mapTileModuleProviderBase.getMinimumZoomLevel();
                } else {
                    i = maximumZoomLevel;
                }
                maximumZoomLevel = i;
            }
        }
        return maximumZoomLevel;
    }

    public int getMaximumZoomLevel() {
        int i;
        int i2 = 0;
        synchronized (this.mTileProviderList) {
            for (MapTileModuleProviderBase mapTileModuleProviderBase : this.mTileProviderList) {
                if (mapTileModuleProviderBase.getMaximumZoomLevel() > i2) {
                    i = mapTileModuleProviderBase.getMaximumZoomLevel();
                } else {
                    i = i2;
                }
                i2 = i;
            }
        }
        return i2;
    }

    public void setTileSource(ITileSource iTileSource) {
        super.setTileSource(iTileSource);
        synchronized (this.mTileProviderList) {
            for (MapTileModuleProviderBase tileSource : this.mTileProviderList) {
                tileSource.setTileSource(iTileSource);
                clearTileCache();
            }
        }
    }
}
