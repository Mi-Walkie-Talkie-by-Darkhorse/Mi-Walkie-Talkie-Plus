package com.ifengyu.intercom.p216ui.login;

import android.annotation.SuppressLint;
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
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p205m.p207b.SlideVerifyDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.activity.UserImprovePlanActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.intercom.p216ui.widget.view.PasswordToggleEditText;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.CountDownTimer;
import com.ifengyu.library.utils.RegexUtils;
import com.ifengyu.library.utils.UIUtils;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.span.QMUITouchableSpan;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function3;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment */
/* loaded from: classes2.dex */
public class RegisterFragment extends BaseFragment {

    /* renamed from: A */
    private String f15423A;

    /* renamed from: B */
    private String f15424B;

    /* renamed from: C */
    private String f15425C;

    /* renamed from: D */
    private String f15426D;
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

    /* renamed from: z */
    private CountDownTimer f15427z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$a */
    /* loaded from: classes2.dex */
    public class C4662a extends ErrorConsumer {
        C4662a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("RegisterFragment", "sendSmsCode fail");
            RegisterFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$b */
    /* loaded from: classes2.dex */
    public class C4663b extends ErrorConsumer {
        C4663b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("RegisterFragment", "register fail");
            RegisterFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$c */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4664c implements View.OnClickListener {
        View$OnClickListenerC4664c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RegisterFragment.this.m9716P3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$d */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4665d implements View.OnClickListener {
        View$OnClickListenerC4665d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RegisterFragment.this.m9714R3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$e */
    /* loaded from: classes2.dex */
    public class C4666e implements TextWatcher {
        C4666e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            RegisterFragment.this.mBtnGetCode.setEnabled(editable.length() == 11 && editable.toString().startsWith("1") && (RegisterFragment.this.f15427z == null || RegisterFragment.this.f15427z.m8688c()));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$f */
    /* loaded from: classes2.dex */
    public class C4667f extends QMUITouchableSpan {
        C4667f(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UserImprovePlanActivity.start(RegisterFragment.this.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$g */
    /* loaded from: classes2.dex */
    public class C4668g extends QMUITouchableSpan {
        C4668g(RegisterFragment registerFragment, View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$h */
    /* loaded from: classes2.dex */
    public class C4669h extends QMUITouchableSpan {
        C4669h(RegisterFragment registerFragment, View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$i */
    /* loaded from: classes2.dex */
    public class C4670i extends CountDownTimer {
        C4670i(Long l, TimeUnit timeUnit) {
            super(l, timeUnit);
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: f */
        public void mo8685f() {
            RegisterFragment registerFragment = RegisterFragment.this;
            registerFragment.mBtnGetCode.setEnabled(registerFragment.mEtPhone.getText().length() == 11);
            RegisterFragment.this.mBtnGetCode.setText(R.string.login_get_verify_code_again);
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: g */
        public void mo8684g(long j) {
            RegisterFragment.this.mBtnGetCode.setText(UIUtils.m8602p(R.string.verify_code_countdown_text, String.valueOf(j)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$j */
    /* loaded from: classes2.dex */
    public class C4671j implements SlideVerifyDialogBuilder.InterfaceC4124c {
        C4671j() {
        }

        @Override // com.ifengyu.intercom.p205m.p207b.SlideVerifyDialogBuilder.InterfaceC4124c
        /* renamed from: a */
        public void mo9692a(QMUIDialog qMUIDialog, String str, String str2, String str3, String str4) {
            qMUIDialog.dismiss();
            RegisterFragment.this.f15423A = str;
            RegisterFragment.this.f15424B = str2;
            RegisterFragment.this.f15425C = str3;
            RegisterFragment.this.f15426D = str4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.RegisterFragment$k */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnDismissListenerC4672k implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC4672k() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (RegisterFragment.this.f15424B != null && RegisterFragment.this.f15425C != null) {
                RegisterFragment registerFragment = RegisterFragment.this;
                registerFragment.m9715Q3(registerFragment.f15424B, RegisterFragment.this.f15425C, RegisterFragment.this.f15423A, RegisterFragment.this.f15426D);
            }
            RegisterFragment.this.f15423A = null;
            RegisterFragment.this.f15424B = null;
            RegisterFragment.this.f15425C = null;
            RegisterFragment.this.f15426D = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ Boolean m9729C3(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) throws Exception {
        boolean z = false;
        boolean z2 = !TextUtils.isEmpty(charSequence) && charSequence.length() == 11 && this.mEtPhone.getText().toString().startsWith("1");
        boolean z3 = !TextUtils.isEmpty(charSequence2) && charSequence2.length() >= 8;
        boolean z4 = !TextUtils.isEmpty(charSequence3);
        if (z2 && z3 && z4) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m9727E3(Boolean bool) throws Exception {
        this.mBtnRegister.setEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F3 */
    public static /* synthetic */ void m9726F3(CompoundButton compoundButton, boolean z) {
        C4161y.m11054a("RegisterFragment", "improve checkbox checked: " + z);
        MiTalkClientUtil.m11178w0(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9724H3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m9722J3(UserInfo userInfo) throws Exception {
        C4161y.m11049f("RegisterFragment", "register success");
        m10304f3(UIUtils.m8603o(R.string.register_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.login.z
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                RegisterFragment.this.mo8048o2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public /* synthetic */ void m9720L3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M3 */
    public /* synthetic */ void m9718N3(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f("RegisterFragment", "sendSmsCode success");
        m10329C2();
        m9713S3();
    }

    /* renamed from: O3 */
    public static RegisterFragment m9717O3() {
        return new RegisterFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R3 */
    public void m9714R3() {
        if (getContext() == null) {
            return;
        }
        if (!MethodsUtils.m11274z(getContext())) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
            return;
        }
        SlideVerifyDialogBuilder slideVerifyDialogBuilder = new SlideVerifyDialogBuilder(getContext());
        slideVerifyDialogBuilder.m7282x(R.string.login_safe_verify);
        SlideVerifyDialogBuilder slideVerifyDialogBuilder2 = slideVerifyDialogBuilder;
        slideVerifyDialogBuilder2.m11407G(new C4671j());
        QMUIDialog m7296f = slideVerifyDialogBuilder2.m7296f(R.style.DialogTheme1);
        m7296f.setOnDismissListener(new DialogInterface$OnDismissListenerC4672k());
        m7296f.show();
    }

    /* renamed from: S3 */
    private void m9713S3() {
        this.mBtnGetCode.setEnabled(false);
        if (this.f15427z == null) {
            this.f15427z = new C4670i(60L, TimeUnit.SECONDS);
        }
        if (this.f15427z.m8688c()) {
            this.f15427z.m8683h();
        }
    }

    /* renamed from: s3 */
    private void m9700s3() {
        CountDownTimer countDownTimer = this.f15427z;
        if (countDownTimer != null) {
            countDownTimer.m8689b();
        }
    }

    /* renamed from: t3 */
    private SpannableString m9699t3() {
        String m8603o = UIUtils.m8603o(R.string.user_improve_plan);
        C4667f c4667f = new C4667f(this.mTvImprove, 0, 0, 0, 0);
        c4667f.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4667f.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        SpannableString spannableString = new SpannableString(m8603o);
        spannableString.setSpan(c4667f, 0, m8603o.length(), 17);
        return spannableString;
    }

    /* renamed from: u3 */
    private SpannableString m9698u3() {
        String m8603o = UIUtils.m8603o(R.string.lite_user_protocol_prefix);
        String m8603o2 = UIUtils.m8603o(R.string.user_protocol_click);
        String m8603o3 = UIUtils.m8603o(R.string.privacy_center_space);
        String m8603o4 = UIUtils.m8603o(R.string.privacy_agreement_click);
        String str = m8603o + m8603o2 + m8603o3 + m8603o4;
        SpannableString spannableString = new SpannableString(str);
        C4668g c4668g = new C4668g(this, this.mTvUserProtocol, 0, 0, 0, 0);
        c4668g.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4668g.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4668g, m8603o.length(), m8603o.length() + m8603o2.length(), 17);
        C4669h c4669h = new C4669h(this, this.mTvUserProtocol, 0, 0, 0, 0);
        c4669h.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4669h.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4669h, str.length() - m8603o4.length(), str.length(), 17);
        return spannableString;
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: v3 */
    private void m9697v3() {
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.login.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RegisterFragment.this.m9694y3(view);
            }
        });
        this.mTopBar.m7338p(R.string.login_register_account);
        this.mTvUserProtocol.setMovementMethodDefault();
        this.mTvUserProtocol.setText(m9698u3());
        this.mTvImprove.setMovementMethodDefault();
        this.mTvImprove.setText(m9699t3());
        this.mCbUserProtocol.setOnCheckedChangeListener(C4679b0.f15449a);
        this.mCbImprove.setOnCheckedChangeListener(C4681c0.f15451a);
        this.mBtnRegister.setOnClickListener(new View$OnClickListenerC4664c());
        this.mBtnGetCode.setOnClickListener(new View$OnClickListenerC4665d());
        this.mEtPhone.addTextChangedListener(new C4666e());
        this.mEtPhone.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
        this.mEtPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.mBtnGetCode.setEnabled(this.mEtPhone.getText().length() == 11);
        Observable.combineLatest(RxTextView.textChanges(this.mEtPhone), RxTextView.textChanges(this.mEtPassword), RxTextView.textChanges(this.mEtVerifyCode), new Function3() { // from class: com.ifengyu.intercom.ui.login.u
            @Override // io.reactivex.functions.Function3
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return RegisterFragment.this.m9729C3((CharSequence) obj, (CharSequence) obj2, (CharSequence) obj3);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.x
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RegisterFragment.this.m9727E3((Boolean) obj);
            }
        });
        this.mCbImprove.setOnCheckedChangeListener(C4716v.f15487a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x3 */
    public /* synthetic */ void m9694y3(View view) {
        mo8048o2();
    }

    /* renamed from: P3 */
    public void m9716P3() {
        if (!this.mCbUserProtocol.isChecked()) {
            UIUtils.m8593y(R.string.please_read_user_agreement);
            return;
        }
        String obj = this.mEtPhone.getText().toString();
        String obj2 = this.mEtPassword.getText().toString();
        String obj3 = this.mEtVerifyCode.getText().toString();
        if (obj2.length() > 16) {
            UIUtils.m8592z(UIUtils.m8603o(R.string.login_setup_password_error));
        } else if (!RegexUtils.m8632c(obj2)) {
            UIUtils.m8592z(UIUtils.m8603o(R.string.login_setup_password_error));
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put("phone", obj);
            hashMap.put("password", obj2);
            hashMap.put("code", obj3);
            ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11380b(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.a0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj4) {
                    RegisterFragment.this.m9724H3((Disposable) obj4);
                }
            }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.w
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj4) {
                    RegisterFragment.this.m9722J3((UserInfo) obj4);
                }
            }, new C4663b());
        }
    }

    /* renamed from: Q3 */
    public void m9715Q3(String str, String str2, String str3, String str4) {
        String obj = this.mEtPhone.getText().toString();
        if (!RegexUtils.m8633b(obj)) {
            UIUtils.m8593y(R.string.login_error_invalid_phone_number);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("codeType", 1);
        hashMap.put("phone", obj);
        hashMap.put("scene", str4);
        hashMap.put("sessionId", str);
        hashMap.put("sig", str2);
        hashMap.put("token", str3);
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11378d(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.d0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj2) {
                RegisterFragment.this.m9720L3((Disposable) obj2);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.y
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj2) {
                RegisterFragment.this.m9718N3((NewHttpResult) obj2);
            }
        }, new C4662a());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_register, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9697v3();
        return inflate;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m9700s3();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mCbImprove.setChecked(MiTalkClientUtil.m11220b0());
    }
}
