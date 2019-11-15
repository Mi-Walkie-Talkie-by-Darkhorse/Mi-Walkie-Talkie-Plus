package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.library.R;
import org.osmdroid.tileprovider.BitmapPool;
import org.osmdroid.tileprovider.MapTileProviderBase;
import org.osmdroid.tileprovider.ReusableBitmapDrawable;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.tilesource.TileSourceFactory;
import org.osmdroid.util.TileLooper;
import org.osmdroid.util.TileSystem;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;

public class TilesOverlay extends Overlay implements IOverlayMenuProvider {
    public static final ColorFilter INVERT_COLORS = new ColorMatrixColorFilter(negate);
    public static final int MENU_MAP_MODE = getSafeMenuId();
    public static final int MENU_OFFLINE = getSafeMenuId();
    public static final int MENU_TILE_SOURCE_STARTING_ID = getSafeMenuIdSequence(TileSourceFactory.getTileSources().size());
    static final float[] negate = {-1.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, -1.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, -1.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    private Context ctx;
    private ColorFilter currentColorFilter = null;
    private Point mBottomRightMercator = new Point();
    protected final Paint mDebugPaint = new Paint();
    private int mLoadingBackgroundColor = Color.rgb(216, 208, 208);
    private int mLoadingLineColor = Color.rgb(200, 192, 192);
    private BitmapDrawable mLoadingTile = null;
    private boolean mOptionsMenuEnabled = true;
    /* access modifiers changed from: private */
    public int mOvershootTileCache = 0;
    private Projection mProjection;
    private final TileLooper mTileLooper = new TileLooper() {
        public void initialiseLoop(int i, int i2) {
            TilesOverlay.this.mTileProvider.ensureCapacity((((this.mLowerRight.y - this.mUpperLeft.y) + 1) * ((this.mLowerRight.x - this.mUpperLeft.x) + 1)) + TilesOverlay.this.mOvershootTileCache);
        }

        /* JADX WARNING: Removed duplicated region for block: B:19:0x0079  */
        /* JADX WARNING: Removed duplicated region for block: B:27:0x0122  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void handleTile(android.graphics.Canvas r10, int r11, org.osmdroid.tileprovider.MapTile r12, int r13, int r14) {
            /*
                r9 = this;
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                org.osmdroid.tileprovider.MapTileProviderBase r1 = r1.mTileProvider
                android.graphics.drawable.Drawable r2 = r1.getMapTile(r12)
                boolean r3 = r2 instanceof org.osmdroid.tileprovider.ReusableBitmapDrawable
                if (r3 == 0) goto L_0x011a
                r1 = r2
                org.osmdroid.tileprovider.ReusableBitmapDrawable r1 = (org.osmdroid.tileprovider.ReusableBitmapDrawable) r1
                r4 = r1
            L_0x0010:
                if (r2 != 0) goto L_0x0018
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.drawable.Drawable r2 = r1.getLoadingTile()
            L_0x0018:
                if (r2 == 0) goto L_0x007c
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Point r1 = r1.mTilePoint
                int r5 = r13 * r11
                int r6 = r14 * r11
                r1.set(r5, r6)
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                org.osmdroid.views.overlay.TilesOverlay r5 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Point r5 = r5.mTilePoint
                int r5 = r5.x
                org.osmdroid.views.overlay.TilesOverlay r6 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Point r6 = r6.mTilePoint
                int r6 = r6.y
                org.osmdroid.views.overlay.TilesOverlay r7 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Point r7 = r7.mTilePoint
                int r7 = r7.x
                int r7 = r7 + r11
                org.osmdroid.views.overlay.TilesOverlay r8 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Point r8 = r8.mTilePoint
                int r8 = r8.y
                int r8 = r8 + r11
                r1.set(r5, r6, r7, r8)
                if (r3 == 0) goto L_0x0057
                r4.beginUsingDrawable()
            L_0x0057:
                if (r3 == 0) goto L_0x0128
                r0 = r2
                org.osmdroid.tileprovider.ReusableBitmapDrawable r0 = (org.osmdroid.tileprovider.ReusableBitmapDrawable) r0     // Catch:{ all -> 0x011e }
                r1 = r0
                boolean r1 = r1.isBitmapValid()     // Catch:{ all -> 0x011e }
                if (r1 != 0) goto L_0x0128
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this     // Catch:{ all -> 0x011e }
                android.graphics.drawable.Drawable r2 = r1.getLoadingTile()     // Catch:{ all -> 0x011e }
                r3 = 0
                r1 = r2
                r2 = r3
            L_0x006c:
                org.osmdroid.views.overlay.TilesOverlay r3 = org.osmdroid.views.overlay.TilesOverlay.this     // Catch:{ all -> 0x0126 }
                org.osmdroid.views.overlay.TilesOverlay r5 = org.osmdroid.views.overlay.TilesOverlay.this     // Catch:{ all -> 0x0126 }
                android.graphics.Rect r5 = r5.mTileRect     // Catch:{ all -> 0x0126 }
                r3.onTileReadyToDraw(r10, r1, r5)     // Catch:{ all -> 0x0126 }
                if (r2 == 0) goto L_0x007c
                r4.finishUsingDrawable()
            L_0x007c:
                org.osmdroid.config.IConfigurationProvider r1 = org.osmdroid.config.Configuration.getInstance()
                boolean r1 = r1.isDebugTileProviders()
                if (r1 == 0) goto L_0x0119
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r2 = r13 * r11
                int r3 = r14 * r11
                int r4 = r13 * r11
                int r4 = r4 + r11
                int r5 = r14 * r11
                int r5 = r5 + r11
                r1.set(r2, r3, r4, r5)
                java.lang.String r1 = r12.toString()
                org.osmdroid.views.overlay.TilesOverlay r2 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r2 = r2.mTileRect
                int r2 = r2.left
                int r2 = r2 + 1
                float r2 = (float) r2
                org.osmdroid.views.overlay.TilesOverlay r3 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r3 = r3.mTileRect
                int r3 = r3.top
                float r3 = (float) r3
                org.osmdroid.views.overlay.TilesOverlay r4 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Paint r4 = r4.mDebugPaint
                float r4 = r4.getTextSize()
                float r3 = r3 + r4
                org.osmdroid.views.overlay.TilesOverlay r4 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Paint r4 = r4.mDebugPaint
                r10.drawText(r1, r2, r3, r4)
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.left
                float r2 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.top
                float r3 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.right
                float r4 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.top
                float r5 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Paint r6 = r1.mDebugPaint
                r1 = r10
                r1.drawLine(r2, r3, r4, r5, r6)
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.left
                float r2 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.top
                float r3 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.left
                float r4 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Rect r1 = r1.mTileRect
                int r1 = r1.bottom
                float r5 = (float) r1
                org.osmdroid.views.overlay.TilesOverlay r1 = org.osmdroid.views.overlay.TilesOverlay.this
                android.graphics.Paint r6 = r1.mDebugPaint
                r1 = r10
                r1.drawLine(r2, r3, r4, r5, r6)
            L_0x0119:
                return
            L_0x011a:
                r1 = 0
                r4 = r1
                goto L_0x0010
            L_0x011e:
                r1 = move-exception
                r2 = r3
            L_0x0120:
                if (r2 == 0) goto L_0x0125
                r4.finishUsingDrawable()
            L_0x0125:
                throw r1
            L_0x0126:
                r1 = move-exception
                goto L_0x0120
            L_0x0128:
                r1 = r2
                r2 = r3
                goto L_0x006c
            */
            throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.views.overlay.TilesOverlay.AnonymousClass1.handleTile(android.graphics.Canvas, int, org.osmdroid.tileprovider.MapTile, int, int):void");
        }

        public void finaliseLoop() {
        }
    };
    /* access modifiers changed from: private */
    public final Point mTilePoint = new Point();
    private Point mTilePointMercator = new Point();
    protected final MapTileProviderBase mTileProvider;
    /* access modifiers changed from: private */
    public final Rect mTileRect = new Rect();
    private Point mTopLeftMercator = new Point();
    private final Rect mViewPort = new Rect();
    protected Drawable userSelectedLoadingDrawable = null;

