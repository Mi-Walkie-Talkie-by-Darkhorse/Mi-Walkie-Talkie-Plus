package com.ifengyu.intercom.p216ui.login;

import android.accounts.OperationCanceledException;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.enums.LoginTypeEnum;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MarketUtil;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.CustomizedAuthorizedActivity;
import com.ifengyu.intercom.p216ui.activity.UserImprovePlanActivity;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.intercom.p216ui.widget.view.PasswordToggleEditText;
import com.ifengyu.intercom.wxapi.WXEntryActivity;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.http.exception.ApiException;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.UIUtils;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.alpha.QMUIAlphaTextView;
import com.qmuiteam.qmui.span.QMUITouchableSpan;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import com.tencent.open.SocialConstants;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.umeng.analytics.MobclickAgent;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import com.xiaomi.account.openauth.XiaomiOAuthorize;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;
import p000a.p015f.p016a.LocalBroadcastManager;

/* renamed from: com.ifengyu.intercom.ui.login.LoginFragment */
/* loaded from: classes2.dex */
public class LoginFragment extends BaseFragment {
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
    @BindView(R.id.tv_user_agreement)
    QMUISpanTouchFixTextView mTvUserProtocol;

    /* renamed from: z */
    private final C4656e f15408z = new C4656e(this, null);

