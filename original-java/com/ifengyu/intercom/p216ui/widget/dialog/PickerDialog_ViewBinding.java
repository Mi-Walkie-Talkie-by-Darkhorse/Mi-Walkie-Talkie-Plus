package com.ifengyu.intercom.p216ui.widget.dialog;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.NumberPickerView;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.PickerDialog_ViewBinding */
/* loaded from: classes2.dex */
public class PickerDialog_ViewBinding implements Unbinder {

    /* renamed from: a */
    private PickerDialog f15849a;

    @UiThread
    public PickerDialog_ViewBinding(PickerDialog pickerDialog, View view) {
        this.f15849a = pickerDialog;
        pickerDialog.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        pickerDialog.mNp1 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_type, "field 'mNp1'", NumberPickerView.class);
        pickerDialog.mNp2 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_value, "field 'mNp2'", NumberPickerView.class);
        pickerDialog.mButtonNegative = (TextView) Utils.findRequiredViewAsType(view, R.id.button_negative, "field 'mButtonNegative'", TextView.class);
        pickerDialog.mButtonPositive = (TextView) Utils.findRequiredViewAsType(view, R.id.button_positive, "field 'mButtonPositive'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PickerDialog pickerDialog = this.f15849a;
        if (pickerDialog != null) {
            this.f15849a = null;
            pickerDialog.mTvTitle = null;
            pickerDialog.mNp1 = null;
            pickerDialog.mNp2 = null;
            pickerDialog.mButtonNegative = null;
            pickerDialog.mButtonPositive = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
