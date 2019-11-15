package com.flyco.tablayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.TextView;
import com.flyco.tablayout.R;

public class MsgView extends TextView {
    private Context a;
    private GradientDrawable b;
    private int c;
    private int d;
    private int e;
    private int f;
    private boolean g;
    private boolean h;

    public MsgView(Context context) {
        this(context, null);
    }

    public MsgView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MsgView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new GradientDrawable();
        this.a = context;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MsgView);
        this.c = obtainStyledAttributes.getColor(R.styleable.MsgView_mv_backgroundColor, 0);
        this.d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_cornerRadius, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_strokeWidth, 0);
        this.f = obtainStyledAttributes.getColor(R.styleable.MsgView_mv_strokeColor, 0);
        this.g = obtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isRadiusHalfHeight, false);
        this.h = obtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isWidthHeightEqual, false);
        obtainStyledAttributes.recycle();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        if (!b() || getWidth() <= 0 || getHeight() <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(Math.max(getWidth(), getHeight()), 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (a()) {
            setCornerRadius(getHeight() / 2);
        } else {
            setBgSelector();
        }
    }

    public void setBackgroundColor(int i) {
        this.c = i;
        setBgSelector();
    }

    public void setCornerRadius(int i) {
        this.d = a((float) i);
        setBgSelector();
    }

    public void setStrokeWidth(int i) {
        this.e = a((float) i);
        setBgSelector();
    }

    public void setStrokeColor(int i) {
        this.f = i;
        setBgSelector();
    }

    public void setIsRadiusHalfHeight(boolean z) {
        this.g = z;
        setBgSelector();
    }

    public void setIsWidthHeightEqual(boolean z) {
        this.h = z;
        setBgSelector();
    }

    public int getBackgroundColor() {
        return this.c;
    }

    public int getCornerRadius() {
        return this.d;
    }

    public int getStrokeWidth() {
        return this.e;
    }

    public int getStrokeColor() {
        return this.f;
    }

    public boolean a() {
        return this.g;
    }

    public boolean b() {
        return this.h;
    }

    /* access modifiers changed from: protected */
    public int a(float f2) {
        return (int) ((this.a.getResources().getDisplayMetrics().density * f2) + 0.5f);
    }

    private void a(GradientDrawable gradientDrawable, int i, int i2) {
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius((float) this.d);
        gradientDrawable.setStroke(this.e, i2);
    }

    public void setBgSelector() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        a(this.b, this.c, this.f);
        stateListDrawable.addState(new int[]{-16842919}, this.b);
        if (VERSION.SDK_INT >= 16) {
            setBackground(stateListDrawable);
        } else {
            setBackgroundDrawable(stateListDrawable);
        }
    }
}
