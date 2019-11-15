package com.autonavi.ae.gmap.glanimation;

import android.graphics.PointF;
import android.os.SystemClock;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;

public class ADGLMapAnimGroup extends ADGLAnimation {
    public static final int CAMERA_MAX_DEGREE = 60;
    public static final int CAMERA_MIN_DEGREE = 0;
    public static final int MAXMAPLEVEL = 20;
    public static final int MINMAPLEVEL = 3;
    int _endZoomDuration;
    boolean _hasCheckParams;
    boolean _hasMidZoom;
    int _midZoomDuration;
    ADGLAnimationParam2V _moveParam = null;
    public boolean _needMove;
    boolean _needRotateCamera;
    boolean _needRotateMap;
    boolean _needZoom;
    ADGLAnimationParam1V _rotateCameraParam = null;
    ADGLAnimationParam1V _rotateMapParam = null;
    int _startZoomDuration;
    ADGLAnimationParam1V _zoomEndParam = null;
    ADGLAnimationParam1V _zoomStartParam = null;

    public ADGLMapAnimGroup(int i) {
        reset();
        this._duration = i;
    }

    public void setDuration(int i) {
        this._duration = i;
    }

    public void reset() {
        this._isOver = false;
        this._hasCheckParams = false;
        this._needZoom = false;
        this._needMove = false;
        this._moveParam = null;
        this._needRotateMap = false;
        this._rotateMapParam = null;
        this._hasMidZoom = false;
        this._duration = 0;
        if (this._rotateMapParam != null) {
            this._rotateMapParam.reset();
        }
        if (this._moveParam != null) {
            this._moveParam.reset();
        }
        if (this._zoomStartParam != null) {
            this._zoomStartParam.reset();
        }
        if (this._zoomEndParam != null) {
            this._zoomEndParam.reset();
        }
        if (this._rotateCameraParam != null) {
            this._rotateCameraParam.reset();
        }
    }

    public boolean isValid() {
        if (this._needRotateCamera || this._needRotateMap || this._needMove || this._needZoom) {
            return true;
        }
        return false;
    }

    public void setToMapAngle(float f, int i) {
        float f2 = f % 360.0f;
        this._needRotateMap = true;
        if (this._rotateMapParam == null) {
            this._rotateMapParam = new ADGLAnimationParam1V();
        }
        this._rotateMapParam.reset();
        this._rotateMapParam.setInterpolatorType(i, 1.0f);
        this._rotateMapParam.setToValue(f2);
    }

    public void setToMapCenterGeo(int i, int i2, int i3) {
        if (i > 0 && i2 > 0) {
            this._needMove = true;
            if (this._moveParam == null) {
                this._moveParam = new ADGLAnimationParam2V();
            }
            this._moveParam.reset();
            this._moveParam.setInterpolatorType(i3, 1.0f);
            this._moveParam.setToValue((float) i, (float) i2);
        }
    }

    public void setToMapLevel(float f, int i) {
        this._needZoom = true;
        this._midZoomDuration = 0;
        this._hasMidZoom = false;
        if (checkLevel(f)) {
            initZoomStartParam(f, i);
        } else {
            this._needZoom = false;
        }
    }

    public void setToMapLevel(float f, float f2, int i) {
        this._needZoom = true;
        this._midZoomDuration = 0;
        this._hasMidZoom = false;
        if (i > 0 && i < this._duration) {
            this._midZoomDuration = i;
        }
        if (checkLevel(f) && checkLevel(f2)) {
            this._hasMidZoom = true;
            initZoomStartParam(f2, 0);
            initZoomEndParam(f2, f, 0);
        } else if (checkLevel(f)) {
            this._hasMidZoom = false;
            initZoomStartParam(f, 0);
        } else if (checkLevel(f2)) {
            this._hasMidZoom = false;
            initZoomStartParam(f2, 0);
        } else {
            this._needZoom = false;
        }
    }

