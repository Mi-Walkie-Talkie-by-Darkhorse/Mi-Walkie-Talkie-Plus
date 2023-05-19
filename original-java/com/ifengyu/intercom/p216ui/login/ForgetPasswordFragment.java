package com.ifengyu.intercom.p216ui.login;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p207b.SlideVerifyDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.CountDownTimer;
import com.ifengyu.library.utils.RegexUtils;
import com.ifengyu.library.utils.UIUtils;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment */
/* loaded from: classes2.dex */
public class ForgetPasswordFragment extends BaseFragment {

    /* renamed from: A */
    private String f15393A;

    /* renamed from: B */
    private String f15394B;

    /* renamed from: C */
    private String f15395C;

    /* renamed from: D */
    private String f15396D;
    @BindView(R.id.btn_action)
    AppCompatButton mBtnAction;
    @BindView(R.id.btn_get_code)
    AppCompatButton mBtnGetCode;
    @BindView(R.id.et_phone)
    FixedEditText mEtPhone;
    @BindView(R.id.et_verify_code)
    AppCompatEditText mEtVerifyCode;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* renamed from: z */
    private CountDownTimer f15397z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4644a implements View.OnClickListener {
        View$OnClickListenerC4644a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForgetPasswordFragment.this.m9791L3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$b */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4645b implements View.OnClickListener {
        View$OnClickListenerC4645b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForgetPasswordFragment.this.m9789N3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$c */
    /* loaded from: classes2.dex */
    public class C4646c implements TextWatcher {
        C4646c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ForgetPasswordFragment.this.mBtnGetCode.setEnabled(editable.length() == 11 && editable.toString().startsWith("1") && (ForgetPasswordFragment.this.f15397z == null || ForgetPasswordFragment.this.f15397z.m8688c()));
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$d */
    /* loaded from: classes2.dex */
    public class C4647d implements SlideVerifyDialogBuilder.InterfaceC4124c {
        C4647d() {
        }

        @Override // com.ifengyu.intercom.p205m.p207b.SlideVerifyDialogBuilder.InterfaceC4124c
        /* renamed from: a */
        public void mo9692a(QMUIDialog qMUIDialog, String str, String str2, String str3, String str4) {
            qMUIDialog.dismiss();
            ForgetPasswordFragment.this.f15393A = str;
            ForgetPasswordFragment.this.f15394B = str2;
            ForgetPasswordFragment.this.f15395C = str3;
            ForgetPasswordFragment.this.f15396D = str4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$e */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnDismissListenerC4648e implements DialogInterface.OnDismissListener {
        DialogInterface$OnDismissListenerC4648e() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (ForgetPasswordFragment.this.f15394B != null && ForgetPasswordFragment.this.f15395C != null) {
                ForgetPasswordFragment forgetPasswordFragment = ForgetPasswordFragment.this;
                forgetPasswordFragment.m9790M3(forgetPasswordFragment.f15394B, ForgetPasswordFragment.this.f15395C, ForgetPasswordFragment.this.f15393A, ForgetPasswordFragment.this.f15396D);
            }
            ForgetPasswordFragment.this.f15393A = null;
            ForgetPasswordFragment.this.f15394B = null;
            ForgetPasswordFragment.this.f15395C = null;
            ForgetPasswordFragment.this.f15396D = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$f */
    /* loaded from: classes2.dex */
    public class C4649f extends ErrorConsumer {
        C4649f() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) ForgetPasswordFragment.this).f15047y, "sendSmsCode fail");
            ForgetPasswordFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$g */
    /* loaded from: classes2.dex */
    public class C4650g extends ErrorConsumer {
        C4650g() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) ForgetPasswordFragment.this).f15047y, "checkSmsCode fail");
            ForgetPasswordFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.ForgetPasswordFragment$h */
    /* loaded from: classes2.dex */
    public class C4651h extends CountDownTimer {
        C4651h(Long l, TimeUnit timeUnit) {
            super(l, timeUnit);
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: f */
        public void mo8685f() {
            ForgetPasswordFragment forgetPasswordFragment = ForgetPasswordFragment.this;
            forgetPasswordFragment.mBtnGetCode.setEnabled(forgetPasswordFragment.mEtPhone.getText().length() == 11);
            ForgetPasswordFragment.this.mBtnGetCode.setText(R.string.login_get_verify_code_again);
        }

        @Override // com.ifengyu.library.utils.CountDownTimer
        /* renamed from: g */
        public void mo8684g(long j) {
            ForgetPasswordFragment.this.mBtnGetCode.setText(UIUtils.m8602p(R.string.verify_code_countdown_text, String.valueOf(j)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m9801B3(Boolean bool) throws Exception {
        this.mBtnAction.setEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m9799D3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m9797F3(String str, String str2, NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15047y, "checkSmsCode success");
        m10329C2();
        m8041v2(ResetPasswordFragment.m9675w3(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9795H3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m9793J3(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15047y, "sendSmsCode success");
        m10329C2();
        m9788O3();
    }

    /* renamed from: K3 */
    public static ForgetPasswordFragment m9792K3() {
        return new ForgetPasswordFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N3 */
    public void m9789N3() {
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
        slideVerifyDialogBuilder2.m11407G(new C4647d());
        QMUIDialog m7296f = slideVerifyDialogBuilder2.m7296f(R.style.DialogTheme1);
        m7296f.setOnDismissListener(new DialogInterface$OnDismissListenerC4648e());
        m7296f.show();
    }

    /* renamed from: O3 */
    private void m9788O3() {
        this.mBtnGetCode.setEnabled(false);
        if (this.f15397z == null) {
            this.f15397z = new C4651h(60L, TimeUnit.SECONDS);
        }
        if (this.f15397z.m8688c()) {
            this.f15397z.m8683h();
        }
    }

    /* renamed from: u3 */
    private void m9773u3() {
        CountDownTimer countDownTimer = this.f15397z;
        if (countDownTimer != null) {
            countDownTimer.m8689b();
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: v3 */
    private void m9772v3() {
        this.mTopBar.m7338p(R.string.forget_pwd_find_pwd);
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.login.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForgetPasswordFragment.this.m9770x3(view);
            }
        });
        this.mBtnAction.setOnClickListener(new View$OnClickListenerC4644a());
        this.mBtnGetCode.setOnClickListener(new View$OnClickListenerC4645b());
        boolean z = true;
        this.mEtPhone.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
        this.mEtPhone.addTextChangedListener(new C4646c());
        String obj = this.mEtPhone.getText().toString();
        this.mBtnGetCode.setEnabled(obj.length() == 11);
        this.mBtnAction.setEnabled((TextUtils.isEmpty(obj) || obj.length() != 11 || !obj.startsWith("1") || TextUtils.isEmpty(this.mEtVerifyCode.getText())) ? false : false);
        Observable.combineLatest(RxTextView.textChanges(this.mEtPhone).skip(1L), RxTextView.textChanges(this.mEtVerifyCode).skip(1L), new BiFunction() { // from class: com.ifengyu.intercom.ui.login.g
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj2, Object obj3) {
                return ForgetPasswordFragment.this.m9768z3((CharSequence) obj2, (CharSequence) obj3);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj2) {
                ForgetPasswordFragment.this.m9801B3((Boolean) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m9770x3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ Boolean m9768z3(CharSequence charSequence, CharSequence charSequence2) throws Exception {
        boolean z = false;
        boolean z2 = !TextUtils.isEmpty(charSequence) && charSequence.length() == 11 && this.mEtPhone.getText().toString().startsWith("1");
        boolean z3 = !TextUtils.isEmpty(charSequence2);
        if (z2 && z3) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: L3 */
    public void m9791L3() {
        final String obj = this.mEtPhone.getText().toString();
        final String obj2 = this.mEtVerifyCode.getText().toString();
        HashMap hashMap = new HashMap();
        hashMap.put("codeType", 4);
        hashMap.put("code", obj2);
        hashMap.put("phone", obj);
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11372j(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.e
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj3) {
                ForgetPasswordFragment.this.m9799D3((Disposable) obj3);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj3) {
                ForgetPasswordFragment.this.m9797F3(obj, obj2, (NewHttpResult) obj3);
            }
        }, new C4650g());
    }

    /* renamed from: M3 */
    public void m9790M3(String str, String str2, String str3, String str4) {
        String obj = this.mEtPhone.getText().toString();
        if (!RegexUtils.m8633b(obj)) {
            UIUtils.m8593y(R.string.login_error_invalid_phone_number);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("codeType", 4);
        hashMap.put("phone", obj);
        hashMap.put("scene", str4);
        hashMap.put("sessionId", str);
        hashMap.put("sig", str2);
        hashMap.put("token", str3);
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11378d(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj2) {
                ForgetPasswordFragment.this.m9795H3((Disposable) obj2);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.f
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj2) {
                ForgetPasswordFragment.this.m9793J3((NewHttpResult) obj2);
            }
        }, new C4649f());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_forget_password, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9772v3();
        return inflate;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m9773u3();
    }
}
