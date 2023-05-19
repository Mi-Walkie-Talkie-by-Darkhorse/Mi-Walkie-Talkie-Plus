package com.ifengyu.intercom.p216ui.widget.dialog;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.NumberPickerView;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog_ViewBinding */
/* loaded from: classes2.dex */
public class SharkPickerDialog_ViewBinding implements Unbinder {

    /* renamed from: a */
    private SharkPickerDialog f15865a;

    @UiThread
    public SharkPickerDialog_ViewBinding(SharkPickerDialog sharkPickerDialog, View view) {
        this.f15865a = sharkPickerDialog;
        sharkPickerDialog.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        sharkPickerDialog.mNp1 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_type, "field 'mNp1'", NumberPickerView.class);
        sharkPickerDialog.mNp2 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_value, "field 'mNp2'", NumberPickerView.class);
        sharkPickerDialog.mButtonNegative = (TextView) Utils.findRequiredViewAsType(view, R.id.button_negative, "field 'mButtonNegative'", TextView.class);
        sharkPickerDialog.mButtonPositive = (TextView) Utils.findRequiredViewAsType(view, R.id.button_positive, "field 'mButtonPositive'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SharkPickerDialog sharkPickerDialog = this.f15865a;
        if (sharkPickerDialog != null) {
            this.f15865a = null;
            sharkPickerDialog.mTvTitle = null;
            sharkPickerDialog.mNp1 = null;
            sharkPickerDialog.mNp2 = null;
            sharkPickerDialog.mButtonNegative = null;
            sharkPickerDialog.mButtonPositive = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
