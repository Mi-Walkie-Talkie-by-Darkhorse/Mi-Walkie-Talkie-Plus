package com.ifengyu.intercom.ui.widget.view;

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

/* loaded from: classes2.dex */
public class CirclrImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Paint f7042a;

    /* renamed from: b  reason: collision with root package name */
    private int f7043b;

    /* renamed from: c  reason: collision with root package name */
    private int f7044c;
    private Paint d;

    public CirclrImageView(Context context) {
        this(context, null);
    }

    private static Bitmap a(Bitmap bitmap, Paint paint, int i, boolean z) {
        boolean z2 = true;
        if (paint == null) {
            paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            paint.setStyle(Paint.Style.FILL);
        }
        paint.setColor(-16777216);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width >= height) {
            z2 = false;
        }
        int i2 = z2 ? width : height;
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

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int height = getWidth() > getHeight() ? getHeight() : getWidth();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap != null) {
                Bitmap a2 = a(bitmap, this.f7042a, 0, false);
                Rect rect = new Rect(0, 0, a2.getWidth(), a2.getHeight());
                int i3 = this.f7043b;
                Rect rect2 = new Rect(i3 * 2, i3 * 2, height - (i3 * 2), height - (i3 * 2));
                this.f7042a.reset();
                this.f7042a.setFilterBitmap(true);
                this.f7042a.setAntiAlias(true);
                canvas.drawBitmap(a2, rect, rect2, this.f7042a);
                if (this.f7043b != 0) {
                    float f = height / 2;
                    canvas.drawCircle(f, f, i2 - i, this.d);
                    return;
                }
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    public CirclrImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7042a = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CirclrImageView);
        this.f7043b = obtainStyledAttributes.getInteger(1, 3);
        this.f7044c = obtainStyledAttributes.getInteger(0, -10241793);
        obtainStyledAttributes.recycle();
        this.d = a(this.f7043b * 2);
        this.f7042a.setAntiAlias(true);
        this.f7042a.setFilterBitmap(true);
    }

    private Paint a(int i) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(i);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setColor(this.f7044c);
        return paint;
    }
}
