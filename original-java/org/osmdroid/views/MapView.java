package org.osmdroid.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Scroller;
import android.widget.ZoomButtonsController;
import android.widget.ZoomButtonsController.OnZoomListener;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import microsoft.mappoint.TileSystem;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.metalev.multitouch.controller.MultiTouchController;
import org.metalev.multitouch.controller.MultiTouchController.MultiTouchObjectCanvas;
import org.metalev.multitouch.controller.MultiTouchController.PointInfo;
import org.metalev.multitouch.controller.MultiTouchController.PositionAndScale;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IMapController;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.events.MapListener;
import org.osmdroid.events.ZoomEvent;
import org.osmdroid.tileprovider.MapTileProviderArray;
import org.osmdroid.tileprovider.MapTileProviderBase;
import org.osmdroid.tileprovider.MapTileProviderBasic;
import org.osmdroid.tileprovider.modules.MapTileModuleProviderBase;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.util.SimpleInvalidationHandler;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.BoundingBoxE6;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.util.GeometryMath;
import org.osmdroid.views.overlay.DefaultOverlayManager;
import org.osmdroid.views.overlay.Overlay;
import org.osmdroid.views.overlay.OverlayManager;
import org.osmdroid.views.overlay.TilesOverlay;
import org.osmdroid.views.util.constants.MapViewConstants;

public class MapView extends ViewGroup implements MultiTouchObjectCanvas<Object>, IMapView, MapViewConstants {
    private static final double ZOOM_LOG_BASE_INV = (1.0d / Math.log(2.0d));
    private static final double ZOOM_SENSITIVITY = 1.0d;
    private static Method sMotionEventTransformMethod;
    /* access modifiers changed from: private */
    public boolean enableFling;
    private final MapController mController;
    /* access modifiers changed from: private */
    public boolean mEnableZoomController;
    private final GestureDetector mGestureDetector;
    private final Rect mInvalidateRect;
    protected final AtomicBoolean mIsAnimating;
    protected boolean mIsFlinging;
    private boolean mLayoutOccurred;
    private final Point mLayoutPoint;
    protected MapListener mListener;
    private TilesOverlay mMapOverlay;
    protected Integer mMaximumZoomLevel;
    protected Integer mMinimumZoomLevel;
    /* access modifiers changed from: private */
    public MultiTouchController<Object> mMultiTouchController;
    protected float mMultiTouchScale;
    protected PointF mMultiTouchScalePoint;
    private final LinkedList<OnFirstLayoutListener> mOnFirstLayoutListeners;
    private OverlayManager mOverlayManager;
    protected Projection mProjection;
    final Matrix mRotateScaleMatrix;
    final Point mRotateScalePoint;
    protected BoundingBox mScrollableAreaBoundingBox;
    protected Rect mScrollableAreaLimit;
    /* access modifiers changed from: private */
    public final Scroller mScroller;
    protected final AtomicInteger mTargetZoomLevel;
    private MapTileProviderBase mTileProvider;
    private Handler mTileRequestCompleteHandler;
    private boolean mTilesScaledToDpi;
    /* access modifiers changed from: private */
    public final ZoomButtonsController mZoomController;
    private int mZoomLevel;
    private float mapOrientation;
    /* access modifiers changed from: private */
    public boolean pauseFling;

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        public static final int BOTTOM_CENTER = 8;
        public static final int BOTTOM_LEFT = 7;
        public static final int BOTTOM_RIGHT = 9;
        public static final int CENTER = 5;
        public static final int CENTER_LEFT = 4;
        public static final int CENTER_RIGHT = 6;
        public static final int TOP_CENTER = 2;
        public static final int TOP_LEFT = 1;
        public static final int TOP_RIGHT = 3;
        public int alignment;
        public IGeoPoint geoPoint;
        public int offsetX;
        public int offsetY;

