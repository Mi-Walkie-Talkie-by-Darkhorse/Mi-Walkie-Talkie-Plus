package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* renamed from: com.ifengyu.intercom.ui.widget.view.ProgressView */
/* loaded from: classes2.dex */
public class ProgressView extends View {

    /* renamed from: a */
    private Paint f16253a;

    /* renamed from: b */
    private SweepGradient f16254b;

    public ProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16253a = new Paint(1);
        this.f16254b = new SweepGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, new int[]{526629119, 1063500031, 1600370943, 2137241855, -1620854529, -1083983617, -547112705, -10241793}, (float[]) null);
        this.f16253a.setStyle(Paint.Style.STROKE);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int height;
        int width = getWidth();
        float height2 = getHeight();
        canvas.translate(width / 2, height / 2);
        this.f16253a.setStrokeWidth(height2 * 0.05f);
        this.f16253a.setShader(this.f16254b);
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0.21f * height2, this.f16253a);
    }

    public void setSweepGradient(int[] iArr) {
        if (iArr.length == 8) {
            this.f16254b = new SweepGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, iArr, (float[]) null);
            invalidate();
            return;
        }
        throw new IllegalArgumentException();
    }
}
