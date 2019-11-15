package org.osmdroid.views.overlay.mylocation;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.LinkedList;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.osmdroid.api.IMapController;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.library.R;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.util.TileSystem;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.IOverlayMenuProvider;
import org.osmdroid.views.overlay.Overlay;
import org.osmdroid.views.overlay.Overlay.Snappable;

public class MyLocationNewOverlay extends Overlay implements IOverlayMenuProvider, Snappable, IMyLocationConsumer {
    public static final int MENU_MY_LOCATION = getSafeMenuId();
    protected boolean enableAutoStop;
    protected Paint mCirclePaint;
    protected Bitmap mDirectionArrowBitmap;
    protected float mDirectionArrowCenterX;
    protected float mDirectionArrowCenterY;
    protected boolean mDrawAccuracyEnabled;
    private final GeoPoint mGeoPoint;
    private Handler mHandler;
    private Object mHandlerToken;
    protected boolean mIsFollowing;
    private boolean mIsLocationEnabled;
    private Location mLocation;
    private IMapController mMapController;
    private final Point mMapCoordsProjected;
    private final Point mMapCoordsTranslated;
    protected MapView mMapView;
    private Matrix mMatrix;
    private final float[] mMatrixValues;
    private Rect mMyLocationPreviousRect;
    public IMyLocationProvider mMyLocationProvider;
    private Rect mMyLocationRect;
    private boolean mOptionsMenuEnabled;
    protected Paint mPaint;
    protected Bitmap mPersonBitmap;
    protected final PointF mPersonHotspot;
    /* access modifiers changed from: private */
    public final LinkedList<Runnable> mRunOnFirstFix;
    protected final float mScale;

    public MyLocationNewOverlay(MapView mapView) {
        this(new GpsMyLocationProvider(mapView.getContext()), mapView);
    }

    public MyLocationNewOverlay(IMyLocationProvider iMyLocationProvider, MapView mapView) {
        this.mPaint = new Paint();
        this.mCirclePaint = new Paint();
        this.mRunOnFirstFix = new LinkedList<>();
        this.mMapCoordsProjected = new Point();
        this.mMapCoordsTranslated = new Point();
        this.mHandlerToken = new Object();
        this.enableAutoStop = true;
        this.mGeoPoint = new GeoPoint(0, 0);
        this.mIsLocationEnabled = false;
        this.mIsFollowing = false;
        this.mDrawAccuracyEnabled = true;
        this.mOptionsMenuEnabled = true;
        this.mMatrixValues = new float[9];
        this.mMatrix = new Matrix();
        this.mMyLocationRect = new Rect();
        this.mMyLocationPreviousRect = new Rect();
        this.mScale = mapView.getContext().getResources().getDisplayMetrics().density;
        this.mMapView = mapView;
        this.mMapController = mapView.getController();
        this.mCirclePaint.setARGB(0, 100, 100, 255);
        this.mCirclePaint.setAntiAlias(true);
        this.mPaint.setFilterBitmap(true);
        setDirectionArrow(((BitmapDrawable) mapView.getContext().getResources().getDrawable(R.drawable.person)).getBitmap(), ((BitmapDrawable) mapView.getContext().getResources().getDrawable(R.drawable.direction_arrow)).getBitmap());
        this.mPersonHotspot = new PointF((24.0f * this.mScale) + 0.5f, (39.0f * this.mScale) + 0.5f);
        this.mHandler = new Handler(Looper.getMainLooper());
        setMyLocationProvider(iMyLocationProvider);
    }

    public void setDirectionArrow(Bitmap bitmap, Bitmap bitmap2) {
        this.mPersonBitmap = bitmap;
        this.mDirectionArrowBitmap = bitmap2;
        this.mDirectionArrowCenterX = (((float) this.mDirectionArrowBitmap.getWidth()) / 2.0f) - 0.5f;
        this.mDirectionArrowCenterY = (((float) this.mDirectionArrowBitmap.getHeight()) / 2.0f) - 0.5f;
    }

    public void onDetach(MapView mapView) {
        disableMyLocation();
        this.mMapView = null;
        this.mMapController = null;
        this.mHandler = null;
        this.mMatrix = null;
        this.mCirclePaint = null;
        this.mHandlerToken = null;
        this.mLocation = null;
        this.mMapController = null;
        this.mMyLocationPreviousRect = null;
        if (this.mMyLocationProvider != null) {
            this.mMyLocationProvider.destroy();
        }
        this.mMyLocationProvider = null;
        super.onDetach(mapView);
    }

