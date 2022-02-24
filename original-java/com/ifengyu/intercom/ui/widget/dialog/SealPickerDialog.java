package com.ifengyu.intercom.ui.widget.dialog;

import android.widget.TextView;
import androidx.annotation.StringRes;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.AMap;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.NumberPickerView;

/* loaded from: classes2.dex */
public class SealPickerDialog extends d {
    public static final String[] d = k0.d(R.array.seal_analog_tone);
    public static final String[] e = PickerDialog.e;
    public static final String[] f = PickerDialog.f;

    /* renamed from: a  reason: collision with root package name */
    private final String[] f6913a = k0.d(R.array.sub_code_type);

    /* renamed from: b  reason: collision with root package name */
    private b f6914b;

    /* renamed from: c  reason: collision with root package name */
    private b f6915c;
    @BindView(R.id.button_negative)
    TextView mButtonNegative;
    @BindView(R.id.button_positive)
    TextView mButtonPositive;
    @BindView(R.id.np_tone_type)
    NumberPickerView mNp1;
    @BindView(R.id.np_tone_value)
    NumberPickerView mNp2;
    @BindView(R.id.tv_title)
    TextView mTvTitle;

    /* loaded from: classes2.dex */
    class a implements NumberPickerView.d {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.widget.view.NumberPickerView.d
        public void a(NumberPickerView numberPickerView, int i, int i2) {
            if (i2 == 0) {
                SealPickerDialog.this.mNp2.a(SealPickerDialog.d);
            } else if (i2 == 1) {
                SealPickerDialog.this.mNp2.a(SealPickerDialog.e);
            } else if (i2 == 2) {
                SealPickerDialog.this.mNp2.a(SealPickerDialog.f);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2);
    }

    public SealPickerDialog(BaseActivity baseActivity) {
        super(baseActivity);
        setContentView(R.layout.dialog_relay_number_picker);
        ButterKnife.bind(this);
        a(baseActivity);
        a(this.mButtonNegative, this.mButtonPositive);
        setCanceledOnTouchOutside(true);
        this.mNp1.setOnValueChangedListener(new a());
        this.mNp1.a(this.f6913a);
        this.mNp1.setContentTextTypeface(p.f5325c);
        this.mNp1.setHintTextTypeface(p.f5325c);
        this.mNp1.setValue(0);
        this.mNp2.a(d);
        this.mNp2.setContentTextTypeface(p.f5325c);
        this.mNp2.setHintTextTypeface(p.f5325c);
        if (AMap.ENGLISH.equals(baseActivity.getResources().getConfiguration().locale.getLanguage())) {
            this.mNp1.setTextSizeSelected(c0.c(14.0f));
            this.mNp2.setTextSizeSelected(c0.c(14.0f));
        }
    }

    public SealPickerDialog a(int i, int i2) {
        if (i == 1) {
            z.a("PickerDialog", "TYPE_CSS_NONE");
            this.mNp1.setValue(i - 1);
            this.mNp2.a(d);
            if (i2 < d.length) {
                this.mNp2.setValue(i2);
            }
        } else if (i == 2) {
            z.a("PickerDialog", "TYPE_CSS_DIGITAL,normal");
            this.mNp1.setValue(i - 1);
            this.mNp2.a(e);
            if (i2 < e.length) {
                this.mNp2.setValue(i2);
            }
        } else if (i == 3) {
            z.a("PickerDialog", "TYPE_CSS_ANALOG");
            this.mNp1.setValue(i - 1);
            this.mNp2.a(f);
            if (i2 < f.length) {
                this.mNp2.setValue(i2);
            }
        }
        return this;
    }

    public SealPickerDialog b(@StringRes int i) {
        this.mTvTitle.setText(i);
        return this;
    }

    public SealPickerDialog b(@StringRes int i, b bVar) {
        this.mButtonPositive.setText(i);
        this.f6914b = bVar;
        return this;
    }

    public SealPickerDialog a(@StringRes int i, b bVar) {
        this.mButtonNegative.setText(i);
        this.f6915c = bVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i) {
        if (i == R.id.button_negative) {
            b bVar = this.f6915c;
            if (bVar != null) {
                bVar.a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
            }
            dismiss();
        } else if (i == R.id.button_positive) {
            b bVar2 = this.f6914b;
            if (bVar2 != null) {
                bVar2.a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
            }
            dismiss();
        }
    }
}
