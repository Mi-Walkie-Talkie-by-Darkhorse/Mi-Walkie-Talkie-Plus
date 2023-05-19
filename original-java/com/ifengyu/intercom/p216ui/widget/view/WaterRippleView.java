package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;

/* renamed from: com.ifengyu.intercom.ui.widget.view.WaterRippleView */
/* loaded from: classes2.dex */
public class WaterRippleView extends View {

    /* renamed from: a */
    private boolean f16312a;

    /* renamed from: b */
    private int[] f16313b;

    /* renamed from: c */
    private int f16314c;

    /* renamed from: d */
    private int f16315d;

    /* renamed from: e */
    private int f16316e;

    /* renamed from: f */
    private Paint f16317f;

    /* renamed from: g */
    private Bitmap f16318g;

    /* renamed from: h */
    private int f16319h;

    /* renamed from: i */
    private int f16320i;

    public WaterRippleView(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    private void m8741a(Canvas canvas) {
        canvas.drawBitmap(this.f16318g, (this.f16319h - this.f16318g.getWidth()) / 2, (this.f16320i - this.f16318g.getHeight()) / 2, (Paint) null);
    }

    /* renamed from: b */
    private void m8740b(Canvas canvas) {
        int[] iArr;
        for (int i : this.f16313b) {
            if (i >= 0) {
                this.f16317f.setStrokeWidth(2.0f);
                this.f16317f.setAlpha(255 - ((i * 255) / this.f16314c));
                canvas.drawCircle(this.f16319h / 2, this.f16320i / 2, (this.f16318g.getWidth() / 2) + i, this.f16317f);
            }
        }
        int i2 = 0;
        while (true) {
            int[] iArr2 = this.f16313b;
            if (i2 >= iArr2.length) {
                return;
            }
            int i3 = iArr2[i2] + 3;
            iArr2[i2] = i3;
            if (i3 > this.f16314c) {
                iArr2[i2] = 0;
            }
            i2++;
        }
    }

    /* renamed from: c */
    private void m8739c() {
        this.f16313b = new int[this.f16315d];
        int i = 0;
        while (true) {
            int[] iArr = this.f16313b;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = ((-this.f16314c) / this.f16315d) * i;
            i++;
        }
    }

    /* renamed from: d */
    private void m8738d(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WaterRippleView);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f16315d = obtainStyledAttributes.getInt(2, 2);
        this.f16316e = obtainStyledAttributes.getDimensionPixelSize(3, 16);
        this.f16312a = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        this.f16318g = ((BitmapDrawable) drawable).getBitmap();
        Paint paint = new Paint();
        this.f16317f = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f16317f.setColor(getResources().getColor(R.color.select_color));
        this.f16317f.setAntiAlias(true);
    }

    /* renamed from: e */
    public void m8737e(@DrawableRes int i) {
        this.f16312a = true;
        this.f16318g = BitmapFactory.decodeResource(getResources(), i);
        postInvalidate();
    }

    /* renamed from: f */
    public void m8736f(@DrawableRes int i) {
        this.f16318g = BitmapFactory.decodeResource(getResources(), i);
        this.f16312a = false;
        m8739c();
        postInvalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        m8741a(canvas);
        if (this.f16312a) {
            m8740b(canvas);
            postInvalidateDelayed(10L);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int width = ((this.f16315d * this.f16316e) + (this.f16318g.getWidth() / 2)) * 2;
        this.f16319h = View.resolveSize(width, i);
        int resolveSize = View.resolveSize(width, i2);
        this.f16320i = resolveSize;
        setMeasuredDimension(this.f16319h, resolveSize);
        this.f16314c = (this.f16319h - this.f16318g.getWidth()) / 2;
        m8739c();
    }

    public WaterRippleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaterRippleView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16312a = false;
        m8738d(context, attributeSet);
    }
}
