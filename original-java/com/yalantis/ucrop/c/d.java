package com.yalantis.ucrop.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* compiled from: FastBitmapDrawable */
public class d extends Drawable {
    private final Paint a = new Paint(2);
    private Bitmap b;
    private int c = 255;
    private int d;
    private int e;

    public d(Bitmap bitmap) {
        a(bitmap);
    }

    public void draw(Canvas canvas) {
        if (this.b != null && !this.b.isRecycled()) {
            canvas.drawBitmap(this.b, null, getBounds(), this.a);
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
    }

    public int getOpacity() {
        return -3;
    }

    public void setFilterBitmap(boolean z) {
        this.a.setFilterBitmap(z);
    }

    public int getAlpha() {
        return this.c;
    }

    public void setAlpha(int i) {
        this.c = i;
        this.a.setAlpha(i);
    }

    public int getIntrinsicWidth() {
        return this.d;
    }

    public int getIntrinsicHeight() {
        return this.e;
    }

    public int getMinimumWidth() {
        return this.d;
    }

    public int getMinimumHeight() {
        return this.e;
    }

    public Bitmap a() {
        return this.b;
    }

    public void a(Bitmap bitmap) {
        this.b = bitmap;
        if (bitmap != null) {
            this.d = this.b.getWidth();
            this.e = this.b.getHeight();
            return;
        }
        this.e = 0;
        this.d = 0;
    }
}