        public LayoutParams(int i, int i2, IGeoPoint iGeoPoint, int i3, int i4, int i5) {
            super(i, i2);
            if (iGeoPoint != null) {
                this.geoPoint = iGeoPoint;
            } else {
                this.geoPoint = new GeoPoint(0, 0);
            }
            this.alignment = i3;
            this.offsetX = i4;
            this.offsetY = i5;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.geoPoint = new GeoPoint(0, 0);
            this.alignment = 8;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private class MapViewDoubleClickListener implements OnDoubleTapListener {
        private MapViewDoubleClickListener() {
        }

        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (MapView.this.getOverlayManager().onDoubleTap(motionEvent, MapView.this)) {
                return true;
            }
            MapView.this.getProjection().rotateAndScalePoint((int) motionEvent.getX(), (int) motionEvent.getY(), MapView.this.mRotateScalePoint);
            return MapView.this.zoomInFixing(MapView.this.mRotateScalePoint.x, MapView.this.mRotateScalePoint.y);
        }

        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (MapView.this.getOverlayManager().onDoubleTapEvent(motionEvent, MapView.this)) {
                return true;
            }
            return false;
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (MapView.this.getOverlayManager().onSingleTapConfirmed(motionEvent, MapView.this)) {
                return true;
            }
            return false;
        }
    }

    private class MapViewGestureDetectorListener implements OnGestureListener {
        private MapViewGestureDetectorListener() {
        }

        public boolean onDown(MotionEvent motionEvent) {
            if (MapView.this.mIsFlinging) {
                if (MapView.this.mScroller != null) {
                    MapView.this.mScroller.abortAnimation();
                }
                MapView.this.mIsFlinging = false;
            }
            if (!MapView.this.getOverlayManager().onDown(motionEvent, MapView.this)) {
                MapView.this.mZoomController.setVisible(MapView.this.mEnableZoomController);
            }
            return true;
        }

        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!MapView.this.enableFling || MapView.this.pauseFling) {
                MapView.this.pauseFling = false;
                return false;
            }
            if (MapView.this.getOverlayManager().onFling(motionEvent, motionEvent2, f, f2, MapView.this)) {
                return true;
            }
            int MapSize = TileSystem.MapSize(MapView.this.getZoomLevel(false));
            MapView.this.mIsFlinging = true;
            if (MapView.this.mScroller != null) {
                MapView.this.mScroller.fling(MapView.this.getScrollX(), MapView.this.getScrollY(), (int) (-f), (int) (-f2), -MapSize, MapSize, -MapSize, MapSize);
            }
            return true;
        }

        public void onLongPress(MotionEvent motionEvent) {
            if (MapView.this.mMultiTouchController == null || !MapView.this.mMultiTouchController.isPinching()) {
                MapView.this.getOverlayManager().onLongPress(motionEvent, MapView.this);
            }
        }

        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!MapView.this.getOverlayManager().onScroll(motionEvent, motionEvent2, f, f2, MapView.this)) {
                MapView.this.scrollBy((int) f, (int) f2);
            }
            return true;
        }

        public void onShowPress(MotionEvent motionEvent) {
            MapView.this.getOverlayManager().onShowPress(motionEvent, MapView.this);
        }

        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (MapView.this.getOverlayManager().onSingleTapUp(motionEvent, MapView.this)) {
                return true;
            }
            return false;
        }
    }

    private class MapViewZoomListener implements OnZoomListener {
        private MapViewZoomListener() {
        }

        public void onZoom(boolean z) {
            if (z) {
                MapView.this.getController().zoomIn();
            } else {
                MapView.this.getController().zoomOut();
            }
        }

        public void onVisibilityChanged(boolean z) {
        }
    }

    public interface OnFirstLayoutListener {
        void onFirstLayout(View view, int i, int i2, int i3, int i4);
    }

    public MapView(Context context, MapTileProviderBase mapTileProviderBase, Handler handler, AttributeSet attributeSet) {
        this(context, mapTileProviderBase, handler, attributeSet, Configuration.getInstance().isMapViewHardwareAccelerated());
    }

    public MapView(Context context, MapTileProviderBase mapTileProviderBase, Handler handler, AttributeSet attributeSet, boolean z) {
        MapTileProviderBase mapTileProviderBase2;
        super(context, attributeSet);
        this.mZoomLevel = 0;
        this.mTargetZoomLevel = new AtomicInteger();
        this.mIsAnimating = new AtomicBoolean(false);
        this.mEnableZoomController = false;
        this.mMultiTouchScale = 1.0f;
        this.mMultiTouchScalePoint = new PointF();
        this.mapOrientation = 0.0f;
        this.mInvalidateRect = new Rect();
        this.mTilesScaledToDpi = false;
        this.mRotateScaleMatrix = new Matrix();
        this.mRotateScalePoint = new Point();
        this.mLayoutPoint = new Point();
        this.mOnFirstLayoutListeners = new LinkedList<>();
        this.mLayoutOccurred = false;
        this.enableFling = true;
        this.pauseFling = false;
        if (isInEditMode()) {
            this.mTileRequestCompleteHandler = null;
            this.mController = null;
            this.mZoomController = null;
            this.mScroller = null;
            this.mGestureDetector = null;
            return;
        }
        if (!z && VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        this.mController = new MapController(this);
        this.mScroller = new Scroller(context);
        if (mapTileProviderBase == null) {
            ITileSource tileSourceFromAttributes = getTileSourceFromAttributes(attributeSet);
            if (isInEditMode()) {
                mapTileProviderBase2 = new MapTileProviderArray(tileSourceFromAttributes, null, new MapTileModuleProviderBase[0]);
            } else {
                mapTileProviderBase2 = new MapTileProviderBasic(context.getApplicationContext(), tileSourceFromAttributes);
            }
        } else {
            mapTileProviderBase2 = mapTileProviderBase;
        }
        if (handler == null) {
            handler = new SimpleInvalidationHandler(this);
        }
        this.mTileRequestCompleteHandler = handler;
        this.mTileProvider = mapTileProviderBase2;
        this.mTileProvider.setTileRequestCompleteHandler(this.mTileRequestCompleteHandler);
        updateTileSizeForDensity(this.mTileProvider.getTileSource());
        this.mMapOverlay = new TilesOverlay(this.mTileProvider, context);
        this.mOverlayManager = new DefaultOverlayManager(this.mMapOverlay);
        if (isInEditMode()) {
            this.mZoomController = null;
        } else {
            this.mZoomController = new ZoomButtonsController(this);
            this.mZoomController.setOnZoomListener(new MapViewZoomListener());
        }
        this.mGestureDetector = new GestureDetector(context, new MapViewGestureDetectorListener());
        this.mGestureDetector.setOnDoubleTapListener(new MapViewDoubleClickListener());
    }

    public MapView(Context context, AttributeSet attributeSet) {
        this(context, null, null, attributeSet);
    }

    public MapView(Context context) {
        this(context, null, null, null);
    }

    public MapView(Context context, MapTileProviderBase mapTileProviderBase) {
        this(context, mapTileProviderBase, null);
    }

    public MapView(Context context, MapTileProviderBase mapTileProviderBase, Handler handler) {
        this(context, mapTileProviderBase, handler, null);
    }

    public IMapController getController() {
        return this.mController;
    }

    public List<Overlay> getOverlays() {
        return getOverlayManager().overlays();
    }

    public OverlayManager getOverlayManager() {
        return this.mOverlayManager;
    }

    public void setOverlayManager(OverlayManager overlayManager) {
        this.mOverlayManager = overlayManager;
    }

    public MapTileProviderBase getTileProvider() {
        return this.mTileProvider;
    }

    public Scroller getScroller() {
        return this.mScroller;
    }

    public Handler getTileRequestCompleteHandler() {
        return this.mTileRequestCompleteHandler;
    }

    public int getLatitudeSpan() {
        return getBoundingBoxE6().getLatitudeSpanE6();
    }

    public double getLatitudeSpanDouble() {
        return getBoundingBox().getLatitudeSpan();
    }

    public int getLongitudeSpan() {
        return getBoundingBoxE6().getLongitudeSpanE6();
    }

    public double getLongitudeSpanDouble() {
        return getBoundingBox().getLongitudeSpan();
    }

    public BoundingBoxE6 getBoundingBoxE6() {
        return getProjection().getBoundingBoxE6();
    }

    public BoundingBox getBoundingBox() {
        return getProjection().getBoundingBox();
    }

    public Rect getScreenRect(Rect rect) {
        Rect intrinsicScreenRect = getIntrinsicScreenRect(rect);
        if (!(getMapOrientation() == 0.0f || getMapOrientation() == 180.0f)) {
            GeometryMath.getBoundingBoxForRotatatedRectangle(intrinsicScreenRect, intrinsicScreenRect.centerX(), intrinsicScreenRect.centerY(), getMapOrientation(), intrinsicScreenRect);
        }
        return intrinsicScreenRect;
    }

    public Rect getIntrinsicScreenRect(Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        rect.set(0, 0, getWidth(), getHeight());
        return rect;
    }

    public Projection getProjection() {
        if (this.mProjection == null) {
            this.mProjection = new Projection(this);
        }
        return this.mProjection;
    }

    /* access modifiers changed from: protected */
    public void setProjection(Projection projection) {
        this.mProjection = projection;
    }

    /* access modifiers changed from: 0000 */
    public void setMapCenter(IGeoPoint iGeoPoint) {
        getController().animateTo(iGeoPoint);
    }

    /* access modifiers changed from: 0000 */
    public void setMapCenter(int i, int i2) {
        setMapCenter(new GeoPoint(i, i2));
    }

    /* access modifiers changed from: 0000 */
    public void setMapCenter(double d, double d2) {
        setMapCenter(new GeoPoint(d, d2));
    }

    public boolean isTilesScaledToDpi() {
        return this.mTilesScaledToDpi;
    }

    public void setTilesScaledToDpi(boolean z) {
        this.mTilesScaledToDpi = z;
        updateTileSizeForDensity(getTileProvider().getTileSource());
    }

    private void updateTileSizeForDensity(ITileSource iTileSource) {
        int tileSizePixels = iTileSource.getTileSizePixels();
        float f = (getResources().getDisplayMetrics().density * 256.0f) / ((float) tileSizePixels);
        float f2 = (float) tileSizePixels;
        if (!isTilesScaledToDpi()) {
            f = 1.0f;
        }
        int i = (int) (f * f2);
        if (Configuration.getInstance().isDebugMapView()) {
            Log.d(IMapView.LOGTAG, "Scaling tiles to " + i);
        }
        TileSystem.setTileSize(i);
    }

    public void setTileSource(ITileSource iTileSource) {
        this.mTileProvider.setTileSource(iTileSource);
        updateTileSizeForDensity(iTileSource);
        checkZoomButtons();
        setZoomLevel(this.mZoomLevel);
        postInvalidate();
    }

    /* access modifiers changed from: 0000 */
    public int setZoomLevel(int i) {
        int max = Math.max(getMinZoomLevel(), Math.min(getMaxZoomLevel(), i));
        int i2 = this.mZoomLevel;
        if (max != i2) {
            if (this.mScroller != null) {
                this.mScroller.forceFinished(true);
            }
            this.mIsFlinging = false;
        }
        IGeoPoint mapCenter = getMapCenter();
        this.mZoomLevel = max;
        setProjection(null);
        checkZoomButtons();
        if (isLayoutOccurred()) {
            getController().setCenter(mapCenter);
            Point point = new Point();
            Projection projection = getProjection();
            if (getOverlayManager().onSnapToItem((int) this.mMultiTouchScalePoint.x, (int) this.mMultiTouchScalePoint.y, point, this)) {
                getController().animateTo(projection.fromPixels(point.x, point.y, null));
            }
            this.mTileProvider.rescaleCache(projection, max, i2, getScreenRect(null));
            this.pauseFling = true;
        }
        if (!(max == i2 || this.mListener == null)) {
            this.mListener.onZoom(new ZoomEvent(this, max));
        }
        requestLayout();
        return this.mZoomLevel;
    }

    @Deprecated
    public void zoomToBoundingBox(BoundingBoxE6 boundingBoxE6) {
        zoomToBoundingBox(new BoundingBox(((double) boundingBoxE6.getLatNorthE6()) / 1000000.0d, ((double) boundingBoxE6.getLonEastE6()) / 1000000.0d, (double) (boundingBoxE6.getLatSouthE6() / CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256), ((double) boundingBoxE6.getLonWestE6()) / 1000000.0d), false);
    }

    public void zoomToBoundingBox(BoundingBox boundingBox, boolean z) {
        double latitudeSpan;
        double longitudeSpan;
        BoundingBox boundingBox2 = getBoundingBox();
        if (this.mZoomLevel == getMaxZoomLevel()) {
            latitudeSpan = boundingBox2.getLatitudeSpan();
        } else {
            latitudeSpan = boundingBox2.getLatitudeSpan() / Math.pow(2.0d, (double) (getMaxZoomLevel() - this.mZoomLevel));
        }
        double maxZoomLevel = ((double) getMaxZoomLevel()) - Math.ceil(Math.log(boundingBox.getLatitudeSpan() / latitudeSpan) / Math.log(2.0d));
        if (this.mZoomLevel == getMaxZoomLevel()) {
            longitudeSpan = boundingBox2.getLongitudeSpan();
        } else {
            longitudeSpan = boundingBox2.getLongitudeSpan() / Math.pow(2.0d, (double) (getMaxZoomLevel() - this.mZoomLevel));
        }
        double maxZoomLevel2 = ((double) getMaxZoomLevel()) - Math.ceil(Math.log(boundingBox.getLongitudeSpan() / longitudeSpan) / Math.log(2.0d));
        if (Configuration.getInstance().isDebugMode()) {
            Log.d(IMapView.LOGTAG, "current bounds " + boundingBox2.toString());
            Log.d(IMapView.LOGTAG, "ZoomToBoundingBox calculations: " + latitudeSpan + Constants.ACCEPT_TIME_SEPARATOR_SP + longitudeSpan + Constants.ACCEPT_TIME_SEPARATOR_SP + maxZoomLevel + Constants.ACCEPT_TIME_SEPARATOR_SP + maxZoomLevel2);
        }
        if (z) {
            getController().zoomTo((int) (maxZoomLevel < maxZoomLevel2 ? maxZoomLevel : maxZoomLevel2));
        } else {
            IMapController controller = getController();
            if (maxZoomLevel >= maxZoomLevel2) {
                maxZoomLevel = maxZoomLevel2;
            }
            controller.setZoom((int) maxZoomLevel);
        }
        getController().setCenter(new GeoPoint(boundingBox.getCenter().getLatitude(), boundingBox.getCenter().getLongitude()));
    }

    public int getZoomLevel() {
        return getZoomLevel(true);
    }

    public int getZoomLevel(boolean z) {
        if (!z || !isAnimating()) {
            return this.mZoomLevel;
        }
        return this.mTargetZoomLevel.get();
    }

    public int getMinZoomLevel() {
        return this.mMinimumZoomLevel == null ? this.mMapOverlay.getMinimumZoomLevel() : this.mMinimumZoomLevel.intValue();
    }

    public int getMaxZoomLevel() {
        return this.mMaximumZoomLevel == null ? this.mMapOverlay.getMaximumZoomLevel() : this.mMaximumZoomLevel.intValue();
    }

    public void setMinZoomLevel(Integer num) {
        this.mMinimumZoomLevel = num;
    }

    public void setMaxZoomLevel(Integer num) {
        this.mMaximumZoomLevel = num;
    }

    public boolean canZoomIn() {
        if ((isAnimating() ? this.mTargetZoomLevel.get() : this.mZoomLevel) >= getMaxZoomLevel()) {
            return false;
        }
        return true;
    }

    public boolean canZoomOut() {
        if ((isAnimating() ? this.mTargetZoomLevel.get() : this.mZoomLevel) <= getMinZoomLevel()) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean zoomIn() {
        return getController().zoomIn();
    }

    /* access modifiers changed from: 0000 */
    @Deprecated
    public boolean zoomInFixing(IGeoPoint iGeoPoint) {
        Point pixels = getProjection().toPixels(iGeoPoint, null);
        return getController().zoomInFixing(pixels.x, pixels.y);
    }

    /* access modifiers changed from: 0000 */
    @Deprecated
    public boolean zoomInFixing(int i, int i2) {
        return getController().zoomInFixing(i, i2);
    }

    /* access modifiers changed from: 0000 */
    public boolean zoomOut() {
        return getController().zoomOut();
    }

    /* access modifiers changed from: 0000 */
    @Deprecated
    public boolean zoomOutFixing(IGeoPoint iGeoPoint) {
        Point pixels = getProjection().toPixels(iGeoPoint, null);
        return zoomOutFixing(pixels.x, pixels.y);
    }

    /* access modifiers changed from: 0000 */
    @Deprecated
    public boolean zoomOutFixing(int i, int i2) {
        return getController().zoomOutFixing(i, i2);
    }

    public IGeoPoint getMapCenter() {
        return getProjection().fromPixels(getWidth() / 2, getHeight() / 2, null);
    }

    public void setMapOrientation(float f) {
        this.mapOrientation = f % 360.0f;
        requestLayout();
        invalidate();
    }

    public float getMapOrientation() {
        return this.mapOrientation;
    }

    public boolean useDataConnection() {
        return this.mMapOverlay.useDataConnection();
    }

    public void setUseDataConnection(boolean z) {
        this.mMapOverlay.setUseDataConnection(z);
    }

    @Deprecated
    public void setScrollableAreaLimit(BoundingBoxE6 boundingBoxE6) {
        this.mScrollableAreaBoundingBox = new BoundingBox(((double) boundingBoxE6.getLatNorthE6()) / 1000000.0d, ((double) boundingBoxE6.getLonEastE6()) / 1000000.0d, ((double) boundingBoxE6.getLatSouthE6()) / 1000000.0d, ((double) boundingBoxE6.getLonWestE6()) / 1000000.0d);
        if (boundingBoxE6 == null) {
            this.mScrollableAreaLimit = null;
            return;
        }
        Point LatLongToPixelXY = TileSystem.LatLongToPixelXY(((double) boundingBoxE6.getLatNorthE6()) / 1000000.0d, ((double) boundingBoxE6.getLonWestE6()) / 1000000.0d, TileSystem.getMaximumZoomLevel(), null);
        Point LatLongToPixelXY2 = TileSystem.LatLongToPixelXY(((double) boundingBoxE6.getLatSouthE6()) / 1000000.0d, ((double) boundingBoxE6.getLonEastE6()) / 1000000.0d, TileSystem.getMaximumZoomLevel(), null);
        this.mScrollableAreaLimit = new Rect(LatLongToPixelXY.x, LatLongToPixelXY.y, LatLongToPixelXY2.x, LatLongToPixelXY2.y);
    }

    public void setScrollableAreaLimitDouble(BoundingBox boundingBox) {
        this.mScrollableAreaBoundingBox = boundingBox;
        if (boundingBox == null) {
            this.mScrollableAreaLimit = null;
            return;
        }
        Point LatLongToPixelXY = TileSystem.LatLongToPixelXY(boundingBox.getLatNorth(), boundingBox.getLonWest(), 23, null);
        Point LatLongToPixelXY2 = TileSystem.LatLongToPixelXY(boundingBox.getLatSouth(), boundingBox.getLonEast(), 23, null);
        this.mScrollableAreaLimit = new Rect(LatLongToPixelXY.x, LatLongToPixelXY.y, LatLongToPixelXY2.x, LatLongToPixelXY2.y);
    }

    public BoundingBox getScrollableAreaLimit() {
        return this.mScrollableAreaBoundingBox;
    }

    public void invalidateMapCoordinates(Rect rect) {
        invalidateMapCoordinates(rect.left, rect.top, rect.right, rect.bottom, false);
    }

    public void invalidateMapCoordinates(int i, int i2, int i3, int i4) {
        invalidateMapCoordinates(i, i2, i3, i4, false);
    }

    public void postInvalidateMapCoordinates(int i, int i2, int i3, int i4) {
        invalidateMapCoordinates(i, i2, i3, i4, true);
    }

    private void invalidateMapCoordinates(int i, int i2, int i3, int i4, boolean z) {
        this.mInvalidateRect.set(i, i2, i3, i4);
        this.mInvalidateRect.offset(getScrollX(), getScrollY());
        int scrollX = getScrollX() + (getWidth() / 2);
        int scrollY = getScrollY() + (getHeight() / 2);
        if (getMapOrientation() != 0.0f) {
            GeometryMath.getBoundingBoxForRotatatedRectangle(this.mInvalidateRect, scrollX, scrollY, getMapOrientation() + 180.0f, this.mInvalidateRect);
        }
        if (z) {
            super.postInvalidate(this.mInvalidateRect.left, this.mInvalidateRect.top, this.mInvalidateRect.right, this.mInvalidateRect.bottom);
        } else {
            super.invalidate(this.mInvalidateRect);
        }
    }

    /* access modifiers changed from: protected */
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2, null, 8, 0, 0);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* access modifiers changed from: protected */
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        measureChildren(i, i2);
        super.onMeasure(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int measuredWidth = childAt.getMeasuredWidth();
                getProjection().toPixels(layoutParams.geoPoint, this.mLayoutPoint);
                if (getMapOrientation() != 0.0f) {
                    Point rotateAndScalePoint = getProjection().rotateAndScalePoint(this.mLayoutPoint.x, this.mLayoutPoint.y, null);
                    this.mLayoutPoint.x = rotateAndScalePoint.x;
                    this.mLayoutPoint.y = rotateAndScalePoint.y;
                }
                getProjection().toMercatorPixels(this.mLayoutPoint.x, this.mLayoutPoint.y, this.mLayoutPoint);
                int i6 = this.mLayoutPoint.x;
                int i7 = this.mLayoutPoint.y;
                switch (layoutParams.alignment) {
                    case 1:
                        i6 += getPaddingLeft();
                        i7 += getPaddingTop();
                        break;
                    case 2:
                        i6 = (i6 + getPaddingLeft()) - (measuredWidth / 2);
                        i7 += getPaddingTop();
                        break;
                    case 3:
                        i6 = (i6 + getPaddingLeft()) - measuredWidth;
                        i7 += getPaddingTop();
                        break;
                    case 4:
                        i6 += getPaddingLeft();
                        i7 = (i7 + getPaddingTop()) - (measuredHeight / 2);
                        break;
                    case 5:
                        i6 = (i6 + getPaddingLeft()) - (measuredWidth / 2);
                        i7 = (i7 + getPaddingTop()) - (measuredHeight / 2);
                        break;
                    case 6:
                        i6 = (i6 + getPaddingLeft()) - measuredWidth;
                        i7 = (i7 + getPaddingTop()) - (measuredHeight / 2);
                        break;
                    case 7:
                        i6 += getPaddingLeft();
                        i7 = (i7 + getPaddingTop()) - measuredHeight;
                        break;
                    case 8:
                        i6 = (i6 + getPaddingLeft()) - (measuredWidth / 2);
                        i7 = (i7 + getPaddingTop()) - measuredHeight;
                        break;
                    case 9:
                        i6 = (i6 + getPaddingLeft()) - measuredWidth;
                        i7 = (i7 + getPaddingTop()) - measuredHeight;
                        break;
                }
                int i8 = i6 + layoutParams.offsetX;
                int i9 = layoutParams.offsetY + i7;
                childAt.layout(i8, i9, i8 + measuredWidth, measuredHeight + i9);
            }
        }
        if (!isLayoutOccurred()) {
            this.mLayoutOccurred = true;
            Iterator it = this.mOnFirstLayoutListeners.iterator();
            while (it.hasNext()) {
                ((OnFirstLayoutListener) it.next()).onFirstLayout(this, i, i2, i3, i4);
            }
            this.mOnFirstLayoutListeners.clear();
        }
        setProjection(null);
    }

    public void addOnFirstLayoutListener(OnFirstLayoutListener onFirstLayoutListener) {
        if (!isLayoutOccurred()) {
            this.mOnFirstLayoutListeners.add(onFirstLayoutListener);
        }
    }

    public void removeOnFirstLayoutListener(OnFirstLayoutListener onFirstLayoutListener) {
        this.mOnFirstLayoutListeners.remove(onFirstLayoutListener);
    }

    public boolean isLayoutOccurred() {
        return this.mLayoutOccurred;
    }

    public void onDetach() {
        getOverlayManager().onDetach(this);
        this.mTileProvider.detach();
        this.mTileProvider.clearTileCache();
        this.mZoomController.setVisible(false);
        if (this.mTileRequestCompleteHandler instanceof SimpleInvalidationHandler) {
            ((SimpleInvalidationHandler) this.mTileRequestCompleteHandler).destroy();
        }
        this.mTileRequestCompleteHandler = null;
        if (this.mProjection != null) {
            this.mProjection.detach();
        }
        this.mProjection = null;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return getOverlayManager().onKeyDown(i, keyEvent, this) || super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return getOverlayManager().onKeyUp(i, keyEvent, this) || super.onKeyUp(i, keyEvent);
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (getOverlayManager().onTrackballEvent(motionEvent, this)) {
            return true;
        }
        scrollBy((int) (motionEvent.getX() * 25.0f), (int) (motionEvent.getY() * 25.0f));
        return super.onTrackballEvent(motionEvent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (Configuration.getInstance().isDebugMapView()) {
            Log.d(IMapView.LOGTAG, "dispatchTouchEvent(" + motionEvent + ")");
        }
        if (this.mZoomController.isVisible() && this.mZoomController.onTouch(this, motionEvent)) {
            return true;
        }
        MotionEvent rotateTouchEvent = rotateTouchEvent(motionEvent);
        try {
            if (super.dispatchTouchEvent(motionEvent)) {
                if (Configuration.getInstance().isDebugMapView()) {
                    Log.d(IMapView.LOGTAG, "super handled onTouchEvent");
                }
            } else if (!getOverlayManager().onTouchEvent(rotateTouchEvent, this)) {
                if (this.mMultiTouchController == null || !this.mMultiTouchController.onTouchEvent(motionEvent)) {
                    z = false;
                } else {
                    if (Configuration.getInstance().isDebugMapView()) {
                        Log.d(IMapView.LOGTAG, "mMultiTouchController handled onTouchEvent");
                    }
                    z = true;
                }
                if (this.mGestureDetector.onTouchEvent(rotateTouchEvent)) {
                    if (Configuration.getInstance().isDebugMapView()) {
                        Log.d(IMapView.LOGTAG, "mGestureDetector handled onTouchEvent");
                    }
                    z = true;
                }
                if (!z) {
                    if (rotateTouchEvent != motionEvent) {
                        rotateTouchEvent.recycle();
                    }
                    if (Configuration.getInstance().isDebugMapView()) {
                        Log.d(IMapView.LOGTAG, "no-one handled onTouchEvent");
                    }
                    return false;
                } else if (rotateTouchEvent == motionEvent) {
                    return true;
                } else {
                    rotateTouchEvent.recycle();
                    return true;
                }
            } else if (rotateTouchEvent == motionEvent) {
                return true;
            } else {
                rotateTouchEvent.recycle();
                return true;
            }
        } finally {
            if (rotateTouchEvent != motionEvent) {
                rotateTouchEvent.recycle();
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    private MotionEvent rotateTouchEvent(MotionEvent motionEvent) {
        if (getMapOrientation() == 0.0f) {
            return motionEvent;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (VERSION.SDK_INT < 11) {
            getProjection().unrotateAndScalePoint((int) motionEvent.getX(), (int) motionEvent.getY(), this.mRotateScalePoint);
            obtain.setLocation((float) this.mRotateScalePoint.x, (float) this.mRotateScalePoint.y);
        } else {
            try {
                if (sMotionEventTransformMethod == null) {
                    sMotionEventTransformMethod = MotionEvent.class.getDeclaredMethod("transform", new Class[]{Matrix.class});
                }
                sMotionEventTransformMethod.invoke(obtain, new Object[]{getProjection().getInvertedScaleRotateCanvasMatrix()});
            } catch (SecurityException e) {
                ThrowableExtension.printStackTrace(e);
            } catch (NoSuchMethodException e2) {
                ThrowableExtension.printStackTrace(e2);
            } catch (IllegalArgumentException e3) {
                ThrowableExtension.printStackTrace(e3);
            } catch (IllegalAccessException e4) {
                ThrowableExtension.printStackTrace(e4);
            } catch (InvocationTargetException e5) {
                ThrowableExtension.printStackTrace(e5);
            }
        }
        return obtain;
    }

    public void computeScroll() {
        if (this.mScroller != null && this.mScroller.computeScrollOffset()) {
            if (this.mScroller.isFinished()) {
                scrollTo(this.mScroller.getCurrX(), this.mScroller.getCurrY());
                setZoomLevel(this.mZoomLevel);
                this.mIsFlinging = false;
            } else {
                scrollTo(this.mScroller.getCurrX(), this.mScroller.getCurrY());
            }
            postInvalidate();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void scrollTo(int r11, int r12) {
        /*
            r10 = this;
            r3 = 0
            int r0 = r10.getZoomLevel(r3)
            int r0 = microsoft.mappoint.TileSystem.MapSize(r0)
            r2 = r11
        L_0x000a:
            if (r2 >= 0) goto L_0x000e
            int r2 = r2 + r0
            goto L_0x000a
        L_0x000e:
            if (r2 < r0) goto L_0x00b9
            int r2 = r2 - r0
            goto L_0x000e
        L_0x0012:
            if (r1 >= 0) goto L_0x0016
            int r1 = r1 + r0
            goto L_0x0012
        L_0x0016:
            if (r1 < r0) goto L_0x001a
            int r1 = r1 - r0
            goto L_0x0016
        L_0x001a:
            android.graphics.Rect r0 = r10.mScrollableAreaLimit
            if (r0 == 0) goto L_0x00b6
            int r0 = microsoft.mappoint.TileSystem.getMaximumZoomLevel()
            int r3 = r10.getZoomLevel(r3)
            int r4 = r0 - r3
            android.graphics.Rect r0 = r10.mScrollableAreaLimit
            int r0 = r0.left
            int r3 = r0 >> r4
            android.graphics.Rect r0 = r10.mScrollableAreaLimit
            int r0 = r0.top
            int r0 = r0 >> r4
            android.graphics.Rect r5 = r10.mScrollableAreaLimit
            int r5 = r5.right
            int r5 = r5 >> r4
            android.graphics.Rect r6 = r10.mScrollableAreaLimit
            int r6 = r6.bottom
            int r4 = r6 >> r4
            int r6 = r5 - r3
            int r7 = r4 - r0
            int r8 = r10.getWidth()
            int r9 = r10.getHeight()
            if (r6 > r8) goto L_0x0090
            if (r2 <= r3) goto L_0x0089
            r2 = r3
        L_0x004f:
            if (r7 > r9) goto L_0x00a4
            if (r1 <= r0) goto L_0x009b
            r6 = r0
            r7 = r2
        L_0x0055:
            super.scrollTo(r7, r6)
            r0 = 0
            r10.setProjection(r0)
            float r0 = r10.getMapOrientation()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007a
            r1 = 1
            int r2 = r10.getLeft()
            int r3 = r10.getTop()
            int r4 = r10.getRight()
            int r5 = r10.getBottom()
            r0 = r10
            r0.onLayout(r1, r2, r3, r4, r5)
        L_0x007a:
            org.osmdroid.events.MapListener r0 = r10.mListener
            if (r0 == 0) goto L_0x0088
            org.osmdroid.events.ScrollEvent r0 = new org.osmdroid.events.ScrollEvent
            r0.<init>(r10, r7, r6)
            org.osmdroid.events.MapListener r1 = r10.mListener
            r1.onScroll(r0)
        L_0x0088:
            return
        L_0x0089:
            int r3 = r2 + r8
            if (r3 >= r5) goto L_0x004f
            int r2 = r5 - r8
            goto L_0x004f
        L_0x0090:
            if (r2 >= r3) goto L_0x0094
            r2 = r3
            goto L_0x004f
        L_0x0094:
            int r3 = r2 + r8
            if (r3 <= r5) goto L_0x004f
            int r2 = r5 - r8
            goto L_0x004f
        L_0x009b:
            int r0 = r1 + r9
            if (r0 >= r4) goto L_0x00b6
            int r0 = r4 - r9
            r6 = r0
            r7 = r2
            goto L_0x0055
        L_0x00a4:
            int r3 = r1 + 0
            if (r3 >= r0) goto L_0x00ad
            int r0 = r0 + 0
            r6 = r0
            r7 = r2
            goto L_0x0055
        L_0x00ad:
            int r0 = r1 + r9
            if (r0 <= r4) goto L_0x00b6
            int r0 = r4 - r9
            r6 = r0
            r7 = r2
            goto L_0x0055
        L_0x00b6:
            r6 = r1
            r7 = r2
            goto L_0x0055
        L_0x00b9:
            r1 = r12
            goto L_0x0012
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.views.MapView.scrollTo(int, int):void");
    }

    public void setBackgroundColor(int i) {
        this.mMapOverlay.setLoadingBackgroundColor(i);
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        long currentTimeMillis = System.currentTimeMillis();
        canvas.save();
        this.mRotateScaleMatrix.reset();
        canvas.translate((float) getScrollX(), (float) getScrollY());
        this.mRotateScaleMatrix.preScale(this.mMultiTouchScale, this.mMultiTouchScale, this.mMultiTouchScalePoint.x, this.mMultiTouchScalePoint.y);
        this.mRotateScaleMatrix.preRotate(this.mapOrientation, (float) (getWidth() / 2), (float) (getHeight() / 2));
        canvas.concat(this.mRotateScaleMatrix);
        setProjection(null);
        try {
            getOverlayManager().onDraw(canvas, this);
            canvas.restore();
            super.dispatchDraw(canvas);
        } catch (Exception e) {
            Log.e(IMapView.LOGTAG, "error dispatchDraw, probably in edit mode", e);
        }
        if (Configuration.getInstance().isDebugMapView()) {
            Log.d(IMapView.LOGTAG, "Rendering overall: " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        this.mZoomController.setVisible(false);
        onDetach();
        super.onDetachedFromWindow();
    }

    public boolean isAnimating() {
        return this.mIsAnimating.get();
    }

    public Object getDraggableObjectAtPoint(PointInfo pointInfo) {
        if (isAnimating()) {
            return null;
        }
        this.mMultiTouchScalePoint.x = pointInfo.getX();
        this.mMultiTouchScalePoint.y = pointInfo.getY();
        return this;
    }

    public void getPositionAndScale(Object obj, PositionAndScale positionAndScale) {
        positionAndScale.set(0.0f, 0.0f, true, this.mMultiTouchScale, false, 0.0f, 0.0f, false, 0.0f);
    }

    public void selectObject(Object obj, PointInfo pointInfo) {
        if (obj == null && this.mMultiTouchScale != 1.0f) {
            int round = Math.round((float) (Math.log((double) this.mMultiTouchScale) * ZOOM_LOG_BASE_INV));
            if (round != 0) {
                Rect screenRect = getProjection().getScreenRect();
                getProjection().unrotateAndScalePoint(screenRect.centerX(), screenRect.centerY(), this.mRotateScalePoint);
                Point mercatorPixels = getProjection().toMercatorPixels(this.mRotateScalePoint.x, this.mRotateScalePoint.y, null);
                scrollTo(mercatorPixels.x - (getWidth() / 2), mercatorPixels.y - (getHeight() / 2));
            }
            setZoomLevel(round + this.mZoomLevel);
        }
        this.mMultiTouchScale = 1.0f;
    }

    public boolean setPositionAndScale(Object obj, PositionAndScale positionAndScale, PointInfo pointInfo) {
        float f = 1.0f;
        float scale = positionAndScale.getScale();
        if (scale > 1.0f && !canZoomIn()) {
            scale = 1.0f;
        }
        if (scale >= 1.0f || canZoomOut()) {
            f = scale;
        }
        this.mMultiTouchScale = f;
        requestLayout();
        invalidate();
        return true;
    }

    public void setMapListener(MapListener mapListener) {
        this.mListener = mapListener;
    }

    private void checkZoomButtons() {
        this.mZoomController.setZoomInEnabled(canZoomIn());
        this.mZoomController.setZoomOutEnabled(canZoomOut());
    }

    public void setBuiltInZoomControls(boolean z) {
        this.mEnableZoomController = z;
        checkZoomButtons();
    }

    public void setMultiTouchControls(boolean z) {
        this.mMultiTouchController = z ? new MultiTouchController<>(this, false) : null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0076  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private org.osmdroid.tileprovider.tilesource.ITileSource getTileSourceFromAttributes(android.util.AttributeSet r7) {
        /*
            r6 = this;
            r5 = 0
            org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase r0 = org.osmdroid.tileprovider.tilesource.TileSourceFactory.DEFAULT_TILE_SOURCE
            if (r7 == 0) goto L_0x0074
            java.lang.String r1 = "tilesource"
            java.lang.String r1 = r7.getAttributeValue(r5, r1)
            if (r1 == 0) goto L_0x0074
            org.osmdroid.tileprovider.tilesource.ITileSource r1 = org.osmdroid.tileprovider.tilesource.TileSourceFactory.getTileSource(r1)     // Catch:{ IllegalArgumentException -> 0x005b }
            java.lang.String r2 = "OsmDroid"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x005b }
            r3.<init>()     // Catch:{ IllegalArgumentException -> 0x005b }
            java.lang.String r4 = "Using tile source specified in layout attributes: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ IllegalArgumentException -> 0x005b }
            java.lang.StringBuilder r3 = r3.append(r1)     // Catch:{ IllegalArgumentException -> 0x005b }
            java.lang.String r3 = r3.toString()     // Catch:{ IllegalArgumentException -> 0x005b }
            android.util.Log.i(r2, r3)     // Catch:{ IllegalArgumentException -> 0x005b }
        L_0x0029:
            if (r7 == 0) goto L_0x003e
            boolean r0 = r1 instanceof org.osmdroid.tileprovider.tilesource.IStyledTileSource
            if (r0 == 0) goto L_0x003e
            java.lang.String r0 = "style"
            java.lang.String r2 = r7.getAttributeValue(r5, r0)
            if (r2 != 0) goto L_0x0076
            java.lang.String r0 = "OsmDroid"
            java.lang.String r2 = "Using default style: 1"
            android.util.Log.i(r0, r2)
        L_0x003e:
            java.lang.String r0 = "OsmDroid"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Using tile source: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r1.name()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            android.util.Log.i(r0, r2)
            return r1
        L_0x005b:
            r1 = move-exception
            java.lang.String r1 = "OsmDroid"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Invalid tile source specified in layout attributes: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.String r2 = r2.toString()
            android.util.Log.w(r1, r2)
        L_0x0074:
            r1 = r0
            goto L_0x0029
        L_0x0076:
            java.lang.String r0 = "OsmDroid"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Using style specified in layout attributes: "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r2)
            java.lang.String r3 = r3.toString()
            android.util.Log.i(r0, r3)
            r0 = r1
            org.osmdroid.tileprovider.tilesource.IStyledTileSource r0 = (org.osmdroid.tileprovider.tilesource.IStyledTileSource) r0
            r0.setStyle(r2)
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.views.MapView.getTileSourceFromAttributes(android.util.AttributeSet):org.osmdroid.tileprovider.tilesource.ITileSource");
    }

    public void setFlingEnabled(boolean z) {
        this.enableFling = z;
    }

    public boolean isFlingEnabled() {
        return this.enableFling;
    }

    public void setTileProvider(MapTileProviderBase mapTileProviderBase) {
        this.mTileProvider.detach();
        this.mTileProvider.clearTileCache();
        this.mTileProvider = mapTileProviderBase;
        this.mTileProvider.setTileRequestCompleteHandler(this.mTileRequestCompleteHandler);
        updateTileSizeForDensity(this.mTileProvider.getTileSource());
        this.mMapOverlay = new TilesOverlay(this.mTileProvider, getContext());
        this.mOverlayManager.setTilesOverlay(this.mMapOverlay);
        invalidate();
    }
}
