package com.autonavi.ae.gmap;

import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.VirtualEarthProjection;

public class GLMapState {
    private float fov;
    private boolean is_new_instance;
    Point mGeoCenterPoint;
    private long native_engine_instance;
    private long native_state_instance;

    public static native float nativeGetCameraDegree(long j);

    public static native void nativeGetCameraPosition(long j, int[] iArr);

    public static native float nativeGetFov(long j);

    public static native float nativeGetGLUnitWithPixel20(long j, int i);

    public static native float nativeGetGLUnitWithWin(long j, int i);

    public static native float nativeGetGLUnitWithWinByY(long j, int i, int i2);

    public static native float nativeGetMapAngle(long j);

    public static native void nativeGetMapCenter(long j, Point point);

    public static native void nativeGetMapGLCenter(long j, PointF pointF);

    public static native void nativeGetMapViewBound(long j, Rect rect);

    public static native float nativeGetMapZoomer(long j);

    public static native int nativeGetMaxZoomLevel(long j);

    public static native int nativeGetMinZoomLevel(long j);

    public static native void nativeGetPixel20Bound(long j, Rect rect);

    public static native void nativeGetProjectionMatrix(long j, float[] fArr);

    public static native void nativeGetViewMatrix(long j, float[] fArr);

    public static native void nativeMapToP20Point(long j, float f, float f2, Point point);

    public static native void nativeMapToScreenPoint(long j, float f, float f2, PointF pointF);

    public static native void nativeMapToScreenPointWithZ(long j, float f, float f2, float f3, PointF pointF);

    public static native long nativeNewInstance(int i, long j);

    public static native void nativeP20ToMapPoint(long j, int i, int i2, PointF pointF);

    public static native void nativeP20ToScreenPoint(long j, int i, int i2, PointF pointF);

    public static native void nativeRecalculate(long j);

    public static native void nativeScreenToMapGPoint(long j, float f, float f2, PointF pointF);

    public static native void nativeScreenToP20Point(long j, float f, float f2, Point point);

    public static native void nativeSetCameraDegree(long j, float f);

    public static native void nativeSetMapAngle(long j, float f);

    public static native void nativeSetMapCenter(long j, int i, int i2);

    public static native void nativeSetMapGLCenter(long j, float f, float f2);

    public static native void nativeSetMapState(int i, long j, long j2);

    public static native void nativeSetMapZoomer(long j, float f);

    public static native void nativeStateDestroy(long j);

    public GLMapState(int i, long j) {
        this.native_state_instance = 0;
        this.native_engine_instance = 0;
        this.is_new_instance = false;
        this.mGeoCenterPoint = new Point();
        if (j != 0) {
            this.native_engine_instance = j;
            this.native_state_instance = nativeNewInstance(i, j);
            this.is_new_instance = true;
        }
    }

    public GLMapState() {
        this.native_state_instance = 0;
        this.native_engine_instance = 0;
        this.is_new_instance = false;
        this.mGeoCenterPoint = new Point();
        this.native_state_instance = 0;
    }

    public void setMapstateInstance(long j) {
        this.native_state_instance = j;
    }

    public void reset() {
        if (this.native_state_instance != 0) {
            recycle();
        }
        if (this.native_engine_instance != 0) {
            this.native_state_instance = nativeNewInstance(1, this.native_engine_instance);
        }
    }

    public void recycle() {
        if (this.native_state_instance != 0 && this.is_new_instance) {
            nativeStateDestroy(this.native_state_instance);
        }
        this.native_state_instance = 0;
    }

    public long getNativeInstance() {
        return this.native_state_instance;
    }

    public long getMapengineInstance() {
        return this.native_engine_instance;
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        if (this.native_state_instance != 0 && this.is_new_instance) {
            nativeStateDestroy(this.native_state_instance);
        }
        this.native_state_instance = 0;
    }

    public void setNativeMapengineState(int i, long j) {
        if (j != 0 && this.native_state_instance != 0) {
            this.native_engine_instance = j;
            nativeSetMapState(i, j, this.native_state_instance);
        }
    }

    public Point getMapGeoCenter() {
        nativeGetMapCenter(this.native_state_instance, this.mGeoCenterPoint);
        return this.mGeoCenterPoint;
    }

    public void setMapGeoCenter(int i, int i2) {
        nativeSetMapCenter(this.native_state_instance, i, i2);
    }

    public float getFov() {
        return nativeGetFov(this.native_state_instance);
    }

    public PointF getMapGlCenter() {
        PointF pointF = new PointF();
        nativeGetMapGLCenter(this.native_state_instance, pointF);
        return pointF;
    }

    public void setMapGlCenter(float f, float f2) {
        nativeSetMapGLCenter(this.native_state_instance, f, f2);
    }

    public float getCameraDegree() {
        return nativeGetCameraDegree(this.native_state_instance);
    }

    public void setCameraDegree(float f) {
        nativeSetCameraDegree(this.native_state_instance, f);
    }

    public float getMapAngle() {
        return nativeGetMapAngle(this.native_state_instance);
    }

    public void setMapAngle(float f) {
        if (f < 0.0f) {
            f += 360.0f;
        } else if (f >= 360.0f) {
            f -= 360.0f;
        }
        nativeSetMapAngle(this.native_state_instance, f);
    }

    public float getMapZoomer() {
        return nativeGetMapZoomer(this.native_state_instance);
    }

