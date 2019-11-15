package org.osmdroid.tileprovider;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import java.util.HashMap;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.modules.IFilesystemCache;
import org.osmdroid.tileprovider.modules.MapTileModuleProviderBase;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.util.TileLooper;
import org.osmdroid.views.Projection;

public abstract class MapTileProviderBase implements IMapTileProviderCallback {
    protected final MapTileCache mTileCache;
    protected Drawable mTileNotFoundImage;
    protected Handler mTileRequestCompleteHandler;
    private ITileSource mTileSource;
    protected boolean mUseDataConnection;

    private abstract class ScaleTileLooper extends TileLooper {
        protected Paint mDebugPaint = new Paint();
        protected Rect mDestRect = new Rect();
        protected int mDiff;
        protected final HashMap<MapTile, Bitmap> mNewTiles = new HashMap<>();
        protected final int mOldZoomLevel;
        protected Rect mSrcRect = new Rect();
        protected int mTileSize_2;

        /* access modifiers changed from: protected */
        public abstract void handleTile(int i, MapTile mapTile, int i2, int i3);

        public ScaleTileLooper(int i) {
            this.mOldZoomLevel = i;
        }

        public void initialiseLoop(int i, int i2) {
            this.mDiff = Math.abs(i - this.mOldZoomLevel);
            this.mTileSize_2 = i2 >> this.mDiff;
        }

        public void handleTile(Canvas canvas, int i, MapTile mapTile, int i2, int i3) {
            if (MapTileProviderBase.this.getMapTile(mapTile) == null) {
                try {
                    handleTile(i, mapTile, i2, i3);
                } catch (OutOfMemoryError e) {
                    Log.e(IMapView.LOGTAG, "OutOfMemoryError rescaling cache");
                }
            }
        }

        public void finaliseLoop() {
            while (!this.mNewTiles.isEmpty()) {
                MapTile mapTile = (MapTile) this.mNewTiles.keySet().iterator().next();
                ReusableBitmapDrawable reusableBitmapDrawable = new ReusableBitmapDrawable((Bitmap) this.mNewTiles.remove(mapTile));
                ExpirableBitmapDrawable.setDrawableExpired(reusableBitmapDrawable);
                Drawable mapTile2 = MapTileProviderBase.this.mTileCache.getMapTile(mapTile);
                if (mapTile2 == null || ExpirableBitmapDrawable.isDrawableExpired(mapTile2)) {
                    MapTileProviderBase.this.putExpiredTileIntoCache(new MapTileRequestState(mapTile, new MapTileModuleProviderBase[0], null), reusableBitmapDrawable);
                }
            }
        }
    }

    private class ZoomInTileLooper extends ScaleTileLooper {
        public ZoomInTileLooper(int i) {
            super(i);
        }

