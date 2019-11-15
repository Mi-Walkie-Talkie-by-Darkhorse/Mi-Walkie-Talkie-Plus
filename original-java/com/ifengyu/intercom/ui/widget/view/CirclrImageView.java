package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.ifengyu.intercom.R;

public class CirclrImageView extends ImageView {
    private Paint a;
    private int b;
    private int c;
    private Paint d;

    public CirclrImageView(Context context) {
        this(context, null);
    }

    public CirclrImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CirclrImageView);
        this.b = obtainStyledAttributes.getInteger(0, 3);
        this.c = obtainStyledAttributes.getInteger(1, -10241793);
        obtainStyledAttributes.recycle();
        this.d = a(this.b * 2);
        this.a.setAntiAlias(true);
        this.a.setFilterBitmap(true);
    }

    private static Bitmap a(Bitmap bitmap, Paint paint, int i, boolean z) {
        int i2;
        boolean z2 = true;
        if (paint == null) {
            paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            paint.setStyle(Style.FILL);
        }
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width >= height) {
            z2 = false;
        }
        if (z2) {
            i2 = width;
        } else {
            i2 = height;
        }
        if (i <= 0) {
            i = i2;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Rect rect = new Rect((width / 2) - (i2 / 2), (height / 2) - (i2 / 2), (width / 2) + (i2 / 2), (i2 / 2) + (height / 2));
        Rect rect2 = new Rect(0, 0, i, i);
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawCircle((float) (i / 2), (float) (i / 2), (float) (i / 2), paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        if (z) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.3f);
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        }
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return createBitmap;
    }

    private Paint a(int i) {
        Paint paint = new Paint();
        paint.setStyle(Style.STROKE);
        paint.setStrokeWidth((float) i);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setColor(this.c);
        return paint;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int width = getWidth() > getHeight() ? getHeight() : getWidth();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap != null) {
                Bitmap a2 = a(bitmap, this.a, 0, false);
                Rect rect = new Rect(0, 0, a2.getWidth(), a2.getHeight());
                Rect rect2 = new Rect(this.b * 2, this.b * 2, width - (this.b * 2), width - (this.b * 2));
                this.a.reset();
                this.a.setFilterBitmap(true);
                this.a.setAntiAlias(true);
                canvas.drawBitmap(a2, rect, rect2, this.a);
                if (this.b != 0) {
                    canvas.drawCircle((float) (width / 2), (float) (width / 2), (float) ((width / 2) - this.b), this.d);
                    return;
                }
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }
}
