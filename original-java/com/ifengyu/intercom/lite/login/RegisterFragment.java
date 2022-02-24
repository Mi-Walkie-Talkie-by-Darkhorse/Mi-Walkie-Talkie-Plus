package com.ifengyu.intercom.lite.login;

import android.content.DialogInterface;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatEditText;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.HttpNormalResult;
import com.ifengyu.intercom.bean.LoginResult;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.x;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.c.b.g;
import com.ifengyu.intercom.ui.activity.UserImprovePlanActivity;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.widget.view.FixedEditText;
import com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText;
import com.ifengyu.library.a.m;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function3;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class RegisterFragment extends com.ifengyu.intercom.lite.base.e {
    private String A;
    private String B;
    private String C;
    private String D;
    @BindView(R.id.btn_get_code)
    QMUIRoundButton mBtnGetCode;
    @BindView(R.id.btn_register)
    AppCompatButton mBtnRegister;
    @BindView(R.id.cb_improve)
    AppCompatCheckBox mCbImprove;
    @BindView(R.id.cb_user_protocol)
    AppCompatCheckBox mCbUserProtocol;
    @BindView(R.id.et_password)
    PasswordToggleEditText mEtPassword;
    @BindView(R.id.et_phone)
    FixedEditText mEtPhone;
    @BindView(R.id.et_verify_code)
    AppCompatEditText mEtVerifyCode;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_improve)
    QMUISpanTouchFixTextView mTvImprove;
    @BindView(R.id.tv_user_protocol)
    QMUISpanTouchFixTextView mTvUserProtocol;
    private com.ifengyu.library.a.c z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends com.ifengyu.intercom.g.d.f {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            super.a(request, i);
            RegisterFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            RegisterFragment.this.x();
            RegisterFragment.this.c((int) R.string.network_exception);
        }

        public void a(LoginResult loginResult, int i) {
            RegisterFragment.this.x();
            if (loginResult == null) {
                RegisterFragment.this.c((int) R.string.network_exception);
                return;
            }
            int i2 = loginResult.errno;
            if (i2 == 0) {
                de.greenrobot.event.c.b().a(new com.ifengyu.intercom.eventbus.b(1));
                RegisterFragment.this.t();
                return;
            }
            RegisterFragment.this.c(x.a(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QMUITipDialog f5676a;

        b(RegisterFragment registerFragment, QMUITipDialog qMUITipDialog) {
            this.f5676a = qMUITipDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5676a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RegisterFragment.this.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RegisterFragment.this.G();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements TextWatcher {
        e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            RegisterFragment.this.mBtnGetCode.setEnabled(editable.length() == 11 && editable.toString().startsWith("1") && (RegisterFragment.this.z == null || RegisterFragment.this.z.b()));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends com.qmuiteam.qmui.span.d {
        f(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserImprovePlanActivity.start(RegisterFragment.this.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends com.qmuiteam.qmui.span.d {
        g(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            RegisterFragment.this.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h extends com.ifengyu.library.a.c {
        h(Long l, TimeUnit timeUnit) {
            super(l, timeUnit);
        }

        @Override // com.ifengyu.library.a.c
        public void a(long j) {
            RegisterFragment.this.mBtnGetCode.setText(m.a((int) R.string.verify_code_countdown_text, String.valueOf(j)));
        }

        @Override // com.ifengyu.library.a.c
        public void c() {
            RegisterFragment registerFragment = RegisterFragment.this;
            registerFragment.mBtnGetCode.setEnabled(registerFragment.mEtPhone.getText().length() == 11);
            RegisterFragment.this.mBtnGetCode.setText(R.string.login_get_verify_code_again);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements g.c {
        i() {
        }

        @Override // com.ifengyu.intercom.lite.c.b.g.c
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, String str, String str2, String str3, String str4) {
            bVar.dismiss();
            RegisterFragment.this.A = str;
            RegisterFragment.this.B = str2;
            RegisterFragment.this.C = str3;
            RegisterFragment.this.D = str4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements DialogInterface.OnDismissListener {
        j() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (!(RegisterFragment.this.B == null || RegisterFragment.this.C == null)) {
                RegisterFragment registerFragment = RegisterFragment.this;
                registerFragment.a(registerFragment.B, RegisterFragment.this.C, RegisterFragment.this.A, RegisterFragment.this.D);
            }
            RegisterFragment.this.A = null;
            RegisterFragment.this.B = null;
            RegisterFragment.this.C = null;
            RegisterFragment.this.D = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class k extends com.ifengyu.intercom.g.d.e {
        k() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            super.a(request, i);
            RegisterFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            z.a("onError", exc.toString());
            RegisterFragment.this.x();
            RegisterFragment.this.c((int) R.string.network_exception);
        }

        public void a(HttpNormalResult httpNormalResult, int i) {
            RegisterFragment.this.x();
            if (httpNormalResult == null) {
                RegisterFragment.this.c((int) R.string.network_exception);
                return;
            }
            int i2 = httpNormalResult.errno;
            if (i2 == 0) {
                RegisterFragment.this.H();
            } else {
                RegisterFragment.this.c(x.a(i2));
            }
        }
    }

    private void B() {
        com.ifengyu.library.a.c cVar = this.z;
        if (cVar != null) {
            cVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        UserProtocolActivity.a(getContext(), 0);
    }

    private SpannableString D() {
        String b2 = m.b((int) R.string.lite_user_improve);
        f fVar = new f(this.mTvImprove, 0, 0, 0, 0);
        fVar.a(m.a((int) R.color.lite_colorAccent));
        fVar.b(m.a((int) R.color.lite_colorAccent50));
        fVar.b(true);
        SpannableString spannableString = new SpannableString(b2);
        spannableString.setSpan(fVar, 0, b2.length(), 17);
        return spannableString;
    }

    private SpannableString E() {
        String b2 = m.b((int) R.string.lite_user_protocol_prefix);
        String str = b2 + m.b((int) R.string.lite_user_protocol);
        SpannableString spannableString = new SpannableString(str);
        g gVar = new g(this.mTvUserProtocol, 0, 0, 0, 0);
        gVar.a(m.a((int) R.color.lite_colorAccent));
        gVar.b(m.a((int) R.color.lite_colorAccent50));
        gVar.b(true);
        spannableString.setSpan(gVar, b2.length(), str.length(), 17);
        return spannableString;
    }

    private void F() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.login.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RegisterFragment.this.b(view);
            }
        });
        this.mTopBar.f(R.string.login_register_account);
        this.mTvUserProtocol.setMovementMethodDefault();
        this.mTvUserProtocol.setText(E());
        this.mTvImprove.setMovementMethodDefault();
        this.mTvImprove.setText(D());
        this.mCbUserProtocol.setOnCheckedChangeListener(r.f5704a);
        this.mCbImprove.setOnCheckedChangeListener(p.f5702a);
        this.mBtnRegister.setOnClickListener(new c());
        this.mBtnGetCode.setOnClickListener(new d());
        this.mEtPhone.addTextChangedListener(new e());
        boolean z = true;
        this.mEtPhone.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
        this.mEtPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        QMUIRoundButton qMUIRoundButton = this.mBtnGetCode;
        if (this.mEtPhone.getText().length() != 11) {
            z = false;
        }
        qMUIRoundButton.setEnabled(z);
        Observable.combineLatest(RxTextView.textChanges(this.mEtPhone), RxTextView.textChanges(this.mEtPassword), RxTextView.textChanges(this.mEtVerifyCode), new Function3() { // from class: com.ifengyu.intercom.lite.login.o
            @Override // io.reactivex.functions.Function3
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return RegisterFragment.this.a((CharSequence) obj, (CharSequence) obj2, (CharSequence) obj3);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.login.s
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RegisterFragment.this.a((Boolean) obj);
            }
        });
        this.mCbImprove.setOnCheckedChangeListener(q.f5703a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        com.ifengyu.intercom.lite.c.b.g gVar = new com.ifengyu.intercom.lite.c.b.g(getContext());
        gVar.a("安全验证");
        com.ifengyu.intercom.lite.c.b.g gVar2 = gVar;
        gVar2.a(new i());
        com.qmuiteam.qmui.widget.dialog.b a2 = gVar2.a(R.style.DialogTheme2);
        a2.setOnDismissListener(new j());
        a2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.mBtnGetCode.setEnabled(false);
        if (this.z == null) {
            this.z = new h(60L, TimeUnit.SECONDS);
        }
        if (this.z.b()) {
            this.z.d();
        }
    }

    public static RegisterFragment newInstance() {
        return new RegisterFragment();
    }

    public void A() {
        if (!this.mCbUserProtocol.isChecked()) {
            m.d(R.string.please_read_user_agreement);
            return;
        }
        String obj = this.mEtPhone.getText().toString();
        String obj2 = this.mEtPassword.getText().toString();
        String obj3 = this.mEtVerifyCode.getText().toString();
        if (obj2.length() > 16) {
            m.a(m.b((int) R.string.login_setup_password_error));
        } else if (!com.ifengyu.library.a.i.b(obj2)) {
            m.a(m.b((int) R.string.login_setup_password_error));
        } else {
            com.ifengyu.intercom.g.a.b(obj, obj2, obj3, new a());
        }
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        B();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mCbImprove.setChecked(d0.b0());
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_register, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        F();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(CompoundButton compoundButton, boolean z) {
        z.a("RegisterFragment", "improve checkbox checked: " + z);
        d0.h(z);
    }

    public /* synthetic */ void b(View view) {
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.a(3);
        builder.a(m.b(i2));
        QMUITipDialog a2 = builder.a(false);
        a2.show();
        m.a(new b(this, a2), 500L);
    }

    public /* synthetic */ Boolean a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) throws Exception {
        boolean z = false;
        boolean z2 = !TextUtils.isEmpty(charSequence) && charSequence.length() == 11 && this.mEtPhone.getText().toString().startsWith("1");
        boolean z3 = !TextUtils.isEmpty(charSequence2) && charSequence2.length() >= 8;
        boolean z4 = !TextUtils.isEmpty(charSequence3);
        if (z2 && z3 && z4) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public /* synthetic */ void a(Boolean bool) throws Exception {
        this.mBtnRegister.setEnabled(bool.booleanValue());
    }

    public void a(String str, String str2, String str3, String str4) {
        String obj = this.mEtPhone.getText().toString();
        if (!com.ifengyu.library.a.i.a(obj)) {
            m.d(R.string.login_error_invalid_phone_number);
        } else {
            com.ifengyu.intercom.g.a.a(obj, 1, str, str2, str3, str4, new k());
        }
    }
}
