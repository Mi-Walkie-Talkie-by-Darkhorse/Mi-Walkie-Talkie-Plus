package com.ifengyu.library.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes2.dex */
public class QMUIAlphaTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private a f7207a;

    public QMUIAlphaTextView(Context context) {
        super(context);
    }

    private a getAlphaViewHelper() {
        if (this.f7207a == null) {
            this.f7207a = new a(this);
        }
        return this.f7207a;
    }

    public void setChangeAlphaWhenDisable(boolean z) {
        getAlphaViewHelper().a(z);
    }

    public void setChangeAlphaWhenPress(boolean z) {
        getAlphaViewHelper().b(z);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        getAlphaViewHelper().a(this, z);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        getAlphaViewHelper().b(this, z);
    }

    public QMUIAlphaTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
