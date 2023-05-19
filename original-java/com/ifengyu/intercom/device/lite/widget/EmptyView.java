package com.ifengyu.intercom.device.lite.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;
import com.qmuiteam.qmui.p242c.QMUISkinHelper;
import com.qmuiteam.qmui.p242c.QMUISkinValueBuilder;
import com.qmuiteam.qmui.skin.annotation.QMUISkinChangeNotAdapted;
import com.qmuiteam.qmui.widget.QMUILoadingView;

/* loaded from: classes2.dex */
public class EmptyView extends ConstraintLayout {

    /* renamed from: a */
    private QMUILoadingView f12415a;

    /* renamed from: b */
    private TextView f12416b;

    /* renamed from: c */
    private TextView f12417c;

    /* renamed from: d */
    protected Button f12418d;

    /* renamed from: e */
    private AppCompatImageView f12419e;

    public EmptyView(Context context) {
        this(context, null);
    }

    /* renamed from: b */
    private void m13834b() {
        LayoutInflater.from(getContext()).inflate(R.layout.empty_view, (ViewGroup) this, true);
        this.f12415a = (QMUILoadingView) findViewById(R.id.empty_view_loading);
        this.f12419e = (AppCompatImageView) findViewById(R.id.empty_icon);
        this.f12416b = (TextView) findViewById(R.id.empty_view_title);
        this.f12417c = (TextView) findViewById(R.id.empty_view_detail);
        this.f12418d = (Button) findViewById(R.id.empty_view_button);
    }

    private void setIcon(Drawable drawable) {
        this.f12419e.setImageDrawable(drawable);
        this.f12419e.setVisibility(drawable != null ? 0 : 8);
    }

    /* renamed from: h */
    public void m13833h() {
        setVisibility(0);
    }

    /* renamed from: k */
    public void m13832k(boolean z, Drawable drawable, String str, String str2, String str3, View.OnClickListener onClickListener) {
        setLoadingShowing(z);
        setIcon(drawable);
        setTitleText(str);
        setDetailText(str2);
        setButton(str3, onClickListener);
        m13833h();
    }

    public void setBtnSkinValue(QMUISkinValueBuilder qMUISkinValueBuilder) {
        QMUISkinHelper.m7943g(this.f12418d, qMUISkinValueBuilder);
    }

    public void setButton(String str, View.OnClickListener onClickListener) {
        this.f12418d.setText(str);
        this.f12418d.setVisibility(str != null ? 0 : 8);
        this.f12418d.setOnClickListener(onClickListener);
    }

    @QMUISkinChangeNotAdapted
    public void setDetailColor(int i) {
        this.f12417c.setTextColor(i);
    }

    public void setDetailSkinValue(QMUISkinValueBuilder qMUISkinValueBuilder) {
        QMUISkinHelper.m7943g(this.f12417c, qMUISkinValueBuilder);
    }

    public void setDetailText(String str) {
        this.f12417c.setText(str);
        this.f12417c.setVisibility(str != null ? 0 : 8);
    }

    public void setLoadingShowing(boolean z) {
        this.f12415a.setVisibility(z ? 0 : 8);
    }

    public void setLoadingSkinValue(QMUISkinValueBuilder qMUISkinValueBuilder) {
        QMUISkinHelper.m7943g(this.f12415a, qMUISkinValueBuilder);
    }

    @QMUISkinChangeNotAdapted
    public void setTitleColor(int i) {
        this.f12416b.setTextColor(i);
    }

    public void setTitleSkinValue(QMUISkinValueBuilder qMUISkinValueBuilder) {
        QMUISkinHelper.m7943g(this.f12416b, qMUISkinValueBuilder);
    }

    public void setTitleText(String str) {
        this.f12416b.setText(str);
        this.f12416b.setVisibility(str != null ? 0 : 8);
    }

    public EmptyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public EmptyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m13834b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.EmptyView);
        boolean z = obtainStyledAttributes.getBoolean(3, false);
        String string = obtainStyledAttributes.getString(4);
        String string2 = obtainStyledAttributes.getString(1);
        String string3 = obtainStyledAttributes.getString(0);
        Drawable drawable = obtainStyledAttributes.getDrawable(2);
        obtainStyledAttributes.recycle();
        m13832k(z, drawable, string, string2, string3, null);
    }
}
