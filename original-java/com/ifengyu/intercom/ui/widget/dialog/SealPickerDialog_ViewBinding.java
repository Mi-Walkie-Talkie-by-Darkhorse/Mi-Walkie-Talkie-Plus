package com.ifengyu.intercom.ui.widget.dialog;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.view.NumberPickerView;

/* loaded from: classes2.dex */
public class SealPickerDialog_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private SealPickerDialog f6917a;

    @UiThread
    public SealPickerDialog_ViewBinding(SealPickerDialog sealPickerDialog, View view) {
        this.f6917a = sealPickerDialog;
        sealPickerDialog.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        sealPickerDialog.mNp1 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_type, "field 'mNp1'", NumberPickerView.class);
        sealPickerDialog.mNp2 = (NumberPickerView) Utils.findRequiredViewAsType(view, R.id.np_tone_value, "field 'mNp2'", NumberPickerView.class);
        sealPickerDialog.mButtonNegative = (TextView) Utils.findRequiredViewAsType(view, R.id.button_negative, "field 'mButtonNegative'", TextView.class);
        sealPickerDialog.mButtonPositive = (TextView) Utils.findRequiredViewAsType(view, R.id.button_positive, "field 'mButtonPositive'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SealPickerDialog sealPickerDialog = this.f6917a;
        if (sealPickerDialog != null) {
            this.f6917a = null;
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
