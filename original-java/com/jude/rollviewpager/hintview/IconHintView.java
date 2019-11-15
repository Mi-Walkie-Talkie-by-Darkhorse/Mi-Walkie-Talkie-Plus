package com.jude.rollviewpager.hintview;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public class IconHintView extends ShapeHintView {
    private int a;
    private int b;
    private int c;

    public Drawable a() {
        Drawable drawable = getContext().getResources().getDrawable(this.a);
        if (this.c > 0) {
            return a(drawable, this.c, this.c);
        }
        return drawable;
    }

    public Drawable b() {
        Drawable drawable = getContext().getResources().getDrawable(this.b);
        if (this.c > 0) {
            return a(drawable, this.c, this.c);
        }
        return drawable;
    }

    private Drawable a(Drawable drawable, int i, int i2) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap a2 = a(drawable);
        Matrix matrix = new Matrix();
        matrix.postScale(((float) i) / ((float) intrinsicWidth), ((float) i2) / ((float) intrinsicHeight));
        return new BitmapDrawable(null, Bitmap.createBitmap(a2, 0, 0, intrinsicWidth, intrinsicHeight, matrix, true));
    }

    private Bitmap a(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Config.ARGB_8888 : Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return createBitmap;
    }
}
