package com.ifengyu.intercom.p216ui.widget.view;

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
import androidx.appcompat.widget.AppCompatImageView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;

/* renamed from: com.ifengyu.intercom.ui.widget.view.RoundRectImageView */
/* loaded from: classes2.dex */
public class RoundRectImageView extends AppCompatImageView {

    /* renamed from: a */
    private int f16280a;

    /* renamed from: b */
    private int f16281b;

    /* renamed from: c */
    private int f16282c;

    /* renamed from: d */
    private int f16283d;

    /* renamed from: e */
    private WeakReference<Bitmap> f16284e;

    /* renamed from: f */
    private Bitmap f16285f;

    /* renamed from: g */
    private Paint f16286g;

    /* renamed from: h */
    private Paint f16287h;

    /* renamed from: i */
    private Xfermode f16288i;

    public RoundRectImageView(Context context) {
        this(context, null);
    }

    private Bitmap getShapeBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        if (this.f16281b == this.f16283d) {
            canvas.drawCircle(canvas.getWidth() / 2, canvas.getHeight() / 2, canvas.getWidth() / 2, this.f16287h);
        } else {
            RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, canvas.getWidth(), canvas.getHeight());
            int i = this.f16280a;
            canvas.drawRoundRect(rectF, i, i, this.f16287h);
        }
        return createBitmap;
    }

    /* renamed from: k */
    private int m8759k(int i) {
        return (int) ((i * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable;
        WeakReference<Bitmap> weakReference = this.f16284e;
        Bitmap bitmap = weakReference == null ? null : weakReference.get();
        if ((bitmap == null || bitmap.isRecycled()) && (drawable = getDrawable()) != null) {
            bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmap);
            drawable.draw(canvas2);
            this.f16286g.setXfermode(this.f16288i);
            Bitmap bitmap2 = this.f16285f;
            if (bitmap2 == null || bitmap2.isRecycled()) {
                this.f16285f = getShapeBitmap();
            }
            canvas2.drawBitmap(this.f16285f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f16286g);
            this.f16286g.setXfermode(null);
        }
        canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
    }

    public RoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundRectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16280a = m8759k(5);
        this.f16281b = 0;
        this.f16282c = 1;
        this.f16283d = 1;
        this.f16288i = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        getScaleType();
        this.f16286g = new Paint(5);
        this.f16287h = new Paint(5);
    }
}
