package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.ifengyu.intercom.R$styleable;

/* renamed from: com.ifengyu.intercom.ui.widget.view.TextViewDrawable */
/* loaded from: classes2.dex */
public class TextViewDrawable extends AppCompatTextView {

    /* renamed from: a */
    private int f16302a;

    /* renamed from: b */
    private int f16303b;

    /* renamed from: c */
    private int f16304c;

    /* renamed from: d */
    private int f16305d;

    /* renamed from: e */
    private int f16306e;

    /* renamed from: f */
    private int f16307f;

    /* renamed from: g */
    private int f16308g;

    /* renamed from: h */
    private int f16309h;

    /* renamed from: i */
    private boolean f16310i;

    /* renamed from: j */
    private int f16311j;

    public TextViewDrawable(Context context) {
        this(context, null);
    }

    /* renamed from: b */
    private void m8743b(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TextViewDrawable);
        this.f16302a = obtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.f16303b = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.f16304c = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.f16305d = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f16306e = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f16307f = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.f16308g = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.f16309h = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f16310i = obtainStyledAttributes.getBoolean(8, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private void m8742c(Drawable drawable, int i, int i2, int i3) {
        int lineHeight;
        int i4;
        if (i2 == 0) {
            i2 = drawable.getIntrinsicWidth();
        }
        if (i3 == 0) {
            i3 = drawable.getIntrinsicHeight();
        }
        int i5 = 0;
        if (i != 0) {
            if (i == 1) {
                int i6 = this.f16310i ? 0 : ((-this.f16311j) / 2) + (i2 / 2);
                i2 += i6;
                i4 = i3 + 0;
                i5 = i6;
                lineHeight = 0;
            } else if (i != 2) {
                lineHeight = 0;
                i2 = 0;
                i4 = 0;
            }
            drawable.setBounds(i5, lineHeight, i2, i4);
        }
        lineHeight = this.f16310i ? 0 : (((-getLineCount()) * getLineHeight()) / 2) + (getLineHeight() / 2);
        i4 = i3 + lineHeight;
        drawable.setBounds(i5, lineHeight, i2, i4);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f16311j = i;
        Drawable[] compoundDrawables = getCompoundDrawables();
        Drawable drawable = compoundDrawables[0];
        Drawable drawable2 = compoundDrawables[1];
        Drawable drawable3 = compoundDrawables[2];
        Drawable drawable4 = compoundDrawables[3];
        if (drawable != null) {
            m8742c(drawable, 0, this.f16302a, this.f16306e);
        }
        if (drawable2 != null) {
            m8742c(drawable2, 1, this.f16303b, this.f16307f);
        }
        if (drawable3 != null) {
            m8742c(drawable3, 2, this.f16304c, this.f16308g);
        }
        if (drawable4 != null) {
            m8742c(drawable4, 3, this.f16305d, this.f16309h);
        }
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public TextViewDrawable(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextViewDrawable(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16310i = true;
        m8743b(context, attributeSet, i);
    }
}
