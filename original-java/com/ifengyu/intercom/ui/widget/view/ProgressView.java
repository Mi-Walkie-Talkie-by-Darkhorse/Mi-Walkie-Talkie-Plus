package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes2.dex */
public class ProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f7075a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    private SweepGradient f7076b = new SweepGradient(0.0f, 0.0f, new int[]{526629119, 1063500031, 1600370943, 2137241855, -1620854529, -1083983617, -547112705, -10241793}, (float[]) null);

    public ProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7075a.setStyle(Paint.Style.STROKE);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int height;
        int width = getWidth();
        float height2 = getHeight();
        canvas.translate(width / 2, height / 2);
        this.f7075a.setStrokeWidth(height2 * 0.05f);
        this.f7075a.setShader(this.f7076b);
        canvas.drawCircle(0.0f, 0.0f, 0.21f * height2, this.f7075a);
    }

    public void setSweepGradient(int[] iArr) {
        if (iArr.length == 8) {
            this.f7076b = new SweepGradient(0.0f, 0.0f, iArr, (float[]) null);
            invalidate();
            return;
        }
        throw new IllegalArgumentException();
    }
}
