package com.autonavi.ae.gmap.glanimation;

import android.os.SystemClock;

public class ADGLAnimation1V extends ADGLAnimation {
    private float _curValue;
    private ADGLAnimationParam1V _v1Param = null;

    public void reset() {
        this._isOver = false;
        this._duration = 0;
        if (this._v1Param != null) {
            this._v1Param.reset();
        }
    }

    public ADGLAnimation1V(int i) {
        reset();
        this._duration = i;
        this._curValue = 0.0f;
    }

    public void setAnimationValue(float f, float f2, int i) {
        if (this._v1Param == null) {
            this._v1Param = new ADGLAnimationParam1V();
        }
        this._v1Param.reset();
        this._v1Param.setInterpolatorType(i, 1.0f);
        this._v1Param.setFromValue(f);
        this._v1Param.setToValue(f2);
        this._startTime = SystemClock.uptimeMillis();
        this._isOver = false;
    }

    public float getCurValue() {
        return this._curValue;
    }

    public float getStartValue() {
        if (this._v1Param != null) {
            return this._v1Param.getFromValue();
        }
        return 0.0f;
    }

    public float getEndValue() {
        if (this._v1Param != null) {
            return this._v1Param.getToValue();
        }
        return 0.0f;
    }

    public void doAnimation(Object obj) {
        float f = 1.0f;
        if (!this._isOver) {
            this._offsetTime = SystemClock.uptimeMillis() - this._startTime;
            float f2 = ((float) this._offsetTime) / ((float) this._duration);
            if (f2 > 1.0f) {
                this._isOver = true;
            } else if (f2 < 0.0f) {
                this._isOver = true;
                return;
            } else {
                f = f2;
            }
            if (this._v1Param != null) {
                this._v1Param.setNormalizedTime(f);
                this._curValue = this._v1Param.getCurValue();
            }
        }
    }
}
