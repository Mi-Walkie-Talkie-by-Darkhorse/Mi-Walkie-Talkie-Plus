package com.ifengyu.intercom.lite.login;

import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.LoginResult;
import com.ifengyu.intercom.i.b0;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.l0;
import com.ifengyu.intercom.i.r;
import com.ifengyu.intercom.i.x;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.enums.LoginTypeEnum;
import com.ifengyu.intercom.lite.http.exception.ApiException;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.ConnectDeviceActivity;
import com.ifengyu.intercom.ui.activity.CustomizedAuthorizedActivity;
import com.ifengyu.intercom.ui.activity.UserImprovePlanActivity;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.widget.view.FixedEditText;
import com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText;
import com.ifengyu.intercom.wxapi.WXEntryActivity;
import com.ifengyu.library.a.m;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.alpha.QMUIAlphaTextView;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import com.tencent.open.SocialConstants;
import com.umeng.analytics.MobclickAgent;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import com.xiaomi.account.openauth.XiaomiOAuthorize;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.HashMap;
import okhttp3.Call;
import okhttp3.Request;

/* loaded from: classes2.dex */
public class LoginFragment extends com.ifengyu.intercom.lite.base.e {
    @BindView(R.id.btn_forget)
    QMUIAlphaTextView mBtnForget;
    @BindView(R.id.btn_login)
    QMUIRoundButton mBtnLogin;
    @BindView(R.id.btn_login_weixin)
    QMUIAlphaImageButton mBtnLoginWeixin;
    @BindView(R.id.btn_login_xiaomi)
    QMUIAlphaImageButton mBtnLoginXiaomi;
    @BindView(R.id.btn_register)
    QMUIAlphaTextView mBtnRegister;
    @BindView(R.id.cb_improve)
    AppCompatCheckBox mCbImprove;
    @BindView(R.id.cb_user_protocol)
    AppCompatCheckBox mCbUserProtocol;
    @BindView(R.id.et_password)
    PasswordToggleEditText mEtPassword;
    @BindView(R.id.et_phone)
    FixedEditText mEtPhone;
    @BindView(R.id.tv_improve)
    QMUISpanTouchFixTextView mTvImprove;
    @BindView(R.id.tv_user_protocol)
    QMUISpanTouchFixTextView mTvUserProtocol;
    private final i z = new i(this, null);
    private Function<XiaomiOAuthResults, String> A = k.f5697a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends com.qmuiteam.qmui.span.d {
        a(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserImprovePlanActivity.start(LoginFragment.this.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends com.qmuiteam.qmui.span.d {
        b(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            LoginFragment.this.B();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends com.ifengyu.intercom.g.d.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LoginTypeEnum f5660b;

        c(LoginTypeEnum loginTypeEnum) {
            this.f5660b = loginTypeEnum;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            super.a(request, i);
            LoginFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            z.b("LoginFragment", "onError:" + exc.getMessage());
            LoginFragment.this.A();
        }

        public void a(LoginResult loginResult, int i) {
            if (loginResult == null) {
                LoginFragment.this.A();
                return;
            }
            int i2 = loginResult.errno;
            if (i2 == 0) {
                MobclickAgent.onProfileSignIn(this.f5660b.name(), loginResult.data.userid);
                HashMap hashMap = new HashMap();
                hashMap.put("userId", loginResult.data.userid);
                hashMap.put("nickname", loginResult.data.nickname);
                Context context = LoginFragment.this.getContext();
                MobclickAgent.onEventObject(context, "Login_" + this.f5660b.name(), hashMap);
                d0.R().edit().putInt("user_login_type", this.f5660b.a().intValue()).apply();
                LoginFragment.this.F();
                return;
            }
            LoginFragment.this.c(x.a(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoginFragment.this.x();
            Bundle extras = LoginFragment.this.getActivity().getIntent().getExtras();
            if (extras == null || TextUtils.isEmpty(extras.getString(SocialConstants.PARAM_URL))) {
                Intent intent = new Intent(LoginFragment.this.getContext(), ConnectDeviceActivity.class);
                intent.setAction("com.ifengyu.intercom.FROM_LOGIN");
                LoginFragment.this.startActivity(intent);
                LoginFragment.this.getActivity().finish();
                return;
            }
            Intent intent2 = new Intent(LoginFragment.this.getContext(), WebViewActivity.class);
            intent2.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
            intent2.putExtras(extras);
            LoginFragment.this.getContext().startActivities(new Intent[]{new Intent(LoginFragment.this.getContext(), MainActivity.class), intent2});
            LoginFragment.this.getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements Runnable {
        e(LoginFragment loginFragment) {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.a(MiTalkiApp.b(), "map_style.data", m.c().getExternalFilesDir(null).getAbsolutePath() + "/map/style", "map_style.data");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QMUITipDialog f5663a;

        f(LoginFragment loginFragment, QMUITipDialog qMUITipDialog) {
            this.f5663a = qMUITipDialog;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5663a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements MaterialDialog.k {
        g() {
        }

        @Override // com.afollestad.materialdialogs.MaterialDialog.k
        public void a(@NonNull MaterialDialog materialDialog, @NonNull DialogAction dialogAction) {
            b0.a(LoginFragment.this.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h extends com.ifengyu.intercom.g.d.f {
        h() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Request request, int i) {
            super.a(request, i);
            LoginFragment.this.z();
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            z.b("LoginFragment", "onError:" + exc.getMessage());
            LoginFragment.this.x();
            LoginFragment.this.A();
        }

        public void a(LoginResult loginResult, int i) {
            LoginFragment.this.x();
            if (loginResult == null) {
                LoginFragment.this.A();
                return;
            }
            int i2 = loginResult.errno;
            if (i2 == 0) {
                MobclickAgent.onProfileSignIn(LoginTypeEnum.PHONE.name(), loginResult.data.userid);
                HashMap hashMap = new HashMap();
                hashMap.put("userId", loginResult.data.userid);
                hashMap.put("nickname", loginResult.data.nickname);
                Context context = LoginFragment.this.getContext();
                MobclickAgent.onEventObject(context, "Login_" + LoginTypeEnum.PHONE.name(), hashMap);
                d0.R().edit().putInt("user_login_type", LoginTypeEnum.PHONE.a().intValue()).apply();
                LoginFragment.this.F();
            } else if (i2 == 2) {
                LoginFragment.this.c((int) R.string.login_setup_phone_or_pwd_error);
            } else {
                LoginFragment.this.c(x.a(i2));
            }
        }
    }

    /* loaded from: classes2.dex */
    private class i extends BroadcastReceiver {
        private i() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("login_weixin_resp_code", -2);
                LoginFragment.this.x();
                if (intExtra == -4) {
                    c0.a((CharSequence) k0.c(R.string.weixin_auth_denied), false);
                } else if (intExtra == -2) {
                    c0.a((CharSequence) k0.c(R.string.cancel_login_weixin), false);
                } else if (intExtra == 0) {
                    String stringExtra = intent.getStringExtra("login_weixin_code");
                    if (!TextUtils.isEmpty(stringExtra)) {
                        LoginFragment.this.a(LoginTypeEnum.WECHAT, stringExtra);
                    }
                }
            }
        }

        /* synthetic */ i(LoginFragment loginFragment, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        x();
        c(R.string.network_exception);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        UserProtocolActivity.a(getContext(), 0);
    }

    private SpannableString C() {
        String b2 = m.b((int) R.string.lite_user_improve);
        a aVar = new a(this.mTvImprove, R.attr.app_span_normal_text_color, R.attr.app_span_pressed_text_color, 0, 0);
        aVar.b(true);
        SpannableString spannableString = new SpannableString(b2);
        spannableString.setSpan(aVar, 0, b2.length(), 17);
        return spannableString;
    }

    private SpannableString D() {
        String b2 = m.b((int) R.string.lite_user_protocol_prefix);
        String str = b2 + m.b((int) R.string.lite_user_protocol);
        SpannableString spannableString = new SpannableString(str);
        b bVar = new b(this.mTvUserProtocol, R.attr.app_span_normal_text_color, R.attr.app_span_pressed_text_color, 0, 0);
        bVar.b(true);
        spannableString.setSpan(bVar, b2.length(), str.length(), 17);
        return spannableString;
    }

    private int[] E() {
        return new int[]{3, 1};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        MiTalkiApp.b().j();
        d0.R().edit().putInt("user_last_login_time", (int) (System.currentTimeMillis() / 1000)).apply();
        l0.a("app");
        z();
        m.a(new d(), 500L);
        new Thread(new e(this)).start();
    }

    private void G() {
        this.mBtnLogin.setChangeAlphaWhenPress(false);
        this.mBtnRegister.setChangeAlphaWhenPress(true);
        this.mBtnForget.setChangeAlphaWhenPress(true);
        this.mTvUserProtocol.setMovementMethodDefault();
        this.mTvUserProtocol.setText(D());
        this.mTvImprove.setMovementMethodDefault();
        this.mTvImprove.setText(C());
        this.mEtPhone.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
        this.mEtPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        Observable.combineLatest(RxTextView.textChanges(this.mEtPhone), RxTextView.textChanges(this.mEtPassword), l.f5698a).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.login.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment.this.a((Boolean) obj);
            }
        });
        this.mCbImprove.setOnCheckedChangeListener(m.f5699a);
    }

    private void H() {
        if (!this.mCbUserProtocol.isChecked()) {
            m.d(R.string.please_read_user_agreement);
        } else {
            b(this.mEtPhone.getText().toString().trim(), this.mEtPassword.getText().toString().trim());
        }
    }

    private void I() {
        if (!this.mCbUserProtocol.isChecked()) {
            m.d(R.string.please_read_user_agreement);
        } else if (!c0.b(getContext())) {
            c0.a((CharSequence) k0.c(R.string.toast_please_check_the_network), false);
        } else if (!MiTalkiApp.b().i().isWXAppInstalled()) {
            a((Context) getActivity());
        } else {
            z();
            J();
        }
    }

    private void J() {
        WXEntryActivity.a(((MiTalkiApp) getActivity().getApplication()).i());
    }

    private void K() {
        if (!this.mCbUserProtocol.isChecked()) {
            m.d(R.string.please_read_user_agreement);
        } else if (c0.b(getContext())) {
            z();
            a((Activity) getActivity());
        } else {
            c0.a((CharSequence) k0.c(R.string.toast_please_check_the_network), false);
        }
    }

    @OnClick({R.id.btn_login, R.id.btn_register, R.id.btn_forget, R.id.btn_login_xiaomi, R.id.btn_login_weixin})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_forget) {
            a(ForgetPasswordFragment.newInstance());
        } else if (id != R.id.btn_register) {
            switch (id) {
                case R.id.btn_login /* 2131296413 */:
                    H();
                    return;
                case R.id.btn_login_weixin /* 2131296414 */:
                    I();
                    return;
                case R.id.btn_login_xiaomi /* 2131296415 */:
                    K();
                    return;
                default:
                    return;
            }
        } else {
            a(RegisterFragment.newInstance());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a.f.a.a.a(getContext()).a(this.z, new IntentFilter("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN"));
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a.f.a.a.a(getContext()).a(this.z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mCbImprove.setChecked(d0.b0());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        x();
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_login, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        G();
        return inflate;
    }

    private void b(String str, String str2) {
        com.ifengyu.intercom.g.a.d(str, str2, new h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.a(3);
        builder.a(m.b(i2));
        QMUITipDialog a2 = builder.a(false);
        a2.show();
        m.a(new f(this, a2), 500L);
    }

    public /* synthetic */ void b(String str) throws Exception {
        z.a("LoginFragment", "getCodeAndLoginXiaomi code :" + str);
        a(LoginTypeEnum.XIAOMI, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Boolean a(CharSequence charSequence, CharSequence charSequence2) throws Exception {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(charSequence) && charSequence.length() == 11 && charSequence.toString().startsWith("1");
        boolean z3 = !TextUtils.isEmpty(charSequence2) && charSequence2.length() >= 8;
        if (!z2 || !z3) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    private Observable<XiaomiOAuthFuture<XiaomiOAuthResults>> b(Activity activity) {
        return Observable.just(new XiaomiOAuthorize().setUseSystemAccountLogin(true).setAppId(2882303761517508819L).setRedirectUrl("http://www.ifengyu.com").setScope(E()).setKeepCookies(true).setCustomizedAuthorizeActivityClass(CustomizedAuthorizedActivity.class).startGetOAuthCode(activity));
    }

    public /* synthetic */ void a(Boolean bool) throws Exception {
        this.mBtnLogin.setEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        z.a("LoginFragment", "improve checkbox checked: " + z);
        d0.h(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LoginTypeEnum loginTypeEnum, String str) {
        if (!TextUtils.isEmpty(str)) {
            com.ifengyu.intercom.g.a.a(loginTypeEnum, str, new c(loginTypeEnum));
        }
    }

    private void a(Context context) {
        MaterialDialog.d dVar = new MaterialDialog.d(context);
        dVar.a(R.string.do_you_confirm_download_wechat);
        dVar.c(R.color.black80);
        dVar.e(R.string.common_cancel);
        dVar.d(R.color.material_dialog_button);
        dVar.g(R.string.common_download);
        dVar.f(R.color.material_dialog_button);
        dVar.a(new g());
        dVar.c();
    }

    private void a(Activity activity) {
        b(activity).map(a.f5687a).map(this.A).compose(com.ifengyu.intercom.lite.d.f.c()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.login.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment.this.b((String) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.lite.login.i
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment.this.a((Throwable) obj);
            }
        });
    }

    public /* synthetic */ void a(Throwable th) throws Exception {
        z.b("LoginFragment", "getCodeAndLoginXiaomi failed, error = " + th.toString());
        x();
        if (th instanceof OperationCanceledException) {
            c0.a((CharSequence) k0.c(R.string.cancel_login_xiaomi), false);
        } else if (th instanceof ApiException) {
            ApiException apiException = (ApiException) th;
            c0.a((CharSequence) k0.c(R.string.xiaomi_auth_denied), false);
        } else {
            c0.a((CharSequence) k0.c(R.string.xiaomi_auth_denied), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String a(XiaomiOAuthResults xiaomiOAuthResults) throws Exception {
        if (!xiaomiOAuthResults.hasError()) {
            return xiaomiOAuthResults.getCode();
        }
        throw new ApiException(xiaomiOAuthResults.getErrorMessage(), xiaomiOAuthResults.getErrorCode());
    }
}
