package com.ifengyu.library.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;

/* loaded from: classes2.dex */
public class QMUIAlphaButton extends Button {

    /* renamed from: a  reason: collision with root package name */
    private a f7205a;

    public QMUIAlphaButton(Context context) {
        super(context);
    }

    private a getAlphaViewHelper() {
        if (this.f7205a == null) {
            this.f7205a = new a(this);
        }
        return this.f7205a;
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

    public QMUIAlphaButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
