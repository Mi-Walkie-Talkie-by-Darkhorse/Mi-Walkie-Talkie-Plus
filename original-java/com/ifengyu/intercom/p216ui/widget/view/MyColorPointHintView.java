package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.jude.rollviewpager.C5033c;
import com.jude.rollviewpager.hintview.ColorPointHintView;

/* renamed from: com.ifengyu.intercom.ui.widget.view.MyColorPointHintView */
/* loaded from: classes2.dex */
public class MyColorPointHintView extends ColorPointHintView {

    /* renamed from: h */
    private int f16154h;

    /* renamed from: i */
    private int f16155i;

    public MyColorPointHintView(Context context, int i, int i2) {
        super(context, i, i2);
        this.f16154h = i;
        this.f16155i = i2;
    }

    @Override // com.jude.rollviewpager.hintview.ColorPointHintView, com.jude.rollviewpager.hintview.ShapeHintView
    /* renamed from: b */
    public Drawable mo8314b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.f16154h);
        gradientDrawable.setCornerRadius(C5033c.m8324a(getContext(), 2.5f));
        gradientDrawable.setSize(C5033c.m8324a(getContext(), 5.0f), C5033c.m8324a(getContext(), 5.0f));
        return gradientDrawable;
    }

    @Override // com.jude.rollviewpager.hintview.ColorPointHintView, com.jude.rollviewpager.hintview.ShapeHintView
    /* renamed from: c */
    public Drawable mo8313c() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.f16155i);
        gradientDrawable.setCornerRadius(C5033c.m8324a(getContext(), 2.5f));
        gradientDrawable.setSize(C5033c.m8324a(getContext(), 5.0f), C5033c.m8324a(getContext(), 5.0f));
        return gradientDrawable;
    }
}
