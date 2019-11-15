package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;

public class ProgressView extends View {
    private Paint a = new Paint(1);
    private SweepGradient b = new SweepGradient(0.0f, 0.0f, new int[]{526629119, 1063500031, 1600370943, 2137241855, -1620854529, -1083983617, -547112705, -10241793}, null);

    public ProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a.setStyle(Style.STROKE);
    }

    public void setSweepGradient(int[] iArr) {
        if (iArr.length != 8) {
            throw new IllegalArgumentException();
        }
        this.b = new SweepGradient(0.0f, 0.0f, iArr, null);
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float f = 0.21f * ((float) height);
        float f2 = 0.05f * ((float) height);
        canvas.translate((float) (width / 2), (float) (height / 2));
        this.a.setStrokeWidth(f2);
        this.a.setShader(this.b);
        canvas.drawCircle(0.0f, 0.0f, f, this.a);
    }
}
