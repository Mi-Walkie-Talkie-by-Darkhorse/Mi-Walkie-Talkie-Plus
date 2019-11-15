package com.ifengyu.intercom.ui.widget.dialog;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog;
import com.ifengyu.intercom.ui.widget.view.NumberPickerView;

public class SharkPickerDialog_ViewBinding<T extends SharkPickerDialog> implements Unbinder {
    protected T a;

    @UiThread
    public SharkPickerDialog_ViewBinding(T t, View view) {
        this.a = t;
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mNp1 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_type, "field 'mNp1'", NumberPickerView.class);
        t.mNp2 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_value, "field 'mNp2'", NumberPickerView.class);
        t.mButtonNegative = (TextView) Utils.findRequiredViewAsType(view, R.id.button_negative, "field 'mButtonNegative'", TextView.class);
        t.mButtonPositive = (TextView) Utils.findRequiredViewAsType(view, R.id.button_positive, "field 'mButtonPositive'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mTvTitle = null;
        t.mNp1 = null;
        t.mNp2 = null;
        t.mButtonNegative = null;
        t.mButtonPositive = null;
        this.a = null;
    }
}
