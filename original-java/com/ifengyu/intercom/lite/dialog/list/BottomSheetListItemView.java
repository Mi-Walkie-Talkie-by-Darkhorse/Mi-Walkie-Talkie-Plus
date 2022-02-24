package com.ifengyu.intercom.lite.dialog.list;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.k0;
import com.qmuiteam.qmui.c.e;
import com.qmuiteam.qmui.c.h;
import com.qmuiteam.qmui.c.i.b;
import com.qmuiteam.qmui.layout.QMUIConstraintLayout;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.util.i;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* loaded from: classes2.dex */
public class BottomSheetListItemView extends QMUIConstraintLayout {

    /* renamed from: c  reason: collision with root package name */
    private AppCompatImageView f5373c;
    private QMUISpanTouchFixTextView d;
    private QMUIFrameLayout e;
    private AppCompatImageView f;
    private int g;

    public BottomSheetListItemView(Context context, boolean z, boolean z2) {
        super(context);
        this.f = null;
        setBackground(i.c(context, R.attr.qmui_skin_support_bottom_sheet_list_item_bg));
        int b2 = i.b(context, (int) R.attr.qmui_bottom_sheet_padding_hor);
        setPadding(b2, 0, b2, 0);
        h e = h.e();
        e.a(i.e(context, R.attr.qmui_skin_support_bottom_sheet_list_item_bg));
        e.a(this, e);
        e.b();
        AppCompatImageView appCompatImageView = new AppCompatImageView(context);
        this.f5373c = appCompatImageView;
        appCompatImageView.setId(View.generateViewId());
        this.f5373c.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
        this.d = qMUISpanTouchFixTextView;
        qMUISpanTouchFixTextView.setId(View.generateViewId());
        b bVar = new b();
        bVar.a("textColor", R.attr.qmui_skin_support_bottom_sheet_list_item_text_color);
        i.a(this.d, (int) R.attr.qmui_bottom_sheet_list_item_text_style);
        e.a(this.d, bVar);
        QMUIFrameLayout qMUIFrameLayout = new QMUIFrameLayout(context);
        this.e = qMUIFrameLayout;
        qMUIFrameLayout.setId(View.generateViewId());
        this.e.setBackgroundColor(i.a(context, (int) R.attr.qmui_skin_support_bottom_sheet_list_red_point_color));
        e.a(i.e(context, R.attr.qmui_skin_support_bottom_sheet_list_red_point_color));
        e.a(this.e, e);
        e.b();
        if (z) {
            AppCompatImageView appCompatImageView2 = new AppCompatImageView(context);
            this.f = appCompatImageView2;
            appCompatImageView2.setId(View.generateViewId());
            this.f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.f.setImageDrawable(i.c(context, R.attr.qmui_skin_support_bottom_sheet_list_mark));
            e.c(i.e(context, R.attr.qmui_skin_support_bottom_sheet_list_mark));
            e.a(this.f, e);
        }
        e.d();
        float f = 0.5f;
        if (z) {
            ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-2, -2);
            layoutParams.d = 0;
            layoutParams.h = 0;
            layoutParams.f = this.d.getId();
            layoutParams.k = 0;
            layoutParams.F = 2;
            layoutParams.z = z2 ? 0.5f : 0.0f;
            addView(this.f, layoutParams);
        } else {
            int b3 = i.b(context, (int) R.attr.qmui_bottom_sheet_list_item_icon_size);
            ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(b3, b3);
            layoutParams2.d = 0;
            layoutParams2.h = 0;
            layoutParams2.f = this.d.getId();
            layoutParams2.k = 0;
            layoutParams2.F = 2;
            layoutParams2.z = z2 ? 0.5f : 0.0f;
            addView(this.f5373c, layoutParams2);
        }
        ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams(-2, -2);
        if (z) {
            layoutParams3.e = this.f.getId();
        } else {
            layoutParams3.e = this.f5373c.getId();
        }
        layoutParams3.f = this.e.getId();
        layoutParams3.h = 0;
        layoutParams3.k = 0;
        layoutParams3.F = 2;
        layoutParams3.z = z2 ? 0.5f : 0.0f;
        ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin = i.b(context, (int) R.attr.qmui_bottom_sheet_list_item_icon_margin_right);
        layoutParams3.t = 0;
        addView(this.d, layoutParams3);
        int b4 = i.b(context, (int) R.attr.qmui_bottom_sheet_list_item_red_point_size);
        ConstraintLayout.LayoutParams layoutParams4 = new ConstraintLayout.LayoutParams(b4, b4);
        layoutParams4.e = this.d.getId();
        layoutParams4.g = 0;
        layoutParams4.h = 0;
        layoutParams4.k = 0;
        layoutParams4.F = 2;
        layoutParams4.z = !z2 ? 0.0f : f;
        ((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin = i.b(context, (int) R.attr.qmui_bottom_sheet_list_item_tip_point_margin_left);
        addView(this.e, layoutParams4);
        this.g = i.b(context, (int) R.attr.qmui_bottom_sheet_list_item_height);
    }

    public void a(@NonNull c cVar, boolean z) {
        h e = h.e();
        int i = 8;
        int i2 = 0;
        if (this.f == null) {
            int i3 = cVar.d;
            if (i3 != 0) {
                e.m(i3);
                e.a(this.f5373c, e);
                this.f5373c.setImageDrawable(e.c(this, cVar.d));
                this.f5373c.setVisibility(0);
            } else {
                Drawable drawable = cVar.f5381a;
                if (drawable == null && cVar.f5382b != 0) {
                    drawable = androidx.core.content.b.c(getContext(), cVar.f5382b);
                }
                if (drawable != null) {
                    drawable.mutate();
                    this.f5373c.setImageDrawable(drawable);
                    int i4 = cVar.f5383c;
                    if (i4 != 0) {
                        e.t(i4);
                        e.a(this.f5373c, e);
                    } else {
                        e.a(this.f5373c, "");
                    }
                } else {
                    this.f5373c.setVisibility(8);
                }
            }
        }
        e.b();
        this.d.setText(cVar.f);
        Typeface typeface = cVar.i;
        if (typeface != null) {
            this.d.setTypeface(typeface);
        }
        int i5 = cVar.e;
        if (i5 != 0) {
            e.n(i5);
            e.a(this.d, e);
            ColorStateList b2 = e.b(this.d, cVar.e);
            if (b2 != null) {
                this.d.setTextColor(b2);
            }
        } else {
            e.a(this.f5373c, "");
        }
        QMUIFrameLayout qMUIFrameLayout = this.e;
        if (cVar.h) {
            i = 0;
        }
        qMUIFrameLayout.setVisibility(i);
        AppCompatImageView appCompatImageView = this.f;
        if (appCompatImageView != null) {
            if (!z) {
                i2 = 4;
            }
            appCompatImageView.setVisibility(i2);
        }
        if (this.f != null) {
            this.d.setTextColor(k0.a(z ? R.color.lite_colorAccent : R.color.black));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.layout.QMUIConstraintLayout, androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.g, 1073741824));
    }
}
