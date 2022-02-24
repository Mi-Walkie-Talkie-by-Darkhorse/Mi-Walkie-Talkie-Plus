package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class RoundRectImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f7084a;

    /* renamed from: b  reason: collision with root package name */
    private int f7085b;

    /* renamed from: c  reason: collision with root package name */
    private int f7086c;
    private int d;
    private ImageView.ScaleType e;
    private WeakReference<Bitmap> f;
    private Bitmap g;
    private Paint h;
    private Paint i;
    private Xfermode j;

    public RoundRectImageView(Context context) {
        this(context, null);
    }

    private int a(int i) {
        return (int) ((i * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    private Bitmap getShapeBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        if (this.f7085b == this.d) {
            canvas.drawCircle(canvas.getWidth() / 2, canvas.getHeight() / 2, canvas.getWidth() / 2, this.i);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            int i = this.f7084a;
            canvas.drawRoundRect(rectF, i, i, this.i);
        }
        return createBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable;
        WeakReference<Bitmap> weakReference = this.f;
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if ((bitmap == null || bitmap.isRecycled()) && (drawable = getDrawable()) != null) {
            bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmap);
            drawable.draw(canvas2);
            this.h.setXfermode(this.j);
            Bitmap bitmap2 = this.g;
            if (bitmap2 == null || bitmap2.isRecycled()) {
                this.g = getShapeBitmap();
            }
            canvas2.drawBitmap(this.g, 0.0f, 0.0f, this.h);
            this.h.setXfermode(null);
        }
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
    }

    public RoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundRectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7084a = a(5);
        this.f7085b = 0;
        this.f7086c = 1;
        this.d = 1;
        this.j = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        this.e = getScaleType();
        this.h = new Paint(5);
        this.i = new Paint(5);
    }
}
