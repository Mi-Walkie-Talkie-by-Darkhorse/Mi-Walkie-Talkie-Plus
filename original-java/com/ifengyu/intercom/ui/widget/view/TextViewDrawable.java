package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.ifengyu.intercom.R$styleable;

/* loaded from: classes2.dex */
public class TextViewDrawable extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private int f7100a;

    /* renamed from: b  reason: collision with root package name */
    private int f7101b;

    /* renamed from: c  reason: collision with root package name */
    private int f7102c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private int j;

    public TextViewDrawable(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TextViewDrawable);
        this.f7100a = obtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.f7101b = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.f7102c = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.d = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.g = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.h = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.i = obtainStyledAttributes.getBoolean(8, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.j = i;
        Drawable[] compoundDrawables = getCompoundDrawables();
        Drawable drawable = compoundDrawables[0];
        Drawable drawable2 = compoundDrawables[1];
        Drawable drawable3 = compoundDrawables[2];
        Drawable drawable4 = compoundDrawables[3];
        if (drawable != null) {
            a(drawable, 0, this.f7100a, this.e);
        }
        if (drawable2 != null) {
            a(drawable2, 1, this.f7101b, this.f);
        }
        if (drawable3 != null) {
            a(drawable3, 2, this.f7102c, this.g);
        }
        if (drawable4 != null) {
            a(drawable4, 3, this.d, this.h);
        }
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public TextViewDrawable(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextViewDrawable(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = true;
        a(context, attributeSet, i);
    }

    private void a(Drawable drawable, int i, int i2, int i3) {
        int i4;
        int i5;
        if (i2 == 0) {
            i2 = drawable.getIntrinsicWidth();
        }
        if (i3 == 0) {
            i3 = drawable.getIntrinsicHeight();
        }
        int i6 = 0;
        if (i != 0) {
            if (i == 1) {
                int i7 = this.i ? 0 : ((-this.j) / 2) + (i2 / 2);
                i2 += i7;
                i4 = i3 + 0;
                i6 = i7;
                i5 = 0;
            } else if (i != 2) {
                i5 = 0;
                i2 = 0;
                i4 = 0;
            }
            drawable.setBounds(i6, i5, i2, i4);
        }
        i5 = this.i ? 0 : (((-getLineCount()) * getLineHeight()) / 2) + (getLineHeight() / 2);
        i4 = i3 + i5;
        drawable.setBounds(i6, i5, i2, i4);
    }
}
