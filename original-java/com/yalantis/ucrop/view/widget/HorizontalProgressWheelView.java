package com.yalantis.ucrop.view.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.yalantis.ucrop.R;

public class HorizontalProgressWheelView extends View {
    private final Rect a;
    private a b;
    private float c;
    private Paint d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private float i;
    private int j;

    public interface a {
        void a();

        void a(float f, float f2);

        void b();
    }

    public HorizontalProgressWheelView(Context context) {
        this(context, null);
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a = new Rect();
        a();
    }

    @TargetApi(21)
    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.a = new Rect();
    }

    public void setScrollingListener(a aVar) {
        this.b = aVar;
    }

    public void setMiddleLineColor(@ColorInt int i2) {
        this.j = i2;
        invalidate();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.c = motionEvent.getX();
                break;
            case 1:
                if (this.b != null) {
                    this.h = false;
                    this.b.a();
                    break;
                }
                break;
            case 2:
                float x = motionEvent.getX() - this.c;
                if (x != 0.0f) {
                    if (!this.h) {
                        this.h = true;
                        if (this.b != null) {
                            this.b.b();
                        }
                    }
                    a(motionEvent, x);
                    break;
                }
                break;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.a);
        int width = this.a.width() / (this.e + this.g);
        float f2 = this.i % ((float) (this.g + this.e));
        this.d.setColor(getResources().getColor(R.color.ucrop_color_progress_wheel_line));
        for (int i2 = 0; i2 < width; i2++) {
            if (i2 < width / 4) {
                this.d.setAlpha((int) ((((float) i2) / ((float) (width / 4))) * 255.0f));
            } else if (i2 > (width * 3) / 4) {
                this.d.setAlpha((int) ((((float) (width - i2)) / ((float) (width / 4))) * 255.0f));
            } else {
                this.d.setAlpha(255);
            }
            Canvas canvas2 = canvas;
            canvas2.drawLine(((float) ((this.e + this.g) * i2)) + (-f2) + ((float) this.a.left), ((float) this.a.centerY()) - (((float) this.f) / 4.0f), ((float) ((this.e + this.g) * i2)) + (-f2) + ((float) this.a.left), (((float) this.f) / 4.0f) + ((float) this.a.centerY()), this.d);
        }
        this.d.setColor(this.j);
        Canvas canvas3 = canvas;
        canvas3.drawLine((float) this.a.centerX(), ((float) this.a.centerY()) - (((float) this.f) / 2.0f), (float) this.a.centerX(), (((float) this.f) / 2.0f) + ((float) this.a.centerY()), this.d);
    }

    private void a(MotionEvent motionEvent, float f2) {
        this.i -= f2;
        postInvalidate();
        this.c = motionEvent.getX();
        if (this.b != null) {
            this.b.a(-f2, this.i);
        }
    }

    private void a() {
        this.j = ContextCompat.getColor(getContext(), R.color.ucrop_color_progress_wheel_line);
        this.e = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_width_horizontal_wheel_progress_line);
        this.f = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_height_horizontal_wheel_progress_line);
        this.g = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_margin_horizontal_wheel_progress_line);
        this.d = new Paint(1);
        this.d.setStyle(Style.STROKE);
        this.d.setStrokeWidth((float) this.e);
    }
}
