package com.ifengyu.library.widget.waitingdots;

import android.animation.TypeEvaluator;

public class SinTypeEvaluator implements TypeEvaluator<Number> {
    public Number evaluate(float f, Number number, Number number2) {
        return Double.valueOf(Math.max(0.0d, Math.sin(((double) f) * 3.141592653589793d * 2.0d)) * ((double) (number2.floatValue() - number.floatValue())));
    }
}
