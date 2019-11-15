package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.support.v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;

public class RoundProgressBarView extends View {
    private Paint a;
    private int b;
    private int c;
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

    public RoundProgressBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundProgressBarView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundProgressBar);
        this.b = obtainStyledAttributes.getColor(0, SupportMenu.CATEGORY_MASK);
        this.c = obtainStyledAttributes.getColor(1, -16711936);
        this.d = obtainStyledAttributes.getColor(3, -16711936);
        this.e = obtainStyledAttributes.getDimension(4, 15.0f);
        this.f = obtainStyledAttributes.getDimension(2, 5.0f);
        this.g = obtainStyledAttributes.getInteger(5, 100);
        this.i = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.recycle();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        int i2 = (int) (((float) width) - (this.f / 2.0f));
        this.a.setColor(this.b);
        this.a.setStyle(Style.STROKE);
        this.a.setStrokeWidth(this.f);
        this.a.setAntiAlias(true);
        canvas.drawCircle((float) width, (float) width, (float) i2, this.a);
        this.a.setStyle(Style.STROKE);
        this.a.setStrokeWidth(this.f);
        if (this.i) {
            this.a.setColor(this.c);
        } else {
            this.a.setColor(MiTalkiApp.a().getResources().getColor(R.color.offMap_download_progressBar_progress));
        }
        canvas.drawArc(new RectF((float) (width - i2), (float) (width - i2), (float) (width + i2), (float) (i2 + width)), -90.0f, (float) ((this.h * 360) / this.g), false, this.a);
        this.a.setStrokeWidth(0.0f);
        this.a.setColor(this.d);
        this.a.setTextSize(this.e);
        this.a.setTypeface(Typeface.DEFAULT_BOLD);
        int i3 = (int) ((((float) this.h) / ((float) this.g)) * 100.0f);
        float measureText = this.a.measureText(i3 + "%");
        if (!this.i || this.j != 0) {
            Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.map_icon_pause);
            canvas.drawBitmap(decodeResource, new Rect(0, 0, decodeResource.getWidth(), decodeResource.getHeight()), new Rect(width - (decodeResource.getWidth() / 2), width - (decodeResource.getHeight() / 2), (decodeResource.getWidth() / 2) + width, width + (decodeResource.getHeight() / 2)), null);
            return;
        }
        canvas.drawText(i3 + "%", ((float) width) - (measureText / 2.0f), (((float) width) + (this.e / 2.0f)) - 2.0f, this.a);
    }

    public synchronized int getMax() {
        return this.g;
    }

    public synchronized void setMax(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("max not less than 0");
        }
        this.g = i2;
    }

    public synchronized int getProgress() {
        return this.h;
    }

    public synchronized void setProgress(int i2) {
        if (i2 != this.k) {
            if (i2 < 0) {
                throw new IllegalArgumentException("progress not less than 0");
            }
            if (i2 > this.g) {
                i2 = this.g;
            }
            if (i2 <= this.g) {
                this.h = i2;
                postInvalidate();
            }
            this.k = i2;
        }
    }

    public int getCricleColor() {
        return this.b;
    }

    public void setCricleColor(int i2) {
        this.b = i2;
    }

    public int getCricleProgressColor() {
        return this.c;
    }

    public void setCricleProgressColor(int i2) {
        this.c = i2;
    }

    public int getTextColor() {
        return this.d;
    }

    public void setTextColor(int i2) {
        this.d = i2;
    }

    public float getTextSize() {
        return this.e;
    }

    public void setTextSize(float f2) {
        this.e = f2;
    }

    public float getRoundWidth() {
        return this.f;
    }

    public void setRoundWidth(float f2) {
        this.f = f2;
    }

    public void setTextIsDisplayable(boolean z) {
        this.i = z;
    }
}
