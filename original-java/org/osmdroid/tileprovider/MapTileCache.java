package org.osmdroid.tileprovider;

import android.graphics.drawable.Drawable;
import org.osmdroid.config.Configuration;

public class MapTileCache {
    protected LRUMapTileCache mCachedTiles;
    protected final Object mCachedTilesLockObject;

    public MapTileCache() {
        this(Configuration.getInstance().getCacheMapTileCount());
    }

    public MapTileCache(int i) {
        this.mCachedTilesLockObject = new Object();
        this.mCachedTiles = new LRUMapTileCache(i);
    }

    public void ensureCapacity(int i) {
        synchronized (this.mCachedTilesLockObject) {
            this.mCachedTiles.ensureCapacity(i);
        }
    }

    public Drawable getMapTile(MapTile mapTile) {
        Drawable drawable;
        synchronized (this.mCachedTilesLockObject) {
            drawable = (Drawable) this.mCachedTiles.get(mapTile);
        }
        return drawable;
    }

    public void putTile(MapTile mapTile, Drawable drawable) {
        if (drawable != null) {
            synchronized (this.mCachedTilesLockObject) {
                this.mCachedTiles.put(mapTile, drawable);
            }
        }
    }

    public boolean containsTile(MapTile mapTile) {
        boolean containsKey;
        synchronized (this.mCachedTilesLockObject) {
            containsKey = this.mCachedTiles.containsKey(mapTile);
        }
        return containsKey;
    }

    public void clear() {
        synchronized (this.mCachedTilesLockObject) {
            this.mCachedTiles.clear();
        }
    }
}