    /* renamed from: A */
    private Function<XiaomiOAuthResults, String> f15407A = C4702n.f15473a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment$a */
    /* loaded from: classes2.dex */
    public class C4652a extends QMUITouchableSpan {
        C4652a(View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UserImprovePlanActivity.start(LoginFragment.this.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment$b */
    /* loaded from: classes2.dex */
    public class C4653b extends QMUITouchableSpan {
        C4653b(LoginFragment loginFragment, View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment$c */
    /* loaded from: classes2.dex */
    public class C4654c extends QMUITouchableSpan {
        C4654c(LoginFragment loginFragment, View view, int i, int i2, int i3, int i4) {
            super(view, i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment$d */
    /* loaded from: classes2.dex */
    public class C4655d extends ErrorConsumer {
        C4655d() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("LoginFragment", "login fail");
            LoginFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.login.LoginFragment$e */
    /* loaded from: classes2.dex */
    private class C4656e extends BroadcastReceiver {
        private C4656e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("login_weixin_resp_code", -2);
                if (intExtra == -4) {
                    MethodsUtils.m11302H(UIUtils.m8603o(R.string.weixin_auth_denied), false);
                } else if (intExtra == -2) {
                    MethodsUtils.m11302H(UIUtils.m8603o(R.string.cancel_login_weixin), false);
                } else if (intExtra != 0) {
                } else {
                    String stringExtra = intent.getStringExtra("login_weixin_code");
                    if (TextUtils.isEmpty(stringExtra)) {
                        return;
                    }
                    LoginFragment.this.m9757J3(LoginTypeEnum.WECHAT, stringExtra);
                }
            }
        }

        /* synthetic */ C4656e(LoginFragment loginFragment, C4652a c4652a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m9763D3(PrivacyInfoEntity privacyInfoEntity) throws Exception {
        C4161y.m11049f("LoginFragment", "login success");
        MiTalkClientUtil.m11270B0("app", Integer.parseInt(privacyInfoEntity.getVersion()));
        m9744n3();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E3 */
    public static /* synthetic */ String m9762E3(XiaomiOAuthResults xiaomiOAuthResults) throws Exception {
        if (!xiaomiOAuthResults.hasError()) {
            return xiaomiOAuthResults.getCode();
        }
        throw new ApiException(xiaomiOAuthResults.getErrorMessage(), xiaomiOAuthResults.getErrorCode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9759H3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        MarketUtil.m11315a(getContext());
    }

    /* renamed from: I3 */
    private void m9758I3(Map<String, Object> map, final int i) {
        m10308b3();
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11391P(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(map).toString())).subscribeOn(Schedulers.m800io()).observeOn(Schedulers.m800io()).doOnNext(new Consumer() { // from class: com.ifengyu.intercom.ui.login.m
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment.this.m9766A3(i, (UserInfo) obj);
            }
        }).flatMap(C4712s.f15483a).compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.i
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment.this.m9763D3((PrivacyInfoEntity) obj);
            }
        }, new C4655d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public void m9757J3(LoginTypeEnum loginTypeEnum, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("clientType", 1);
        hashMap.put("loginType", loginTypeEnum.m14024a());
        hashMap.put("secret", str);
        m9758I3(hashMap, loginTypeEnum.m14024a().intValue());
    }

    /* renamed from: K3 */
    private void m9756K3() {
        if (this.mEtPhone.getText() == null || this.mEtPassword.getText() == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("account", this.mEtPhone.getText().toString().trim());
        hashMap.put("clientType", 1);
        LoginTypeEnum loginTypeEnum = LoginTypeEnum.PHONE;
        hashMap.put("loginType", loginTypeEnum.m14024a());
        hashMap.put("secret", this.mEtPassword.getText().toString().trim());
        m9758I3(hashMap, loginTypeEnum.m14024a().intValue());
    }

    /* renamed from: L3 */
    private void m9755L3() {
        if (getActivity() != null && MethodsUtils.m11274z(getActivity())) {
            if (!MiTalkiApp.m14296h().m14295i().isWXAppInstalled()) {
                m9752O3(getActivity());
                return;
            } else {
                WXEntryActivity.m8730b(MiTalkiApp.m14296h().m14295i());
                return;
            }
        }
        MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_please_check_the_network), false);
    }

    /* renamed from: M3 */
    private void m9754M3() {
        if (MethodsUtils.m11274z(getContext())) {
            m9747k3(getActivity());
        } else {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_please_check_the_network), false);
        }
    }

    /* renamed from: N3 */
    private void m9753N3(UserInfo userInfo) {
        SharedPreferences.Editor edit = MiTalkClientUtil.m11235T().edit();
        edit.putString(AuthorizeActivityBase.KEY_USERID, String.valueOf(userInfo.userId));
        edit.putString("nickname", userInfo.nickname);
        edit.putString("avatar", userInfo.avatar);
        edit.putString("phone", userInfo.phone);
        edit.putString("email", userInfo.email);
        edit.putInt("gender", userInfo.gender);
        edit.putString("key", userInfo.apiKey);
        edit.apply();
        UserCache.saveUserInfo(userInfo);
    }

    /* renamed from: O3 */
    private void m9752O3(Context context) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(context);
        messageDialogBuilder.m7248E(R.string.do_you_confirm_download_wechat);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4690h.f15460a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_download, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.login.o
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                LoginFragment.this.m9759H3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: i3 */
    private SpannableString m9749i3() {
        String m8603o = UIUtils.m8603o(R.string.user_improve_plan);
        C4652a c4652a = new C4652a(this.mTvImprove, 0, 0, 0, 0);
        c4652a.m7630j(true);
        c4652a.m7629k(UIUtils.m8614d(R.color.white));
        c4652a.m7628l(UIUtils.m8614d(R.color.white));
        SpannableString spannableString = new SpannableString(m8603o);
        spannableString.setSpan(c4652a, 0, m8603o.length(), 17);
        return spannableString;
    }

    /* renamed from: j3 */
    private SpannableString m9748j3() {
        String m8603o = UIUtils.m8603o(R.string.lite_user_protocol_prefix);
        String m8603o2 = UIUtils.m8603o(R.string.user_protocol_click);
        String m8603o3 = UIUtils.m8603o(R.string.privacy_center_space);
        String m8603o4 = UIUtils.m8603o(R.string.privacy_agreement_click);
        String str = m8603o + m8603o2 + m8603o3 + m8603o4;
        SpannableString spannableString = new SpannableString(str);
        C4653b c4653b = new C4653b(this, this.mTvUserProtocol, 0, 0, 0, 0);
        c4653b.m7630j(true);
        c4653b.m7629k(UIUtils.m8614d(R.color.white));
        c4653b.m7628l(UIUtils.m8614d(R.color.white));
        spannableString.setSpan(c4653b, m8603o.length(), m8603o.length() + m8603o2.length(), 17);
        C4654c c4654c = new C4654c(this, this.mTvUserProtocol, 0, 0, 0, 0);
        c4654c.m7630j(true);
        c4654c.m7629k(UIUtils.m8614d(R.color.white));
        c4654c.m7628l(UIUtils.m8614d(R.color.white));
        spannableString.setSpan(c4654c, str.length() - m8603o4.length(), str.length(), 17);
        return spannableString;
    }

    /* renamed from: k3 */
    private void m9747k3(Activity activity) {
        ((ObservableSubscribeProxy) m9746l3(activity).map(C4713s0.f15484a).map(this.f15407A).compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.login.t
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment.this.m9741q3((String) obj);
            }
        }, C4706p.f15477a);
    }

    /* renamed from: l3 */
    private Observable<XiaomiOAuthFuture<XiaomiOAuthResults>> m9746l3(Activity activity) {
        return Observable.just(new XiaomiOAuthorize().setUseSystemAccountLogin(true).setAppId(2882303761517508819L).setRedirectUrl("http://www.ifengyu.com").setScope(m9745m3()).setKeepCookies(true).setCustomizedAuthorizeActivityClass(CustomizedAuthorizedActivity.class).startGetOAuthCode(activity));
    }

    /* renamed from: m3 */
    private int[] m9745m3() {
        return new int[]{3, 1};
    }

    /* renamed from: n3 */
    private void m9744n3() {
        MiTalkiApp.m14296h().m14291m();
        MiTalkClientUtil.m11235T().edit().putInt("user_last_login_time", (int) (System.currentTimeMillis() / 1000)).apply();
        UIUtils.m8599s(new Runnable() { // from class: com.ifengyu.intercom.ui.login.q
            @Override // java.lang.Runnable
            public final void run() {
                LoginFragment.this.m9738t3();
            }
        }, 500L);
        new Thread(RunnableC4698l.f15468a).start();
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: o3 */
    private void m9743o3() {
        this.mBtnLogin.setChangeAlphaWhenPress(false);
        this.mBtnRegister.setChangeAlphaWhenPress(true);
        this.mBtnForget.setChangeAlphaWhenPress(true);
        this.mTvUserProtocol.setMovementMethodDefault();
        this.mTvUserProtocol.setText(m9748j3());
        this.mTvImprove.setMovementMethodDefault();
        this.mTvImprove.setText(m9749i3());
        this.mEtPhone.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
        this.mEtPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        Observable.combineLatest(RxTextView.textChanges(this.mEtPhone), RxTextView.textChanges(this.mEtPassword), C4694j.f15464a).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.login.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LoginFragment.this.m9734x3((Boolean) obj);
            }
        });
        this.mCbImprove.setOnCheckedChangeListener(C4696k.f15466a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m9741q3(String str) throws Exception {
        C4161y.m11054a("LoginFragment", "getCodeAndLoginXiaomi");
        m9757J3(LoginTypeEnum.XIAOMI, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r3 */
    public static /* synthetic */ void m9740r3(Throwable th) throws Exception {
        C4161y.m11052c("LoginFragment", "getCodeAndLoginXiaomi failed, error = " + th.toString());
        if (th instanceof OperationCanceledException) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.cancel_login_xiaomi), false);
        } else if (th instanceof ApiException) {
            ApiException apiException = (ApiException) th;
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.xiaomi_auth_denied), false);
        } else {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.xiaomi_auth_denied), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m9738t3() {
        m10329C2();
        Bundle extras = getActivity().getIntent().getExtras();
        if (extras != null && !TextUtils.isEmpty(extras.getString(SocialConstants.PARAM_URL))) {
            Intent intent = new Intent(getContext(), WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
            intent.putExtras(extras);
            getContext().startActivities(new Intent[]{new Intent(getContext(), MainActivity.class), intent});
            getActivity().finish();
            return;
        }
        startActivity(new Intent(getContext(), MainActivity.class));
        getActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u3 */
    public static /* synthetic */ void m9737u3() {
        String str = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style";
        C4970j.m8669a(MiTalkiApp.m14296h(), "style.data", str, "style.data");
        C4970j.m8669a(MiTalkiApp.m14296h(), "style_extra.data", str, "style_extra.data");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v3 */
    public static /* synthetic */ Boolean m9736v3(CharSequence charSequence, CharSequence charSequence2) throws Exception {
        boolean z = true;
        return Boolean.valueOf(((!TextUtils.isEmpty(charSequence) && charSequence.length() == 11 && charSequence.toString().startsWith("1")) && (!TextUtils.isEmpty(charSequence2) && charSequence2.length() >= 8)) ? false : false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m9734x3(Boolean bool) throws Exception {
        this.mBtnLogin.setEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y3 */
    public static /* synthetic */ void m9733y3(CompoundButton compoundButton, boolean z) {
        C4161y.m11054a("LoginFragment", "improve checkbox checked: " + z);
        MiTalkClientUtil.m11178w0(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z3 */
    public /* synthetic */ void m9766A3(int i, UserInfo userInfo) throws Exception {
        userInfo.loginType = i;
        m9753N3(userInfo);
        LoginTypeEnum loginTypeEnum = LoginTypeEnum.PHONE;
        MobclickAgent.onProfileSignIn(loginTypeEnum.name(), String.valueOf(userInfo.userId));
        HashMap hashMap = new HashMap();
        hashMap.put("userId", String.valueOf(userInfo.userId));
        hashMap.put("nickname", userInfo.nickname);
        Context context = getContext();
        MobclickAgent.onEventObject(context, "Login_" + loginTypeEnum.name(), hashMap);
        MiTalkClientUtil.m11235T().edit().putInt("user_login_type", i).apply();
        UserPrivacyReportUtil.m11158a();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_login, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9743o3();
        return inflate;
    }

    @OnClick({R.id.btn_login, R.id.btn_register, R.id.btn_forget, R.id.btn_login_xiaomi, R.id.btn_login_weixin})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_forget) {
            m8041v2(ForgetPasswordFragment.m9792K3());
        } else if (id != R.id.btn_register) {
            switch (id) {
                case R.id.btn_login /* 2131296431 */:
                    if (!this.mCbUserProtocol.isChecked()) {
                        UIUtils.m8593y(R.string.please_read_user_agreement);
                        return;
                    } else {
                        m9756K3();
                        return;
                    }
                case R.id.btn_login_weixin /* 2131296432 */:
                    if (!this.mCbUserProtocol.isChecked()) {
                        UIUtils.m8593y(R.string.please_read_user_agreement);
                        return;
                    } else {
                        m9755L3();
                        return;
                    }
                case R.id.btn_login_xiaomi /* 2131296433 */:
                    if (!this.mCbUserProtocol.isChecked()) {
                        UIUtils.m8593y(R.string.please_read_user_agreement);
                        return;
                    } else {
                        m9754M3();
                        return;
                    }
                default:
                    return;
            }
        } else {
            m8041v2(RegisterFragment.m9717O3());
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LocalBroadcastManager.m26388b(getContext()).m26387c(this.f15408z, new IntentFilter("com.ifengyu.intercom.ACTION_LOGIN_WEIXIN"));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.m26388b(getContext()).m26385e(this.f15408z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mCbImprove.setChecked(MiTalkClientUtil.m11220b0());
    }
}
