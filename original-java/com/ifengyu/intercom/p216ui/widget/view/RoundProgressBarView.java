package com.ifengyu.intercom.p216ui.widget.view;

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
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;

/* renamed from: com.ifengyu.intercom.ui.widget.view.RoundProgressBarView */
/* loaded from: classes2.dex */
public class RoundProgressBarView extends View {

    /* renamed from: a */
    private Paint f16269a;

    /* renamed from: b */
    private int f16270b;

    /* renamed from: c */
    private int f16271c;

    /* renamed from: d */
    private int f16272d;

    /* renamed from: e */
    private float f16273e;

    /* renamed from: f */
    private float f16274f;

    /* renamed from: g */
    private int f16275g;

    /* renamed from: h */
    private int f16276h;

    /* renamed from: i */
    private boolean f16277i;

    /* renamed from: j */
    private int f16278j;

    /* renamed from: k */
    private int f16279k;

    public RoundProgressBarView(Context context) {
        this(context, null);
    }

    public int getCricleColor() {
        return this.f16270b;
    }

    public int getCricleProgressColor() {
        return this.f16271c;
    }

    public synchronized int getMax() {
        return this.f16275g;
    }

    public synchronized int getProgress() {
        return this.f16276h;
    }

    public float getRoundWidth() {
        return this.f16274f;
    }

    public int getTextColor() {
        return this.f16272d;
    }

    public float getTextSize() {
        return this.f16273e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        float f = width;
        int i = (int) (f - (this.f16274f / 2.0f));
        this.f16269a.setColor(this.f16270b);
        this.f16269a.setStyle(Paint.Style.STROKE);
        this.f16269a.setStrokeWidth(this.f16274f);
        this.f16269a.setAntiAlias(true);
        canvas.drawCircle(f, f, i, this.f16269a);
        this.f16269a.setStyle(Paint.Style.STROKE);
        this.f16269a.setStrokeWidth(this.f16274f);
        if (this.f16277i) {
            this.f16269a.setColor(this.f16271c);
        } else {
            this.f16269a.setColor(MiTalkiApp.m14296h().getResources().getColor(R.color.offMap_download_progressBar_progress));
        }
        float f2 = width - i;
        float f3 = i + width;
        canvas.drawArc(new RectF(f2, f2, f3, f3), -90.0f, (this.f16276h * 360) / this.f16275g, false, this.f16269a);
        this.f16269a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f16269a.setStrokeWidth(BitmapDescriptorFactory.HUE_RED);
        this.f16269a.setColor(this.f16272d);
        this.f16269a.setTextSize(this.f16273e);
        this.f16269a.setTypeface(Typeface.DEFAULT_BOLD);
        int i2 = (int) ((this.f16276h / this.f16275g) * 100.0f);
        float measureText = this.f16269a.measureText(i2 + "%");
        if (this.f16277i && this.f16278j == 0) {
            canvas.drawText(i2 + "%", f - (measureText / 2.0f), (f + (this.f16273e / 2.0f)) - 2.0f, this.f16269a);
            return;
        }
        Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.map_icon_pause);
        canvas.drawBitmap(decodeResource, new Rect(0, 0, decodeResource.getWidth(), decodeResource.getHeight()), new Rect(width - (decodeResource.getWidth() / 2), width - (decodeResource.getHeight() / 2), (decodeResource.getWidth() / 2) + width, width + (decodeResource.getHeight() / 2)), (Paint) null);
    }

    public void setCricleColor(int i) {
        this.f16270b = i;
    }

    public void setCricleProgressColor(int i) {
        this.f16271c = i;
    }

    public synchronized void setMax(int i) {
        if (i >= 0) {
            this.f16275g = i;
        } else {
            throw new IllegalArgumentException("max not less than 0");
        }
    }

    public synchronized void setProgress(int i) {
        if (i == this.f16279k) {
            return;
        }
        if (i >= 0) {
            int i2 = this.f16275g;
            if (i > i2) {
                i = i2;
            }
            if (i <= i2) {
                this.f16276h = i;
                postInvalidate();
            }
            this.f16279k = i;
            return;
        }
        throw new IllegalArgumentException("progress not less than 0");
    }

    public void setRoundWidth(float f) {
        this.f16274f = f;
    }

    public void setTextColor(int i) {
        this.f16272d = i;
    }

    public void setTextIsDisplayable(boolean z) {
        this.f16277i = z;
    }

    public void setTextSize(float f) {
        this.f16273e = f;
    }

    public RoundProgressBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressBarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16269a = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoundProgressBar);
        this.f16270b = obtainStyledAttributes.getColor(1, -65536);
        this.f16271c = obtainStyledAttributes.getColor(2, -16711936);
        this.f16272d = obtainStyledAttributes.getColor(4, -16711936);
        this.f16273e = obtainStyledAttributes.getDimension(6, 15.0f);
        this.f16274f = obtainStyledAttributes.getDimension(3, 5.0f);
        this.f16275g = obtainStyledAttributes.getInteger(0, 100);
        this.f16277i = obtainStyledAttributes.getBoolean(5, true);
        obtainStyledAttributes.recycle();
    }
}
