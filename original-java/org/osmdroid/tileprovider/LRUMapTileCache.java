package org.osmdroid.tileprovider;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;

public class LRUMapTileCache extends LinkedHashMap<MapTile, Drawable> {
    private static final long serialVersionUID = -541142277575493335L;
    private int mCapacity;
    private TileRemovedListener mTileRemovedListener;

    public interface TileRemovedListener {
        void onTileRemoved(MapTile mapTile);
    }

    public LRUMapTileCache(int i) {
        super(i + 2, 0.1f, true);
        this.mCapacity = i;
    }

    public void ensureCapacity(int i) {
        if (i > this.mCapacity) {
            Log.i(IMapView.LOGTAG, "Tile cache increased from " + this.mCapacity + " to " + i);
            this.mCapacity = i;
        }
    }

    public Drawable remove(Object obj) {
        Drawable drawable = (Drawable) super.remove(obj);
        if (VERSION.SDK_INT < 9 && (drawable instanceof BitmapDrawable)) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
        if (getTileRemovedListener() != null && (obj instanceof MapTile)) {
            getTileRemovedListener().onTileRemoved((MapTile) obj);
        }
        if (drawable instanceof ReusableBitmapDrawable) {
            BitmapPool.getInstance().returnDrawableToPool((ReusableBitmapDrawable) drawable);
        }
        return drawable;
    }

    public void clear() {
        while (!isEmpty()) {
            remove(keySet().iterator().next());
        }
        super.clear();
    }

    /* access modifiers changed from: protected */
    public boolean removeEldestEntry(Entry<MapTile, Drawable> entry) {
        if (size() > this.mCapacity) {
            MapTile mapTile = (MapTile) entry.getKey();
            if (Configuration.getInstance().isDebugMode()) {
                Log.d(IMapView.LOGTAG, "LRU Remove old tile: " + mapTile);
            }
            remove((Object) mapTile);
        }
        return false;
    }

    public TileRemovedListener getTileRemovedListener() {
        return this.mTileRemovedListener;
    }

    public void setTileRemovedListener(TileRemovedListener tileRemovedListener) {
        this.mTileRemovedListener = tileRemovedListener;
    }
}
