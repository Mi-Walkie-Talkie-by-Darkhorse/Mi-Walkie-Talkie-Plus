package com.github.mikephil.charting.listener;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.charts.HorizontalBarChart;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.b;
import com.github.mikephil.charting.g.e;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import com.github.mikephil.charting.listener.ChartTouchListener.ChartGesture;

/* compiled from: BarLineChartTouchListener */
public class a extends ChartTouchListener<BarLineChartBase<? extends b<? extends com.github.mikephil.charting.e.b.b<? extends Entry>>>> {
    private Matrix f = new Matrix();
    private Matrix g = new Matrix();
    private e h = e.a(0.0f, 0.0f);
    private e i = e.a(0.0f, 0.0f);
    private float j = 1.0f;
    private float k = 1.0f;
    private float l = 1.0f;
    private com.github.mikephil.charting.e.b.e m;
    private VelocityTracker n;
    private long o = 0;
    private e p = e.a(0.0f, 0.0f);
    private e q = e.a(0.0f, 0.0f);
    private float r;
    private float s;

    public a(BarLineChartBase<? extends b<? extends com.github.mikephil.charting.e.b.b<? extends Entry>>> barLineChartBase, Matrix matrix, float f2) {
        super(barLineChartBase);
        this.f = matrix;
        this.r = i.a(f2);
        this.s = i.a(3.5f);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i2 = 2;
        if (this.n == null) {
            this.n = VelocityTracker.obtain();
        }
        this.n.addMovement(motionEvent);
        if (motionEvent.getActionMasked() == 3 && this.n != null) {
            this.n.recycle();
            this.n = null;
        }
        if (this.b == 0) {
            this.d.onTouchEvent(motionEvent);
        }
        if (((BarLineChartBase) this.e).l() || ((BarLineChartBase) this.e).m() || ((BarLineChartBase) this.e).n()) {
            switch (motionEvent.getAction() & 255) {
                case 0:
                    a(motionEvent);
                    a();
                    c(motionEvent);
                    break;
                case 1:
                    VelocityTracker velocityTracker = this.n;
                    int pointerId = motionEvent.getPointerId(0);
                    velocityTracker.computeCurrentVelocity(1000, (float) i.c());
                    float yVelocity = velocityTracker.getYVelocity(pointerId);
                    float xVelocity = velocityTracker.getXVelocity(pointerId);
                    if ((Math.abs(xVelocity) > ((float) i.b()) || Math.abs(yVelocity) > ((float) i.b())) && this.b == 1 && ((BarLineChartBase) this.e).w()) {
                        a();
                        this.o = AnimationUtils.currentAnimationTimeMillis();
                        this.p.a = motionEvent.getX();
                        this.p.b = motionEvent.getY();
                        this.q.a = xVelocity;
                        this.q.b = yVelocity;
                        i.a((View) this.e);
                    }
                    if (this.b == 2 || this.b == 3 || this.b == 4 || this.b == 5) {
                        ((BarLineChartBase) this.e).j();
                        ((BarLineChartBase) this.e).postInvalidate();
                    }
                    this.b = 0;
                    ((BarLineChartBase) this.e).z();
                    if (this.n != null) {
                        this.n.recycle();
                        this.n = null;
                    }
                    b(motionEvent);
                    break;
                case 2:
                    if (this.b != 1) {
                        if (this.b != 2 && this.b != 3 && this.b != 4) {
                            if (this.b == 0 && Math.abs(a(motionEvent.getX(), this.h.a, motionEvent.getY(), this.h.b)) > this.r) {
                                if (!((BarLineChartBase) this.e).s()) {
                                    if (((BarLineChartBase) this.e).l()) {
                                        this.a = ChartGesture.DRAG;
                                        this.b = 1;
                                        break;
                                    }
                                } else if (!((BarLineChartBase) this.e).q() && ((BarLineChartBase) this.e).l()) {
                                    this.b = 1;
                                    break;
                                } else {
                                    this.a = ChartGesture.DRAG;
                                    if (((BarLineChartBase) this.e).k()) {
                                        f(motionEvent);
                                        break;
                                    }
                                }
                            }
                        } else {
                            ((BarLineChartBase) this.e).y();
                            if (((BarLineChartBase) this.e).m() || ((BarLineChartBase) this.e).n()) {
                                e(motionEvent);
                                break;
                            }
                        }
                    } else {
                        ((BarLineChartBase) this.e).y();
                        d(motionEvent);
                        break;
                    }
                    break;
                case 3:
                    this.b = 0;
                    b(motionEvent);
                    break;
                case 5:
                    if (motionEvent.getPointerCount() >= 2) {
                        ((BarLineChartBase) this.e).y();
                        c(motionEvent);
                        this.j = h(motionEvent);
                        this.k = i(motionEvent);
                        this.l = g(motionEvent);
                        if (this.l > 10.0f) {
                            if (((BarLineChartBase) this.e).r()) {
                                this.b = 4;
                            } else if (((BarLineChartBase) this.e).m() != ((BarLineChartBase) this.e).n()) {
                                this.b = ((BarLineChartBase) this.e).m() ? 2 : 3;
                            } else {
                                if (this.j <= this.k) {
                                    i2 = 3;
                                }
                                this.b = i2;
                            }
                        }
                        a(this.i, motionEvent);
                        break;
                    }
                    break;
                case 6:
                    i.a(motionEvent, this.n);
                    this.b = 5;
                    break;
            }
            this.f = ((BarLineChartBase) this.e).getViewPortHandler().a(this.f, this.e, true);
        }
        return true;
    }

