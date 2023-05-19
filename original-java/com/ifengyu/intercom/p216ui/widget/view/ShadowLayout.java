package com.ifengyu.intercom.p216ui.widget.view;

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
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;

/* renamed from: com.ifengyu.intercom.ui.widget.view.ShadowLayout */
/* loaded from: classes2.dex */
public class ShadowLayout extends FrameLayout {

    /* renamed from: a */
    private int f16294a;

    /* renamed from: b */
    private float f16295b;

    /* renamed from: c */
    private float f16296c;

    /* renamed from: d */
    private float f16297d;

    /* renamed from: e */
    private float f16298e;

    /* renamed from: f */
    private boolean f16299f;

    /* renamed from: g */
    private boolean f16300g;

    /* renamed from: h */
    private boolean f16301h;

    public ShadowLayout(Context context) {
        super(context);
        this.f16299f = true;
        this.f16300g = false;
        m8745d(context, null);
    }

    /* renamed from: a */
    private Bitmap m8748a(int i, int i2, float f, float f2, float f3, float f4, int i3, int i4) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(createBitmap);
        RectF rectF = new RectF(f2, f2, i - f2, i2 - f2);
        if (f4 > BitmapDescriptorFactory.HUE_RED) {
            rectF.top += f4;
            rectF.bottom -= f4;
        } else if (f4 < BitmapDescriptorFactory.HUE_RED) {
            rectF.top += Math.abs(f4);
            rectF.bottom -= Math.abs(f4);
        }
        if (f3 > BitmapDescriptorFactory.HUE_RED) {
            rectF.left += f3;
            rectF.right -= f3;
        } else if (f3 < BitmapDescriptorFactory.HUE_RED) {
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

    /* renamed from: b */
    private TypedArray m8747b(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: c */
    private void m8746c(Context context, AttributeSet attributeSet) {
        TypedArray m8747b = m8747b(context, attributeSet, R$styleable.ShadowLayout);
        if (m8747b == null) {
            return;
        }
        try {
            this.f16296c = m8747b.getDimension(0, getResources().getDimension(R.dimen.default_corner_radius));
            this.f16295b = m8747b.getDimension(4, getResources().getDimension(R.dimen.default_shadow_radius));
            this.f16301h = m8747b.getBoolean(5, true);
            this.f16297d = m8747b.getDimension(1, BitmapDescriptorFactory.HUE_RED);
            this.f16298e = m8747b.getDimension(2, BitmapDescriptorFactory.HUE_RED);
            this.f16294a = m8747b.getColor(3, -2005568139);
        } finally {
            m8747b.recycle();
        }
    }

    /* renamed from: d */
    private void m8745d(Context context, AttributeSet attributeSet) {
        m8746c(context, attributeSet);
        int abs = (int) (this.f16295b + Math.abs(this.f16297d));
        int abs2 = (int) (this.f16295b + Math.abs(this.f16298e));
        if (this.f16301h) {
            setPadding(abs, abs2, abs, abs2);
        } else {
            setPadding(abs, 0, abs, abs2);
        }
    }

    /* renamed from: e */
    private void m8744e(int i, int i2) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), m8748a(i, i2, this.f16296c, this.f16295b, this.f16297d, this.f16298e, this.f16294a, 0));
        if (Build.VERSION.SDK_INT <= 16) {
            setBackgroundDrawable(bitmapDrawable);
        } else {
            setBackground(bitmapDrawable);
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
        if (this.f16300g) {
            this.f16300g = false;
            m8744e(i3 - i, i4 - i2);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i <= 0 || i2 <= 0) {
            return;
        }
        if (getBackground() == null || this.f16299f || this.f16300g) {
            this.f16300g = false;
            m8744e(i, i2);
        }
    }

    public void setInvalidateShadowOnSizeChanged(boolean z) {
        this.f16299f = z;
    }

    public ShadowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16299f = true;
        this.f16300g = false;
        m8745d(context, attributeSet);
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16299f = true;
        this.f16300g = false;
        m8745d(context, attributeSet);
    }
}
