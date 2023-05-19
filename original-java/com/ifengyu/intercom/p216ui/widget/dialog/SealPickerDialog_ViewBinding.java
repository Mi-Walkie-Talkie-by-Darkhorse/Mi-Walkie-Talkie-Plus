package com.ifengyu.intercom.p216ui.widget.dialog;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.NumberPickerView;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog_ViewBinding */
/* loaded from: classes2.dex */
public class SealPickerDialog_ViewBinding implements Unbinder {

    /* renamed from: a */
    private SealPickerDialog f15857a;

    @UiThread
    public SealPickerDialog_ViewBinding(SealPickerDialog sealPickerDialog, View view) {
        this.f15857a = sealPickerDialog;
        sealPickerDialog.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        sealPickerDialog.mNp1 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_type, "field 'mNp1'", NumberPickerView.class);
        sealPickerDialog.mNp2 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_value, "field 'mNp2'", NumberPickerView.class);
        sealPickerDialog.mButtonNegative = (TextView) Utils.findRequiredViewAsType(view, R.id.button_negative, "field 'mButtonNegative'", TextView.class);
        sealPickerDialog.mButtonPositive = (TextView) Utils.findRequiredViewAsType(view, R.id.button_positive, "field 'mButtonPositive'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealPickerDialog sealPickerDialog = this.f15857a;
        if (sealPickerDialog != null) {
            this.f15857a = null;
            sealPickerDialog.mTvTitle = null;
            sealPickerDialog.mNp1 = null;
            sealPickerDialog.mNp2 = null;
            sealPickerDialog.mButtonNegative = null;
            sealPickerDialog.mButtonPositive = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
