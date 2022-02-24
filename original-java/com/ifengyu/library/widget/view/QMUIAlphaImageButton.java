package com.ifengyu.library.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* loaded from: classes2.dex */
public class QMUIAlphaImageButton extends ImageButton {

    /* renamed from: a  reason: collision with root package name */
    private a f7206a;

    public QMUIAlphaImageButton(Context context) {
        super(context);
    }

    private a getAlphaViewHelper() {
        if (this.f7206a == null) {
            this.f7206a = new a(this);
        }
        return this.f7206a;
    }

    public void setChangeAlphaWhenDisable(boolean z) {
        getAlphaViewHelper().a(z);
    }

    public void setChangeAlphaWhenPress(boolean z) {
        getAlphaViewHelper().b(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        getAlphaViewHelper().a(this, z);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        getAlphaViewHelper().b(this, z);
    }

    public QMUIAlphaImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
