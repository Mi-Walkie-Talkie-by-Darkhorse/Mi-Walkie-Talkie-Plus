package com.ifengyu.intercom.lite.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.b;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;
import com.qmuiteam.qmui.c.e;
import com.qmuiteam.qmui.c.h;
import com.qmuiteam.qmui.skin.annotation.QMUISkinChangeNotAdapted;
import com.qmuiteam.qmui.widget.QMUILoadingView;

/* loaded from: classes2.dex */
public class EmptyView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private QMUILoadingView f5796a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f5797b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f5798c;
    protected Button d;
    private AppCompatImageView e;

    public EmptyView(Context context) {
        this(context, null);
    }

    private void e() {
        LayoutInflater.from(getContext()).inflate(R.layout.empty_view, (ViewGroup) this, true);
        this.f5796a = (QMUILoadingView) findViewById(R.id.empty_view_loading);
        this.e = (AppCompatImageView) findViewById(R.id.empty_icon);
        this.f5797b = (TextView) findViewById(R.id.empty_view_title);
        this.f5798c = (TextView) findViewById(R.id.empty_view_detail);
        this.d = (Button) findViewById(R.id.empty_view_button);
    }

    private void setIcon(Drawable drawable) {
        this.e.setImageDrawable(drawable);
        this.e.setVisibility(drawable != null ? 0 : 8);
    }

    public void a(boolean z, Drawable drawable, String str, String str2, String str3, View.OnClickListener onClickListener) {
        setLoadingShowing(z);
        setIcon(drawable);
        setTitleText(str);
        setDetailText(str2);
        setButton(str3, onClickListener);
        d();
    }

    public void b() {
        setVisibility(8);
        setLoadingShowing(false);
        setIcon(null);
        setTitleText(null);
        setDetailText(null);
        setButton(null, null);
    }

    public boolean c() {
        return getVisibility() == 0;
    }

    public void d() {
        setVisibility(0);
    }

    public void setBtnSkinValue(h hVar) {
        e.a(this.d, hVar);
    }

    public void setButton(String str, View.OnClickListener onClickListener) {
        this.d.setText(str);
        this.d.setVisibility(str != null ? 0 : 8);
        this.d.setOnClickListener(onClickListener);
    }

    @QMUISkinChangeNotAdapted
    public void setDetailColor(int i) {
        this.f5798c.setTextColor(i);
    }

    public void setDetailSkinValue(h hVar) {
        e.a(this.f5798c, hVar);
    }

    public void setDetailText(String str) {
        this.f5798c.setText(str);
        this.f5798c.setVisibility(str != null ? 0 : 8);
    }

    public void setLoadingShowing(boolean z) {
        this.f5796a.setVisibility(z ? 0 : 8);
    }

    public void setLoadingSkinValue(h hVar) {
        e.a(this.f5796a, hVar);
    }

    @QMUISkinChangeNotAdapted
    public void setTitleColor(int i) {
        this.f5797b.setTextColor(i);
    }

    public void setTitleSkinValue(h hVar) {
        e.a(this.f5797b, hVar);
    }

    public void setTitleText(String str) {
        this.f5797b.setText(str);
        this.f5797b.setVisibility(str != null ? 0 : 8);
    }

    public EmptyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public EmptyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        e();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.EmptyView);
        boolean z = obtainStyledAttributes.getBoolean(3, false);
        String string = obtainStyledAttributes.getString(4);
        String string2 = obtainStyledAttributes.getString(1);
        String string3 = obtainStyledAttributes.getString(0);
        Drawable drawable = obtainStyledAttributes.getDrawable(2);
        obtainStyledAttributes.recycle();
        a(z, drawable, string, string2, string3, null);
    }

    public void a(@DrawableRes int i, String str, String str2) {
        setLoadingShowing(false);
        setIcon(b.c(getContext(), i));
        setTitleText(str);
        setDetailText(str2);
        setButton(null, null);
        d();
    }
}