    public TilesOverlay(MapTileProviderBase mapTileProviderBase, Context context) {
        this.ctx = context;
        if (mapTileProviderBase == null) {
            throw new IllegalArgumentException("You must pass a valid tile provider to the tiles overlay.");
        }
        this.mTileProvider = mapTileProviderBase;
    }

    public void setLoadingDrawable(Drawable drawable) {
        this.userSelectedLoadingDrawable = drawable;
    }

    public void onDetach(MapView mapView) {
        this.mTileProvider.detach();
        this.ctx = null;
        if (this.mLoadingTile != null) {
            if (VERSION.SDK_INT < 9 && (this.mLoadingTile instanceof BitmapDrawable)) {
                Bitmap bitmap = this.mLoadingTile.getBitmap();
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            if (this.mLoadingTile instanceof ReusableBitmapDrawable) {
                BitmapPool.getInstance().returnDrawableToPool((ReusableBitmapDrawable) this.mLoadingTile);
            }
        }
        this.mLoadingTile = null;
        if (this.userSelectedLoadingDrawable != null) {
            if (VERSION.SDK_INT < 9 && (this.userSelectedLoadingDrawable instanceof BitmapDrawable)) {
                Bitmap bitmap2 = ((BitmapDrawable) this.userSelectedLoadingDrawable).getBitmap();
                if (bitmap2 != null) {
                    bitmap2.recycle();
                }
            }
            if (this.userSelectedLoadingDrawable instanceof ReusableBitmapDrawable) {
                BitmapPool.getInstance().returnDrawableToPool((ReusableBitmapDrawable) this.userSelectedLoadingDrawable);
            }
        }
        this.userSelectedLoadingDrawable = null;
    }

    public int getMinimumZoomLevel() {
        return this.mTileProvider.getMinimumZoomLevel();
    }

    public int getMaximumZoomLevel() {
        return this.mTileProvider.getMaximumZoomLevel();
    }

    public boolean useDataConnection() {
        return this.mTileProvider.useDataConnection();
    }

    public void setUseDataConnection(boolean z) {
        this.mTileProvider.setUseDataConnection(z);
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (Configuration.getInstance().isDebugTileProviders()) {
            Log.d(IMapView.LOGTAG, "onDraw(" + z + ")");
        }
        if (!z) {
            Projection projection = mapView.getProjection();
            Rect screenRect = projection.getScreenRect();
            projection.toMercatorPixels(screenRect.left, screenRect.top, this.mTopLeftMercator);
            projection.toMercatorPixels(screenRect.right, screenRect.bottom, this.mBottomRightMercator);
            this.mViewPort.set(this.mTopLeftMercator.x, this.mTopLeftMercator.y, this.mBottomRightMercator.x, this.mBottomRightMercator.y);
            drawTiles(canvas, projection, projection.getZoomLevel(), TileSystem.getTileSize(), this.mViewPort);
        }
    }

    public void drawTiles(Canvas canvas, Projection projection, int i, int i2, Rect rect) {
        this.mProjection = projection;
        this.mTileLooper.loop(canvas, i, i2, rect);
        if (Configuration.getInstance().isDebugTileProviders()) {
            Point point = new Point(rect.centerX(), rect.centerY());
            canvas.drawLine((float) point.x, (float) (point.y - 9), (float) point.x, (float) (point.y + 9), this.mDebugPaint);
            canvas.drawLine((float) (point.x - 9), (float) point.y, (float) (point.x + 9), (float) point.y, this.mDebugPaint);
        }
    }

    /* access modifiers changed from: protected */
    public void onTileReadyToDraw(Canvas canvas, Drawable drawable, Rect rect) {
        drawable.setColorFilter(this.currentColorFilter);
        this.mProjection.toPixelsFromMercator(rect.left, rect.top, this.mTilePointMercator);
        rect.offsetTo(this.mTilePointMercator.x, this.mTilePointMercator.y);
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    public void setOptionsMenuEnabled(boolean z) {
        this.mOptionsMenuEnabled = z;
    }

    public boolean isOptionsMenuEnabled() {
        return this.mOptionsMenuEnabled;
    }

    public boolean onCreateOptionsMenu(Menu menu, int i, MapView mapView) {
        SubMenu icon = menu.addSubMenu(0, MENU_MAP_MODE + i, 0, R.string.map_mode).setIcon(R.drawable.ic_menu_mapmode);
        for (int i2 = 0; i2 < TileSourceFactory.getTileSources().size(); i2++) {
            icon.add(MENU_MAP_MODE + i, MENU_TILE_SOURCE_STARTING_ID + i2 + i, 0, ((ITileSource) TileSourceFactory.getTileSources().get(i2)).name());
        }
        icon.setGroupCheckable(MENU_MAP_MODE + i, true, true);
        if (this.ctx != null) {
            menu.add(0, MENU_OFFLINE + i, 0, this.ctx.getString(mapView.useDataConnection() ? R.string.set_mode_offline : R.string.set_mode_online)).setIcon(this.ctx.getResources().getDrawable(R.drawable.ic_menu_offline));
        }
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu, int i, MapView mapView) {
        int indexOf = TileSourceFactory.getTileSources().indexOf(mapView.getTileProvider().getTileSource());
        if (indexOf >= 0) {
            menu.findItem(indexOf + MENU_TILE_SOURCE_STARTING_ID + i).setChecked(true);
        }
        menu.findItem(MENU_OFFLINE + i).setTitle(mapView.useDataConnection() ? R.string.set_mode_offline : R.string.set_mode_online);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem, int i, MapView mapView) {
        boolean z = false;
        int itemId = menuItem.getItemId() - i;
        if (itemId >= MENU_TILE_SOURCE_STARTING_ID && itemId < MENU_TILE_SOURCE_STARTING_ID + TileSourceFactory.getTileSources().size()) {
            mapView.setTileSource((ITileSource) TileSourceFactory.getTileSources().get(itemId - MENU_TILE_SOURCE_STARTING_ID));
            return true;
        } else if (itemId != MENU_OFFLINE) {
            return false;
        } else {
            if (!mapView.useDataConnection()) {
                z = true;
            }
            mapView.setUseDataConnection(z);
            return true;
        }
    }

    public int getLoadingBackgroundColor() {
        return this.mLoadingBackgroundColor;
    }

    public void setLoadingBackgroundColor(int i) {
        if (this.mLoadingBackgroundColor != i) {
            this.mLoadingBackgroundColor = i;
            clearLoadingTile();
        }
    }

    public int getLoadingLineColor() {
        return this.mLoadingLineColor;
    }

    public void setLoadingLineColor(int i) {
        if (this.mLoadingLineColor != i) {
            this.mLoadingLineColor = i;
            clearLoadingTile();
        }
    }

    /* access modifiers changed from: private */
    public Drawable getLoadingTile() {
        int i;
        if (this.userSelectedLoadingDrawable != null) {
            return this.userSelectedLoadingDrawable;
        }
        if (this.mLoadingTile == null && this.mLoadingBackgroundColor != 0) {
            try {
                if (this.mTileProvider.getTileSource() != null) {
                    i = this.mTileProvider.getTileSource().getTileSizePixels();
                } else {
                    i = 256;
                }
                Bitmap createBitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                Paint paint = new Paint();
                canvas.drawColor(this.mLoadingBackgroundColor);
                paint.setColor(this.mLoadingLineColor);
                paint.setStrokeWidth(0.0f);
                int i2 = i / 16;
                for (int i3 = 0; i3 < i; i3 += i2) {
                    canvas.drawLine(0.0f, (float) i3, (float) i, (float) i3, paint);
                    canvas.drawLine((float) i3, 0.0f, (float) i3, (float) i, paint);
                }
                this.mLoadingTile = new BitmapDrawable(createBitmap);
            } catch (OutOfMemoryError e) {
                Log.e(IMapView.LOGTAG, "OutOfMemoryError getting loading tile");
                System.gc();
            } catch (NullPointerException e2) {
                Log.e(IMapView.LOGTAG, "NullPointerException getting loading tile");
                System.gc();
            }
        }
        return this.mLoadingTile;
    }

    private void clearLoadingTile() {
        BitmapDrawable bitmapDrawable = this.mLoadingTile;
        this.mLoadingTile = null;
        if (VERSION.SDK_INT < 9 && bitmapDrawable != null) {
            bitmapDrawable.getBitmap().recycle();
        }
    }

    public void setOvershootTileCache(int i) {
        this.mOvershootTileCache = i;
    }

    public int getOvershootTileCache() {
        return this.mOvershootTileCache;
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
    }
}
