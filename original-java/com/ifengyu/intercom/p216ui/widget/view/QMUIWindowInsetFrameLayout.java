package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.util.QMUIWindowInsetHelper;
import com.qmuiteam.qmui.widget.IWindowInsetLayout;

/* renamed from: com.ifengyu.intercom.ui.widget.view.QMUIWindowInsetFrameLayout */
/* loaded from: classes2.dex */
public class QMUIWindowInsetFrameLayout extends QMUIFrameLayout implements IWindowInsetLayout {

    /* renamed from: c */
    protected QMUIWindowInsetHelper f16255c;

    public QMUIWindowInsetFrameLayout(Context context) {
        this(context, null);
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    /* renamed from: d */
    public boolean mo6944d(Object obj) {
        return this.f16255c.m7445h(this, obj);
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    /* renamed from: f */
    public boolean mo6943f(Rect rect) {
        return this.f16255c.m7446g(this, rect);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19 && i < 21) {
            return mo6943f(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewCompat.m23570p0(this);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ViewCompat.m23570p0(this);
    }

    public QMUIWindowInsetFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUIWindowInsetFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16255c = new QMUIWindowInsetHelper(this, this);
    }
}
