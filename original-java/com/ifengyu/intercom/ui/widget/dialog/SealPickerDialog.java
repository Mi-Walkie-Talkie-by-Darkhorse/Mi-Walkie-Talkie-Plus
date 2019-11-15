package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.support.annotation.StringRes;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.NumberPickerView;
import com.ifengyu.intercom.ui.widget.view.NumberPickerView.b;

public class SealPickerDialog extends b {
    public static final String[] a = ad.b((int) R.array.seal_analog_tone);
    public static final String[] b = PickerDialog.b;
    public static final String[] c = PickerDialog.c;
    private final String[] d = ad.b((int) R.array.sub_code_type);
    private a e;
    private a f;
    @BindView(2131755486)
    TextView mButtonNegative;
    @BindView(2131755487)
    TextView mButtonPositive;
    @BindView(2131755526)
    NumberPickerView mNp1;
    @BindView(2131755527)
    NumberPickerView mNp2;
    @BindView(2131755443)
    TextView mTvTitle;

    public interface a {
        void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2);
    }

    public SealPickerDialog(BaseActivity baseActivity) {
        super(baseActivity);
        setContentView(R.layout.dialog_relay_number_picker);
        ButterKnife.bind((Dialog) this);
        a((Activity) baseActivity);
        a(this.mButtonNegative, this.mButtonPositive);
        setCanceledOnTouchOutside(true);
        this.mNp1.setOnValueChangedListener(new b() {
            public void a(NumberPickerView numberPickerView, int i, int i2) {
                switch (i2) {
                    case 0:
                        SealPickerDialog.this.mNp2.a(SealPickerDialog.a);
                        return;
                    case 1:
                        SealPickerDialog.this.mNp2.a(SealPickerDialog.b);
                        return;
                    case 2:
                        SealPickerDialog.this.mNp2.a(SealPickerDialog.c);
                        return;
                    default:
                        return;
                }
            }
        });
        this.mNp1.a(this.d);
        this.mNp1.setContentTextTypeface(l.d);
        this.mNp1.setHintTextTypeface(l.d);
        this.mNp1.setValue(0);
        this.mNp2.a(a);
        this.mNp2.setContentTextTypeface(l.d);
        this.mNp2.setHintTextTypeface(l.d);
        if ("en".equals(baseActivity.getResources().getConfiguration().locale.getLanguage())) {
            this.mNp1.setTextSizeSelected(v.c(14.0f));
            this.mNp2.setTextSizeSelected(v.c(14.0f));
        }
    }

    public SealPickerDialog b(@StringRes int i) {
        this.mTvTitle.setText(i);
        return this;
    }

    public SealPickerDialog a(int i, int i2) {
        switch (i) {
            case 1:
                s.b("PickerDialog", "TYPE_CSS_NONE");
                this.mNp1.setValue(i - 1);
                this.mNp2.a(a);
                if (i2 < a.length) {
                    this.mNp2.setValue(i2);
                    break;
                }
                break;
            case 2:
                s.b("PickerDialog", "TYPE_CSS_DIGITAL,normal");
                this.mNp1.setValue(i - 1);
                this.mNp2.a(b);
                if (i2 < b.length) {
                    this.mNp2.setValue(i2);
                    break;
                }
                break;
            case 3:
                s.b("PickerDialog", "TYPE_CSS_ANALOG");
                this.mNp1.setValue(i - 1);
                this.mNp2.a(c);
                if (i2 < c.length) {
                    this.mNp2.setValue(i2);
                    break;
                }
                break;
        }
        return this;
    }

    public SealPickerDialog a(@StringRes int i, a aVar) {
        this.mButtonNegative.setText(i);
        this.f = aVar;
        return this;
    }

    public SealPickerDialog b(@StringRes int i, a aVar) {
        this.mButtonPositive.setText(i);
        this.e = aVar;
        return this;
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
        switch (i) {
            case R.id.button_negative /*2131755486*/:
                if (this.f != null) {
                    this.f.a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
                }
                dismiss();
                return;
            case R.id.button_positive /*2131755487*/:
                if (this.e != null) {
                    this.e.a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
                }
                dismiss();
                return;
            default:
                return;
        }
    }
}
