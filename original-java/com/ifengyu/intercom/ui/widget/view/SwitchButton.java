package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;

/* loaded from: classes2.dex */
public class SwitchButton extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private int f7095a = R.color.default_light_grey_color;

    /* renamed from: b  reason: collision with root package name */
    private int f7096b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f7097c;
    private a d;
    public boolean e;

    /* loaded from: classes2.dex */
    public interface OnCheckedChangeListener {
    }

    public SwitchButton(Context context) {
        super(context);
        a(context, new AttributeSet[0]);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.d.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int width = getWidth();
        int height = getHeight();
        int i2 = this.f7096b;
        canvas.drawArc(new RectF(i2, i2, height - i2, height - i2), 90.0f, 180.0f, false, this.f7097c);
        canvas.drawArc(new RectF((width - height) + i, this.f7096b, width - i, height - i), -90.0f, 180.0f, false, this.f7097c);
        int i3 = height / 2;
        float f = i3;
        int i4 = this.f7096b;
        float f2 = width - i3;
        canvas.drawLine(f, i4, f2, i4, this.f7097c);
        int i5 = this.f7096b;
        canvas.drawLine(f, height - i5, f2, height - i5, this.f7097c);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int a2 = (int) c0.a(3.0f);
        int height = getHeight() - (a2 * 2);
        if (getChildAt(0) == null) {
            addView(this.d);
        }
        if (this.e) {
            a aVar = this.d;
            int width = getWidth();
            int i5 = this.f7096b;
            int i6 = this.f7096b;
            aVar.layout(((width - i5) - a2) - height, i5 + a2, (getWidth() - a2) - i6, (height + a2) - i6);
            return;
        }
        a aVar2 = this.d;
        int i7 = this.f7096b;
        int i8 = height + a2;
        aVar2.layout(i7 + a2, i7 + a2, i8 + i7, i8 - i7);
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
    }

    public void setStartState(boolean z) {
        this.e = z;
        invalidate();
    }

    private void a(Context context, AttributeSet... attributeSetArr) {
        Paint paint = new Paint(1);
        this.f7097c = paint;
        paint.setAntiAlias(true);
        this.f7097c.setFilterBitmap(true);
        this.f7097c.setStyle(Paint.Style.STROKE);
        this.f7097c.setStrokeWidth(c0.d(2));
        this.f7097c.setColor(getResources().getColor(this.f7095a));
        this.d = attributeSetArr == null ? new a(context) : new a(context, attributeSetArr[0]);
        setWillNotDraw(false);
        this.f7096b = c0.d(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends View {

        /* renamed from: a  reason: collision with root package name */
        public Paint f7098a;

        public a(Context context) {
            super(context);
            a();
        }

        private void a() {
            Paint paint = new Paint(1);
            this.f7098a = paint;
            paint.setAntiAlias(true);
            this.f7098a.setFilterBitmap(true);
            this.f7098a.setStyle(Paint.Style.FILL);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Paint paint = this.f7098a;
            Resources resources = getResources();
            SwitchButton switchButton = SwitchButton.this;
            paint.setColor(resources.getColor(switchButton.e ? R.color.title_blue : switchButton.f7095a));
            canvas.translate(getWidth() / 2, getHeight() / 2);
            canvas.drawCircle(0.0f, 0.0f, getHeight() / 2, this.f7098a);
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            a();
        }
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }
}
