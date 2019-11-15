package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.library.R;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.util.constants.GeoConstants;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;

public class ScaleBarOverlay extends Overlay implements GeoConstants {
    private static final Rect sTextBoundsRect = new Rect();
    private boolean adjustLength = false;
    protected boolean alignBottom = false;
    protected boolean alignRight = false;
    private Paint barPaint;
    protected final Path barPath = new Path();
    private Paint bgPaint;
    private boolean centred = false;
    private Context context;
    private double lastLatitude = 0.0d;
    private int lastZoomLevel = -1;
    boolean latitudeBar = true;
    protected final Rect latitudeBarRect = new Rect();
    boolean longitudeBar = false;
    protected final Rect longitudeBarRect = new Rect();
    private MapView mMapView;
    private float maxLength;
    int minZoom = 0;
    public int screenHeight;
    public int screenWidth;
    private Paint textPaint;
    UnitsOfMeasure unitsOfMeasure = UnitsOfMeasure.metric;
    int xOffset = 10;
    public float xdpi;
    int yOffset = 10;
    public float ydpi;

    public enum UnitsOfMeasure {
        metric,
        imperial,
        nautical
    }

    public ScaleBarOverlay(MapView mapView) {
        String str;
        this.mMapView = mapView;
        this.context = mapView.getContext();
        DisplayMetrics displayMetrics = this.context.getResources().getDisplayMetrics();
        this.barPaint = new Paint();
        this.barPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.barPaint.setAntiAlias(true);
        this.barPaint.setStyle(Style.STROKE);
        this.barPaint.setAlpha(255);
        this.barPaint.setStrokeWidth(2.0f * displayMetrics.density);
        this.bgPaint = null;
        this.textPaint = new Paint();
        this.textPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.textPaint.setAntiAlias(true);
        this.textPaint.setStyle(Style.FILL);
        this.textPaint.setAlpha(255);
        this.textPaint.setTextSize(10.0f * displayMetrics.density);
        this.xdpi = displayMetrics.xdpi;
        this.ydpi = displayMetrics.ydpi;
        this.screenWidth = displayMetrics.widthPixels;
        this.screenHeight = displayMetrics.heightPixels;
        try {
            str = (String) Build.class.getField("MANUFACTURER").get(null);
        } catch (Exception e) {
            str = null;
        }
        if (!"motorola".equals(str) || !"DROIDX".equals(Build.MODEL)) {
            if ("motorola".equals(str) && "Droid".equals(Build.MODEL)) {
                this.xdpi = 264.0f;
                this.ydpi = 264.0f;
            }
        } else if (((WindowManager) this.context.getSystemService("window")).getDefaultDisplay().getOrientation() > 0) {
            this.xdpi = (float) (((double) this.screenWidth) / 3.75d);
            this.ydpi = (float) (((double) this.screenHeight) / 2.1d);
        } else {
            this.xdpi = (float) (((double) this.screenWidth) / 2.1d);
            this.ydpi = (float) (((double) this.screenHeight) / 3.75d);
        }
        this.maxLength = 2.54f;
    }

    public void setMinZoom(int i) {
        this.minZoom = i;
    }

    public void setScaleBarOffset(int i, int i2) {
        this.xOffset = i;
        this.yOffset = i2;
    }

    public void setLineWidth(float f) {
        this.barPaint.setStrokeWidth(f);
    }

    public void setTextSize(float f) {
        this.textPaint.setTextSize(f);
    }

    public void setUnitsOfMeasure(UnitsOfMeasure unitsOfMeasure2) {
        this.unitsOfMeasure = unitsOfMeasure2;
        this.lastZoomLevel = -1;
    }

    public UnitsOfMeasure getUnitsOfMeasure() {
        return this.unitsOfMeasure;
    }

    public void drawLatitudeScale(boolean z) {
        this.latitudeBar = z;
        this.lastZoomLevel = -1;
    }

    public void drawLongitudeScale(boolean z) {
        this.longitudeBar = z;
        this.lastZoomLevel = -1;
    }

    public void setCentred(boolean z) {
        boolean z2;
        boolean z3 = true;
        this.centred = z;
        if (!z) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.alignBottom = z2;
        if (z) {
            z3 = false;
        }
        this.alignRight = z3;
        this.lastZoomLevel = -1;
    }

    public void setAlignBottom(boolean z) {
        this.centred = false;
        this.alignBottom = z;
        this.lastZoomLevel = -1;
    }

