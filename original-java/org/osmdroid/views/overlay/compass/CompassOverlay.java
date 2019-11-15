package org.osmdroid.views.overlay.compass;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.WindowManager;
import com.mi.milinkforgame.sdk.data.Error;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.osmdroid.library.R;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;
import org.osmdroid.views.overlay.IOverlayMenuProvider;
import org.osmdroid.views.overlay.Overlay;

public class CompassOverlay extends Overlay implements IOverlayMenuProvider, IOrientationConsumer {
    public static final int MENU_COMPASS = getSafeMenuId();
    private float mAzimuth;
    private float mCompassCenterX;
    private float mCompassCenterY;
    protected Bitmap mCompassFrameBitmap;
    protected final float mCompassFrameCenterX;
    protected final float mCompassFrameCenterY;
    private final Matrix mCompassMatrix;
    private final float mCompassRadius;
    protected Bitmap mCompassRoseBitmap;
    protected final float mCompassRoseCenterX;
    protected final float mCompassRoseCenterY;
    private final Display mDisplay;
    private boolean mIsCompassEnabled;
    protected MapView mMapView;
    private boolean mOptionsMenuEnabled;
    public IOrientationProvider mOrientationProvider;
    protected final float mScale;
    private Paint sSmoothPaint;

    public CompassOverlay(Context context, MapView mapView) {
        this(context, new InternalCompassOrientationProvider(context), mapView);
    }

    public CompassOverlay(Context context, IOrientationProvider iOrientationProvider, MapView mapView) {
        this.sSmoothPaint = new Paint(2);
        this.mCompassMatrix = new Matrix();
        this.mAzimuth = Float.NaN;
        this.mCompassCenterX = 35.0f;
        this.mCompassCenterY = 35.0f;
        this.mCompassRadius = 20.0f;
        this.mOptionsMenuEnabled = true;
        this.mScale = context.getResources().getDisplayMetrics().density;
        this.mMapView = mapView;
        this.mDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        createCompassFramePicture();
        createCompassRosePicture();
        this.mCompassFrameCenterX = ((float) (this.mCompassFrameBitmap.getWidth() / 2)) - 0.5f;
        this.mCompassFrameCenterY = ((float) (this.mCompassFrameBitmap.getHeight() / 2)) - 0.5f;
        this.mCompassRoseCenterX = ((float) (this.mCompassRoseBitmap.getWidth() / 2)) - 0.5f;
        this.mCompassRoseCenterY = ((float) (this.mCompassRoseBitmap.getHeight() / 2)) - 0.5f;
        setOrientationProvider(iOrientationProvider);
    }

    public void onDetach(MapView mapView) {
        this.mMapView = null;
        this.sSmoothPaint = null;
        disableCompass();
        this.mCompassFrameBitmap.recycle();
        this.mCompassRoseBitmap.recycle();
        super.onDetach(mapView);
    }

    private void invalidateCompass() {
        Rect screenRect = this.mMapView.getProjection().getScreenRect();
        this.mMapView.postInvalidateMapCoordinates((screenRect.left + ((int) Math.ceil((double) ((this.mCompassCenterX - this.mCompassFrameCenterX) * this.mScale)))) - 2, (screenRect.top + ((int) Math.ceil((double) ((this.mCompassCenterY - this.mCompassFrameCenterY) * this.mScale)))) - 2, screenRect.left + ((int) Math.ceil((double) ((this.mCompassCenterX + this.mCompassFrameCenterX) * this.mScale))) + 2, screenRect.top + ((int) Math.ceil((double) ((this.mCompassCenterY + this.mCompassFrameCenterY) * this.mScale))) + 2);
    }

    public void setCompassCenter(float f, float f2) {
        this.mCompassCenterX = f;
        this.mCompassCenterY = f2;
    }

    public IOrientationProvider getOrientationProvider() {
        return this.mOrientationProvider;
    }

    public void setOrientationProvider(IOrientationProvider iOrientationProvider) throws RuntimeException {
        if (iOrientationProvider == null) {
            throw new RuntimeException("You must pass an IOrientationProvider to setOrientationProvider()");
        }
        if (isCompassEnabled()) {
            this.mOrientationProvider.stopOrientationProvider();
        }
        this.mOrientationProvider = iOrientationProvider;
    }

