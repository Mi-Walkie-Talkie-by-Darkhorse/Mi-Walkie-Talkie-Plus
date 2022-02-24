package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;

/* loaded from: classes2.dex */
public class ShadowLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f7092a;

    /* renamed from: b  reason: collision with root package name */
    private float f7093b;

    /* renamed from: c  reason: collision with root package name */
    private float f7094c;
    private float d;
    private float e;
    private boolean f = true;
    private boolean g = false;
    private boolean h;

    public ShadowLayout(Context context) {
        super(context);
        b(context, null);
    }

    private void a(int i, int i2) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), a(i, i2, this.f7094c, this.f7093b, this.d, this.e, this.f7092a, 0));
        if (Build.VERSION.SDK_INT <= 16) {
            setBackgroundDrawable(bitmapDrawable);
        } else {
            setBackground(bitmapDrawable);
        }
    }

    private void b(Context context, AttributeSet attributeSet) {
        a(context, attributeSet);
        int abs = (int) (this.f7093b + Math.abs(this.d));
        int abs2 = (int) (this.f7093b + Math.abs(this.e));
        if (this.h) {
            setPadding(abs, abs2, abs, abs2);
        } else {
            setPadding(abs, 0, abs, abs2);
        }
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return 0;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.g) {
            this.g = false;
            a(i3 - i, i4 - i2);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0 && i2 > 0) {
            if (getBackground() == null || this.f || this.g) {
                this.g = false;
                a(i, i2);
            }
        }
    }

    public void setInvalidateShadowOnSizeChanged(boolean z) {
        this.f = z;
    }

    public ShadowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray a2 = a(context, attributeSet, R$styleable.ShadowLayout);
        if (a2 != null) {
            try {
                this.f7094c = a2.getDimension(0, getResources().getDimension(R.dimen.default_corner_radius));
                this.f7093b = a2.getDimension(4, getResources().getDimension(R.dimen.default_shadow_radius));
                this.h = a2.getBoolean(5, true);
                this.d = a2.getDimension(1, 0.0f);
                this.e = a2.getDimension(2, 0.0f);
                this.f7092a = a2.getColor(3, -2005568139);
            } finally {
                a2.recycle();
            }
        }
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(context, attributeSet);
    }

    private TypedArray a(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private Bitmap a(int i, int i2, float f, float f2, float f3, float f4, int i3, int i4) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(createBitmap);
        RectF rectF = new RectF(f2, f2, i - f2, i2 - f2);
        if (f4 > 0.0f) {
            rectF.top += f4;
            rectF.bottom -= f4;
        } else if (f4 < 0.0f) {
            rectF.top += Math.abs(f4);
            rectF.bottom -= Math.abs(f4);
        }
        if (f3 > 0.0f) {
            rectF.left += f3;
            rectF.right -= f3;
        } else if (f3 < 0.0f) {
            rectF.left += Math.abs(f3);
            rectF.right -= Math.abs(f3);
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(i4);
        paint.setStyle(Paint.Style.FILL);
        if (!isInEditMode()) {
            paint.setShadowLayer(f2, f3, f4, i3);
        }
        canvas.drawRoundRect(rectF, f, f, paint);
        return createBitmap;
    }
}
