package com.ifengyu.intercom.dialog.list;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.layout.QMUIRelativeLayout;
import com.qmuiteam.qmui.p242c.QMUISkinHelper;
import com.qmuiteam.qmui.p242c.QMUISkinValueBuilder;
import com.qmuiteam.qmui.p242c.p243i.QMUISkinSimpleDefaultAttrProvider;
import com.qmuiteam.qmui.util.QMUIResHelper;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* loaded from: classes2.dex */
public class BottomSheetListItemView extends QMUIRelativeLayout {

    /* renamed from: c */
    private AppCompatImageView f13659c;

    /* renamed from: d */
    private QMUISpanTouchFixTextView f13660d;

    /* renamed from: e */
    private TextView f13661e;

    /* renamed from: f */
    private QMUIFrameLayout f13662f;

    /* renamed from: g */
    private AppCompatImageView f13663g;

    /* renamed from: h */
    private int f13664h;

    public BottomSheetListItemView(Context context, boolean z, boolean z2) {
        super(context);
        this.f13663g = null;
        setBackground(QMUIResHelper.m7502f(context, R.attr.qmui_skin_support_bottom_sheet_list_item_bg));
        int m7503e = QMUIResHelper.m7503e(context, R.attr.qmui_bottom_sheet_padding_hor);
        setPadding(m7503e, 0, m7503e, 0);
        setGravity(16);
        QMUISkinValueBuilder m7907a = QMUISkinValueBuilder.m7907a();
        m7907a.m7904d(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_list_item_bg));
        QMUISkinHelper.m7943g(this, m7907a);
        m7907a.m7898j();
        AppCompatImageView appCompatImageView = new AppCompatImageView(context);
        this.f13659c = appCompatImageView;
        appCompatImageView.setId(View.generateViewId());
        this.f13659c.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
        this.f13660d = qMUISpanTouchFixTextView;
        qMUISpanTouchFixTextView.setId(View.generateViewId());
        QMUISkinSimpleDefaultAttrProvider qMUISkinSimpleDefaultAttrProvider = new QMUISkinSimpleDefaultAttrProvider();
        qMUISkinSimpleDefaultAttrProvider.m7881a("textColor", R.attr.qmui_skin_support_bottom_sheet_list_item_text_color);
        QMUIResHelper.m7507a(this.f13660d, R.attr.qmui_bottom_sheet_list_item_text_style);
        QMUISkinHelper.m7944f(this.f13660d, qMUISkinSimpleDefaultAttrProvider);
        TextView textView = new TextView(context);
        this.f13661e = textView;
        textView.setId(View.generateViewId());
        QMUIFrameLayout qMUIFrameLayout = new QMUIFrameLayout(context);
        this.f13662f = qMUIFrameLayout;
        qMUIFrameLayout.setId(View.generateViewId());
        this.f13662f.setBackgroundColor(QMUIResHelper.m7506b(context, R.attr.qmui_skin_support_bottom_sheet_list_red_point_color));
        m7907a.m7904d(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_list_red_point_color));
        QMUISkinHelper.m7943g(this.f13662f, m7907a);
        m7907a.m7898j();
        if (z) {
            AppCompatImageView appCompatImageView2 = new AppCompatImageView(context);
            this.f13663g = appCompatImageView2;
            appCompatImageView2.setId(View.generateViewId());
            this.f13663g.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.f13663g.setImageDrawable(QMUIResHelper.m7502f(context, R.attr.qmui_skin_support_bottom_sheet_list_mark));
            m7907a.m7886v(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_list_mark));
            QMUISkinHelper.m7943g(this.f13663g, m7907a);
        }
        m7907a.m7891q();
        if (z) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(20);
            layoutParams.addRule(6, this.f13660d.getId());
            layoutParams.addRule(8, this.f13660d.getId());
            addView(this.f13663g, layoutParams);
        } else {
            int m7503e2 = QMUIResHelper.m7503e(context, R.attr.qmui_bottom_sheet_list_item_icon_size);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(m7503e2, m7503e2);
            layoutParams2.addRule(20);
            addView(this.f13659c, layoutParams2);
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        if (z) {
            if (z2) {
                layoutParams3.addRule(14);
            } else {
                layoutParams3.addRule(17, this.f13663g.getId());
                layoutParams3.leftMargin = QMUIResHelper.m7503e(context, R.attr.qmui_bottom_sheet_list_item_icon_margin_right);
            }
        } else if (z2) {
            layoutParams3.addRule(14);
        } else {
            layoutParams3.addRule(17, this.f13659c.getId());
            layoutParams3.leftMargin = QMUIResHelper.m7503e(context, R.attr.qmui_bottom_sheet_list_item_icon_margin_right);
        }
        addView(this.f13660d, layoutParams3);
        int m7503e3 = QMUIResHelper.m7503e(context, R.attr.qmui_bottom_sheet_list_item_red_point_size);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(m7503e3, m7503e3);
        layoutParams4.addRule(21);
        layoutParams4.addRule(17, this.f13660d.getId());
        layoutParams4.leftMargin = QMUIResHelper.m7503e(context, R.attr.qmui_bottom_sheet_list_item_tip_point_margin_left);
        addView(this.f13662f, layoutParams4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(3, this.f13660d.getId());
        layoutParams5.addRule(18, this.f13660d.getId());
        addView(this.f13661e, layoutParams5);
        this.f13664h = QMUIResHelper.m7503e(context, R.attr.qmui_bottom_sheet_list_item_height);
    }

    /* renamed from: d */
    public void m12454d(@NonNull BottomSheetListItemModel bottomSheetListItemModel, boolean z) {
        QMUISkinValueBuilder m7907a = QMUISkinValueBuilder.m7907a();
        if (this.f13663g == null) {
            int i = bottomSheetListItemModel.f13679d;
            if (i != 0) {
                m7907a.m7887u(i);
                QMUISkinHelper.m7943g(this.f13659c, m7907a);
                this.f13659c.setImageDrawable(QMUISkinHelper.m7947c(this, bottomSheetListItemModel.f13679d));
                this.f13659c.setVisibility(0);
            } else {
                Drawable drawable = bottomSheetListItemModel.f13676a;
                if (drawable == null && bottomSheetListItemModel.f13677b != 0) {
                    drawable = ContextCompat.m23927d(getContext(), bottomSheetListItemModel.f13677b);
                }
                if (drawable != null) {
                    drawable.mutate();
                    this.f13659c.setImageDrawable(drawable);
                    int i2 = bottomSheetListItemModel.f13678c;
                    if (i2 != 0) {
                        m7907a.m7910D(i2);
                        QMUISkinHelper.m7943g(this.f13659c, m7907a);
                    } else {
                        QMUISkinHelper.m7942h(this.f13659c, "");
                    }
                } else {
                    this.f13659c.setVisibility(8);
                }
            }
        }
        m7907a.m7898j();
        this.f13660d.setText(bottomSheetListItemModel.f13681f);
        Typeface typeface = bottomSheetListItemModel.f13685j;
        if (typeface != null) {
            this.f13660d.setTypeface(typeface);
        }
        int i3 = bottomSheetListItemModel.f13680e;
        if (i3 != 0) {
            m7907a.m7885w(i3);
            QMUISkinHelper.m7943g(this.f13660d, m7907a);
            ColorStateList m7948b = QMUISkinHelper.m7948b(this.f13660d, bottomSheetListItemModel.f13680e);
            if (m7948b != null) {
                this.f13660d.setTextColor(m7948b);
            }
        } else {
            QMUISkinHelper.m7942h(this.f13659c, "");
        }
        TextView textView = this.f13661e;
        if (textView != null) {
            if (bottomSheetListItemModel.f13682g != null) {
                textView.setVisibility(0);
                this.f13661e.setText(bottomSheetListItemModel.f13682g);
                this.f13661e.setTextColor(UIUtils.m8614d(R.color.black40));
                this.f13661e.setTextSize(12.0f);
            } else {
                textView.setVisibility(8);
            }
        }
        this.f13662f.setVisibility(bottomSheetListItemModel.f13684i ? 0 : 8);
        AppCompatImageView appCompatImageView = this.f13663g;
        if (appCompatImageView != null) {
            appCompatImageView.setVisibility(z ? 0 : 4);
        }
        if (this.f13663g != null) {
            this.f13660d.setTextColor(UIUtils.m8614d(z ? R.color.select_color : R.color.black));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.layout.QMUIRelativeLayout, android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f13664h, 1073741824));
    }
}
