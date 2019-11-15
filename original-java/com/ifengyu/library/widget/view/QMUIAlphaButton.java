package com.ifengyu.library.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;

public class QMUIAlphaButton extends Button {
    private a a;

    public QMUIAlphaButton(Context context) {
        super(context);
    }

    public QMUIAlphaButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaButton(Context context, AttributeSet attributeSet, int i) {
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