    public void setToCameraDegree(float f, int i) {
        this._needRotateCamera = false;
        if (f <= 60.0f && f >= 0.0f) {
            this._needRotateCamera = true;
            if (this._rotateCameraParam == null) {
                this._rotateCameraParam = new ADGLAnimationParam1V();
            }
            this._rotateCameraParam.reset();
            this._rotateCameraParam.setInterpolatorType(i, 1.0f);
            this._rotateCameraParam.setToValue(f);
        }
    }

    public static boolean checkLevel(float f) {
        return f >= 3.0f && f <= 20.0f;
    }

    private void initZoomStartParam(float f, int i) {
        if (this._zoomStartParam == null) {
            this._zoomStartParam = new ADGLAnimationParam1V();
        }
        this._zoomStartParam.reset();
        this._zoomStartParam.setInterpolatorType(i, 1.0f);
        this._zoomStartParam.setToValue(f);
    }

    private void initZoomEndParam(float f, float f2, int i) {
        if (this._zoomEndParam == null) {
            this._zoomEndParam = new ADGLAnimationParam1V();
        }
        this._zoomEndParam.reset();
        this._zoomEndParam.setInterpolatorType(i, 1.0f);
        this._zoomEndParam.setToValue(f2);
        this._zoomEndParam.setFromValue(f);
    }

    public void commitAnimation(Object obj) {
        this._isOver = true;
        this._hasCheckParams = false;
        GLMapState gLMapState = (GLMapState) obj;
        if (gLMapState != null) {
            if (this._needZoom) {
                if (this._zoomStartParam == null) {
                    this._hasCheckParams = true;
                    return;
                }
                float mapZoomer = gLMapState.getMapZoomer();
                this._zoomStartParam.setFromValue(mapZoomer);
                if (this._hasMidZoom) {
                    float fromValue = this._zoomEndParam.getFromValue() - this._zoomEndParam.getToValue();
                    if (((double) Math.abs(this._zoomStartParam.getToValue() - mapZoomer)) < 1.0E-6d || ((double) Math.abs(fromValue)) < 1.0E-6d) {
                        this._hasMidZoom = false;
                        this._zoomStartParam.setToValue(this._zoomEndParam.getToValue());
                        this._zoomStartParam.needToCaculate();
                        this._zoomEndParam = null;
                    } else {
                        this._zoomStartParam.needToCaculate();
                        this._zoomEndParam.needToCaculate();
                    }
                }
                if (!this._hasMidZoom && ((double) Math.abs(this._zoomStartParam.getFromValue() - this._zoomStartParam.getToValue())) < 1.0E-6d) {
                    this._needZoom = false;
                }
                if (this._needZoom) {
                    if (this._hasMidZoom) {
                        this._startZoomDuration = (this._duration - this._midZoomDuration) >> 1;
                        this._endZoomDuration = this._startZoomDuration;
                    } else {
                        this._startZoomDuration = this._duration;
                    }
                }
            }
            if (this._needMove && this._moveParam != null) {
                IPoint obtain = IPoint.obtain();
                gLMapState.getGeoCenter(obtain);
                int i = obtain.x;
                int i2 = obtain.y;
                obtain.recycle();
                this._moveParam.setFromValue((float) i, (float) i2);
                this._needMove = this._moveParam.needToCaculate();
            }
            if (this._needRotateMap && this._rotateMapParam != null) {
                float mapAngle = gLMapState.getMapAngle();
                float toValue = this._rotateMapParam.getToValue();
                if (mapAngle > 180.0f && toValue == 0.0f) {
                    toValue = 360.0f;
                }
                int i3 = ((int) toValue) - ((int) mapAngle);
                if (i3 > 180) {
                    toValue -= 360.0f;
                } else if (i3 < -180) {
                    toValue += 360.0f;
                }
                this._rotateMapParam.setFromValue(mapAngle);
                this._rotateMapParam.setToValue(toValue);
                this._needRotateMap = this._rotateMapParam.needToCaculate();
            }
            if (this._needRotateCamera && this._rotateCameraParam != null) {
                this._rotateCameraParam.setFromValue(gLMapState.getCameraHeaderAngle());
                this._needRotateCamera = this._rotateCameraParam.needToCaculate();
            }
            if (this._needMove || this._needZoom || this._needRotateMap || this._needRotateCamera) {
                this._isOver = false;
            } else {
                this._isOver = true;
            }
            this._hasCheckParams = true;
            this._startTime = SystemClock.uptimeMillis();
        }
    }

