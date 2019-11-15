package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import com.ifengyu.intercom.R;

public class TextViewDrawable extends AppCompatTextView {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;

    public TextViewDrawable(Context context) {
        this(context, null);
    }

    public TextViewDrawable(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextViewDrawable(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.i = true;
        this.j = false;
        a(context, attributeSet, i2);
    }

    private void a(Context context, AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TextViewDrawable);
        this.a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.b = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.c = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.d = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.g = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.h = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.i = obtainStyledAttributes.getBoolean(8, true);
        obtainStyledAttributes.recycle();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.k = i2;
        this.l = i3;
        Drawable[] compoundDrawables = getCompoundDrawables();
        Drawable drawable = compoundDrawables[0];
        Drawable drawable2 = compoundDrawables[1];
        Drawable drawable3 = compoundDrawables[2];
        Drawable drawable4 = compoundDrawables[3];
        if (drawable != null) {
            a(drawable, 0, this.a, this.e);
        }
        if (drawable2 != null) {
            a(drawable2, 1, this.b, this.f);
        }
        if (drawable3 != null) {
            a(drawable3, 2, this.c, this.g);
        }
        if (drawable4 != null) {
            a(drawable4, 3, this.d, this.h);
        }
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    private void a(Drawable drawable, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 0;
        int i10 = i3 == 0 ? drawable.getIntrinsicWidth() : i3;
        if (i4 == 0) {
            i4 = drawable.getIntrinsicHeight();
        }
        switch (i2) {
            case 0:
            case 2:
                int lineHeight = this.i ? 0 : (((-getLineCount()) * getLineHeight()) / 2) + (getLineHeight() / 2);
                int i11 = lineHeight + i4;
                i6 = lineHeight;
                i8 = i10;
                i7 = 0;
                i9 = i11;
                break;
            case 1:
                if (this.i) {
                    i5 = 0;
                } else {
                    i5 = ((-this.k) / 2) + (i10 / 2);
                }
                i6 = 0;
                i9 = 0 + i4;
                int i12 = i10 + i5;
                i7 = i5;
                i8 = i12;
                break;
            default:
                i8 = 0;
                i6 = 0;
                i7 = 0;
                break;
        }
        drawable.setBounds(i7, i6, i8, i9);
    }
}
