package com.ifengyu.intercom.p216ui.widget.dialog;

import android.content.Context;
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
import com.ifengyu.intercom.p216ui.widget.view.NumberPickerView;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog */
/* loaded from: classes2.dex */
public class SharkPickerDialog extends BaseDialog {

    /* renamed from: d */
    public static final String[] f15858d = UIUtils.m8601q(R.array.shark_analog_tone);

    /* renamed from: e */
    public static final String[] f15859e = UIUtils.m8601q(R.array.shark_digital_tone_normal);

    /* renamed from: f */
    public static final String[] f15860f = UIUtils.m8601q(R.array.shark_digital_tone_inversion);

    /* renamed from: a */
    private final String[] f15861a;

    /* renamed from: b */
    private InterfaceC4895b f15862b;

    /* renamed from: c */
    private InterfaceC4895b f15863c;
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

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog$a */
    /* loaded from: classes2.dex */
    class C4894a implements NumberPickerView.InterfaceC4954d {
        C4894a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.NumberPickerView.InterfaceC4954d
        /* renamed from: a */
        public void mo8770a(NumberPickerView numberPickerView, int i, int i2) {
            if (i2 == 0) {
                SharkPickerDialog.this.mNp2.m8816P(SharkPickerDialog.f15858d);
            } else if (i2 == 1) {
                SharkPickerDialog.this.mNp2.m8816P(SharkPickerDialog.f15859e);
            } else if (i2 != 2) {
            } else {
                SharkPickerDialog.this.mNp2.m8816P(SharkPickerDialog.f15860f);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC4895b {
        /* renamed from: a */
        void mo9046a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2);
    }

    public SharkPickerDialog(Context context) {
        super(context);
        String[] m8601q = UIUtils.m8601q(R.array.sub_code_type);
        this.f15861a = m8601q;
        setContentView(R.layout.dialog_relay_number_picker);
        ButterKnife.bind(this);
        m9037g(context);
        m9040b(this.mButtonNegative, this.mButtonPositive);
        setCanceledOnTouchOutside(true);
        this.mNp1.setOnValueChangedListener(new C4894a());
        this.mNp1.m8816P(m8601q);
        NumberPickerView numberPickerView = this.mNp1;
        Typeface typeface = AppConstants.f13907a;
        numberPickerView.setContentTextTypeface(typeface);
        this.mNp1.setHintTextTypeface(typeface);
        this.mNp1.setValue(0);
        this.mNp2.m8816P(f15858d);
        this.mNp2.setContentTextTypeface(typeface);
        this.mNp2.setHintTextTypeface(typeface);
        if (AMap.ENGLISH.equals(context.getResources().getConfiguration().locale.getLanguage())) {
            this.mNp1.setTextSizeSelected(MethodsUtils.m11301I(14.0f));
            this.mNp2.setTextSizeSelected(MethodsUtils.m11301I(14.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        if (i == R.id.button_negative) {
            InterfaceC4895b interfaceC4895b = this.f15863c;
            if (interfaceC4895b != null) {
                interfaceC4895b.mo9046a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
            }
            dismiss();
        } else if (i != R.id.button_positive) {
        } else {
            InterfaceC4895b interfaceC4895b2 = this.f15862b;
            if (interfaceC4895b2 != null) {
                interfaceC4895b2.mo9046a(this, this.mNp1.getValue(), this.mNp1.getContentByCurrValue(), this.mNp2.getValue(), this.mNp2.getContentByCurrValue());
            }
            dismiss();
        }
    }

    /* renamed from: h */
    public SharkPickerDialog m9050h(@StringRes int i) {
        this.mTvTitle.setText(i);
        return this;
    }

    /* renamed from: i */
    public SharkPickerDialog m9049i(@StringRes int i, InterfaceC4895b interfaceC4895b) {
        this.mButtonNegative.setText(i);
        this.f15863c = interfaceC4895b;
        return this;
    }

    /* renamed from: j */
    public SharkPickerDialog m9048j(@StringRes int i, InterfaceC4895b interfaceC4895b) {
        this.mButtonPositive.setText(i);
        this.f15862b = interfaceC4895b;
        return this;
    }

    /* renamed from: k */
    public SharkPickerDialog m9047k(int i, int i2) {
        if (i == 1) {
            C4161y.m11054a("PickerDialog", "TYPE_CSS_NONE");
            this.mNp1.setValue(i - 1);
            NumberPickerView numberPickerView = this.mNp2;
            String[] strArr = f15858d;
            numberPickerView.m8816P(strArr);
            if (i2 < strArr.length) {
                this.mNp2.setValue(i2);
            }
        } else if (i == 2) {
            C4161y.m11054a("PickerDialog", "TYPE_CSS_DIGITAL,normal");
            this.mNp1.setValue(i - 1);
            NumberPickerView numberPickerView2 = this.mNp2;
            String[] strArr2 = f15859e;
            numberPickerView2.m8816P(strArr2);
            if (i2 < strArr2.length) {
                this.mNp2.setValue(i2);
            }
        } else if (i == 3) {
            C4161y.m11054a("PickerDialog", "TYPE_CSS_ANALOG");
            this.mNp1.setValue(i - 1);
            NumberPickerView numberPickerView3 = this.mNp2;
            String[] strArr3 = f15860f;
            numberPickerView3.m8816P(strArr3);
            if (i2 < strArr3.length) {
                this.mNp2.setValue(i2);
            }
        }
        return this;
    }
}
