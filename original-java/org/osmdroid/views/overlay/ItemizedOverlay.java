package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import java.util.ArrayList;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;
import org.osmdroid.views.overlay.Overlay.Snappable;
import org.osmdroid.views.overlay.OverlayItem;
import org.osmdroid.views.overlay.OverlayItem.HotspotPlace;

public abstract class ItemizedOverlay<Item extends OverlayItem> extends Overlay implements Snappable {
    private final Point mCurScreenCoords;
    protected final Drawable mDefaultMarker;
    protected boolean mDrawFocusedItem;
    private Item mFocusedItem;
    private final ArrayList<Item> mInternalItemList;
    private final Matrix mMatrix;
    private final float[] mMatrixValues;
    private OnFocusChangeListener mOnFocusChangeListener;
    private boolean mPendingFocusChangedEvent;
    private final Rect mRect;
    protected float scaleX;
    protected float scaleY;

    public interface OnFocusChangeListener {
        void onFocusChanged(ItemizedOverlay<?> itemizedOverlay, OverlayItem overlayItem);
    }

    /* access modifiers changed from: protected */
    public abstract Item createItem(int i);

    public abstract int size();

    @Deprecated
    public ItemizedOverlay(Context context, Drawable drawable) {
        this(drawable);
    }

    public ItemizedOverlay(Drawable drawable) {
        this.mRect = new Rect();
        this.mCurScreenCoords = new Point();
        this.mDrawFocusedItem = true;
        this.mPendingFocusChangedEvent = false;
        this.mMatrixValues = new float[9];
        this.mMatrix = new Matrix();
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        if (drawable == null) {
            throw new IllegalArgumentException("You must pass a default marker to ItemizedOverlay.");
        }
        this.mDefaultMarker = drawable;
        this.mInternalItemList = new ArrayList<>();
    }

