package com.autonavi.ae.gmap.glanimation;

import android.os.SystemClock;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;

public class ADGLMapAnimFling extends ADGLAnimation {
    private IPoint _fromCenter;
    private boolean _hasCheckParams;
    private int _lastMoveX;
    private int _lastMoveY;
    private ADGLAnimationParam2V _moveParam = null;
    private boolean _needMove;
    private int _screenCenterX;
    private int _screenCenterY;
    private float _velocityX;
    private float _velocityY;

    public ADGLMapAnimFling(int i, int i2, int i3) {
        this._screenCenterX = i2;
        this._screenCenterY = i3;
        this._lastMoveX = i2;
        this._lastMoveY = i3;
        reset();
        this._duration = i;
    }

    public void reset() {
        if (this._moveParam != null) {
            this._moveParam.reset();
        }
        this._velocityX = 0.0f;
        this._velocityY = 0.0f;
        this._needMove = false;
        this._hasCheckParams = false;
    }

    public void setPositionAndVelocity(float f, float f2) {
        this._moveParam = null;
        this._velocityX = f;
        this._velocityY = f2;
        this._moveParam = new ADGLAnimationParam2V();
        this._moveParam.setInterpolatorType(2, 1.2f);
        this._needMove = false;
        this._hasCheckParams = false;
    }

    public void commitAnimationold(Object obj) {
        GLMapState gLMapState = (GLMapState) obj;
        if (gLMapState != null) {
            this._hasCheckParams = false;
            this._isOver = true;
            float sqrt = ((float) Math.sqrt((double) ((this._velocityX * this._velocityX) + (this._velocityY * this._velocityY)))) / 1000.0f;
            if (sqrt >= 0.1f) {
                float f = sqrt * 0.02f;
                if (this._fromCenter == null) {
                    this._fromCenter = IPoint.obtain();
                }
                gLMapState.getGeoCenter(this._fromCenter);
                this._isOver = false;
                this._moveParam.setFromValue((float) this._screenCenterX, (float) this._screenCenterY);
                this._moveParam.setToValue(((float) this._screenCenterX) - (this._velocityX * f), ((float) this._screenCenterY) - (f * this._velocityY));
                this._needMove = this._moveParam.needToCaculate();
            }
            if (this._needMove) {
            }
            this._hasCheckParams = true;
            this._startTime = SystemClock.uptimeMillis();
        }
    }

    public void commitAnimation(Object obj) {
        GLMapState gLMapState = (GLMapState) obj;
        if (gLMapState != null) {
            this._hasCheckParams = false;
            this._isOver = true;
            int i = (int) ((this._velocityX * ((float) this._duration)) / 2000.0f);
            int i2 = (int) ((this._velocityY * ((float) this._duration)) / 2000.0f);
            if (!(Math.abs(i) == 0 || Math.abs(i2) == 0)) {
                if (this._fromCenter == null) {
                    this._fromCenter = IPoint.obtain();
                }
                gLMapState.getGeoCenter(this._fromCenter);
                this._isOver = false;
                this._moveParam.setFromValue((float) this._screenCenterX, (float) this._screenCenterY);
                this._moveParam.setToValue((float) (this._screenCenterX - i), (float) (this._screenCenterY - i2));
                this._needMove = this._moveParam.needToCaculate();
            }
            if (this._needMove) {
            }
            this._hasCheckParams = true;
            this._startTime = SystemClock.uptimeMillis();
        }
    }

    public void doAnimation(Object obj) {
        GLMapState gLMapState = (GLMapState) obj;
        if (gLMapState != null) {
            if (!this._hasCheckParams) {
                commitAnimation(obj);
            }
            if (!this._isOver) {
                this._offsetTime = SystemClock.uptimeMillis() - this._startTime;
                float f = ((float) this._offsetTime) / ((float) this._duration);
                if (f > 1.0f) {
                    this._isOver = true;
                    f = 1.0f;
                }
                if (f >= 0.0f && f <= 1.0f && this._needMove) {
                    this._moveParam.setNormalizedTime(f);
                    int curXValue = (int) this._moveParam.getCurXValue();
                    int curYValue = (int) this._moveParam.getCurYValue();
                    FPoint obtain = FPoint.obtain();
                    gLMapState.win2Map((this._screenCenterX + curXValue) - this._lastMoveX, (this._screenCenterY + curYValue) - this._lastMoveY, obtain);
                    gLMapState.setMapGlCenter(obtain.x, obtain.y);
                    this._lastMoveX = curXValue;
                    this._lastMoveY = curYValue;
                    obtain.recycle();
                }
            }
        }
    }
}