    public void setAlignRight(boolean z) {
        this.centred = false;
        this.alignRight = z;
        this.lastZoomLevel = -1;
    }

    public Paint getBarPaint() {
        return this.barPaint;
    }

    public void setBarPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("pBarPaint argument cannot be null");
        }
        this.barPaint = paint;
        this.lastZoomLevel = -1;
    }

    public Paint getTextPaint() {
        return this.textPaint;
    }

    public void setTextPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("pTextPaint argument cannot be null");
        }
        this.textPaint = paint;
        this.lastZoomLevel = -1;
    }

    public void setBackgroundPaint(Paint paint) {
        this.bgPaint = paint;
        this.lastZoomLevel = -1;
    }

    public void setEnableAdjustLength(boolean z) {
        this.adjustLength = z;
        this.lastZoomLevel = -1;
    }

    public void setMaxLength(float f) {
        this.maxLength = f;
        this.lastZoomLevel = -1;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z && !mapView.isAnimating()) {
            int zoomLevel = mapView.getZoomLevel();
            if (zoomLevel >= this.minZoom) {
                Projection projection = mapView.getProjection();
                if (projection != null) {
                    this.screenWidth = mapView.getWidth();
                    this.screenHeight = mapView.getHeight();
                    IGeoPoint fromPixels = projection.fromPixels(this.screenWidth / 2, this.screenHeight / 2, null);
                    if (!(zoomLevel == this.lastZoomLevel && ((int) fromPixels.getLatitude()) == ((int) this.lastLatitude))) {
                        this.lastZoomLevel = zoomLevel;
                        this.lastLatitude = fromPixels.getLatitude();
                        rebuildBarPath(projection);
                    }
                    int i = this.xOffset;
                    int i2 = this.yOffset;
                    if (this.alignBottom) {
                        i2 *= -1;
                    }
                    if (this.alignRight) {
                        i *= -1;
                    }
                    if (this.centred && this.latitudeBar) {
                        i += (-this.latitudeBarRect.width()) / 2;
                    }
                    if (this.centred && this.longitudeBar) {
                        i2 += (-this.longitudeBarRect.height()) / 2;
                    }
                    canvas.save();
                    canvas.concat(projection.getInvertedScaleRotateCanvasMatrix());
                    canvas.translate((float) i, (float) i2);
                    if (this.latitudeBar && this.bgPaint != null) {
                        canvas.drawRect(this.latitudeBarRect, this.bgPaint);
                    }
                    if (this.longitudeBar && this.bgPaint != null) {
                        canvas.drawRect((float) this.longitudeBarRect.left, (float) ((this.latitudeBar ? this.latitudeBarRect.height() : 0) + this.longitudeBarRect.top), (float) this.longitudeBarRect.right, (float) this.longitudeBarRect.bottom, this.bgPaint);
                    }
                    canvas.drawPath(this.barPath, this.barPaint);
                    if (this.latitudeBar) {
                        drawLatitudeText(canvas, projection);
                    }
                    if (this.longitudeBar) {
                        drawLongitudeText(canvas, projection);
                    }
                    canvas.restore();
                }
            }
        }
    }

    public void disableScaleBar() {
        setEnabled(false);
    }

    public void enableScaleBar() {
        setEnabled(true);
    }

    private void drawLatitudeText(Canvas canvas, Projection projection) {
        float height;
        int i = (int) (((float) ((int) (((double) this.xdpi) / 2.54d))) * this.maxLength);
        int distanceTo = ((GeoPoint) projection.fromPixels((this.screenWidth / 2) - (i / 2), this.yOffset, null)).distanceTo(projection.fromPixels((this.screenWidth / 2) + (i / 2), this.yOffset, null));
        double d = this.adjustLength ? adjustScaleBarLength((double) distanceTo) : (double) distanceTo;
        int i2 = (int) ((((double) i) * d) / ((double) distanceTo));
        String scaleBarLengthText = scaleBarLengthText((int) d);
        this.textPaint.getTextBounds(scaleBarLengthText, 0, scaleBarLengthText.length(), sTextBoundsRect);
        int height2 = (int) (((double) sTextBoundsRect.height()) / 5.0d);
        float width = (float) ((i2 / 2) - (sTextBoundsRect.width() / 2));
        if (this.alignRight) {
            width += (float) (this.screenWidth - i2);
        }
        if (this.alignBottom) {
            height = (float) (this.screenHeight - (height2 * 2));
        } else {
            height = (float) (height2 + sTextBoundsRect.height());
        }
        canvas.drawText(scaleBarLengthText, width, height, this.textPaint);
    }

    private void drawLongitudeText(Canvas canvas, Projection projection) {
        float height;
        int i = (int) (((float) ((int) (((double) this.ydpi) / 2.54d))) * this.maxLength);
        int distanceTo = ((GeoPoint) projection.fromPixels(this.screenWidth / 2, (this.screenHeight / 2) - (i / 2), null)).distanceTo(projection.fromPixels(this.screenWidth / 2, (this.screenHeight / 2) + (i / 2), null));
        double d = this.adjustLength ? adjustScaleBarLength((double) distanceTo) : (double) distanceTo;
        int i2 = (int) ((((double) i) * d) / ((double) distanceTo));
        String scaleBarLengthText = scaleBarLengthText((int) d);
        this.textPaint.getTextBounds(scaleBarLengthText, 0, scaleBarLengthText.length(), sTextBoundsRect);
        int height2 = (int) (((double) sTextBoundsRect.height()) / 5.0d);
        if (this.alignRight) {
            height = (float) (this.screenWidth - (height2 * 2));
        } else {
            height = (float) (height2 + sTextBoundsRect.height());
        }
        float width = (float) ((i2 / 2) + (sTextBoundsRect.width() / 2));
        if (this.alignBottom) {
            width += (float) (this.screenHeight - i2);
        }
        canvas.save();
        canvas.rotate(-90.0f, height, width);
        canvas.drawText(scaleBarLengthText, height, width, this.textPaint);
        canvas.restore();
    }

    /* access modifiers changed from: protected */
    public void rebuildBarPath(Projection projection) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int i9 = (int) (((float) ((int) (((double) this.xdpi) / 2.54d))) * this.maxLength);
        int i10 = (int) (this.maxLength * ((float) ((int) (((double) this.ydpi) / 2.54d))));
        int distanceTo = ((GeoPoint) projection.fromPixels((this.screenWidth / 2) - (i9 / 2), this.yOffset, null)).distanceTo(projection.fromPixels((this.screenWidth / 2) + (i9 / 2), this.yOffset, null));
        double d = this.adjustLength ? adjustScaleBarLength((double) distanceTo) : (double) distanceTo;
        int i11 = (int) ((((double) i9) * d) / ((double) distanceTo));
        int distanceTo2 = ((GeoPoint) projection.fromPixels(this.screenWidth / 2, (this.screenHeight / 2) - (i10 / 2), null)).distanceTo(projection.fromPixels(this.screenWidth / 2, (this.screenHeight / 2) + (i10 / 2), null));
        double d2 = this.adjustLength ? adjustScaleBarLength((double) distanceTo2) : (double) distanceTo2;
        int i12 = (int) ((((double) i10) * d2) / ((double) distanceTo2));
        String scaleBarLengthText = scaleBarLengthText((int) d);
        Rect rect = new Rect();
        this.textPaint.getTextBounds(scaleBarLengthText, 0, scaleBarLengthText.length(), rect);
        int height = (int) (((double) rect.height()) / 5.0d);
        String scaleBarLengthText2 = scaleBarLengthText((int) d2);
        Rect rect2 = new Rect();
        this.textPaint.getTextBounds(scaleBarLengthText2, 0, scaleBarLengthText2.length(), rect2);
        int height2 = (int) (((double) rect2.height()) / 5.0d);
        int height3 = rect.height();
        int height4 = rect2.height();
        this.barPath.rewind();
        if (this.alignBottom) {
            i2 = height * -1;
            i3 = height3 * -1;
            i = this.mMapView.getHeight();
            i4 = i - i12;
        } else {
            i = 0;
            i2 = height;
            i3 = height3;
            i4 = i12;
        }
        if (this.alignRight) {
            int i13 = height2 * -1;
            int i14 = height4 * -1;
            i8 = this.mMapView.getWidth();
            i5 = i8 - i11;
            i6 = i14;
            i7 = i13;
        } else {
            i5 = i11;
            i6 = height4;
            i7 = height2;
        }
        if (this.latitudeBar) {
            this.barPath.moveTo((float) i5, (float) (i + i3 + (i2 * 2)));
            this.barPath.lineTo((float) i5, (float) i);
            this.barPath.lineTo((float) i8, (float) i);
            if (!this.longitudeBar) {
                this.barPath.lineTo((float) i8, (float) (i + i3 + (i2 * 2)));
            }
            this.latitudeBarRect.set(i8, i, i5, i3 + i + (i2 * 2));
        }
        if (this.longitudeBar) {
            if (!this.latitudeBar) {
                this.barPath.moveTo((float) (i8 + i6 + (i7 * 2)), (float) i);
                this.barPath.lineTo((float) i8, (float) i);
            }
            this.barPath.lineTo((float) i8, (float) i4);
            this.barPath.lineTo((float) (i8 + i6 + (i7 * 2)), (float) i4);
            this.longitudeBarRect.set(i8, i, i8 + i6 + (i7 * 2), i4);
        }
    }

    private double adjustScaleBarLength(double d) {
        boolean z;
        double d2;
        long j;
        double d3;
        long j2;
        double d4;
        if (this.unitsOfMeasure == UnitsOfMeasure.imperial) {
            if (d >= 321.8688d) {
                z = false;
                j = 0;
                d2 = d / 1609.344d;
            } else {
                z = true;
                j = 0;
                d2 = d * 3.2808399d;
            }
        } else if (this.unitsOfMeasure != UnitsOfMeasure.nautical) {
            z = false;
            j = 0;
            d2 = d;
        } else if (d >= 370.4d) {
            z = false;
            j = 0;
            d2 = d / 1852.0d;
        } else {
            z = true;
            j = 0;
            d2 = d * 3.2808399d;
        }
        while (d2 >= 10.0d) {
            j++;
            d2 /= 10.0d;
        }
        while (true) {
            d3 = d2;
            j2 = j;
            if (d3 < 1.0d && d3 > 0.0d) {
                j = j2 - 1;
                d2 = 10.0d * d3;
            }
        }
        if (d3 < 2.0d) {
            d4 = 1.0d;
        } else if (d3 < 5.0d) {
            d4 = 2.0d;
        } else {
            d4 = 5.0d;
        }
        if (z) {
            d4 /= 3.2808399d;
        } else if (this.unitsOfMeasure == UnitsOfMeasure.imperial) {
            d4 *= 1609.344d;
        } else if (this.unitsOfMeasure == UnitsOfMeasure.nautical) {
            d4 *= 1852.0d;
        }
        return d4 * Math.pow(10.0d, (double) j2);
    }

    /* access modifiers changed from: protected */
    public String scaleBarLengthText(int i) {
        switch (this.unitsOfMeasure) {
            case imperial:
                if (((double) i) >= 8046.72d) {
                    return this.context.getResources().getString(R.string.format_distance_miles, new Object[]{Integer.valueOf((int) (((double) i) / 1609.344d))});
                } else if (((double) i) >= 321.8688d) {
                    return this.context.getResources().getString(R.string.format_distance_miles, new Object[]{Double.valueOf(((double) ((int) (((double) i) / 160.9344d))) / 10.0d)});
                } else {
                    return this.context.getResources().getString(R.string.format_distance_feet, new Object[]{Integer.valueOf((int) (((double) i) * 3.2808399d))});
                }
            case nautical:
                if (((double) i) >= 9260.0d) {
                    return this.context.getResources().getString(R.string.format_distance_nautical_miles, new Object[]{Integer.valueOf((int) (((double) i) / 1852.0d))});
                } else if (((double) i) >= 370.4d) {
                    return this.context.getResources().getString(R.string.format_distance_nautical_miles, new Object[]{Double.valueOf(((double) ((int) (((double) i) / 185.2d))) / 10.0d)});
                } else {
                    return this.context.getResources().getString(R.string.format_distance_feet, new Object[]{Integer.valueOf((int) (((double) i) * 3.2808399d))});
                }
            default:
                if (i >= 5000) {
                    return this.context.getResources().getString(R.string.format_distance_kilometers, new Object[]{Integer.valueOf(i / 1000)});
                } else if (i >= 200) {
                    return this.context.getResources().getString(R.string.format_distance_kilometers, new Object[]{Double.valueOf(((double) ((int) (((double) i) / 100.0d))) / 10.0d)});
                } else {
                    return this.context.getResources().getString(R.string.format_distance_meters, new Object[]{Integer.valueOf(i)});
                }
        }
    }

    public void onDetach(MapView mapView) {
        this.context = null;
        this.mMapView = null;
        this.barPaint = null;
        this.bgPaint = null;
        this.textPaint = null;
    }
}
