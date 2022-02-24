package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.jude.rollviewpager.c;
import com.jude.rollviewpager.hintview.ColorPointHintView;

/* loaded from: classes2.dex */
public class MyColorPointHintView extends ColorPointHintView {
    private int h;
    private int i;

    public MyColorPointHintView(Context context, int i, int i2) {
        super(context, i, i2);
        this.h = i;
        this.i = i2;
    }

    @Override // com.jude.rollviewpager.hintview.ColorPointHintView, com.jude.rollviewpager.hintview.ShapeHintView
    public Drawable a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.h);
        gradientDrawable.setCornerRadius(c.a(getContext(), 2.5f));
        gradientDrawable.setSize(c.a(getContext(), 5.0f), c.a(getContext(), 5.0f));
        return gradientDrawable;
    }

    @Override // com.jude.rollviewpager.hintview.ColorPointHintView, com.jude.rollviewpager.hintview.ShapeHintView
    public Drawable b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.i);
        gradientDrawable.setCornerRadius(c.a(getContext(), 2.5f));
        gradientDrawable.setSize(c.a(getContext(), 5.0f), c.a(getContext(), 5.0f));
        return gradientDrawable;
    }
}