        /* JADX WARNING: Removed duplicated region for block: B:19:0x00b6  */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x00bb  */
        /* JADX WARNING: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void handleTile(int r10, org.osmdroid.tileprovider.MapTile r11, int r12, int r13) {
            /*
                r9 = this;
                r5 = 0
                r4 = 1
                r3 = 0
                org.osmdroid.tileprovider.MapTile r0 = new org.osmdroid.tileprovider.MapTile
                int r1 = r9.mOldZoomLevel
                int r2 = r11.getX()
                int r6 = r9.mDiff
                int r2 = r2 >> r6
                int r6 = r11.getY()
                int r7 = r9.mDiff
                int r6 = r6 >> r7
                r0.<init>(r1, r2, r6)
                org.osmdroid.tileprovider.MapTileProviderBase r1 = org.osmdroid.tileprovider.MapTileProviderBase.this
                org.osmdroid.tileprovider.MapTileCache r1 = r1.mTileCache
                android.graphics.drawable.Drawable r1 = r1.getMapTile(r0)
                boolean r0 = r1 instanceof android.graphics.drawable.BitmapDrawable
                if (r0 == 0) goto L_0x00c0
                int r0 = r9.mDiff
                int r0 = r4 << r0
                int r0 = r12 % r0
                int r2 = r9.mTileSize_2
                int r0 = r0 * r2
                int r2 = r9.mDiff
                int r2 = r4 << r2
                int r2 = r13 % r2
                int r6 = r9.mTileSize_2
                int r2 = r2 * r6
                android.graphics.Rect r6 = r9.mSrcRect
                int r7 = r9.mTileSize_2
                int r7 = r7 + r0
                int r8 = r9.mTileSize_2
                int r8 = r8 + r2
                r6.set(r0, r2, r7, r8)
                android.graphics.Rect r0 = r9.mDestRect
                r0.set(r3, r3, r10, r10)
                org.osmdroid.tileprovider.BitmapPool r0 = org.osmdroid.tileprovider.BitmapPool.getInstance()
                android.graphics.Bitmap r0 = r0.obtainSizedBitmapFromPool(r10, r10)
                if (r0 != 0) goto L_0x00ca
                android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.ARGB_8888
                android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r10, r10, r0)
                r2 = r0
            L_0x0057:
                android.graphics.Canvas r6 = new android.graphics.Canvas
                r6.<init>(r2)
                boolean r7 = r1 instanceof org.osmdroid.tileprovider.ReusableBitmapDrawable
                if (r7 == 0) goto L_0x0064
                r0 = r1
                org.osmdroid.tileprovider.ReusableBitmapDrawable r0 = (org.osmdroid.tileprovider.ReusableBitmapDrawable) r0
                r5 = r0
            L_0x0064:
                if (r7 == 0) goto L_0x0069
                r5.beginUsingDrawable()
            L_0x0069:
                if (r7 == 0) goto L_0x0071
                boolean r0 = r5.isBitmapValid()     // Catch:{ all -> 0x00c1 }
                if (r0 == 0) goto L_0x00c8
            L_0x0071:
                android.graphics.drawable.BitmapDrawable r1 = (android.graphics.drawable.BitmapDrawable) r1     // Catch:{ all -> 0x00c1 }
                android.graphics.Bitmap r0 = r1.getBitmap()     // Catch:{ all -> 0x00c1 }
                android.graphics.Rect r1 = r9.mSrcRect     // Catch:{ all -> 0x00c1 }
                android.graphics.Rect r3 = r9.mDestRect     // Catch:{ all -> 0x00c1 }
                r8 = 0
                r6.drawBitmap(r0, r1, r3, r8)     // Catch:{ all -> 0x00c1 }
                org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ all -> 0x00c1 }
                boolean r0 = r0.isDebugMode()     // Catch:{ all -> 0x00c1 }
                if (r0 == 0) goto L_0x00b3
                java.lang.String r0 = "OsmDroid"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c1 }
                r1.<init>()     // Catch:{ all -> 0x00c1 }
                java.lang.String r3 = "Created scaled tile: "
                java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x00c1 }
                java.lang.StringBuilder r1 = r1.append(r11)     // Catch:{ all -> 0x00c1 }
                java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00c1 }
                android.util.Log.d(r0, r1)     // Catch:{ all -> 0x00c1 }
                android.graphics.Paint r0 = r9.mDebugPaint     // Catch:{ all -> 0x00c1 }
                r1 = 1109393408(0x42200000, float:40.0)
                r0.setTextSize(r1)     // Catch:{ all -> 0x00c1 }
                java.lang.String r0 = "scaled"
                r1 = 1112014848(0x42480000, float:50.0)
                r3 = 1112014848(0x42480000, float:50.0)
                android.graphics.Paint r8 = r9.mDebugPaint     // Catch:{ all -> 0x00c1 }
                r6.drawText(r0, r1, r3, r8)     // Catch:{ all -> 0x00c1 }
            L_0x00b3:
                r0 = r4
            L_0x00b4:
                if (r7 == 0) goto L_0x00b9
                r5.finishUsingDrawable()
            L_0x00b9:
                if (r0 == 0) goto L_0x00c0
                java.util.HashMap r0 = r9.mNewTiles
                r0.put(r11, r2)
            L_0x00c0:
                return
            L_0x00c1:
                r0 = move-exception
                if (r7 == 0) goto L_0x00c7
                r5.finishUsingDrawable()
            L_0x00c7:
                throw r0
            L_0x00c8:
                r0 = r3
                goto L_0x00b4
            L_0x00ca:
                r2 = r0
                goto L_0x0057
            */
            throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.MapTileProviderBase.ZoomInTileLooper.handleTile(int, org.osmdroid.tileprovider.MapTile, int, int):void");
        }
    }

    private class ZoomOutTileLooper extends ScaleTileLooper {
        private static final int MAX_ZOOM_OUT_DIFF = 4;

        public ZoomOutTileLooper(int i) {
            super(i);
        }

        /* access modifiers changed from: protected */
        public void handleTile(int i, MapTile mapTile, int i2, int i3) {
            Canvas canvas;
            Bitmap bitmap;
            if (this.mDiff < 4) {
                int x = mapTile.getX() << this.mDiff;
                int y = mapTile.getY() << this.mDiff;
                int i4 = 1 << this.mDiff;
                Bitmap bitmap2 = null;
                Canvas canvas2 = null;
                for (int i5 = 0; i5 < i4; i5++) {
                    int i6 = 0;
                    while (i6 < i4) {
                        Drawable mapTile2 = MapTileProviderBase.this.mTileCache.getMapTile(new MapTile(this.mOldZoomLevel, x + i5, y + i6));
                        if (mapTile2 instanceof BitmapDrawable) {
                            Bitmap bitmap3 = ((BitmapDrawable) mapTile2).getBitmap();
                            if (bitmap3 != null) {
                                if (bitmap2 == null) {
                                    bitmap = BitmapPool.getInstance().obtainSizedBitmapFromPool(i, i);
                                    if (bitmap == null) {
                                        bitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
                                    }
                                    canvas = new Canvas(bitmap);
                                    canvas.drawColor(-3355444);
                                } else {
                                    canvas = canvas2;
                                    bitmap = bitmap2;
                                }
                                this.mDestRect.set(this.mTileSize_2 * i5, this.mTileSize_2 * i6, (i5 + 1) * this.mTileSize_2, (i6 + 1) * this.mTileSize_2);
                                if (bitmap3 != null) {
                                    canvas.drawBitmap(bitmap3, null, this.mDestRect, null);
                                    MapTileProviderBase.this.mTileCache.mCachedTiles.remove((Object) bitmap3);
                                }
                                i6++;
                                bitmap2 = bitmap;
                                canvas2 = canvas;
                            }
                        }
                        canvas = canvas2;
                        bitmap = bitmap2;
                        i6++;
                        bitmap2 = bitmap;
                        canvas2 = canvas;
                    }
                }
                if (bitmap2 != null) {
                    this.mNewTiles.put(mapTile, bitmap2);
                    if (Configuration.getInstance().isDebugMode()) {
                        Log.d(IMapView.LOGTAG, "Created scaled tile: " + mapTile);
                        this.mDebugPaint.setTextSize(40.0f);
                        canvas2.drawText("scaled", 50.0f, 50.0f, this.mDebugPaint);
                    }
                }
            }
        }
    }

    public abstract Drawable getMapTile(MapTile mapTile);

    public abstract int getMaximumZoomLevel();

    public abstract int getMinimumZoomLevel();

    public abstract long getQueueSize();

    public abstract IFilesystemCache getTileWriter();

    public void detach() {
        if (this.mTileNotFoundImage != null) {
            if (VERSION.SDK_INT < 9 && (this.mTileNotFoundImage instanceof BitmapDrawable)) {
                Bitmap bitmap = ((BitmapDrawable) this.mTileNotFoundImage).getBitmap();
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            if (this.mTileNotFoundImage instanceof ReusableBitmapDrawable) {
                BitmapPool.getInstance().returnDrawableToPool((ReusableBitmapDrawable) this.mTileNotFoundImage);
            }
        }
        this.mTileNotFoundImage = null;
    }

    public void setTileSource(ITileSource iTileSource) {
        this.mTileSource = iTileSource;
        clearTileCache();
    }

    public ITileSource getTileSource() {
        return this.mTileSource;
    }

    public MapTileCache createTileCache() {
        return new MapTileCache();
    }

    public MapTileProviderBase(ITileSource iTileSource) {
        this(iTileSource, null);
    }

    public MapTileProviderBase(ITileSource iTileSource, Handler handler) {
        this.mUseDataConnection = true;
        this.mTileNotFoundImage = null;
        this.mTileCache = createTileCache();
        this.mTileRequestCompleteHandler = handler;
        this.mTileSource = iTileSource;
    }

    public void setTileLoadFailureImage(Drawable drawable) {
        this.mTileNotFoundImage = drawable;
    }

    public void mapTileRequestCompleted(MapTileRequestState mapTileRequestState, Drawable drawable) {
        putTileIntoCache(mapTileRequestState, drawable);
        if (this.mTileRequestCompleteHandler != null) {
            this.mTileRequestCompleteHandler.sendEmptyMessage(0);
        }
        if (Configuration.getInstance().isDebugTileProviders()) {
            Log.d(IMapView.LOGTAG, "MapTileProviderBase.mapTileRequestCompleted(): " + mapTileRequestState.getMapTile());
        }
    }

    public void mapTileRequestFailed(MapTileRequestState mapTileRequestState) {
        if (this.mTileNotFoundImage != null) {
            putTileIntoCache(mapTileRequestState, this.mTileNotFoundImage);
            if (this.mTileRequestCompleteHandler != null) {
                this.mTileRequestCompleteHandler.sendEmptyMessage(0);
            }
        } else if (this.mTileRequestCompleteHandler != null) {
            this.mTileRequestCompleteHandler.sendEmptyMessage(1);
        }
        if (Configuration.getInstance().isDebugTileProviders()) {
            Log.d(IMapView.LOGTAG, "MapTileProviderBase.mapTileRequestFailed(): " + mapTileRequestState.getMapTile());
        }
    }

    public void mapTileRequestExpiredTile(MapTileRequestState mapTileRequestState, Drawable drawable) {
        putExpiredTileIntoCache(mapTileRequestState, drawable);
        if (this.mTileRequestCompleteHandler != null) {
            this.mTileRequestCompleteHandler.sendEmptyMessage(0);
        }
        if (Configuration.getInstance().isDebugTileProviders()) {
            Log.d(IMapView.LOGTAG, "MapTileProviderBase.mapTileRequestExpiredTile(): " + mapTileRequestState.getMapTile());
        }
    }

    /* access modifiers changed from: protected */
    public void putTileIntoCache(MapTileRequestState mapTileRequestState, Drawable drawable) {
        MapTile mapTile = mapTileRequestState.getMapTile();
        if (drawable != null) {
            this.mTileCache.putTile(mapTile, drawable);
        }
    }

    /* access modifiers changed from: protected */
    public void putExpiredTileIntoCache(MapTileRequestState mapTileRequestState, Drawable drawable) {
        MapTile mapTile = mapTileRequestState.getMapTile();
        if (drawable != null && !this.mTileCache.containsTile(mapTile)) {
            this.mTileCache.putTile(mapTile, drawable);
        }
    }

    public void setTileRequestCompleteHandler(Handler handler) {
        this.mTileRequestCompleteHandler = handler;
    }

    public void ensureCapacity(int i) {
        this.mTileCache.ensureCapacity(i);
    }

    public void clearTileCache() {
        this.mTileCache.clear();
    }

    public boolean useDataConnection() {
        return this.mUseDataConnection;
    }

    public void setUseDataConnection(boolean z) {
        this.mUseDataConnection = z;
    }

    public void rescaleCache(Projection projection, int i, int i2, Rect rect) {
        if (i != i2) {
            long currentTimeMillis = System.currentTimeMillis();
            Log.i(IMapView.LOGTAG, "rescale tile cache from " + i2 + " to " + i);
            int tileSizePixels = getTileSource().getTileSizePixels();
            Point mercatorPixels = projection.toMercatorPixels(rect.left, rect.top, null);
            Point mercatorPixels2 = projection.toMercatorPixels(rect.right, rect.bottom, null);
            (i > i2 ? new ZoomInTileLooper(i2) : new ZoomOutTileLooper(i2)).loop(null, i, tileSizePixels, new Rect(mercatorPixels.x, mercatorPixels.y, mercatorPixels2.x, mercatorPixels2.y));
            Log.i(IMapView.LOGTAG, "Finished rescale in " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        }
    }
}
