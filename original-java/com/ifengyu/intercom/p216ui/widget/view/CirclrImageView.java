package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.ifengyu.intercom.R$styleable;

/* renamed from: com.ifengyu.intercom.ui.widget.view.CirclrImageView */
/* loaded from: classes2.dex */
public class CirclrImageView extends ImageView {

    /* renamed from: a */
    private Paint f16125a;

    /* renamed from: b */
    private int f16126b;

    /* renamed from: c */
    private int f16127c;

    /* renamed from: d */
    private Paint f16128d;

    public CirclrImageView(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    private static Bitmap m8851a(Bitmap bitmap, Paint paint, int i, boolean z) {
        if (paint == null) {
            paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            paint.setStyle(Paint.Style.FILL);
        }
        paint.setColor(-16777216);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i2 = width < height ? width : height;
        if (i <= 0) {
            i = i2;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        int i3 = width / 2;
        int i4 = i2 / 2;
        int i5 = height / 2;
        Rect rect = new Rect(i3 - i4, i5 - i4, i3 + i4, i5 + i4);
        Rect rect2 = new Rect(0, 0, i, i);
        canvas.drawARGB(0, 0, 0, 0);
        float f = i / 2;
        canvas.drawCircle(f, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        if (z) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.3f);
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        }
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return createBitmap;
    }

    /* renamed from: b */
    private Paint m8850b(int i) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(i);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setColor(this.f16127c);
        return paint;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int height = getWidth() > getHeight() ? getHeight() : getWidth();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap == null) {
                return;
            }
            Bitmap m8851a = m8851a(bitmap, this.f16125a, 0, false);
            Rect rect = new Rect(0, 0, m8851a.getWidth(), m8851a.getHeight());
            int i3 = this.f16126b;
            Rect rect2 = new Rect(i3 * 2, i3 * 2, height - (i3 * 2), height - (i3 * 2));
            this.f16125a.reset();
            this.f16125a.setFilterBitmap(true);
            this.f16125a.setAntiAlias(true);
            canvas.drawBitmap(m8851a, rect, rect2, this.f16125a);
            if (this.f16126b != 0) {
                float f = height / 2;
                canvas.drawCircle(f, f, i2 - i, this.f16128d);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    public CirclrImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16125a = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CirclrImageView);
        this.f16126b = obtainStyledAttributes.getInteger(1, 3);
        this.f16127c = obtainStyledAttributes.getInteger(0, -10241793);
        obtainStyledAttributes.recycle();
        this.f16128d = m8850b(this.f16126b * 2);
        this.f16125a.setAntiAlias(true);
        this.f16125a.setFilterBitmap(true);
    }
}
