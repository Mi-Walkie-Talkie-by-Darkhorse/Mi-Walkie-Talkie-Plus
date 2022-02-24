package com.ifengyu.intercom.ui.widget.view;

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

/* loaded from: classes2.dex */
public class WaterRippleView extends View {

    /* renamed from: a  reason: collision with root package name */
    private boolean f7103a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f7104b;

    /* renamed from: c  reason: collision with root package name */
    private int f7105c;
    private int d;
    private int e;
    private Paint f;
    private Bitmap g;
    private int h;
    private int i;

    public WaterRippleView(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WaterRippleView);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.d = obtainStyledAttributes.getInt(2, 2);
        this.e = obtainStyledAttributes.getDimensionPixelSize(3, 16);
        this.f7103a = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        this.g = ((BitmapDrawable) drawable).getBitmap();
        Paint paint = new Paint();
        this.f = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f.setColor(getResources().getColor(R.color.select_color));
        this.f.setAntiAlias(true);
    }

    private void b(Canvas canvas) {
        int[] iArr;
        for (int i : this.f7104b) {
            if (i >= 0) {
                this.f.setStrokeWidth(2.0f);
                this.f.setAlpha(255 - ((i * 255) / this.f7105c));
                canvas.drawCircle(this.h / 2, this.i / 2, (this.g.getWidth() / 2) + i, this.f);
            }
        }
        int i2 = 0;
        while (true) {
            int[] iArr2 = this.f7104b;
            if (i2 < iArr2.length) {
                int i3 = iArr2[i2] + 3;
                iArr2[i2] = i3;
                if (i3 > this.f7105c) {
                    iArr2[i2] = 0;
                }
                i2++;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        a(canvas);
        if (this.f7103a) {
            b(canvas);
            postInvalidateDelayed(10L);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int width = ((this.d * this.e) + (this.g.getWidth() / 2)) * 2;
        this.h = View.resolveSize(width, i);
        int resolveSize = View.resolveSize(width, i2);
        this.i = resolveSize;
        setMeasuredDimension(this.h, resolveSize);
        this.f7105c = (this.h - this.g.getWidth()) / 2;
        a();
    }

    public WaterRippleView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaterRippleView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7103a = false;
        a(context, attributeSet);
    }

    public void b(@DrawableRes int i) {
        this.g = BitmapFactory.decodeResource(getResources(), i);
        this.f7103a = false;
        a();
        postInvalidate();
    }

    private void a() {
        this.f7104b = new int[this.d];
        int i = 0;
        while (true) {
            int[] iArr = this.f7104b;
            if (i < iArr.length) {
                iArr[i] = ((-this.f7105c) / this.d) * i;
                i++;
            } else {
                return;
            }
        }
    }

    private void a(Canvas canvas) {
        canvas.drawBitmap(this.g, (this.h - this.g.getWidth()) / 2, (this.i - this.g.getHeight()) / 2, (Paint) null);
    }

    public void a(@DrawableRes int i) {
        this.f7103a = true;
        this.g = BitmapFactory.decodeResource(getResources(), i);
        postInvalidate();
    }
}
