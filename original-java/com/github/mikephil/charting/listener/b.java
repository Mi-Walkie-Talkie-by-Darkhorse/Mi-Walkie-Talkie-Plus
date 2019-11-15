package com.github.mikephil.charting.listener;

import android.view.MotionEvent;
import com.github.mikephil.charting.listener.ChartTouchListener.ChartGesture;

/* compiled from: OnChartGestureListener */
public interface b {
    void a(MotionEvent motionEvent);

    void a(MotionEvent motionEvent, float f, float f2);

    void a(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2);

    void a(MotionEvent motionEvent, ChartGesture chartGesture);

    void b(MotionEvent motionEvent);

    void b(MotionEvent motionEvent, float f, float f2);

    void b(MotionEvent motionEvent, ChartGesture chartGesture);

    void c(MotionEvent motionEvent);
}
