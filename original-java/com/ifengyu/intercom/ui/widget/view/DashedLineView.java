package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;

public class DashedLineView extends View {
    private Paint a;
    private Path b;
    private PathEffect c;

    public DashedLineView(Context context) {
        this(context, null);
    }

    public DashedLineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DashedLineView);
        int color = obtainStyledAttributes.getColor(0, -7829368);
        obtainStyledAttributes.recycle();
        this.a = new Paint();
        this.a.setStyle(Style.STROKE);
        this.a.setColor(color);
        this.a.setAntiAlias(true);
        this.a.setStrokeWidth(v.a(1.0f));
        this.b = new Path();
        float a2 = v.a(4.0f);
        this.c = new DashPathEffect(new float[]{a2, a2, a2, a2}, 1.0f);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.b.moveTo(0.0f, 0.0f);
        this.b.lineTo((float) getMeasuredWidth(), 0.0f);
        this.a.setPathEffect(this.c);
        canvas.drawPath(this.b, this.a);
    }
}