    public void onDetach(MapView mapView) {
        if (this.mDefaultMarker != null) {
        }
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z) {
            if (this.mPendingFocusChangedEvent && this.mOnFocusChangeListener != null) {
                this.mOnFocusChangeListener.onFocusChanged(this, this.mFocusedItem);
            }
            this.mPendingFocusChangedEvent = false;
            Projection projection = mapView.getProjection();
            canvas.getMatrix(this.mMatrix);
            this.mMatrix.getValues(this.mMatrixValues);
            this.scaleX = (float) Math.sqrt((double) ((this.mMatrixValues[0] * this.mMatrixValues[0]) + (this.mMatrixValues[3] * this.mMatrixValues[3])));
            this.scaleY = (float) Math.sqrt((double) ((this.mMatrixValues[4] * this.mMatrixValues[4]) + (this.mMatrixValues[1] * this.mMatrixValues[1])));
            for (int size = this.mInternalItemList.size() - 1; size >= 0; size--) {
                OverlayItem item = getItem(size);
                if (item != null) {
                    projection.toPixels(item.getPoint(), this.mCurScreenCoords);
                    onDrawItem(canvas, item, this.mCurScreenCoords, mapView.getMapOrientation());
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void populate() {
        int size = size();
        this.mInternalItemList.clear();
        this.mInternalItemList.ensureCapacity(size);
        for (int i = 0; i < size; i++) {
            this.mInternalItemList.add(createItem(i));
        }
    }

    public final Item getItem(int i) {
        try {
            return (OverlayItem) this.mInternalItemList.get(i);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void onDrawItem(Canvas canvas, Item item, Point point, float f) {
        Drawable marker;
        int i = (!this.mDrawFocusedItem || this.mFocusedItem != item) ? 0 : 4;
        if (item.getMarker(i) == null) {
            marker = getDefaultMarker(i);
        } else {
            marker = item.getMarker(i);
        }
        boundToHotspot(marker, item.getMarkerHotspot());
        int i2 = this.mCurScreenCoords.x;
        int i3 = this.mCurScreenCoords.y;
        canvas.save();
        canvas.rotate(-f, (float) i2, (float) i3);
        marker.copyBounds(this.mRect);
        marker.setBounds(this.mRect.left + i2, this.mRect.top + i3, this.mRect.right + i2, this.mRect.bottom + i3);
        canvas.scale(1.0f / this.scaleX, 1.0f / this.scaleY, (float) i2, (float) i3);
        marker.draw(canvas);
        marker.setBounds(this.mRect);
        canvas.restore();
    }

    /* access modifiers changed from: protected */
    public Drawable getDefaultMarker(int i) {
        OverlayItem.setState(this.mDefaultMarker, i);
        return this.mDefaultMarker;
    }

    /* access modifiers changed from: protected */
    public boolean hitTest(Item item, Drawable drawable, int i, int i2) {
        return drawable.getBounds().contains(i, i2);
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        Projection projection = mapView.getProjection();
        Rect intrinsicScreenRect = projection.getIntrinsicScreenRect();
        int size = size();
        for (int i = 0; i < size; i++) {
            Item item = getItem(i);
            if (item != null) {
                projection.toPixels(item.getPoint(), this.mCurScreenCoords);
                int i2 = (!this.mDrawFocusedItem || this.mFocusedItem != item) ? 0 : 4;
                Drawable marker = item.getMarker(i2) == null ? getDefaultMarker(i2) : item.getMarker(i2);
                boundToHotspot(marker, item.getMarkerHotspot());
                if (hitTest(item, marker, (-this.mCurScreenCoords.x) + intrinsicScreenRect.left + ((int) motionEvent.getX()), (-this.mCurScreenCoords.y) + intrinsicScreenRect.top + ((int) motionEvent.getY())) && onTap(i)) {
                    return true;
                }
            }
        }
        return super.onSingleTapConfirmed(motionEvent, mapView);
    }

    /* access modifiers changed from: protected */
    public boolean onTap(int i) {
        return false;
    }

    public void setDrawFocusedItem(boolean z) {
        this.mDrawFocusedItem = z;
    }

    public void setFocus(Item item) {
        this.mPendingFocusChangedEvent = item != this.mFocusedItem;
        this.mFocusedItem = item;
    }

    public Item getFocus() {
        return this.mFocusedItem;
    }

    /* access modifiers changed from: protected */
    public synchronized Drawable boundToHotspot(Drawable drawable, HotspotPlace hotspotPlace) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.mRect.set(0, 0, intrinsicWidth + 0, intrinsicHeight + 0);
        if (hotspotPlace == null) {
            hotspotPlace = HotspotPlace.BOTTOM_CENTER;
        }
        switch (hotspotPlace) {
            case CENTER:
                this.mRect.offset((-intrinsicWidth) / 2, (-intrinsicHeight) / 2);
                break;
            case BOTTOM_CENTER:
                this.mRect.offset((-intrinsicWidth) / 2, -intrinsicHeight);
                break;
            case TOP_CENTER:
                this.mRect.offset((-intrinsicWidth) / 2, 0);
                break;
            case RIGHT_CENTER:
                this.mRect.offset(-intrinsicWidth, (-intrinsicHeight) / 2);
                break;
            case LEFT_CENTER:
                this.mRect.offset(0, (-intrinsicHeight) / 2);
                break;
            case UPPER_RIGHT_CORNER:
                this.mRect.offset(-intrinsicWidth, 0);
                break;
            case LOWER_RIGHT_CORNER:
                this.mRect.offset(-intrinsicWidth, -intrinsicHeight);
                break;
            case UPPER_LEFT_CORNER:
                this.mRect.offset(0, 0);
                break;
            case LOWER_LEFT_CORNER:
                this.mRect.offset(0, -intrinsicHeight);
                break;
        }
        drawable.setBounds(this.mRect);
        return drawable;
    }

    public void setOnFocusChangeListener(OnFocusChangeListener onFocusChangeListener) {
        this.mOnFocusChangeListener = onFocusChangeListener;
    }
}
