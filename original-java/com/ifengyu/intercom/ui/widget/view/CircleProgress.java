package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;

/* loaded from: classes2.dex */
public class CircleProgress extends View {

    /* renamed from: b  reason: collision with root package name */
    private Paint f7036b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f7037c;
    private int d;
    private STATE e;
    private float j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;

    /* renamed from: a  reason: collision with root package name */
    private float f7035a = 1.5f;
    private RectF f = new RectF();
    private Rect g = new Rect();
    private Rect h = new Rect();
    private String i = "%";

    /* loaded from: classes2.dex */
    public enum STATE {
        START,
        UPDATING,
        FAILURE,
        SUCCESS
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7041a;

        static {
            int[] iArr = new int[STATE.values().length];
            f7041a = iArr;
            try {
                iArr[STATE.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7041a[STATE.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7041a[STATE.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7041a[STATE.UPDATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public CircleProgress(Context context) {
        super(context);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f7036b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f7036b.setAntiAlias(true);
        this.f7036b.setFilterBitmap(true);
        this.e = STATE.START;
        Paint paint2 = new Paint();
        this.f7037c = paint2;
        paint2.setAntiAlias(true);
        this.f7037c.setFilterBitmap(true);
        this.f7037c.setStyle(Paint.Style.FILL);
        this.f7037c.setColor(getResources().getColor(R.color.select_color));
        this.j = c0.a(this.f7035a);
        this.k = getResources().getColor(R.color.select_color);
        this.l = getResources().getColor(R.color.black20);
        this.m = c0.d(86);
        this.n = c0.d(42);
        this.o = c0.d(2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.translate(getWidth() / 2, getHeight() / 2);
        this.f7036b.setStyle(Paint.Style.STROKE);
        this.f7036b.setStrokeWidth(this.j);
        if (this.e == STATE.SUCCESS) {
            this.f7036b.setColor(getResources().getColor(R.color.select_color));
        } else {
            this.f7036b.setColor(this.l);
        }
        float width = (getWidth() - this.j) / 2.0f;
        float f = -width;
        this.f.set(f, f, width, width);
        this.f7036b.setColor(this.l);
        canvas.drawCircle(0.0f, 0.0f, width, this.f7036b);
        int i = a.f7041a[this.e.ordinal()];
        if (i == 2) {
            this.f7036b.setStyle(Paint.Style.FILL);
            this.f7036b.setColor(getResources().getColor(R.color.select_color));
            this.f7036b.setTextSize(c0.d(28));
        } else if (i == 4) {
            if (this.d >= 100) {
                this.d = 100;
            }
            this.f7036b.setColor(this.k);
            canvas.drawArc(this.f, -90.0f, (int) ((this.d / 100.0d) * 360.0d), false, this.f7036b);
            String valueOf = String.valueOf(this.d);
            this.f7036b.setStyle(Paint.Style.FILL);
            this.f7036b.setTextSize(this.m);
            this.f7036b.getTextBounds(valueOf, 0, 1, this.g);
            int height = this.g.height();
            float measureText = this.f7036b.measureText(valueOf);
            canvas.drawText(valueOf, (-measureText) / 2.0f, height / 2, this.f7036b);
            this.f7036b.setTextSize(this.n);
            this.f7036b.getTextBounds(this.i, 0, 1, this.h);
            canvas.drawText(this.i, (measureText / 2.0f) + this.o, ((-height) / 2) + this.h.height(), this.f7036b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setProgress(int i, STATE state) {
        this.d = i;
        this.e = state;
        invalidate();
    }

    public CircleProgress(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }
}
