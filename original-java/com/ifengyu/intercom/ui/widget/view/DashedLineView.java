package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.R$styleable;
import com.ifengyu.intercom.i.c0;

/* loaded from: classes2.dex */
public class DashedLineView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f7047a;

    /* renamed from: b  reason: collision with root package name */
    private Path f7048b;

    /* renamed from: c  reason: collision with root package name */
    private PathEffect f7049c;

    public DashedLineView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f7048b.moveTo(0.0f, 0.0f);
        this.f7048b.lineTo(getMeasuredWidth(), 0.0f);
        this.f7047a.setPathEffect(this.f7049c);
        canvas.drawPath(this.f7048b, this.f7047a);
    }

    public DashedLineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DashedLineView);
        int color = obtainStyledAttributes.getColor(0, -7829368);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f7047a = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f7047a.setColor(color);
        this.f7047a.setAntiAlias(true);
        this.f7047a.setStrokeWidth(c0.a(1.0f));
        this.f7048b = new Path();
        float a2 = c0.a(4.0f);
        this.f7049c = new DashPathEffect(new float[]{a2, a2, a2, a2}, 1.0f);
    }
}
