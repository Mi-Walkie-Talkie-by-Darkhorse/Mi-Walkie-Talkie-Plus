package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;

/* loaded from: classes2.dex */
public class RoundProgressBarView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f7081a;

    /* renamed from: b  reason: collision with root package name */
    private int f7082b;

    /* renamed from: c  reason: collision with root package name */
    private int f7083c;
    private int d;
    private float e;
    private float f;
    private int g;
    private int h;
    private boolean i;
    private int j;
    private int k;

    public RoundProgressBarView(Context context) {
        this(context, null);
    }

    public int getCricleColor() {
        return this.f7082b;
    }

    public int getCricleProgressColor() {
        return this.f7083c;
    }

    public synchronized int getMax() {
        return this.g;
    }

    public synchronized int getProgress() {
        return this.h;
    }

    public float getRoundWidth() {
        return this.f;
    }

    public int getTextColor() {
        return this.d;
    }

    public float getTextSize() {
        return this.e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        float f = width;
        int i = (int) (f - (this.f / 2.0f));
        this.f7081a.setColor(this.f7082b);
        this.f7081a.setStyle(Paint.Style.STROKE);
        this.f7081a.setStrokeWidth(this.f);
        this.f7081a.setAntiAlias(true);
        canvas.drawCircle(f, f, i, this.f7081a);
        this.f7081a.setStyle(Paint.Style.STROKE);
        this.f7081a.setStrokeWidth(this.f);
        if (this.i) {
            this.f7081a.setColor(this.f7083c);
        } else {
            this.f7081a.setColor(MiTalkiApp.b().getResources().getColor(R.color.offMap_download_progressBar_progress));
        }
        float f2 = width - i;
        float f3 = i + width;
        canvas.drawArc(new RectF(f2, f2, f3, f3), -90.0f, (this.h * 360) / this.g, false, this.f7081a);
        this.f7081a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f7081a.setStrokeWidth(0.0f);
        this.f7081a.setColor(this.d);
        this.f7081a.setTextSize(this.e);
        this.f7081a.setTypeface(Typeface.DEFAULT_BOLD);
        int i2 = (int) ((this.h / this.g) * 100.0f);
        float measureText = this.f7081a.measureText(i2 + "%");
        if (!this.i || this.j != 0) {
            Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.map_icon_pause);
            canvas.drawBitmap(decodeResource, new Rect(0, 0, decodeResource.getWidth(), decodeResource.getHeight()), new Rect(width - (decodeResource.getWidth() / 2), width - (decodeResource.getHeight() / 2), (decodeResource.getWidth() / 2) + width, width + (decodeResource.getHeight() / 2)), (Paint) null);
            return;
        }
        canvas.drawText(i2 + "%", f - (measureText / 2.0f), (f + (this.e / 2.0f)) - 2.0f, this.f7081a);
    }

    public void setCricleColor(int i) {
        this.f7082b = i;
    }

    public void setCricleProgressColor(int i) {
        this.f7083c = i;
    }

    public synchronized void setMax(int i) {
        if (i >= 0) {
            this.g = i;
        } else {
            throw new IllegalArgumentException("max not less than 0");
        }
    }

    public synchronized void setProgress(int i) {
        if (i != this.k) {
            if (i >= 0) {
                if (i > this.g) {
                    i = this.g;
                }
                if (i <= this.g) {
                    this.h = i;
                    postInvalidate();
                }
                this.k = i;
                return;
            }
            throw new IllegalArgumentException("progress not less than 0");
        }
    }

    public void setRoundWidth(float f) {
        this.f = f;
    }

    public void setTextColor(int i) {
        this.d = i;
    }

    public void setTextIsDisplayable(boolean z) {
        this.i = z;
    }

    public void setTextSize(float f) {
        this.e = f;
    }

    public RoundProgressBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressBarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7081a = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoundProgressBar);
        this.f7082b = obtainStyledAttributes.getColor(1, -65536);
        this.f7083c = obtainStyledAttributes.getColor(2, -16711936);
        this.d = obtainStyledAttributes.getColor(4, -16711936);
        this.e = obtainStyledAttributes.getDimension(6, 15.0f);
        this.f = obtainStyledAttributes.getDimension(3, 5.0f);
        this.g = obtainStyledAttributes.getInteger(0, 100);
        this.i = obtainStyledAttributes.getBoolean(5, true);
        obtainStyledAttributes.recycle();
    }
}
