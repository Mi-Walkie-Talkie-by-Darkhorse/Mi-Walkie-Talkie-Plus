package com.github.mikephil.charting.listener;

import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View.OnTouchListener;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.d.d;

public abstract class ChartTouchListener<T extends Chart<?>> extends SimpleOnGestureListener implements OnTouchListener {
    protected ChartGesture a = ChartGesture.NONE;
    protected int b = 0;
    protected d c;
    protected GestureDetector d;
    protected T e;

    public enum ChartGesture {
        NONE,
        DRAG,
        X_ZOOM,
        Y_ZOOM,
        PINCH_ZOOM,
        ROTATE,
        SINGLE_TAP,
        DOUBLE_TAP,
        LONG_PRESS,
        FLING
    }

    public ChartTouchListener(T t) {
        this.e = t;
        this.d = new GestureDetector(t.getContext(), this);
    }

    public void a(MotionEvent motionEvent) {
        b onChartGestureListener = this.e.getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.a(motionEvent, this.a);
        }
    }

    public void b(MotionEvent motionEvent) {
        b onChartGestureListener = this.e.getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.b(motionEvent, this.a);
        }
    }

    public void a(d dVar) {
        this.c = dVar;
    }

    /* access modifiers changed from: protected */
    public void a(d dVar, MotionEvent motionEvent) {
        if (dVar == null || dVar.a(this.c)) {
            this.e.a((d) null, true);
            this.c = null;
            return;
        }
        this.e.a(dVar, true);
        this.c = dVar;
    }

    protected static float a(float f, float f2, float f3, float f4) {
        float f5 = f - f2;
        float f6 = f3 - f4;
        return (float) Math.sqrt((double) ((f5 * f5) + (f6 * f6)));
    }
}
