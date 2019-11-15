package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;

public class SwitchButton extends ViewGroup {
    public boolean a;
    private final int b = R.color.title_blue;
    /* access modifiers changed from: private */
    public int c = R.color.default_light_grey_color;
    private final int d = 2;
    private int e;
    private Paint f;
    private a g;
    private OnCheckedChangeListener h;
    private boolean i = false;

    public interface OnCheckedChangeListener {
    }

    private class a extends View {
        public Paint a;

        public a(Context context) {
            super(context);
            a();
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            a();
        }

        private void a() {
            this.a = new Paint(1);
            this.a.setAntiAlias(true);
            this.a.setFilterBitmap(true);
            this.a.setStyle(Style.FILL);
        }

        /* access modifiers changed from: protected */
        public void onDraw(Canvas canvas) {
            this.a.setColor(getResources().getColor(SwitchButton.this.a ? R.color.title_blue : SwitchButton.this.c));
            canvas.translate((float) (getWidth() / 2), (float) (getHeight() / 2));
            canvas.drawCircle(0.0f, 0.0f, (float) (getHeight() / 2), this.a);
        }
    }

    public SwitchButton(Context context) {
        super(context);
        a(context, new AttributeSet[0]);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet... attributeSetArr) {
        this.f = new Paint(1);
        this.f.setAntiAlias(true);
        this.f.setFilterBitmap(true);
        this.f.setStyle(Style.STROKE);
        this.f.setStrokeWidth((float) v.b(2));
        this.f.setColor(getResources().getColor(this.c));
        this.g = attributeSetArr == null ? new a(context) : new a(context, attributeSetArr[0]);
        setWillNotDraw(false);
        this.e = v.b(2);
    }

    public void invalidate() {
        super.invalidate();
        this.g.invalidate();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int a2 = (int) v.a(3.0f);
        int height = getHeight() - (a2 * 2);
        if (getChildAt(0) == null) {
            addView(this.g);
        }
        if (this.a) {
            this.g.layout(((getWidth() - this.e) - a2) - height, this.e + a2, (getWidth() - a2) - this.e, (a2 + height) - this.e);
        } else {
            this.g.layout(this.e + a2, this.e + a2, height + a2 + this.e, (a2 + height) - this.e);
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        canvas.drawArc(new RectF((float) this.e, (float) this.e, (float) (height - this.e), (float) (height - this.e)), 90.0f, 180.0f, false, this.f);
        canvas.drawArc(new RectF((float) ((width - height) + this.e), (float) this.e, (float) (width - this.e), (float) (height - this.e)), -90.0f, 180.0f, false, this.f);
        canvas.drawLine((float) (height / 2), (float) this.e, (float) (width - (height / 2)), (float) this.e, this.f);
        canvas.drawLine((float) (height / 2), (float) (height - this.e), (float) (width - (height / 2)), (float) (height - this.e), this.f);
    }

    public void setStartState(boolean z) {
        this.a = z;
        this.i = z;
        invalidate();
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.h = onCheckedChangeListener;
    }
}
