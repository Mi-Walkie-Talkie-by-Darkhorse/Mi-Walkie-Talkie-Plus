package com.autonavi.ae.gmap.glanimation;

public abstract class ADGLAnimationParam {
    protected float _factor;
    protected boolean _hasCheckedParam;
    protected boolean _hasFromValue;
    protected boolean _hasToValue;
    protected int _interpolationType;
    protected float _mult;
    protected boolean _needToCaculate;
    protected float _normalizedTime;

    public abstract void checkParam();

    static float bounce(float f) {
        return f * f * 8.0f;
    }

    public void reset() {
        this._hasCheckedParam = false;
        this._needToCaculate = false;
        this._interpolationType = 0;
        this._factor = 1.0f;
        this._hasCheckedParam = false;
        this._needToCaculate = false;
        this._hasFromValue = false;
        this._hasToValue = false;
    }

    public boolean needToCaculate() {
        if (!this._hasCheckedParam) {
            checkParam();
        }
        if (!this._hasCheckedParam || !this._needToCaculate) {
            return false;
        }
        return true;
    }

    public float getCurMult() {
        return this._mult;
    }

    public void setNormalizedTime(float f) {
        this._normalizedTime = f;
        switch (this._interpolationType) {
            case 0:
                break;
            case 1:
                f = (float) Math.pow((double) f, (double) (this._factor * 2.0f));
                break;
            case 2:
                if (this._factor != 1.0f) {
                    f = (float) (1.0d - Math.pow((double) (1.0f - f), (double) (this._factor * 2.0f)));
                    break;
                } else {
                    f = 1.0f - ((1.0f - f) * (1.0f - f));
                    break;
                }
            case 3:
                f = (float) ((Math.cos(((double) (f + 1.0f)) * 3.141592653589793d) / 2.0d) + 0.5d);
                break;
            case 4:
                float f2 = 1.1226f * f;
                if (f2 >= 0.3535f) {
                    if (f2 >= 0.7408f) {
                        if (f2 >= 0.9644f) {
                            f = bounce(f2 - 1.0435f) + 0.95f;
                            break;
                        } else {
                            f = bounce(f2 - 0.8526f) + 0.9f;
                            break;
                        }
                    } else {
                        f = bounce(f2 - 0.54719f) + 0.7f;
                        break;
                    }
                } else {
                    f = bounce(f2);
                    break;
                }
            case 5:
                float f3 = f - 1.0f;
                f = (((f3 * (2.0f + 1.0f)) + 2.0f) * f3 * f3) + 1.0f;
                break;
            case 6:
                if (f >= 0.0f) {
                    if (f >= 0.25f) {
                        if (f >= 0.5f) {
                            if (f >= 0.75f) {
                                if (f > 1.0f) {
                                    f = 0.0f;
                                    break;
                                } else {
                                    f = 4.0f - (4.0f * f);
                                    break;
                                }
                            } else {
                                f = (4.0f * f) - 2.0f;
                                break;
                            }
                        } else {
                            f = 2.0f - (4.0f * f);
                            break;
                        }
                    } else {
                        f *= 4.0f;
                        break;
                    }
                } else {
                    f = 0.0f;
                    break;
                }
            default:
                f = 0.0f;
                break;
        }
        this._mult = f;
    }

    public void setInterpolatorType(int i, float f) {
        this._interpolationType = i;
        this._factor = f;
    }

    public int getInterpolatorType() {
        return this._interpolationType;
    }

    public ADGLAnimationParam() {
        this._hasCheckedParam = false;
        this._needToCaculate = false;
        this._interpolationType = 0;
        this._factor = 1.0f;
        this._hasCheckedParam = false;
        this._needToCaculate = false;
        this._hasFromValue = false;
        this._hasToValue = false;
    }
}