    /* access modifiers changed from: protected */
    public void drawCompass(Canvas canvas, float f, Rect rect) {
        Projection projection = this.mMapView.getProjection();
        float f2 = this.mCompassCenterX * this.mScale;
        float f3 = this.mCompassCenterY * this.mScale;
        this.mCompassMatrix.setTranslate(-this.mCompassFrameCenterX, -this.mCompassFrameCenterY);
        this.mCompassMatrix.postTranslate(f2, f3);
        canvas.save();
        canvas.concat(projection.getInvertedScaleRotateCanvasMatrix());
        canvas.concat(this.mCompassMatrix);
        canvas.drawBitmap(this.mCompassFrameBitmap, 0.0f, 0.0f, this.sSmoothPaint);
        canvas.restore();
        this.mCompassMatrix.setRotate(-f, this.mCompassRoseCenterX, this.mCompassRoseCenterY);
        this.mCompassMatrix.postTranslate(-this.mCompassRoseCenterX, -this.mCompassRoseCenterY);
        this.mCompassMatrix.postTranslate(f2, f3);
        canvas.save();
        canvas.concat(projection.getInvertedScaleRotateCanvasMatrix());
        canvas.concat(this.mCompassMatrix);
        canvas.drawBitmap(this.mCompassRoseBitmap, 0.0f, 0.0f, this.sSmoothPaint);
        canvas.restore();
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z && isCompassEnabled() && !Float.isNaN(this.mAzimuth)) {
            drawCompass(canvas, this.mAzimuth + ((float) getDisplayOrientation()), mapView.getProjection().getScreenRect());
        }
    }

    public void setOptionsMenuEnabled(boolean z) {
        this.mOptionsMenuEnabled = z;
    }

    public boolean isOptionsMenuEnabled() {
        return this.mOptionsMenuEnabled;
    }

    public boolean onCreateOptionsMenu(Menu menu, int i, MapView mapView) {
        menu.add(0, MENU_COMPASS + i, 0, mapView.getContext().getResources().getString(R.string.compass)).setIcon(mapView.getContext().getResources().getDrawable(R.drawable.ic_menu_compass)).setCheckable(true);
        return true;
    }

    public boolean onPrepareOptionsMenu(Menu menu, int i, MapView mapView) {
        menu.findItem(MENU_COMPASS + i).setChecked(isCompassEnabled());
        return false;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem, int i, MapView mapView) {
        if (menuItem.getItemId() - i != MENU_COMPASS) {
            return false;
        }
        if (isCompassEnabled()) {
            disableCompass();
        } else {
            enableCompass();
        }
        return true;
    }

    public void onOrientationChanged(float f, IOrientationProvider iOrientationProvider) {
        this.mAzimuth = f;
        invalidateCompass();
    }

    public boolean enableCompass(IOrientationProvider iOrientationProvider) {
        setOrientationProvider(iOrientationProvider);
        boolean startOrientationProvider = this.mOrientationProvider.startOrientationProvider(this);
        this.mIsCompassEnabled = startOrientationProvider;
        if (this.mMapView != null) {
            invalidateCompass();
        }
        return startOrientationProvider;
    }

    public boolean enableCompass() {
        return enableCompass(this.mOrientationProvider);
    }

    public void disableCompass() {
        this.mIsCompassEnabled = false;
        if (this.mOrientationProvider != null) {
            this.mOrientationProvider.stopOrientationProvider();
        }
        this.mOrientationProvider = null;
        this.mAzimuth = Float.NaN;
        if (this.mMapView != null) {
            invalidateCompass();
        }
    }

    public boolean isCompassEnabled() {
        return this.mIsCompassEnabled;
    }

    public float getOrientation() {
        return this.mAzimuth;
    }

    private Point calculatePointOnCircle(float f, float f2, float f3, float f4) {
        double radians = Math.toRadians((double) ((-f4) + 90.0f));
        return new Point(((int) (((double) f3) * Math.cos(radians))) + ((int) f), ((int) f2) - ((int) (Math.sin(radians) * ((double) f3))));
    }

    private void drawTriangle(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        canvas.save();
        Point calculatePointOnCircle = calculatePointOnCircle(f, f2, f3, f4);
        canvas.rotate(f4, (float) calculatePointOnCircle.x, (float) calculatePointOnCircle.y);
        Path path = new Path();
        path.moveTo(((float) calculatePointOnCircle.x) - (this.mScale * 2.0f), (float) calculatePointOnCircle.y);
        path.lineTo(((float) calculatePointOnCircle.x) + (this.mScale * 2.0f), (float) calculatePointOnCircle.y);
        path.lineTo((float) calculatePointOnCircle.x, ((float) calculatePointOnCircle.y) - (5.0f * this.mScale));
        path.close();
        canvas.drawPath(path, paint);
        canvas.restore();
    }

    private int getDisplayOrientation() {
        switch (this.mDisplay.getOrientation()) {
            case 1:
                return 90;
            case 2:
                return CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256;
            case 3:
                return Error.E_WTSDK_A1_DECRYPT;
            default:
                return 0;
        }
    }

    private void createCompassFramePicture() {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setAntiAlias(true);
        paint.setStyle(Style.FILL);
        paint.setAlpha(200);
        Paint paint2 = new Paint();
        paint2.setColor(-7829368);
        paint2.setAntiAlias(true);
        paint2.setStyle(Style.STROKE);
        paint2.setStrokeWidth(2.0f);
        paint2.setAlpha(200);
        int i = (int) (50.0f * this.mScale);
        int i2 = i / 2;
        if (this.mCompassFrameBitmap != null) {
            this.mCompassFrameBitmap.recycle();
        }
        this.mCompassFrameBitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
        Canvas canvas = new Canvas(this.mCompassFrameBitmap);
        canvas.drawCircle((float) i2, (float) i2, this.mScale * 20.0f, paint);
        canvas.drawCircle((float) i2, (float) i2, this.mScale * 20.0f, paint2);
        drawTriangle(canvas, (float) i2, (float) i2, 20.0f * this.mScale, 0.0f, paint2);
        drawTriangle(canvas, (float) i2, (float) i2, 20.0f * this.mScale, 90.0f, paint2);
        drawTriangle(canvas, (float) i2, (float) i2, 20.0f * this.mScale, 180.0f, paint2);
        drawTriangle(canvas, (float) i2, (float) i2, 20.0f * this.mScale, 270.0f, paint2);
    }

    private void createCompassRosePicture() {
        Paint paint = new Paint();
        paint.setColor(-6291456);
        paint.setAntiAlias(true);
        paint.setStyle(Style.FILL);
        paint.setAlpha(220);
        Paint paint2 = new Paint();
        paint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint2.setAntiAlias(true);
        paint2.setStyle(Style.FILL);
        paint2.setAlpha(220);
        Paint paint3 = new Paint();
        paint3.setColor(-1);
        paint3.setAntiAlias(true);
        paint3.setStyle(Style.FILL);
        paint3.setAlpha(220);
        int i = (int) (50.0f * this.mScale);
        int i2 = i / 2;
        if (this.mCompassRoseBitmap != null) {
            this.mCompassRoseBitmap.recycle();
        }
        this.mCompassRoseBitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
        Canvas canvas = new Canvas(this.mCompassRoseBitmap);
        Path path = new Path();
        path.moveTo((float) i2, ((float) i2) - (this.mScale * 17.0f));
        path.lineTo(((float) i2) + (this.mScale * 4.0f), (float) i2);
        path.lineTo(((float) i2) - (this.mScale * 4.0f), (float) i2);
        path.lineTo((float) i2, ((float) i2) - (this.mScale * 17.0f));
        path.close();
        canvas.drawPath(path, paint);
        Path path2 = new Path();
        path2.moveTo((float) i2, ((float) i2) + (this.mScale * 17.0f));
        path2.lineTo(((float) i2) + (this.mScale * 4.0f), (float) i2);
        path2.lineTo(((float) i2) - (this.mScale * 4.0f), (float) i2);
        path2.lineTo((float) i2, ((float) i2) + (this.mScale * 17.0f));
        path2.close();
        canvas.drawPath(path2, paint2);
        canvas.drawCircle((float) i2, (float) i2, 2.0f, paint3);
    }
}
