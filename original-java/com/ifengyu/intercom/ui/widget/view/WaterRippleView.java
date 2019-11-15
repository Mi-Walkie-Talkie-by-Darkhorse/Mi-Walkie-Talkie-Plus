package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.R;

public class WaterRippleView extends View {
    private boolean a;
    private int[] b;
    private int c;
    private int d;
    private int e;
    private Paint f;
    private Bitmap g;
    private int h;
    private int i;
    private boolean j;

    public WaterRippleView(Context context) {
        this(context, null);
    }

    public WaterRippleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaterRippleView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a = false;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WaterRippleView);
        Drawable drawable = obtainStyledAttributes.getDrawable(2);
        this.d = obtainStyledAttributes.getInt(1, 2);
        this.e = obtainStyledAttributes.getDimensionPixelSize(0, 16);
        this.a = obtainStyledAttributes.getBoolean(3, false);
        obtainStyledAttributes.recycle();
        this.g = ((BitmapDrawable) drawable).getBitmap();
        this.f = new Paint();
        this.f.setStyle(Style.STROKE);
        this.f.setColor(getResources().getColor(R.color.select_color));
        this.f.setAntiAlias(true);
        this.j = true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int width = ((this.d * this.e) + (this.g.getWidth() / 2)) * 2;
        this.h = resolveSize(width, i2);
        this.i = resolveSize(width, i3);
        setMeasuredDimension(this.h, this.i);
        this.c = (this.h - this.g.getWidth()) / 2;
        a();
    }

    private void a() {
        this.b = new int[this.d];
        for (int i2 = 0; i2 < this.b.length; i2++) {
            this.b[i2] = ((-this.c) / this.d) * i2;
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        a(canvas);
        this.j = false;
        if (this.a) {
            b(canvas);
            postInvalidateDelayed(10);
        }
    }

    private void a(Canvas canvas) {
        canvas.drawBitmap(this.g, (float) ((this.h - this.g.getWidth()) / 2), (float) ((this.i - this.g.getHeight()) / 2), null);
    }

    private void b(Canvas canvas) {
        int[] iArr;
        for (int i2 : this.b) {
            if (i2 >= 0) {
                this.f.setStrokeWidth(2.0f);
                this.f.setAlpha(255 - ((i2 * 255) / this.c));
                canvas.drawCircle((float) (this.h / 2), (float) (this.i / 2), (float) (i2 + (this.g.getWidth() / 2)), this.f);
            }
        }
        for (int i3 = 0; i3 < this.b.length; i3++) {
            int[] iArr2 = this.b;
            int i4 = iArr2[i3] + 3;
            iArr2[i3] = i4;
            if (i4 > this.c) {
                this.b[i3] = 0;
            }
        }
    }

    public void a(@DrawableRes int i2) {
        this.a = true;
        this.g = BitmapFactory.decodeResource(getResources(), i2);
        postInvalidate();
    }

    public void b(@DrawableRes int i2) {
        this.g = BitmapFactory.decodeResource(getResources(), i2);
        this.a = false;
        a();
        postInvalidate();
    }
}
