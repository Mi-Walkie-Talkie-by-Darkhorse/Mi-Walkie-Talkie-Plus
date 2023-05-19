package com.ifengyu.intercom.p216ui.widget.dialog;

import android.graphics.Typeface;
import android.widget.TextView;
import androidx.annotation.StringRes;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.AMap;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.view.NumberPickerView;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog */
/* loaded from: classes2.dex */
public class SealPickerDialog extends BaseDialog {

    /* renamed from: d */
    public static final String[] f15850d = UIUtils.m8601q(R.array.seal_analog_tone);

    /* renamed from: e */
    public static final String[] f15851e = PickerDialog.f15843e;

    /* renamed from: f */
    public static final String[] f15852f = PickerDialog.f15844f;

    /* renamed from: a */
    private final String[] f15853a;

    /* renamed from: b */
    private InterfaceC4893b f15854b;

    /* renamed from: c */
    private InterfaceC4893b f15855c;
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

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog$a */
    /* loaded from: classes2.dex */
    class C4892a implements NumberPickerView.InterfaceC4954d {
        C4892a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.NumberPickerView.InterfaceC4954d
        /* renamed from: a */
        public void mo8770a(NumberPickerView numberPickerView, int i, int i2) {
            if (i2 == 0) {
                SealPickerDialog.this.mNp2.m8816P(SealPickerDialog.f15850d);
            } else if (i2 == 1) {
                SealPickerDialog.this.mNp2.m8816P(SealPickerDialog.f15851e);
            } else if (i2 != 2) {
            } else {
                SealPickerDialog.this.mNp2.m8816P(SealPickerDialog.f15852f);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4893b {
        /* renamed from: a */
        void mo9051a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2);
    }

    public SealPickerDialog(BaseActivity1 baseActivity1) {
        super(baseActivity1);
        String[] m8601q = UIUtils.m8601q(R.array.sub_code_type);
        this.f15853a = m8601q;
        setContentView(R.layout.dialog_relay_number_picker);
        ButterKnife.bind(this);
        m9037g(baseActivity1);
        m9040b(this.mButtonNegative, this.mButtonPositive);
        setCanceledOnTouchOutside(true);
        this.mNp1.setOnValueChangedListener(new C4892a());
        this.mNp1.m8816P(m8601q);
        NumberPickerView numberPickerView = this.mNp1;
        Typeface typeface = AppConstants.f13907a;
        numberPickerView.setContentTextTypeface(typeface);
        this.mNp1.setHintTextTypeface(typeface);
        this.mNp1.setValue(0);
        this.mNp2.m8816P(f15850d);
        this.mNp2.setContentTextTypeface(typeface);
        this.mNp2.setHintTextTypeface(typeface);
        if (AMap.ENGLISH.equals(baseActivity1.getResources().getConfiguration().locale.getLanguage())) {
            this.mNp1.setTextSizeSelected(MethodsUtils.m11301I(14.0f));
            this.mNp2.setTextSizeSelected(MethodsUtils.m11301I(14.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        if (i == R.id.button_negative) {
            InterfaceC4893b interfaceC4893b = this.f15855c;
            if (interfaceC4893b != null) {
                interfaceC4893b.mo9051a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
            }
            dismiss();
        } else if (i != R.id.button_positive) {
        } else {
            InterfaceC4893b interfaceC4893b2 = this.f15854b;
            if (interfaceC4893b2 != null) {
                interfaceC4893b2.mo9051a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
            }
            dismiss();
        }
    }

    /* renamed from: h */
    public SealPickerDialog m9055h(@StringRes int i) {
        this.mTvTitle.setText(i);
        return this;
    }

    /* renamed from: i */
    public SealPickerDialog m9054i(@StringRes int i, InterfaceC4893b interfaceC4893b) {
        this.mButtonNegative.setText(i);
        this.f15855c = interfaceC4893b;
        return this;
    }

    /* renamed from: j */
    public SealPickerDialog m9053j(@StringRes int i, InterfaceC4893b interfaceC4893b) {
        this.mButtonPositive.setText(i);
        this.f15854b = interfaceC4893b;
        return this;
    }

    /* renamed from: k */
    public SealPickerDialog m9052k(int i, int i2) {
        if (i == 1) {
            C4161y.m11054a("PickerDialog", "TYPE_CSS_NONE");
            this.mNp1.setValue(i - 1);
            NumberPickerView numberPickerView = this.mNp2;
            String[] strArr = f15850d;
            numberPickerView.m8816P(strArr);
            if (i2 < strArr.length) {
                this.mNp2.setValue(i2);
            }
        } else if (i == 2) {
            C4161y.m11054a("PickerDialog", "TYPE_CSS_DIGITAL,normal");
            this.mNp1.setValue(i - 1);
            NumberPickerView numberPickerView2 = this.mNp2;
            String[] strArr2 = f15851e;
            numberPickerView2.m8816P(strArr2);
            if (i2 < strArr2.length) {
                this.mNp2.setValue(i2);
            }
        } else if (i == 3) {
            C4161y.m11054a("PickerDialog", "TYPE_CSS_ANALOG");
            this.mNp1.setValue(i - 1);
            NumberPickerView numberPickerView3 = this.mNp2;
            String[] strArr3 = f15852f;
            numberPickerView3.m8816P(strArr3);
            if (i2 < strArr3.length) {
                this.mNp2.setValue(i2);
            }
        }
        return this;
    }
}
