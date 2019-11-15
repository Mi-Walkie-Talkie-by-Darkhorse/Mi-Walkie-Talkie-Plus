package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;

public class CircleProgress extends View {
    private float a = 1.5f;
    private Paint b;
    private Paint c;
    private int d;
    private STATE e;
    private RectF f = new RectF();
    private Rect g = new Rect();
    private Rect h = new Rect();
    private String i = "%";
    private float j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;

    public enum STATE {
        START,
        UPDATING,
        FAILURE,
        SUCCESS
    }

    public CircleProgress(Context context) {
        super(context);
        a();
    }

    public CircleProgress(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.b = new Paint();
        this.b.setStyle(Style.STROKE);
        this.b.setAntiAlias(true);
        this.b.setFilterBitmap(true);
        this.e = STATE.START;
        this.c = new Paint();
        this.c.setAntiAlias(true);
        this.c.setFilterBitmap(true);
        this.c.setStyle(Style.FILL);
        this.c.setColor(getResources().getColor(R.color.select_color));
        this.j = v.a(this.a);
        this.k = getResources().getColor(R.color.select_color);
        this.l = getResources().getColor(R.color.black20);
        this.m = v.b(86);
        this.n = v.b(42);
        this.o = v.b(2);
    }

    public void setProgress(int i2, STATE state) {
        this.d = i2;
        this.e = state;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.translate((float) (getWidth() / 2), (float) (getHeight() / 2));
        this.b.setStyle(Style.STROKE);
        this.b.setStrokeWidth(this.j);
        if (this.e == STATE.SUCCESS) {
            this.b.setColor(getResources().getColor(R.color.select_color));
        } else {
            this.b.setColor(this.l);
        }
        float width = (((float) getWidth()) - this.j) / 2.0f;
        this.f.set(-width, -width, width, width);
        this.b.setColor(this.l);
        canvas.drawCircle(0.0f, 0.0f, width, this.b);
        switch (this.e) {
            case FAILURE:
                this.b.setStyle(Style.FILL);
                this.b.setColor(getResources().getColor(R.color.select_color));
                this.b.setTextSize((float) v.b(28));
                return;
            case UPDATING:
                if (this.d >= 100) {
                    this.d = 100;
                }
                this.b.setColor(this.k);
                canvas.drawArc(this.f, -90.0f, (float) ((int) ((((double) this.d) / 100.0d) * 360.0d)), false, this.b);
                String valueOf = String.valueOf(this.d);
                this.b.setStyle(Style.FILL);
                this.b.setTextSize((float) this.m);
                this.b.getTextBounds(valueOf, 0, 1, this.g);
                int height = this.g.height();
                float measureText = this.b.measureText(valueOf);
                canvas.drawText(valueOf, (-measureText) / 2.0f, (float) (height / 2), this.b);
                this.b.setTextSize((float) this.n);
                this.b.getTextBounds(this.i, 0, 1, this.h);
                canvas.drawText(this.i, (measureText / 2.0f) + ((float) this.o), (float) (((-height) / 2) + this.h.height()), this.b);
                return;
            default:
                return;
        }
    }
}
