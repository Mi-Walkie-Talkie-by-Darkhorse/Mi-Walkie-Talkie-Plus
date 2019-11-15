package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.jude.rollviewpager.c;
import com.jude.rollviewpager.hintview.ColorPointHintView;

public class MyColorPointHintView extends ColorPointHintView {
    private int a;
    private int b;

    public MyColorPointHintView(Context context, int i, int i2) {
        super(context, i, i2);
        this.a = i;
        this.b = i2;
    }

    public Drawable a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.a);
        gradientDrawable.setCornerRadius((float) c.a(getContext(), 2.5f));
        gradientDrawable.setSize(c.a(getContext(), 5.0f), c.a(getContext(), 5.0f));
        return gradientDrawable;
    }

    public Drawable b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.b);
        gradientDrawable.setCornerRadius((float) c.a(getContext(), 2.5f));
        gradientDrawable.setSize(c.a(getContext(), 5.0f), c.a(getContext(), 5.0f));
        return gradientDrawable;
    }
}
