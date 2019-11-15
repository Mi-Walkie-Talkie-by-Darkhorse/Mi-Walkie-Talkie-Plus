package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.widget.ImageView.ScaleType;
import java.lang.ref.WeakReference;

public class RoundRectImageView extends AppCompatImageView {
    private int a;
    private int b;
    private int c;
    private int d;
    private ScaleType e;
    private WeakReference<Bitmap> f;
    private Bitmap g;
    private Paint h;
    private Paint i;
    private Xfermode j;

    public RoundRectImageView(Context context) {
        this(context, null);
    }

    public RoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundRectImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a = a(5);
        this.b = 0;
        this.c = 1;
        this.d = this.c;
        this.j = new PorterDuffXfermode(Mode.DST_IN);
        this.e = getScaleType();
        this.h = new Paint(5);
        this.i = new Paint(5);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        Bitmap bitmap = this.f == null ? null : (Bitmap) this.f.get();
        if (bitmap == null || bitmap.isRecycled()) {
            Drawable drawable = getDrawable();
            if (drawable != null) {
                bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmap);
                drawable.draw(canvas2);
                this.h.setXfermode(this.j);
                if (this.g == null || this.g.isRecycled()) {
                    this.g = getShapeBitmap();
                }
                canvas2.drawBitmap(this.g, 0.0f, 0.0f, this.h);
                this.h.setXfermode(null);
            }
        }
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, null);
    }

    private Bitmap getShapeBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        if (this.b == this.d) {
            canvas.drawCircle((float) (canvas.getWidth() / 2), (float) (canvas.getHeight() / 2), (float) (canvas.getWidth() / 2), this.i);
        } else {
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight()), (float) this.a, (float) this.a, this.i);
        }
        return createBitmap;
    }

    private int a(int i2) {
        return (int) ((((float) i2) * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }
}
