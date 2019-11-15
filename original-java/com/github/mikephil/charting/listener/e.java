package com.github.mikephil.charting.listener;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.PieRadarChartBase;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.listener.ChartTouchListener.ChartGesture;
import java.util.ArrayList;

/* compiled from: PieRadarChartTouchListener */
public class e extends ChartTouchListener<PieRadarChartBase<?>> {
    private com.github.mikephil.charting.g.e f = com.github.mikephil.charting.g.e.a(0.0f, 0.0f);
    private float g = 0.0f;
    private ArrayList<a> h = new ArrayList<>();
    private long i = 0;
    private float j = 0.0f;

    /* compiled from: PieRadarChartTouchListener */
    private class a {
        public long a;
        public float b;

        public a(long j, float f) {
            this.a = j;
            this.b = f;
        }
    }

    public e(PieRadarChartBase<?> pieRadarChartBase) {
        super(pieRadarChartBase);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.d.onTouchEvent(motionEvent) && ((PieRadarChartBase) this.e).i()) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            switch (motionEvent.getAction()) {
                case 0:
                    a(motionEvent);
                    a();
                    c();
                    if (((PieRadarChartBase) this.e).w()) {
                        c(x, y);
                    }
                    a(x, y);
                    this.f.a = x;
                    this.f.b = y;
                    break;
                case 1:
                    if (((PieRadarChartBase) this.e).w()) {
                        a();
                        c(x, y);
                        this.j = d();
                        if (this.j != 0.0f) {
                            this.i = AnimationUtils.currentAnimationTimeMillis();
                            i.a((View) this.e);
                        }
                    }
                    ((PieRadarChartBase) this.e).z();
                    this.b = 0;
                    b(motionEvent);
                    break;
                case 2:
                    if (((PieRadarChartBase) this.e).w()) {
                        c(x, y);
                    }
                    if (this.b == 0 && a(x, this.f.a, y, this.f.b) > i.a(8.0f)) {
                        this.a = ChartGesture.ROTATE;
                        this.b = 6;
                        ((PieRadarChartBase) this.e).y();
                    } else if (this.b == 6) {
                        b(x, y);
                        ((PieRadarChartBase) this.e).invalidate();
                    }
                    b(motionEvent);
                    break;
            }
        }
        return true;
    }

    public void onLongPress(MotionEvent motionEvent) {
        this.a = ChartGesture.LONG_PRESS;
        b onChartGestureListener = ((PieRadarChartBase) this.e).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.a(motionEvent);
        }
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return true;
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.a = ChartGesture.SINGLE_TAP;
        b onChartGestureListener = ((PieRadarChartBase) this.e).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.c(motionEvent);
        }
        if (!((PieRadarChartBase) this.e).u()) {
            return false;
        }
        a(((PieRadarChartBase) this.e).a(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return true;
    }

    private void c() {
        this.h.clear();
    }

    private void c(float f2, float f3) {
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.h.add(new a(currentAnimationTimeMillis, ((PieRadarChartBase) this.e).b(f2, f3)));
        int size = this.h.size();
        while (true) {
            int i2 = size;
            if (i2 - 2 > 0 && currentAnimationTimeMillis - ((a) this.h.get(0)).a > 1000) {
                this.h.remove(0);
                size = i2 - 1;
            } else {
                return;
            }
        }
    }

    private float d() {
        if (this.h.isEmpty()) {
            return 0.0f;
        }
        a aVar = (a) this.h.get(0);
        a aVar2 = (a) this.h.get(this.h.size() - 1);
        a aVar3 = aVar;
        for (int size = this.h.size() - 1; size >= 0; size--) {
            aVar3 = (a) this.h.get(size);
            if (aVar3.b != aVar2.b) {
                break;
            }
        }
        float f2 = ((float) (aVar2.a - aVar.a)) / 1000.0f;
        if (f2 == 0.0f) {
            f2 = 0.1f;
        }
        boolean z = aVar2.b >= aVar3.b;
        boolean z2 = ((double) Math.abs(aVar2.b - aVar3.b)) > 270.0d ? !z : z;
        if (((double) (aVar2.b - aVar.b)) > 180.0d) {
            aVar.b = (float) (((double) aVar.b) + 360.0d);
        } else if (((double) (aVar.b - aVar2.b)) > 180.0d) {
            aVar2.b = (float) (((double) aVar2.b) + 360.0d);
        }
        float abs = Math.abs((aVar2.b - aVar.b) / f2);
        if (!z2) {
            return -abs;
        }
        return abs;
    }

    public void a(float f2, float f3) {
        this.g = ((PieRadarChartBase) this.e).b(f2, f3) - ((PieRadarChartBase) this.e).getRawRotationAngle();
    }

    public void b(float f2, float f3) {
        ((PieRadarChartBase) this.e).setRotationAngle(((PieRadarChartBase) this.e).b(f2, f3) - this.g);
    }

    public void a() {
        this.j = 0.0f;
    }

    public void b() {
        if (this.j != 0.0f) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.j = ((PieRadarChartBase) this.e).getDragDecelerationFrictionCoef() * this.j;
            ((PieRadarChartBase) this.e).setRotationAngle(((PieRadarChartBase) this.e).getRotationAngle() + ((((float) (currentAnimationTimeMillis - this.i)) / 1000.0f) * this.j));
            this.i = currentAnimationTimeMillis;
            if (((double) Math.abs(this.j)) >= 0.001d) {
                i.a((View) this.e);
            } else {
                a();
            }
        }
    }
}
