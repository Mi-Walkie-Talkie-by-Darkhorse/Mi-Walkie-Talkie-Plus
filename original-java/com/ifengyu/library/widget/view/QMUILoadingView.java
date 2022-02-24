package com.ifengyu.library.widget.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.ifengyu.library.R$attr;
import com.ifengyu.library.R$styleable;
import com.ifengyu.library.a.m;

/* loaded from: classes2.dex */
public class QMUILoadingView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f7208a;

    /* renamed from: b  reason: collision with root package name */
    private int f7209b;

    /* renamed from: c  reason: collision with root package name */
    private int f7210c;
    private ValueAnimator d;
    private Paint e;
    private ValueAnimator.AnimatorUpdateListener f;

    /* loaded from: classes2.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            QMUILoadingView.this.f7210c = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            QMUILoadingView.this.invalidate();
        }
    }

    public QMUILoadingView(Context context) {
        this(context, null);
    }

    private void c() {
        Paint paint = new Paint();
        this.e = paint;
        paint.setColor(this.f7209b);
        this.e.setAntiAlias(true);
        this.e.setStrokeCap(Paint.Cap.ROUND);
    }

    public void b() {
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator != null) {
            valueAnimator.removeUpdateListener(this.f);
            this.d.removeAllUpdateListeners();
            this.d.cancel();
            this.d = null;
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        a(canvas, this.f7210c * 30);
        canvas.restoreToCount(saveLayer);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.f7208a;
        setMeasuredDimension(i3, i3);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            a();
        } else {
            b();
        }
    }

    public void setColor(int i) {
        this.f7209b = i;
        this.e.setColor(i);
        invalidate();
    }

    public void setSize(int i) {
        this.f7208a = i;
        requestLayout();
    }

    public QMUILoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.QMUILoadingStyle);
    }

    public void a() {
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator == null) {
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 11);
            this.d = ofInt;
            ofInt.addUpdateListener(this.f);
            this.d.setDuration(600L);
            this.d.setRepeatMode(1);
            this.d.setRepeatCount(-1);
            this.d.setInterpolator(new LinearInterpolator());
            this.d.start();
        } else if (!valueAnimator.isStarted()) {
            this.d.start();
        }
    }

    public QMUILoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7210c = 0;
        this.f = new a();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.QMUILoadingView, i, 0);
        this.f7208a = obtainStyledAttributes.getDimensionPixelSize(R$styleable.QMUILoadingView_qmui_loading_view_size, m.a(32.0f));
        this.f7209b = obtainStyledAttributes.getColor(R$styleable.QMUILoadingView_qmui_loading_view_color, -1);
        obtainStyledAttributes.recycle();
        c();
    }

    private void a(Canvas canvas, int i) {
        int i2 = this.f7208a;
        int i3 = i2 / 12;
        int i4 = i2 / 6;
        this.e.setStrokeWidth(i3);
        int i5 = this.f7208a;
        canvas.rotate(i, i5 / 2, i5 / 2);
        int i6 = this.f7208a;
        canvas.translate(i6 / 2, i6 / 2);
        int i7 = 0;
        while (i7 < 12) {
            canvas.rotate(30.0f);
            i7++;
            this.e.setAlpha((int) ((i7 * 255.0f) / 12.0f));
            int i8 = i3 / 2;
            canvas.translate(0.0f, ((-this.f7208a) / 2) + i8);
            canvas.drawLine(0.0f, 0.0f, 0.0f, i4, this.e);
            canvas.translate(0.0f, (this.f7208a / 2) - i8);
        }
    }
}