    private void c(MotionEvent motionEvent) {
        this.g.set(this.f);
        this.h.a = motionEvent.getX();
        this.h.b = motionEvent.getY();
        this.m = ((BarLineChartBase) this.e).b(motionEvent.getX(), motionEvent.getY());
    }

    private void d(MotionEvent motionEvent) {
        float x;
        float y;
        this.a = ChartGesture.DRAG;
        this.f.set(this.g);
        b onChartGestureListener = ((BarLineChartBase) this.e).getOnChartGestureListener();
        if (!c()) {
            x = motionEvent.getX() - this.h.a;
            y = motionEvent.getY() - this.h.b;
        } else if (this.e instanceof HorizontalBarChart) {
            x = -(motionEvent.getX() - this.h.a);
            y = motionEvent.getY() - this.h.b;
        } else {
            x = motionEvent.getX() - this.h.a;
            y = -(motionEvent.getY() - this.h.b);
        }
        this.f.postTranslate(x, y);
        if (onChartGestureListener != null) {
            onChartGestureListener.b(motionEvent, x, y);
        }
    }

    private void e(MotionEvent motionEvent) {
        boolean z;
        boolean x;
        boolean x2;
        boolean z2;
        float f2;
        boolean z3 = true;
        if (motionEvent.getPointerCount() >= 2) {
            b onChartGestureListener = ((BarLineChartBase) this.e).getOnChartGestureListener();
            float g2 = g(motionEvent);
            if (g2 > this.s) {
                e a = a(this.i.a, this.i.b);
                j viewPortHandler = ((BarLineChartBase) this.e).getViewPortHandler();
                if (this.b == 4) {
                    this.a = ChartGesture.PINCH_ZOOM;
                    float f3 = g2 / this.l;
                    if (f3 >= 1.0f) {
                        z3 = false;
                    }
                    if (z3) {
                        x2 = viewPortHandler.w();
                    } else {
                        x2 = viewPortHandler.x();
                    }
                    if (z3) {
                        z2 = viewPortHandler.y();
                    } else {
                        z2 = viewPortHandler.z();
                    }
                    if (((BarLineChartBase) this.e).m()) {
                        f2 = f3;
                    } else {
                        f2 = 1.0f;
                    }
                    if (!((BarLineChartBase) this.e).n()) {
                        f3 = 1.0f;
                    }
                    if (z2 || x2) {
                        this.f.set(this.g);
                        this.f.postScale(f2, f3, a.a, a.b);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.a(motionEvent, f2, f3);
                        }
                    }
                } else if (this.b == 2 && ((BarLineChartBase) this.e).m()) {
                    this.a = ChartGesture.X_ZOOM;
                    float h2 = h(motionEvent) / this.j;
                    if (h2 >= 1.0f) {
                        z3 = false;
                    }
                    if (z3) {
                        x = viewPortHandler.w();
                    } else {
                        x = viewPortHandler.x();
                    }
                    if (x) {
                        this.f.set(this.g);
                        this.f.postScale(h2, 1.0f, a.a, a.b);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.a(motionEvent, h2, 1.0f);
                        }
                    }
                } else if (this.b == 3 && ((BarLineChartBase) this.e).n()) {
                    this.a = ChartGesture.Y_ZOOM;
                    float i2 = i(motionEvent) / this.k;
                    if (i2 < 1.0f) {
                        z = viewPortHandler.y();
                    } else {
                        z = viewPortHandler.z();
                    }
                    if (z) {
                        this.f.set(this.g);
                        this.f.postScale(1.0f, i2, a.a, a.b);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.a(motionEvent, 1.0f, i2);
                        }
                    }
                }
                e.a(a);
            }
        }
    }

    private void f(MotionEvent motionEvent) {
        d a = ((BarLineChartBase) this.e).a(motionEvent.getX(), motionEvent.getY());
        if (a != null && !a.a(this.c)) {
            this.c = a;
            ((BarLineChartBase) this.e).a(a, true);
        }
    }

    private static void a(e eVar, MotionEvent motionEvent) {
        float y = motionEvent.getY(0) + motionEvent.getY(1);
        eVar.a = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
        eVar.b = y / 2.0f;
    }

    private static float g(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((double) ((x * x) + (y * y)));
    }

    private static float h(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getX(0) - motionEvent.getX(1));
    }

    private static float i(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getY(0) - motionEvent.getY(1));
    }

    public e a(float f2, float f3) {
        float f4;
        j viewPortHandler = ((BarLineChartBase) this.e).getViewPortHandler();
        float a = f2 - viewPortHandler.a();
        if (c()) {
            f4 = -(f3 - viewPortHandler.c());
        } else {
            f4 = -((((float) ((BarLineChartBase) this.e).getMeasuredHeight()) - f3) - viewPortHandler.d());
        }
        return e.a(a, f4);
    }

    private boolean c() {
        return (this.m == null && ((BarLineChartBase) this.e).t()) || (this.m != null && ((BarLineChartBase) this.e).d(this.m.q()));
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        float f2 = 1.4f;
        this.a = ChartGesture.DOUBLE_TAP;
        b onChartGestureListener = ((BarLineChartBase) this.e).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.b(motionEvent);
        }
        if (((BarLineChartBase) this.e).o() && ((b) ((BarLineChartBase) this.e).getData()).j() > 0) {
            e a = a(motionEvent.getX(), motionEvent.getY());
            BarLineChartBase barLineChartBase = (BarLineChartBase) this.e;
            float f3 = ((BarLineChartBase) this.e).m() ? 1.4f : 1.0f;
            if (!((BarLineChartBase) this.e).n()) {
                f2 = 1.0f;
            }
            barLineChartBase.a(f3, f2, a.a, a.b);
            if (((BarLineChartBase) this.e).x()) {
                Log.i("BarlineChartTouch", "Double-Tap, Zooming In, x: " + a.a + ", y: " + a.b);
            }
            e.a(a);
        }
        return super.onDoubleTap(motionEvent);
    }

    public void onLongPress(MotionEvent motionEvent) {
        this.a = ChartGesture.LONG_PRESS;
        b onChartGestureListener = ((BarLineChartBase) this.e).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.a(motionEvent);
        }
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.a = ChartGesture.SINGLE_TAP;
        b onChartGestureListener = ((BarLineChartBase) this.e).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.c(motionEvent);
        }
        if (!((BarLineChartBase) this.e).u()) {
            return false;
        }
        a(((BarLineChartBase) this.e).a(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return super.onSingleTapUp(motionEvent);
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        this.a = ChartGesture.FLING;
        b onChartGestureListener = ((BarLineChartBase) this.e).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.a(motionEvent, motionEvent2, f2, f3);
        }
        return super.onFling(motionEvent, motionEvent2, f2, f3);
    }

    public void a() {
        this.q.a = 0.0f;
        this.q.b = 0.0f;
    }

    public void b() {
        if (this.q.a != 0.0f || this.q.b != 0.0f) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            e eVar = this.q;
            eVar.a = ((BarLineChartBase) this.e).getDragDecelerationFrictionCoef() * eVar.a;
            e eVar2 = this.q;
            eVar2.b = ((BarLineChartBase) this.e).getDragDecelerationFrictionCoef() * eVar2.b;
            float f2 = ((float) (currentAnimationTimeMillis - this.o)) / 1000.0f;
            float f3 = this.q.a * f2;
            float f4 = f2 * this.q.b;
            e eVar3 = this.p;
            eVar3.a = f3 + eVar3.a;
            e eVar4 = this.p;
            eVar4.b = f4 + eVar4.b;
            MotionEvent obtain = MotionEvent.obtain(currentAnimationTimeMillis, currentAnimationTimeMillis, 2, this.p.a, this.p.b, 0);
            d(obtain);
            obtain.recycle();
            this.f = ((BarLineChartBase) this.e).getViewPortHandler().a(this.f, this.e, false);
            this.o = currentAnimationTimeMillis;
            if (((double) Math.abs(this.q.a)) >= 0.01d || ((double) Math.abs(this.q.b)) >= 0.01d) {
                i.a((View) this.e);
                return;
            }
            ((BarLineChartBase) this.e).j();
            ((BarLineChartBase) this.e).postInvalidate();
            a();
        }
    }
}
