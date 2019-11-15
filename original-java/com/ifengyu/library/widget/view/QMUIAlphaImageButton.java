package com.ifengyu.library.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

public class QMUIAlphaImageButton extends ImageButton {
    private a a;

    public QMUIAlphaImageButton(Context context) {
        super(context);
    }

    public QMUIAlphaImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private a getAlphaViewHelper() {
        if (this.a == null) {
            this.a = new a(this);
        }
        return this.a;
    }

    public void setPressed(boolean z) {
        super.setPressed(z);
        getAlphaViewHelper().a(this, z);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        getAlphaViewHelper().b(this, z);
    }

    public void setChangeAlphaWhenPress(boolean z) {
        getAlphaViewHelper().a(z);
    }

    public void setChangeAlphaWhenDisable(boolean z) {
        getAlphaViewHelper().b(z);
    }
}
