package org.osmdroid.views.overlay;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import org.osmdroid.library.R;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;
import org.osmdroid.views.overlay.infowindow.MarkerInfoWindow;

public class Marker extends OverlayWithIW {
    public static final float ANCHOR_BOTTOM = 1.0f;
    public static final float ANCHOR_CENTER = 0.5f;
    public static final float ANCHOR_LEFT = 0.0f;
    public static final float ANCHOR_RIGHT = 1.0f;
    public static final float ANCHOR_TOP = 0.0f;
    public static boolean ENABLE_TEXT_LABELS_WHEN_NO_IMAGE = false;
    protected static Drawable mDefaultIcon = null;
    protected static MarkerInfoWindow mDefaultInfoWindow = null;
    protected float mAlpha;
    protected float mAnchorU;
    protected float mAnchorV;
    protected float mBearing;
    protected boolean mDraggable;
    protected boolean mFlat;
    protected float mIWAnchorU;
    protected float mIWAnchorV;
    protected Drawable mIcon;
    protected Drawable mImage;
    protected boolean mIsDragged;
    protected OnMarkerClickListener mOnMarkerClickListener;
    protected OnMarkerDragListener mOnMarkerDragListener;
    protected boolean mPanToView;
    protected GeoPoint mPosition;
    protected Point mPositionPixels;
    protected int mTextLabelBackgroundColor;
    protected int mTextLabelFontSize;
    protected int mTextLabelForegroundColor;
    protected Resources resource;

    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker, MapView mapView);
    }

    public interface OnMarkerDragListener {
        void onMarkerDrag(Marker marker);

        void onMarkerDragEnd(Marker marker);

        void onMarkerDragStart(Marker marker);
    }

    public Marker(MapView mapView) {
        this(mapView, mapView.getContext());
    }

    public Marker(MapView mapView, Context context) {
        this.mTextLabelBackgroundColor = -1;
        this.mTextLabelForegroundColor = ViewCompat.MEASURED_STATE_MASK;
        this.mTextLabelFontSize = 24;
        this.resource = mapView.getContext().getResources();
        this.mBearing = 0.0f;
        this.mAlpha = 1.0f;
        this.mPosition = new GeoPoint(0.0d, 0.0d);
        this.mAnchorU = 0.5f;
        this.mAnchorV = 0.5f;
        this.mIWAnchorU = 0.5f;
        this.mIWAnchorV = 0.0f;
        this.mDraggable = false;
        this.mIsDragged = false;
        this.mPositionPixels = new Point();
        this.mPanToView = true;
        this.mFlat = false;
        this.mOnMarkerClickListener = null;
        this.mOnMarkerDragListener = null;
        if (mDefaultIcon == null) {
            mDefaultIcon = context.getResources().getDrawable(R.drawable.marker_default);
        }
        this.mIcon = mDefaultIcon;
        if (mDefaultInfoWindow == null || mDefaultInfoWindow.getMapView() != mapView) {
            mDefaultInfoWindow = new MarkerInfoWindow(R.layout.bonuspack_bubble, mapView);
        }
        setInfoWindow(mDefaultInfoWindow);
    }

    public void setIcon(Drawable drawable) {
        if (ENABLE_TEXT_LABELS_WHEN_NO_IMAGE && drawable == null && this.mTitle != null && this.mTitle.length() > 0) {
            Paint paint = new Paint();
            paint.setColor(this.mTextLabelBackgroundColor);
            Paint paint2 = new Paint();
            paint2.setTextSize((float) this.mTextLabelFontSize);
            paint2.setColor(this.mTextLabelForegroundColor);
            paint2.setAntiAlias(true);
            paint2.setTypeface(Typeface.DEFAULT_BOLD);
            paint2.setTextAlign(Align.LEFT);
            float f = (float) ((int) ((-paint2.ascent()) + 0.5f));
            Bitmap createBitmap = Bitmap.createBitmap((int) (paint2.measureText(getTitle()) + 0.5f), (int) (paint2.descent() + f + 0.5f), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.drawPaint(paint);
            canvas.drawText(getTitle(), 0.0f, f, paint2);
            this.mIcon = new BitmapDrawable(this.resource, createBitmap);
        } else if (!ENABLE_TEXT_LABELS_WHEN_NO_IMAGE && drawable != null) {
            this.mIcon = drawable;
        } else if (this.mIcon != null) {
            this.mIcon = drawable;
        } else {
            this.mIcon = mDefaultIcon;
        }
    }

    public GeoPoint getPosition() {
        return this.mPosition;
    }

    public void setPosition(GeoPoint geoPoint) {
        this.mPosition = geoPoint.clone();
    }

    public float getRotation() {
        return this.mBearing;
    }

    public void setRotation(float f) {
        this.mBearing = f;
    }

    public void setAnchor(float f, float f2) {
        this.mAnchorU = f;
        this.mAnchorV = f2;
    }

    public void setInfoWindowAnchor(float f, float f2) {
        this.mIWAnchorU = f;
        this.mIWAnchorV = f2;
    }

    public void setAlpha(float f) {
        this.mAlpha = f;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public void setDraggable(boolean z) {
        this.mDraggable = z;
    }

    public boolean isDraggable() {
        return this.mDraggable;
    }

    public void setFlat(boolean z) {
        this.mFlat = z;
    }

    public boolean isFlat() {
        return this.mFlat;
    }

    public void remove(MapView mapView) {
        mapView.getOverlays().remove(this);
    }

    public void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        this.mOnMarkerClickListener = onMarkerClickListener;
    }

    public void setOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) {
        this.mOnMarkerDragListener = onMarkerDragListener;
    }

    public void setImage(Drawable drawable) {
        this.mImage = drawable;
    }

    public Drawable getImage() {
        return this.mImage;
    }

    public void setInfoWindow(MarkerInfoWindow markerInfoWindow) {
        if (!(this.mInfoWindow == null || this.mInfoWindow == mDefaultInfoWindow)) {
            this.mInfoWindow.onDetach();
        }
        this.mInfoWindow = markerInfoWindow;
    }

    public void setPanToView(boolean z) {
        this.mPanToView = z;
    }

    public void showInfoWindow() {
        if (this.mInfoWindow != null) {
            int intrinsicWidth = this.mIcon.getIntrinsicWidth();
            int intrinsicHeight = this.mIcon.getIntrinsicHeight();
            this.mInfoWindow.open(this, this.mPosition, ((int) (this.mIWAnchorU * ((float) intrinsicWidth))) - ((int) (((float) intrinsicWidth) * this.mAnchorU)), ((int) (this.mIWAnchorV * ((float) intrinsicHeight))) - ((int) (((float) intrinsicHeight) * this.mAnchorV)));
        }
    }

    public boolean isInfoWindowShown() {
        if (!(this.mInfoWindow instanceof MarkerInfoWindow)) {
            return super.isInfoWindowOpen();
        }
        MarkerInfoWindow markerInfoWindow = (MarkerInfoWindow) this.mInfoWindow;
        return markerInfoWindow != null && markerInfoWindow.isOpen() && markerInfoWindow.getMarkerReference() == this;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z && this.mIcon != null) {
            mapView.getProjection().toPixels(this.mPosition, this.mPositionPixels);
            int intrinsicWidth = this.mIcon.getIntrinsicWidth();
            int intrinsicHeight = this.mIcon.getIntrinsicHeight();
            Rect rect = new Rect(0, 0, intrinsicWidth, intrinsicHeight);
            rect.offset(-((int) (((float) intrinsicWidth) * this.mAnchorU)), -((int) (((float) intrinsicHeight) * this.mAnchorV)));
            this.mIcon.setBounds(rect);
            this.mIcon.setAlpha((int) (this.mAlpha * 255.0f));
            drawAt(canvas, this.mIcon, this.mPositionPixels.x, this.mPositionPixels.y, false, this.mFlat ? -this.mBearing : mapView.getMapOrientation() - this.mBearing);
        }
    }

    public void onDetach(MapView mapView) {
        if (VERSION.SDK_INT < 9 && (this.mIcon instanceof BitmapDrawable)) {
            Bitmap bitmap = ((BitmapDrawable) this.mIcon).getBitmap();
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
        this.mIcon = null;
        if (VERSION.SDK_INT < 9 && (this.mImage instanceof BitmapDrawable)) {
            Bitmap bitmap2 = ((BitmapDrawable) this.mImage).getBitmap();
            if (bitmap2 != null) {
                bitmap2.recycle();
            }
        }
        this.mOnMarkerClickListener = null;
        this.mOnMarkerDragListener = null;
        this.resource = null;
        setRelatedObject(null);
        if (this.mInfoWindow != mDefaultInfoWindow && isInfoWindowShown()) {
            closeInfoWindow();
        }
        setInfoWindow(null);
        onDestroy();
        super.onDetach(mapView);
    }

    public static void cleanDefaults() {
        mDefaultIcon = null;
        mDefaultInfoWindow = null;
    }

    public boolean hitTest(MotionEvent motionEvent, MapView mapView) {
        Projection projection = mapView.getProjection();
        projection.toPixels(this.mPosition, this.mPositionPixels);
        Rect intrinsicScreenRect = projection.getIntrinsicScreenRect();
        return this.mIcon.getBounds().contains((-this.mPositionPixels.x) + intrinsicScreenRect.left + ((int) motionEvent.getX()), intrinsicScreenRect.top + (-this.mPositionPixels.y) + ((int) motionEvent.getY()));
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        boolean hitTest = hitTest(motionEvent, mapView);
        if (!hitTest) {
            return hitTest;
        }
        if (this.mOnMarkerClickListener == null) {
            return onMarkerClickDefault(this, mapView);
        }
        return this.mOnMarkerClickListener.onMarkerClick(this, mapView);
    }

    public void moveToEventPosition(MotionEvent motionEvent, MapView mapView) {
        this.mPosition = (GeoPoint) mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
        mapView.invalidate();
    }

    public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
        boolean hitTest = hitTest(motionEvent, mapView);
        if (hitTest && this.mDraggable) {
            this.mIsDragged = true;
            closeInfoWindow();
            if (this.mOnMarkerDragListener != null) {
                this.mOnMarkerDragListener.onMarkerDragStart(this);
            }
            moveToEventPosition(motionEvent, mapView);
        }
        return hitTest;
    }

    public boolean onTouchEvent(MotionEvent motionEvent, MapView mapView) {
        if (!this.mDraggable || !this.mIsDragged) {
            return false;
        }
        if (motionEvent.getAction() == 1) {
            this.mIsDragged = false;
            if (this.mOnMarkerDragListener == null) {
                return true;
            }
            this.mOnMarkerDragListener.onMarkerDragEnd(this);
            return true;
        } else if (motionEvent.getAction() != 2) {
            return false;
        } else {
            moveToEventPosition(motionEvent, mapView);
            if (this.mOnMarkerDragListener == null) {
                return true;
            }
            this.mOnMarkerDragListener.onMarkerDrag(this);
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public boolean onMarkerClickDefault(Marker marker, MapView mapView) {
        marker.showInfoWindow();
        if (marker.mPanToView) {
            mapView.getController().animateTo(marker.getPosition());
        }
        return true;
    }

    public int getTextLabelBackgroundColor() {
        return this.mTextLabelBackgroundColor;
    }

    public void setTextLabelBackgroundColor(int i) {
        this.mTextLabelBackgroundColor = i;
    }

    public int getTextLabelForegroundColor() {
        return this.mTextLabelForegroundColor;
    }

    public void setTextLabelForegroundColor(int i) {
        this.mTextLabelForegroundColor = i;
    }

    public int getTextLabelFontSize() {
        return this.mTextLabelFontSize;
    }

    public void setTextLabelFontSize(int i) {
        this.mTextLabelFontSize = i;
    }
}
