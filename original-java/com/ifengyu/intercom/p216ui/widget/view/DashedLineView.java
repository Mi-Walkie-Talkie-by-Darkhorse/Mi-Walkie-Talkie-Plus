package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.util.AttributeSet;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R$styleable;
import com.ifengyu.intercom.p214p.MethodsUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.view.DashedLineView */
/* loaded from: classes2.dex */
public class DashedLineView extends View {

    /* renamed from: a */
    private Paint f16131a;

    /* renamed from: b */
    private Path f16132b;

    /* renamed from: c */
    private PathEffect f16133c;

    public DashedLineView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f16132b.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        this.f16132b.lineTo(getMeasuredWidth(), BitmapDescriptorFactory.HUE_RED);
        this.f16131a.setPathEffect(this.f16133c);
        canvas.drawPath(this.f16132b, this.f16131a);
    }

    public DashedLineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DashedLineView);
        int color = obtainStyledAttributes.getColor(0, -7829368);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f16131a = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f16131a.setColor(color);
        this.f16131a.setAntiAlias(true);
        this.f16131a.setStrokeWidth(MethodsUtils.m11292h(1.0f));
        this.f16132b = new Path();
        float m11292h = MethodsUtils.m11292h(4.0f);
        this.f16133c = new DashPathEffect(new float[]{m11292h, m11292h, m11292h, m11292h}, 1.0f);
    }
}