    public void doAnimation(Object obj) {
        float curValue;
        float f = 1.0f;
        GLMapState gLMapState = (GLMapState) obj;
        if (gLMapState != null) {
            if (!this._hasCheckParams) {
                commitAnimation(obj);
            }
            if (!this._isOver) {
                this._offsetTime = SystemClock.uptimeMillis() - this._startTime;
                if (((float) this._duration) == 0.0f) {
                    this._isOver = true;
                    return;
                }
                float f2 = ((float) this._offsetTime) / ((float) this._duration);
                if (f2 > 1.0f) {
                    this._isOver = true;
                } else if (f2 < 0.0f) {
                    this._isOver = true;
                    return;
                } else {
                    f = f2;
                }
                if (this._needZoom) {
                    gLMapState.getMapZoomer();
                    if (this._hasMidZoom) {
                        if (this._offsetTime <= ((long) this._startZoomDuration)) {
                            this._zoomStartParam.setNormalizedTime(((float) this._offsetTime) / ((float) this._startZoomDuration));
                            curValue = this._zoomStartParam.getCurValue();
                        } else if (this._offsetTime <= ((long) (this._startZoomDuration + this._midZoomDuration))) {
                            curValue = this._zoomStartParam.getToValue();
                        } else {
                            this._zoomEndParam.setNormalizedTime(((float) ((this._offsetTime - ((long) this._startZoomDuration)) - ((long) this._midZoomDuration))) / ((float) this._endZoomDuration));
                            curValue = this._zoomEndParam.getCurValue();
                        }
                        if (this._isOver) {
                            curValue = this._zoomEndParam.getToValue();
                        }
                    } else {
                        this._zoomStartParam.setNormalizedTime(f);
                        curValue = this._zoomStartParam.getCurValue();
                    }
                    gLMapState.setMapZoomer(curValue);
                }
                if (this._moveParam != null && this._needMove) {
                    this._moveParam.setNormalizedTime(f);
                    int fromXValue = (int) this._moveParam.getFromXValue();
                    int fromYValue = (int) this._moveParam.getFromYValue();
                    int toXValue = (int) this._moveParam.getToXValue();
                    int toYValue = (int) this._moveParam.getToYValue();
                    float curMult = this._moveParam.getCurMult();
                    gLMapState.setMapGeoCenter(fromXValue, fromYValue);
                    PointF mapGlCenter = gLMapState.getMapGlCenter();
                    float f3 = mapGlCenter.x;
                    float f4 = mapGlCenter.y;
                    FPoint obtain = FPoint.obtain();
                    gLMapState.geo2Map(toXValue, toYValue, obtain);
                    gLMapState.setMapGlCenter(f3 + ((obtain.x - f3) * curMult), f4 + ((obtain.y - f4) * curMult));
                    obtain.recycle();
                }
                if (this._rotateMapParam != null && this._needRotateMap) {
                    this._rotateMapParam.setNormalizedTime(f);
                    gLMapState.setMapAngle((float) ((int) this._rotateMapParam.getCurValue()));
                }
                if (this._rotateCameraParam != null && this._needRotateCamera) {
                    this._rotateCameraParam.setNormalizedTime(f);
                    gLMapState.setCameraDegree((float) ((int) this._rotateCameraParam.getCurValue()));
                }
            }
        }
    }

    public boolean typeEqueal(ADGLMapAnimGroup aDGLMapAnimGroup) {
        if (this._needRotateCamera == aDGLMapAnimGroup._needRotateCamera && this._needRotateMap == aDGLMapAnimGroup._needRotateMap && this._needZoom == aDGLMapAnimGroup._needZoom && this._needMove == aDGLMapAnimGroup._needMove) {
            return true;
        }
        return false;
    }
}