    public void setDrawAccuracyEnabled(boolean z) {
        this.mDrawAccuracyEnabled = z;
    }

    public boolean isDrawAccuracyEnabled() {
        return this.mDrawAccuracyEnabled;
    }

    public IMyLocationProvider getMyLocationProvider() {
        return this.mMyLocationProvider;
    }

    /* access modifiers changed from: protected */
    public void setMyLocationProvider(IMyLocationProvider iMyLocationProvider) {
        if (iMyLocationProvider == null) {
            throw new RuntimeException("You must pass an IMyLocationProvider to setMyLocationProvider()");
        }
        if (isMyLocationEnabled()) {
            stopLocationProvider();
        }
        this.mMyLocationProvider = iMyLocationProvider;
    }

    public void setPersonHotspot(float f, float f2) {
        this.mPersonHotspot.set(f, f2);
    }

    /* access modifiers changed from: protected */
    public void drawMyLocation(Canvas canvas, MapView mapView, Location location) {
        mapView.getProjection().toPixelsFromProjected(this.mMapCoordsProjected, this.mMapCoordsTranslated);
        if (this.mDrawAccuracyEnabled) {
            float accuracy = location.getAccuracy() / ((float) TileSystem.GroundResolution(location.getLatitude(), mapView.getZoomLevel()));
            this.mCirclePaint.setAlpha(50);
            this.mCirclePaint.setStyle(Style.FILL);
            canvas.drawCircle((float) this.mMapCoordsTranslated.x, (float) this.mMapCoordsTranslated.y, accuracy, this.mCirclePaint);
            this.mCirclePaint.setAlpha(CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA);
            this.mCirclePaint.setStyle(Style.STROKE);
            canvas.drawCircle((float) this.mMapCoordsTranslated.x, (float) this.mMapCoordsTranslated.y, accuracy, this.mCirclePaint);
        }
        canvas.getMatrix(this.mMatrix);
        this.mMatrix.getValues(this.mMatrixValues);
        if (Configuration.getInstance().isDebugMode()) {
            float f = ((-this.mMatrixValues[2]) + 20.0f) / this.mMatrixValues[0];
            float f2 = ((-this.mMatrixValues[5]) + 90.0f) / this.mMatrixValues[4];
            canvas.drawText("Lat: " + location.getLatitude(), f, 5.0f + f2, this.mPaint);
            canvas.drawText("Lon: " + location.getLongitude(), f, f2 + 20.0f, this.mPaint);
            canvas.drawText("Alt: " + location.getAltitude(), f, 35.0f + f2, this.mPaint);
            canvas.drawText("Acc: " + location.getAccuracy(), f, f2 + 50.0f, this.mPaint);
        }
        float sqrt = (float) Math.sqrt((double) ((this.mMatrixValues[0] * this.mMatrixValues[0]) + (this.mMatrixValues[3] * this.mMatrixValues[3])));
        float sqrt2 = (float) Math.sqrt((double) ((this.mMatrixValues[4] * this.mMatrixValues[4]) + (this.mMatrixValues[1] * this.mMatrixValues[1])));
        if (location.hasBearing()) {
            canvas.save();
            mapView.getMapOrientation();
            float bearing = location.getBearing();
            if (bearing >= 360.0f) {
                bearing -= 360.0f;
            }
            canvas.rotate(bearing, (float) this.mMapCoordsTranslated.x, (float) this.mMapCoordsTranslated.y);
            canvas.scale(1.0f / sqrt, 1.0f / sqrt2, (float) this.mMapCoordsTranslated.x, (float) this.mMapCoordsTranslated.y);
            canvas.drawBitmap(this.mDirectionArrowBitmap, ((float) this.mMapCoordsTranslated.x) - this.mDirectionArrowCenterX, ((float) this.mMapCoordsTranslated.y) - this.mDirectionArrowCenterY, this.mPaint);
            canvas.restore();
            return;
        }
        canvas.save();
        canvas.rotate(-this.mMapView.getMapOrientation(), (float) this.mMapCoordsTranslated.x, (float) this.mMapCoordsTranslated.y);
        canvas.scale(1.0f / sqrt, 1.0f / sqrt2, (float) this.mMapCoordsTranslated.x, (float) this.mMapCoordsTranslated.y);
        canvas.drawBitmap(this.mPersonBitmap, ((float) this.mMapCoordsTranslated.x) - this.mPersonHotspot.x, ((float) this.mMapCoordsTranslated.y) - this.mPersonHotspot.y, this.mPaint);
        canvas.restore();
    }

