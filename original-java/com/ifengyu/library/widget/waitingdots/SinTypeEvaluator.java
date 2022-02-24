package com.ifengyu.library.widget.waitingdots;

import android.animation.TypeEvaluator;

/* loaded from: classes2.dex */
public class SinTypeEvaluator implements TypeEvaluator<Number> {
    public Number evaluate(float f, Number number, Number number2) {
        return Double.valueOf(Math.max(0.0d, Math.sin(f * 3.141592653589793d * 2.0d)) * (number2.floatValue() - number.floatValue()));
    }
}
