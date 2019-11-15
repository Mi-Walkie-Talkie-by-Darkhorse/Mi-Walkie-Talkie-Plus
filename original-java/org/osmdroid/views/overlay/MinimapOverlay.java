package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.MotionEvent;
import org.osmdroid.tileprovider.MapTileProviderBase;
import org.osmdroid.tileprovider.MapTileProviderBasic;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.util.TileSystem;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;

public class MinimapOverlay extends TilesOverlay {
    private Point mBottomRightMercator;
    private int mHeight;
    private final Rect mIntersectionRect;
    private final Rect mMiniMapCanvasRect;
    private int mPadding;
    private final Paint mPaint;
    private Projection mProjection;
    private final Rect mTileArea;
    private Point mTopLeftMercator;
    private int mWidth;
    private int mZoomDifference;

    public MinimapOverlay(Context context, Handler handler, MapTileProviderBase mapTileProviderBase, int i) {
        super(mapTileProviderBase, context);
        this.mWidth = 100;
        this.mHeight = 100;
        this.mPadding = 10;
        this.mTileArea = new Rect();
        this.mMiniMapCanvasRect = new Rect();
        this.mIntersectionRect = new Rect();
        this.mTopLeftMercator = new Point();
        this.mBottomRightMercator = new Point();
        setZoomDifference(i);
        this.mTileProvider.setTileRequestCompleteHandler(handler);
        setLoadingLineColor(getLoadingBackgroundColor());
        float f = context.getResources().getDisplayMetrics().density;
        this.mWidth = (int) (((float) this.mWidth) * f);
        this.mHeight = (int) (f * ((float) this.mHeight));
        this.mPaint = new Paint();
        this.mPaint.setColor(-7829368);
        this.mPaint.setStyle(Style.FILL);
        this.mPaint.setStrokeWidth(2.0f);
    }

    public MinimapOverlay(Context context, Handler handler, MapTileProviderBase mapTileProviderBase) {
        this(context, handler, mapTileProviderBase, 3);
    }

    public MinimapOverlay(Context context, Handler handler) {
        this(context, handler, new MapTileProviderBasic(context));
    }

    public void setTileSource(ITileSource iTileSource) {
        this.mTileProvider.setTileSource(iTileSource);
    }

    public int getZoomDifference() {
        return this.mZoomDifference;
    }

    public void setZoomDifference(int i) {
        this.mZoomDifference = i;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        int i;
        if (!z && !mapView.isAnimating()) {
            this.mProjection = mapView.getProjection();
            int zoomLevel = this.mProjection.getZoomLevel();
            Rect screenRect = this.mProjection.getScreenRect();
            this.mProjection.toMercatorPixels(screenRect.left, screenRect.top, this.mTopLeftMercator);
            this.mProjection.toMercatorPixels(screenRect.right, screenRect.bottom, this.mBottomRightMercator);
            this.mTileArea.set(this.mTopLeftMercator.x, this.mTopLeftMercator.y, this.mBottomRightMercator.x, this.mBottomRightMercator.y);
            int zoomDifference = getZoomDifference();
            if (zoomLevel - getZoomDifference() < this.mTileProvider.getMinimumZoomLevel()) {
                i = zoomDifference + ((zoomLevel - getZoomDifference()) - this.mTileProvider.getMinimumZoomLevel());
            } else {
                i = zoomDifference;
            }
            this.mTileArea.set(this.mTileArea.left >> i, this.mTileArea.top >> i, this.mTileArea.right >> i, this.mTileArea.bottom >> i);
            this.mTileArea.set(this.mTileArea.centerX() - (getWidth() / 2), this.mTileArea.centerY() - (getHeight() / 2), this.mTileArea.centerX() + (getWidth() / 2), this.mTileArea.centerY() + (getHeight() / 2));
            this.mMiniMapCanvasRect.set((screenRect.right - getPadding()) - getWidth(), (screenRect.bottom - getPadding()) - getHeight(), screenRect.right - getPadding(), screenRect.bottom - getPadding());
            canvas.drawRect((float) (this.mMiniMapCanvasRect.left - 2), (float) (this.mMiniMapCanvasRect.top - 2), (float) (this.mMiniMapCanvasRect.right + 2), (float) (this.mMiniMapCanvasRect.bottom + 2), this.mPaint);
            super.drawTiles(canvas, this.mProjection, this.mProjection.getZoomLevel() - i, TileSystem.getTileSize(), this.mTileArea);
        }
    }

    /* access modifiers changed from: protected */
    public void onTileReadyToDraw(Canvas canvas, Drawable drawable, Rect rect) {
        int i = (rect.left - this.mTileArea.left) + this.mMiniMapCanvasRect.left;
        int i2 = (rect.top - this.mTileArea.top) + this.mMiniMapCanvasRect.top;
        drawable.setBounds(i, i2, rect.width() + i, rect.height() + i2);
        canvas.save();
        if (this.mIntersectionRect.setIntersect(canvas.getClipBounds(), this.mMiniMapCanvasRect)) {
            canvas.clipRect(this.mIntersectionRect);
            drawable.draw(canvas);
        }
        canvas.restore();
    }

    public boolean onSingleTapUp(MotionEvent motionEvent, MapView mapView) {
        if (this.mMiniMapCanvasRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return true;
        }
        return false;
    }

    public boolean onDoubleTap(MotionEvent motionEvent, MapView mapView) {
        if (this.mMiniMapCanvasRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return true;
        }
        return false;
    }

    public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
        if (this.mMiniMapCanvasRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return true;
        }
        return false;
    }

    public boolean isOptionsMenuEnabled() {
        return false;
    }

    public void setWidth(int i) {
        this.mWidth = i;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setHeight(int i) {
        this.mHeight = i;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public void setPadding(int i) {
        this.mPadding = i;
    }

    public int getPadding() {
        return this.mPadding;
    }
}
