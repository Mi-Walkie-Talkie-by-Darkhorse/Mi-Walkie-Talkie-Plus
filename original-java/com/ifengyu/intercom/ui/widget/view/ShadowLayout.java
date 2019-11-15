package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.ifengyu.intercom.R;

public class ShadowLayout extends FrameLayout {
    private int a;
    private float b;
    private float c;
    private float d;
    private float e;
    private boolean f = true;
    private boolean g = false;
    private boolean h;

    public ShadowLayout(Context context) {
        super(context);
        a(context, (AttributeSet) null);
    }

    public ShadowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumWidth() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public int getSuggestedMinimumHeight() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0 && i2 > 0) {
            if (getBackground() == null || this.f || this.g) {
                this.g = false;
                a(i, i2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.g) {
            this.g = false;
            a(i3 - i, i4 - i2);
        }
    }

    public void setInvalidateShadowOnSizeChanged(boolean z) {
        this.f = z;
    }

    private void a(Context context, AttributeSet attributeSet) {
        b(context, attributeSet);
        int abs = (int) (this.b + Math.abs(this.d));
        int abs2 = (int) (this.b + Math.abs(this.e));
        if (this.h) {
            setPadding(abs, abs2, abs, abs2);
        } else {
            setPadding(abs, 0, abs, abs2);
        }
    }

    private void a(int i, int i2) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), a(i, i2, this.c, this.b, this.d, this.e, this.a, 0));
        if (VERSION.SDK_INT <= 16) {
            setBackgroundDrawable(bitmapDrawable);
        } else {
            setBackground(bitmapDrawable);
        }
    }

    private void b(Context context, AttributeSet attributeSet) {
        TypedArray a2 = a(context, attributeSet, R.styleable.ShadowLayout);
        if (a2 != null) {
            try {
                this.c = a2.getDimension(0, getResources().getDimension(R.dimen.default_corner_radius));
                this.b = a2.getDimension(1, getResources().getDimension(R.dimen.default_shadow_radius));
                this.h = a2.getBoolean(2, true);
                this.d = a2.getDimension(4, 0.0f);
                this.e = a2.getDimension(5, 0.0f);
                this.a = a2.getColor(3, -2005568139);
            } finally {
                a2.recycle();
            }
        }
    }

    private TypedArray a(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private Bitmap a(int i, int i2, float f2, float f3, float f4, float f5, int i3, int i4) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ALPHA_8);
        Canvas canvas = new Canvas(createBitmap);
        RectF rectF = new RectF(f3, f3, ((float) i) - f3, ((float) i2) - f3);
        if (f5 > 0.0f) {
            rectF.top += f5;
            rectF.bottom -= f5;
        } else if (f5 < 0.0f) {
            rectF.top += Math.abs(f5);
            rectF.bottom -= Math.abs(f5);
        }
        if (f4 > 0.0f) {
            rectF.left += f4;
            rectF.right -= f4;
        } else if (f4 < 0.0f) {
            rectF.left += Math.abs(f4);
            rectF.right -= Math.abs(f4);
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(i4);
        paint.setStyle(Style.FILL);
        if (!isInEditMode()) {
            paint.setShadowLayer(f3, f4, f5, i3);
        }
        canvas.drawRoundRect(rectF, f2, f2, paint);
        return createBitmap;
    }
}
