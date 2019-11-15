package com.autonavi.ae.gmap.glanimation;

import android.os.SystemClock;

public class ADGLAnimation2V extends ADGLAnimation {
    private float _curValue1;
    private float _curValue2;
    private ADGLAnimationParam2V _v2Param = null;

    public ADGLAnimation2V(int i) {
        reset();
        this._duration = i;
        this._curValue1 = 0.0f;
        this._curValue2 = 0.0f;
    }

    public void reset() {
        this._isOver = false;
        this._duration = 0;
        this._curValue1 = 0.0f;
        this._curValue2 = 0.0f;
        if (this._v2Param != null) {
            this._v2Param.reset();
        }
    }

    public void setAnimationValue(float f, float f2, float f3, float f4, int i) {
        if (this._v2Param == null) {
            this._v2Param = new ADGLAnimationParam2V();
        }
        this._v2Param.reset();
        this._v2Param.setInterpolatorType(i, 1.0f);
        this._v2Param.setFromValue(f, f3);
        this._v2Param.setToValue(f2, f4);
        this._startTime = SystemClock.uptimeMillis();
        this._isOver = false;
    }

    public float getCurValue(int i) {
        if (i == 0) {
            return this._curValue1;
        }
        return this._curValue2;
    }

    public float getStartValue(int i) {
        if (i == 0) {
            if (this._v2Param != null) {
                return this._v2Param.getFromXValue();
            }
            return 0.0f;
        } else if (this._v2Param != null) {
            return this._v2Param.getFromYValue();
        } else {
            return 0.0f;
        }
    }

    public float getEndValue(int i) {
        if (i == 0) {
            if (this._v2Param != null) {
                return this._v2Param.getToXValue();
            }
            return 0.0f;
        } else if (this._v2Param != null) {
            return this._v2Param.getToYValue();
        } else {
            return 0.0f;
        }
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
            if (this._v2Param != null) {
                this._v2Param.setNormalizedTime(f);
                this._curValue1 = this._v2Param.getCurXValue();
                this._curValue2 = this._v2Param.getCurYValue();
            }
        }
    }
}
