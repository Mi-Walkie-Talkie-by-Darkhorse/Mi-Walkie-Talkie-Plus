package com.autonavi.ae.gmap.glanimation;

import android.graphics.Point;
import android.os.SystemClock;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;

public class ADGLMapAnimPivotZoom extends ADGLAnimation {
    private int _beginCenterGeoX;
    private int _beginCenterGeoY;
    private boolean _hasCheckParams;
    private float _mapLevelTo;
    private int _pivotGeoX;
    private int _pivotGeoY;
    private float _winPivotX;
    private float _winPivotY;
    private boolean _zoomCenter;
    ADGLAnimationParam1V _zoomParam = null;

    public void reset() {
        this._isOver = false;
        this._hasCheckParams = false;
        this._zoomCenter = true;
        this._mapLevelTo = 0.0f;
        this._beginCenterGeoX = 0;
        this._beginCenterGeoY = 0;
        this._pivotGeoX = 0;
        this._pivotGeoY = 0;
        this._winPivotX = 0.0f;
        this._winPivotY = 0.0f;
        if (this._zoomParam != null) {
            this._zoomParam.reset();
        }
    }

    public void commitAnimation(Object obj) {
        this._isOver = true;
        this._hasCheckParams = false;
        GLMapState gLMapState = (GLMapState) obj;
        if (gLMapState != null) {
            float mapZoomer = gLMapState.getMapZoomer();
            if (((double) Math.abs(this._mapLevelTo - mapZoomer)) < 1.0E-6d) {
                this._isOver = true;
                this._hasCheckParams = true;
                return;
            }
            this._zoomParam.setFromValue(mapZoomer);
            this._zoomParam.setToValue(this._mapLevelTo);
            if (!this._zoomCenter) {
                IPoint obtain = IPoint.obtain();
                gLMapState.getGeoCenter(obtain);
                this._beginCenterGeoX = obtain.x;
                this._beginCenterGeoY = obtain.y;
                FPoint obtain2 = FPoint.obtain();
                IPoint obtain3 = IPoint.obtain();
                gLMapState.win2Map((int) this._winPivotX, (int) this._winPivotY, obtain2);
                gLMapState.map2Geo(obtain2.x, obtain2.y, obtain3);
                this._pivotGeoX = obtain3.x;
                this._pivotGeoY = obtain3.y;
                obtain.recycle();
                obtain2.recycle();
                obtain3.recycle();
            }
            this._hasCheckParams = true;
            this._isOver = false;
            this._startTime = SystemClock.uptimeMillis();
        }
    }

    public ADGLMapAnimPivotZoom(int i) {
        reset();
        this._duration = i;
    }

    public void setToMapZoomAndPivot(float f, int i, Point point) {
        float f2 = 20.0f;
        float f3 = 3.0f;
        this._zoomParam = new ADGLAnimationParam1V();
        this._zoomParam.setInterpolatorType(i, 1.0f);
        if (f <= 20.0f) {
            f2 = f;
        }
        if (f2 >= 3.0f) {
            f3 = f2;
        }
        this._mapLevelTo = f3;
        if (point != null) {
            this._winPivotX = (float) point.x;
            this._winPivotY = (float) point.y;
            this._zoomCenter = false;
        }
    }

    public void doAnimation(Object obj) {
        float f = 20.0f;
        float f2 = 3.0f;
        GLMapState gLMapState = (GLMapState) obj;
        if (gLMapState != null) {
            if (!this._hasCheckParams) {
                commitAnimation(obj);
            }
            if (!this._isOver) {
                this._offsetTime = SystemClock.uptimeMillis() - this._startTime;
                float f3 = ((float) this._offsetTime) / ((float) this._duration);
                if (f3 > 1.0f) {
                    this._isOver = true;
                    f3 = 1.0f;
                }
                if (f3 >= 0.0f && f3 <= 1.0f) {
                    this._zoomParam.setNormalizedTime(f3);
                    float curValue = this._zoomParam.getCurValue();
                    if (curValue > 20.0f) {
                        this._isOver = true;
                    } else {
                        f = curValue;
                    }
                    if (f < 3.0f) {
                        this._isOver = true;
                    } else {
                        f2 = f;
                    }
                    if (!this._zoomCenter) {
                        float pow = (float) Math.pow(2.0d, (double) (f2 - this._zoomParam.getFromValue()));
                        gLMapState.setMapGeoCenter(((int) (((float) (this._pivotGeoX - this._beginCenterGeoX)) * (1.0f - (1.0f / pow)))) + this._beginCenterGeoX, ((int) ((1.0f - (1.0f / pow)) * ((float) (this._pivotGeoY - this._beginCenterGeoY)))) + this._beginCenterGeoY);
                    }
                    gLMapState.setMapZoomer(f2);
                }
            }
        }
    }
}