    /* access modifiers changed from: protected */
    public Rect getMyLocationDrawingBounds(int i, Location location, Rect rect) {
        double strokeWidth;
        if (rect == null) {
            rect = new Rect();
        }
        this.mMapView.getProjection().toPixelsFromProjected(this.mMapCoordsProjected, this.mMapCoordsTranslated);
        if (location.hasBearing()) {
            int ceil = (int) Math.ceil(((double) Math.max(this.mDirectionArrowBitmap.getWidth(), this.mDirectionArrowBitmap.getHeight())) * Math.sqrt(2.0d));
            rect.set(this.mMapCoordsTranslated.x, this.mMapCoordsTranslated.y, this.mMapCoordsTranslated.x + ceil, this.mMapCoordsTranslated.y + ceil);
            rect.offset((-ceil) / 2, (-ceil) / 2);
        } else {
            rect.set(this.mMapCoordsTranslated.x, this.mMapCoordsTranslated.y, this.mMapCoordsTranslated.x + this.mPersonBitmap.getWidth(), this.mMapCoordsTranslated.y + this.mPersonBitmap.getHeight());
            rect.offset((int) ((-this.mPersonHotspot.x) + 0.5f), (int) ((-this.mPersonHotspot.y) + 0.5f));
        }
        if (this.mDrawAccuracyEnabled) {
            int ceil2 = (int) Math.ceil((double) (location.getAccuracy() / ((float) TileSystem.GroundResolution(location.getLatitude(), i))));
            rect.union(this.mMapCoordsTranslated.x - ceil2, this.mMapCoordsTranslated.y - ceil2, this.mMapCoordsTranslated.x + ceil2, ceil2 + this.mMapCoordsTranslated.y);
            if (this.mCirclePaint.getStrokeWidth() == 0.0f) {
                strokeWidth = 1.0d;
            } else {
                strokeWidth = (double) this.mCirclePaint.getStrokeWidth();
            }
            int ceil3 = (int) Math.ceil(strokeWidth);
            rect.inset(-ceil3, -ceil3);
        }
        return rect;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z && this.mLocation != null && isMyLocationEnabled()) {
            drawMyLocation(canvas, mapView, this.mLocation);
        }
    }

    public boolean onSnapToItem(int i, int i2, Point point, IMapView iMapView) {
        boolean z = false;
        if (this.mLocation != null) {
            this.mMapView.getProjection().toPixelsFromProjected(this.mMapCoordsProjected, this.mMapCoordsTranslated);
            point.x = this.mMapCoordsTranslated.x;
            point.y = this.mMapCoordsTranslated.y;
            double d = (double) (i - this.mMapCoordsTranslated.x);
            double d2 = (double) (i2 - this.mMapCoordsTranslated.y);
            if ((d * d) + (d2 * d2) < 64.0d) {
                z = true;
            }
            if (Configuration.getInstance().isDebugMode()) {
                Log.d(IMapView.LOGTAG, "snap=" + z);
            }
        }
        return z;
    }

    public void setEnableAutoStop(boolean z) {
        this.enableAutoStop = z;
    }

    public boolean getEnableAutoStop() {
        return this.enableAutoStop;
    }

    public boolean onTouchEvent(MotionEvent motionEvent, MapView mapView) {
        if (motionEvent.getAction() == 2) {
            if (!this.enableAutoStop) {
                return true;
            }
            disableFollowLocation();
        }
        return super.onTouchEvent(motionEvent, mapView);
    }

    public void setOptionsMenuEnabled(boolean z) {
        this.mOptionsMenuEnabled = z;
    }

    public boolean isOptionsMenuEnabled() {
        return this.mOptionsMenuEnabled;
    }

    public boolean onCreateOptionsMenu(Menu menu, int i, MapView mapView) {
        menu.add(0, MENU_MY_LOCATION + i, 0, mapView.getContext().getResources().getString(R.string.my_location)).setIcon(mapView.getContext().getResources().getDrawable(R.drawable.ic_menu_mylocation)).setCheckable(true);
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu, int i, MapView mapView) {
        menu.findItem(MENU_MY_LOCATION + i).setChecked(isMyLocationEnabled());
        return false;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem, int i, MapView mapView) {
        if (menuItem.getItemId() - i != MENU_MY_LOCATION) {
            return false;
        }
        if (isMyLocationEnabled()) {
            disableFollowLocation();
            disableMyLocation();
        } else {
            enableFollowLocation();
            enableMyLocation();
        }
        return true;
    }

    public GeoPoint getMyLocation() {
        if (this.mLocation == null) {
            return null;
        }
        return new GeoPoint(this.mLocation);
    }

    public Location getLastFix() {
        return this.mLocation;
    }

    public void enableFollowLocation() {
        this.mIsFollowing = true;
        if (isMyLocationEnabled()) {
            Location lastKnownLocation = this.mMyLocationProvider.getLastKnownLocation();
            if (lastKnownLocation != null) {
                setLocation(lastKnownLocation);
            }
        }
        if (this.mMapView != null) {
            this.mMapView.postInvalidate();
        }
    }

    public void disableFollowLocation() {
        this.mIsFollowing = false;
    }

    public boolean isFollowLocationEnabled() {
        return this.mIsFollowing;
    }

    public void onLocationChanged(final Location location, IMyLocationProvider iMyLocationProvider) {
        if (location != null && this.mHandler != null) {
            this.mHandler.postAtTime(new Runnable() {
                public void run() {
                    MyLocationNewOverlay.this.setLocation(location);
                    Iterator it = MyLocationNewOverlay.this.mRunOnFirstFix.iterator();
                    while (it.hasNext()) {
                        new Thread((Runnable) it.next()).start();
                    }
                    MyLocationNewOverlay.this.mRunOnFirstFix.clear();
                }
            }, this.mHandlerToken, 0);
        }
    }

    /* access modifiers changed from: protected */
    public void setLocation(Location location) {
        Location location2 = this.mLocation;
        if (location2 != null) {
            getMyLocationDrawingBounds(this.mMapView.getZoomLevel(), location2, this.mMyLocationPreviousRect);
        }
        this.mLocation = location;
        this.mMapView.getProjection().toProjectedPixels(this.mLocation.getLatitude(), this.mLocation.getLongitude(), this.mMapCoordsProjected);
        if (this.mIsFollowing) {
            this.mGeoPoint.setLatitude(this.mLocation.getLatitude());
            this.mGeoPoint.setLongitude(this.mLocation.getLongitude());
            this.mMapController.animateTo(this.mGeoPoint);
            return;
        }
        getMyLocationDrawingBounds(this.mMapView.getZoomLevel(), this.mLocation, this.mMyLocationRect);
        if (location2 != null) {
            this.mMyLocationRect.union(this.mMyLocationPreviousRect);
        }
        this.mMapView.invalidateMapCoordinates(this.mMyLocationRect.left, this.mMyLocationRect.top, this.mMyLocationRect.right, this.mMyLocationRect.bottom);
    }

    public boolean enableMyLocation(IMyLocationProvider iMyLocationProvider) {
        setMyLocationProvider(iMyLocationProvider);
        boolean startLocationProvider = this.mMyLocationProvider.startLocationProvider(this);
        this.mIsLocationEnabled = startLocationProvider;
        if (startLocationProvider) {
            Location lastKnownLocation = this.mMyLocationProvider.getLastKnownLocation();
            if (lastKnownLocation != null) {
                setLocation(lastKnownLocation);
            }
        }
        if (this.mMapView != null) {
            this.mMapView.postInvalidate();
        }
        return startLocationProvider;
    }

    public boolean enableMyLocation() {
        return enableMyLocation(this.mMyLocationProvider);
    }

    public void disableMyLocation() {
        this.mIsLocationEnabled = false;
        stopLocationProvider();
        if (this.mMapView != null) {
            this.mMapView.postInvalidate();
        }
    }

    /* access modifiers changed from: protected */
    public void stopLocationProvider() {
        if (this.mMyLocationProvider != null) {
            this.mMyLocationProvider.stopLocationProvider();
        }
        if (this.mHandler != null && this.mHandlerToken != null) {
            this.mHandler.removeCallbacksAndMessages(this.mHandlerToken);
        }
    }

    public boolean isMyLocationEnabled() {
        return this.mIsLocationEnabled;
    }

    public boolean runOnFirstFix(Runnable runnable) {
        if (this.mMyLocationProvider == null || this.mLocation == null) {
            this.mRunOnFirstFix.addLast(runnable);
            return false;
        }
        new Thread(runnable).start();
        return true;
    }

    public void setPersonIcon(Bitmap bitmap) {
        this.mPersonBitmap = bitmap;
    }
}
