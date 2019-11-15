package com.jude.rollviewpager.hintview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.jude.rollviewpager.c;

public class ColorPointHintView extends ShapeHintView {
    private int a;
    private int b;

    public ColorPointHintView(Context context, int i, int i2) {
        super(context);
        this.a = i;
        this.b = i2;
    }

    public Drawable a() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.a);
        gradientDrawable.setCornerRadius((float) c.a(getContext(), 4.0f));
        gradientDrawable.setSize(c.a(getContext(), 8.0f), c.a(getContext(), 8.0f));
        return gradientDrawable;
    }

    public Drawable b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.b);
        gradientDrawable.setCornerRadius((float) c.a(getContext(), 4.0f));
        gradientDrawable.setSize(c.a(getContext(), 8.0f), c.a(getContext(), 8.0f));
        return gradientDrawable;
    }
}
