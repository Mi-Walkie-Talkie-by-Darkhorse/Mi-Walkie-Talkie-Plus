package com.ifengyu.library.widget.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.ifengyu.library.R;
import com.ifengyu.library.util.l;

public class QMUILoadingView extends View {
    private int a;
    private int b;
    /* access modifiers changed from: private */
    public int c;
    private ValueAnimator d;
    private Paint e;
    private AnimatorUpdateListener f;

    public QMUILoadingView(Context context) {
        this(context, null);
    }

    public QMUILoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUILoadingStyle);
    }

    public QMUILoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 0;
        this.f = new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                QMUILoadingView.this.c = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                QMUILoadingView.this.invalidate();
            }
        };
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.QMUILoadingView, i, 0);
        this.a = obtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUILoadingView_qmui_loading_view_size, l.a(32.0f));
        this.b = obtainStyledAttributes.getColor(R.styleable.QMUILoadingView_qmui_loading_view_color, -1);
        obtainStyledAttributes.recycle();
        c();
    }

    private void c() {
        this.e = new Paint();
        this.e.setColor(this.b);
        this.e.setAntiAlias(true);
        this.e.setStrokeCap(Cap.ROUND);
    }

    public void setColor(int i) {
        this.b = i;
        this.e.setColor(i);
        invalidate();
    }

    public void setSize(int i) {
        this.a = i;
        requestLayout();
    }

    public void a() {
        if (this.d == null) {
            this.d = ValueAnimator.ofInt(new int[]{0, 11});
            this.d.addUpdateListener(this.f);
            this.d.setDuration(600);
            this.d.setRepeatMode(1);
            this.d.setRepeatCount(-1);
            this.d.setInterpolator(new LinearInterpolator());
            this.d.start();
        } else if (!this.d.isStarted()) {
            this.d.start();
        }
    }

    public void b() {
        if (this.d != null) {
            this.d.removeUpdateListener(this.f);
            this.d.removeAllUpdateListeners();
            this.d.cancel();
            this.d = null;
        }
    }

    private void a(Canvas canvas, int i) {
        int i2 = this.a / 12;
        int i3 = this.a / 6;
        this.e.setStrokeWidth((float) i2);
        canvas.rotate((float) i, (float) (this.a / 2), (float) (this.a / 2));
        canvas.translate((float) (this.a / 2), (float) (this.a / 2));
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 < 12) {
                canvas.rotate(30.0f);
                this.e.setAlpha((int) ((255.0f * ((float) (i5 + 1))) / 12.0f));
                canvas.translate(0.0f, (float) (((-this.a) / 2) + (i2 / 2)));
                canvas.drawLine(0.0f, 0.0f, 0.0f, (float) i3, this.e);
                canvas.translate(0.0f, (float) ((this.a / 2) - (i2 / 2)));
                i4 = i5 + 1;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(this.a, this.a);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, (float) getWidth(), (float) getHeight(), null, 31);
        a(canvas, this.c * 30);
        canvas.restoreToCount(saveLayer);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    /* access modifiers changed from: protected */
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            a();
        } else {
            b();
        }
    }
}
