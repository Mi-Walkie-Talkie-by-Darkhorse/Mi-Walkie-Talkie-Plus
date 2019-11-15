package com.github.mikephil.charting.g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.github.mikephil.charting.c.c;
import com.github.mikephil.charting.c.f;

/* compiled from: Utils */
public abstract class i {
    public static final double a = Double.longBitsToDouble(1);
    public static final float b = Float.intBitsToFloat(1);
    private static DisplayMetrics c;
    private static int d = 50;
    private static int e = 8000;
    private static Rect f = new Rect();
    private static FontMetrics g = new FontMetrics();
    private static Rect h = new Rect();
    private static final int[] i = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};
    private static f j = e();
    private static Rect k = new Rect();
    private static FontMetrics l = new FontMetrics();

    public static void a(Context context) {
        if (context == null) {
            d = ViewConfiguration.getMinimumFlingVelocity();
            e = ViewConfiguration.getMaximumFlingVelocity();
            Log.e("MPChartLib-Utils", "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL");
            return;
        }
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        d = viewConfiguration.getScaledMinimumFlingVelocity();
        e = viewConfiguration.getScaledMaximumFlingVelocity();
        c = context.getResources().getDisplayMetrics();
    }

    public static float a(float f2) {
        if (c != null) {
            return f2 * (((float) c.densityDpi) / 160.0f);
        }
        Log.e("MPChartLib-Utils", "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertDpToPixel(...). Otherwise conversion does not take place.");
        return f2;
    }

    public static int a(Paint paint, String str) {
        return (int) paint.measureText(str);
    }

    public static int b(Paint paint, String str) {
        Rect rect = f;
        rect.set(0, 0, 0, 0);
        paint.getTextBounds(str, 0, str.length(), rect);
        return rect.height();
    }

    public static float a(Paint paint) {
        return a(paint, g);
    }

    public static float a(Paint paint, FontMetrics fontMetrics) {
        paint.getFontMetrics(fontMetrics);
        return fontMetrics.descent - fontMetrics.ascent;
    }

    public static float b(Paint paint) {
        return b(paint, g);
    }

    public static float b(Paint paint, FontMetrics fontMetrics) {
        paint.getFontMetrics(fontMetrics);
        return (fontMetrics.ascent - fontMetrics.top) + fontMetrics.bottom;
    }

    public static b c(Paint paint, String str) {
        b a2 = b.a(0.0f, 0.0f);
        a(paint, str, a2);
        return a2;
    }

    public static void a(Paint paint, String str, b bVar) {
        Rect rect = h;
        rect.set(0, 0, 0, 0);
        paint.getTextBounds(str, 0, str.length(), rect);
        bVar.a = (float) rect.width();
        bVar.b = (float) rect.height();
    }

    private static f e() {
        return new c(1);
    }

    public static f a() {
        return j;
    }

    public static float a(double d2) {
        double d3;
        if (Double.isInfinite(d2) || Double.isNaN(d2) || d2 == 0.0d) {
            return 0.0f;
        }
        if (d2 < 0.0d) {
            d3 = -d2;
        } else {
            d3 = d2;
        }
        float pow = (float) Math.pow(10.0d, (double) (1 - ((int) ((float) Math.ceil((double) ((float) Math.log10(d3)))))));
        return ((float) Math.round(((double) pow) * d2)) / pow;
    }

    public static int b(float f2) {
        float a2 = a((double) f2);
        if (Float.isInfinite(a2)) {
            return 0;
        }
        return ((int) Math.ceil(-Math.log10((double) a2))) + 2;
    }

    public static double b(double d2) {
        if (d2 == Double.POSITIVE_INFINITY) {
            return d2;
        }
        double d3 = d2 + 0.0d;
        return Double.longBitsToDouble((d3 >= 0.0d ? 1 : -1) + Double.doubleToRawLongBits(d3));
    }

    public static void a(e eVar, float f2, float f3, e eVar2) {
        eVar2.a = (float) (((double) eVar.a) + (((double) f2) * Math.cos(Math.toRadians((double) f3))));
        eVar2.b = (float) (((double) eVar.b) + (((double) f2) * Math.sin(Math.toRadians((double) f3))));
    }

    public static void a(MotionEvent motionEvent, VelocityTracker velocityTracker) {
        velocityTracker.computeCurrentVelocity(1000, (float) e);
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        float xVelocity = velocityTracker.getXVelocity(pointerId);
        float yVelocity = velocityTracker.getYVelocity(pointerId);
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            if (i2 != actionIndex) {
                int pointerId2 = motionEvent.getPointerId(i2);
                if ((velocityTracker.getYVelocity(pointerId2) * yVelocity) + (velocityTracker.getXVelocity(pointerId2) * xVelocity) < 0.0f) {
                    velocityTracker.clear();
                    return;
                }
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static void a(View view) {
        if (VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidateDelayed(10);
        }
    }

    public static int b() {
        return d;
    }

    public static int c() {
        return e;
    }

    public static float c(float f2) {
        while (f2 < 0.0f) {
            f2 += 360.0f;
        }
        return f2 % 360.0f;
    }

    public static void a(Canvas canvas, String str, float f2, float f3, Paint paint, e eVar, float f4) {
        float fontMetrics = paint.getFontMetrics(l);
        paint.getTextBounds(str, 0, str.length(), k);
        float f5 = 0.0f - ((float) k.left);
        float f6 = (-l.ascent) + 0.0f;
        Align textAlign = paint.getTextAlign();
        paint.setTextAlign(Align.LEFT);
        if (f4 != 0.0f) {
            float width = f5 - (((float) k.width()) * 0.5f);
            float f7 = f6 - (fontMetrics * 0.5f);
            if (!(eVar.a == 0.5f && eVar.b == 0.5f)) {
                b a2 = a((float) k.width(), fontMetrics, f4);
                f2 -= a2.a * (eVar.a - 0.5f);
                f3 -= a2.b * (eVar.b - 0.5f);
                b.a(a2);
            }
            canvas.save();
            canvas.translate(f2, f3);
            canvas.rotate(f4);
            canvas.drawText(str, width, f7, paint);
            canvas.restore();
        } else {
            if (!(eVar.a == 0.0f && eVar.b == 0.0f)) {
                f5 -= ((float) k.width()) * eVar.a;
                f6 -= fontMetrics * eVar.b;
            }
            canvas.drawText(str, f5 + f2, f6 + f3, paint);
        }
        paint.setTextAlign(textAlign);
    }

    public static b a(float f2, float f3, float f4) {
        return b(f2, f3, 0.017453292f * f4);
    }

    public static b b(float f2, float f3, float f4) {
        return b.a(Math.abs(((float) Math.cos((double) f4)) * f2) + Math.abs(((float) Math.sin((double) f4)) * f3), Math.abs(((float) Math.sin((double) f4)) * f2) + Math.abs(((float) Math.cos((double) f4)) * f3));
    }

    public static int d() {
        return VERSION.SDK_INT;
    }
}