    public void setMapZoomer(float f) {
        if (f > ((float) nativeGetMaxZoomLevel(this.native_state_instance))) {
            f = (float) nativeGetMaxZoomLevel(this.native_state_instance);
        }
        nativeSetMapZoomer(this.native_state_instance, f);
    }

    public void recalculate() {
        nativeRecalculate(this.native_state_instance);
    }

    public Rect getMapViewBound() {
        Rect rect = new Rect();
        nativeGetMapViewBound(this.native_state_instance, rect);
        return rect;
    }

    public void screenToMapGPoint(float f, float f2, PointF pointF) {
        nativeScreenToMapGPoint(this.native_state_instance, f, f2, pointF);
    }

    public void p20ToMapPoint(int i, int i2, PointF pointF) {
        nativeP20ToMapPoint(this.native_state_instance, i, i2, pointF);
    }

    public void p20ToScreenPoint(int i, int i2, PointF pointF) {
        nativeP20ToScreenPoint(this.native_state_instance, i, i2, pointF);
    }

    public void mapToScreenPoint(float f, float f2, PointF pointF) {
        nativeMapToScreenPoint(this.native_state_instance, f, f2, pointF);
    }

    public void mapToScreenPointWithZ(float f, float f2, float f3, PointF pointF) {
        nativeMapToScreenPointWithZ(this.native_state_instance, f, f2, f3, pointF);
    }

    public void mapToP20Point(float f, float f2, Point point) {
        nativeMapToP20Point(this.native_state_instance, f, f2, point);
    }

    public void screenToP20Point(float f, float f2, Point point) {
        nativeScreenToP20Point(this.native_state_instance, f, f2, point);
    }

    public float getGLUnitWithWin(int i) {
        return nativeGetGLUnitWithWin(this.native_state_instance, i);
    }

    public float getGLUnitWithPixel20(int i) {
        return nativeGetGLUnitWithPixel20(this.native_state_instance, i);
    }

    public float getGLUnitWithWinByY(int i, int i2) {
        return nativeGetGLUnitWithWinByY(this.native_state_instance, i, i2);
    }

    public void getPixel20Bound(Rect rect) {
        nativeGetPixel20Bound(this.native_state_instance, rect);
    }

    public void getViewMatrix(float[] fArr) {
        if (fArr != null && fArr.length == 16) {
            nativeGetViewMatrix(this.native_state_instance, fArr);
        }
    }

    public void getProjectionMatrix(float[] fArr) {
        if (fArr != null && fArr.length == 16) {
            nativeGetProjectionMatrix(this.native_state_instance, fArr);
        }
    }

    public void getCameraPosition(int[] iArr) {
        if (iArr != null && iArr.length == 3) {
            nativeGetCameraPosition(this.native_state_instance, iArr);
        }
    }

    public void getGeoCenter(IPoint iPoint) {
        if (this.native_state_instance != 0) {
            Point point = new Point();
            nativeGetMapCenter(this.native_state_instance, point);
            iPoint.x = point.x;
            iPoint.y = point.y;
        }
    }

    public float getCameraHeaderAngle() {
        if (this.native_state_instance != 0) {
            return nativeGetCameraDegree(this.native_state_instance);
        }
        return 0.0f;
    }

    public float getMapLenWithWin(int i) {
        if (this.native_state_instance != 0) {
            return getGLUnitWithWin(i);
        }
        return 0.0f;
    }

    public void map2Win(float f, float f2, IPoint iPoint) {
        if (this.native_state_instance != 0) {
            PointF pointF = new PointF();
            nativeMapToScreenPoint(this.native_state_instance, f, f2, pointF);
            iPoint.x = (int) pointF.x;
            iPoint.y = (int) pointF.y;
        }
    }

    public void win2Map(int i, int i2, FPoint fPoint) {
        if (this.native_state_instance != 0) {
            PointF pointF = new PointF();
            nativeScreenToMapGPoint(this.native_state_instance, (float) i, (float) i2, pointF);
            fPoint.x = (float) ((int) pointF.x);
            fPoint.y = (float) ((int) pointF.y);
        }
    }

    public void geo2Map(int i, int i2, FPoint fPoint) {
        if (this.native_state_instance != 0) {
            PointF pointF = new PointF();
            nativeP20ToMapPoint(this.native_state_instance, i, i2, pointF);
            fPoint.x = pointF.x;
            fPoint.y = pointF.y;
        }
    }

    public void map2Geo(float f, float f2, IPoint iPoint) {
        if (this.native_state_instance != 0) {
            Point point = new Point();
            nativeMapToP20Point(this.native_state_instance, f, f2, point);
            iPoint.x = point.x;
            iPoint.y = point.y;
        }
    }

    public static void lonlat2Geo(double d, double d2, IPoint iPoint) {
        Point LatLongToPixels = VirtualEarthProjection.LatLongToPixels(d2, d, 20);
        iPoint.x = LatLongToPixels.x;
        iPoint.y = LatLongToPixels.y;
    }

    public static void geo2LonLat(int i, int i2, DPoint dPoint) {
        DPoint PixelsToLatLong = VirtualEarthProjection.PixelsToLatLong((long) i, (long) i2, 20);
        dPoint.x = PixelsToLatLong.x;
        dPoint.y = PixelsToLatLong.y;
        PixelsToLatLong.recycle();
    }
}
