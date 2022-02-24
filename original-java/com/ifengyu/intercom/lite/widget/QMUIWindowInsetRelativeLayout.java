package com.ifengyu.intercom.lite.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.util.o;
import com.qmuiteam.qmui.widget.c;

/* loaded from: classes2.dex */
public class QMUIWindowInsetRelativeLayout extends RelativeLayout implements c {

    /* renamed from: a  reason: collision with root package name */
    protected o f5799a;

    public QMUIWindowInsetRelativeLayout(Context context) {
        this(context, null);
    }

    @Override // com.qmuiteam.qmui.widget.c
    public boolean a(Rect rect) {
        return this.f5799a.a((ViewGroup) this, rect);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        int i = Build.VERSION.SDK_INT;
        if (i < 19 || i >= 21) {
            return super.fitSystemWindows(rect);
        }
        return a(rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewCompat.S(this);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ViewCompat.S(this);
    }

    public QMUIWindowInsetRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.qmuiteam.qmui.widget.c
    public boolean a(Object obj) {
        return this.f5799a.a(this, obj);
    }

    public QMUIWindowInsetRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5799a = new o(this, this);
    }
}
