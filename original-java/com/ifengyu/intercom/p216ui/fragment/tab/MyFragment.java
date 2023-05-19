package com.ifengyu.intercom.p216ui.fragment.tab;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.WebActivity;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p187j.UrlAdd;
import com.ifengyu.intercom.p205m.p207b.AppHasNewVersionDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.DensityUtils;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.DiscoveryActivity;
import com.ifengyu.intercom.p216ui.activity.MyInfoSettingActivity;
import com.ifengyu.intercom.p216ui.activity.QuestionFeedbackActivity;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.fragment.AboutFragment;
import com.ifengyu.intercom.p216ui.fragment.AppSettingFragment;
import com.ifengyu.intercom.p216ui.fragment.RadioExamFragment;
import com.ifengyu.intercom.service.p215b.ApkDownloadManager;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.span.QMUITouchableSpan;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.MyFragment */
/* loaded from: classes2.dex */
public class MyFragment extends BaseFragment implements View.OnClickListener {

    /* renamed from: A */
    private MainActivity f15282A;
    @BindView(R.id.setting_user_portrait)
    QMUIRadiusImageView mCivPortrait;
    @BindView(R.id.title_bar)
    LinearLayout titleBar;
    @BindView(R.id.setting_user_name_text)
    TextView userName;

    /* renamed from: z */
    private View f15283z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.MyFragment$a */
    /* loaded from: classes2.dex */
    public class C4562a extends ErrorConsumer {
        C4562a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("MyFragment", "checkPrivacyInfo fail");
            newApiException.printStackTrace();
            MyFragment.this.m9947h3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.MyFragment$b */
    /* loaded from: classes2.dex */
    public class C4563b extends ErrorConsumer {
        C4563b(MyFragment myFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("MyFragment", "check App Version fail");
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.MyFragment$c */
    /* loaded from: classes2.dex */
    public class C4564c extends ErrorConsumer {
        C4564c(MyFragment myFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("MyFragment", "querySelfInfo fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.MyFragment$d */
    /* loaded from: classes2.dex */
    public class C4565d extends QMUITouchableSpan {
        C4565d(MyFragment myFragment, int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.MyFragment$e */
    /* loaded from: classes2.dex */
    public class C4566e extends QMUITouchableSpan {
        C4566e(MyFragment myFragment, int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.QMUITouchableSpan
        /* renamed from: i */
        public void mo7631i(View view) {
            UrlAdd.m11976c(UrlAdd.m11978a(2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A3 */
    public static /* synthetic */ void m9956A3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        MiTalkClientUtil.m11188r0(false);
        MiTalkiApp.m14296h().m14304F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m9954C3(int i, QMUIDialog qMUIDialog, int i2) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11158a();
        MiTalkClientUtil.m11270B0("app", i);
        m9947h3();
    }

    /* renamed from: D3 */
    public static MyFragment m9953D3() {
        C4161y.m11049f("MyFragment", "newInstance");
        return new MyFragment();
    }

    /* renamed from: E3 */
    private void m9952E3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11364r().compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.r
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyFragment.this.m9932w3((UserInfo) obj);
            }
        }, new C4564c(this));
    }

    /* renamed from: F3 */
    private void m9951F3(final VersionInfo versionInfo) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7248E(R.string.dialog_message_ask_the_network);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4614s.f15355a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.tab.z
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                MyFragment.this.m9929z3(versionInfo, qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: G3 */
    private void m9950G3(final int i) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7282x(R.string.user_protocol_updated);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7247F(m9945j3());
        messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, C4616u.f15357a);
        MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
        messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.tab.w
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                MyFragment.this.m9954C3(i, qMUIDialog, i2);
            }
        });
        messageDialogBuilder5.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: H3 */
    private void m9949H3(VersionInfo versionInfo) {
        ApkDownloadManager.m10684c().m10685b(versionInfo.getSource(), versionInfo.getMd5());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public void m9947h3() {
        if (ApkDownloadManager.m10684c().f14679a) {
            UIUtils.m8593y(R.string.toast_downloading);
            return;
        }
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11387T("android", MethodsUtils.m11284p(), 0, MethodsUtils.m11297c() ? "en_us" : "zh_cn").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.y
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyFragment.this.m9941n3((VersionInfo) obj);
            }
        }, new C4563b(this));
    }

    /* renamed from: i3 */
    private void m9946i3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11396K("app").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.t
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MyFragment.this.m9939p3((PrivacyInfoEntity) obj);
            }
        }, new C4562a());
    }

    /* renamed from: j3 */
    private SpannableString m9945j3() {
        String m8603o = UIUtils.m8603o(R.string.user_protocol_click);
        String m8603o2 = UIUtils.m8603o(R.string.privacy_center_space);
        String m8603o3 = UIUtils.m8603o(R.string.privacy_agreement_click);
        String string = getString(R.string.user_protocol_updated_suffix);
        SpannableString spannableString = new SpannableString(m8603o + m8603o2 + m8603o3 + string);
        C4565d c4565d = new C4565d(this, 0, 0, 0, 0);
        c4565d.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4565d.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4565d, 0, m8603o.length(), 17);
        C4566e c4566e = new C4566e(this, 0, 0, 0, 0);
        c4566e.m7629k(UIUtils.m8614d(R.color.lite_colorAccent));
        c4566e.m7628l(UIUtils.m8614d(R.color.lite_colorAccent50));
        spannableString.setSpan(c4566e, m8603o.length() + m8603o2.length(), m8603o.length() + m8603o2.length() + m8603o3.length(), 17);
        return spannableString;
    }

    /* renamed from: k3 */
    private void m9944k3(final VersionInfo versionInfo) {
        if (versionInfo.getMode() == 1) {
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder = new AppHasNewVersionDialogBuilder(getActivity());
            appHasNewVersionDialogBuilder.m11453F(versionInfo);
            appHasNewVersionDialogBuilder.m7286t(true);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder2 = appHasNewVersionDialogBuilder;
            appHasNewVersionDialogBuilder2.m7285u(true);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder3 = appHasNewVersionDialogBuilder2;
            appHasNewVersionDialogBuilder3.m7300b(0, R.string.dialog_btn_not_updated_yet, 2, C4617v.f15358a);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder4 = appHasNewVersionDialogBuilder3;
            appHasNewVersionDialogBuilder4.m7300b(0, R.string.upgrade_immediately, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.tab.q
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                    MyFragment.this.m9936s3(versionInfo, qMUIDialog, i);
                }
            });
            appHasNewVersionDialogBuilder4.m7296f(R.style.DialogTheme1).show();
        } else if (versionInfo.getMode() == 2) {
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder5 = new AppHasNewVersionDialogBuilder(getActivity());
            appHasNewVersionDialogBuilder5.m11453F(versionInfo);
            appHasNewVersionDialogBuilder5.m7286t(false);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder6 = appHasNewVersionDialogBuilder5;
            appHasNewVersionDialogBuilder6.m7285u(false);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder7 = appHasNewVersionDialogBuilder6;
            appHasNewVersionDialogBuilder7.m7300b(0, R.string.upgrade_immediately, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.tab.x
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                    MyFragment.this.m9934u3(versionInfo, qMUIDialog, i);
                }
            });
            appHasNewVersionDialogBuilder7.m7296f(R.style.DialogTheme1).show();
        }
    }

    /* renamed from: l3 */
    private void m9943l3() {
        this.titleBar.setPadding(0, QMUIStatusBarHelper.m7488f(getContext()) == 0 ? DensityUtils.m11079a(getActivity()) : QMUIStatusBarHelper.m7488f(getContext()), 0, 0);
        this.userName.setText(UserCache.getUserInfo().nickname);
        ImageLoader.m8705f(this, this.mCivPortrait, UserCache.getUserInfo().avatar);
        this.f15283z.findViewById(R.id.setting_user_info).setOnClickListener(this);
        this.f15283z.findViewById(R.id.discovery_pager).setOnClickListener(this);
        this.f15283z.findViewById(R.id.radio_exam).setOnClickListener(this);
        this.f15283z.findViewById(R.id.setting_map_download).setOnClickListener(this);
        this.f15283z.findViewById(R.id.setting_product_instructions).setOnClickListener(this);
        this.f15283z.findViewById(R.id.setting_use_help).setOnClickListener(this);
        this.f15283z.findViewById(R.id.setting_more_question_feedback).setOnClickListener(this);
        this.f15283z.findViewById(R.id.setting_more_about_device).setOnClickListener(this);
        this.f15283z.findViewById(R.id.app_setting).setOnClickListener(this);
        m9952E3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m9941n3(VersionInfo versionInfo) throws Exception {
        C4161y.m11054a("MyFragment", "check App Version Info: " + versionInfo.toString());
        if (versionInfo.isHasNewVersion()) {
            m9944k3(versionInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m9939p3(PrivacyInfoEntity privacyInfoEntity) throws Exception {
        C4161y.m11054a("MyFragment", "checkPrivacyInfo success: " + privacyInfoEntity.toString());
        int parseInt = Integer.parseInt(privacyInfoEntity.getVersion());
        if (parseInt > MiTalkClientUtil.m11185t("app")) {
            m9950G3(parseInt);
        } else {
            m9947h3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m9936s3(VersionInfo versionInfo, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        if (getContext() == null) {
            return;
        }
        if (!MethodsUtils.m11307C(getContext())) {
            m9951F3(versionInfo);
        } else {
            m9949H3(versionInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m9934u3(VersionInfo versionInfo, QMUIDialog qMUIDialog, int i) {
        m9949H3(versionInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m9932w3(UserInfo userInfo) throws Exception {
        C4161y.m11049f("MyFragment", "querySelfInfo success");
        SharedPreferences.Editor edit = MiTalkClientUtil.m11235T().edit();
        edit.putString("nickname", userInfo.nickname);
        edit.putString("avatar", userInfo.avatar);
        edit.putString("phone", userInfo.phone);
        edit.putString("email", userInfo.email);
        edit.putInt("gender", userInfo.gender);
        edit.apply();
        UserInfo userInfo2 = UserCache.getUserInfo();
        if (userInfo2 != null) {
            userInfo2.avatar = userInfo.avatar;
            userInfo2.email = userInfo.email;
            userInfo2.gender = userInfo.gender;
            userInfo2.nickname = userInfo.nickname;
            userInfo2.phone = userInfo.phone;
            UserCache.saveUserInfo(userInfo2);
        }
        this.userName.setText(userInfo.nickname);
        ImageLoader.m8705f(this, this.mCivPortrait, userInfo.avatar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m9929z3(VersionInfo versionInfo, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m9949H3(versionInfo);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        m9946i3();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_my, (ViewGroup) null);
        this.f15283z = inflate;
        ButterKnife.bind(this, inflate);
        m9943l3();
        return this.f15283z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 5 && i2 == 1 && intent != null) {
            String stringExtra = intent.getStringExtra("setting_my_name");
            boolean booleanExtra = intent.getBooleanExtra("setting_had_modify_portrait", false);
            boolean booleanExtra2 = intent.getBooleanExtra("setting_had_modify_name", false);
            Uri data = intent.getData();
            if (booleanExtra && data != null) {
                this.mCivPortrait.setImageBitmap(UIUtils.m8617a(data));
            }
            if (booleanExtra2) {
                this.userName.setText(stringExtra);
            }
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        C4161y.m11049f("MyFragment", "onAttach");
        super.onAttach(context);
        this.f15282A = (MainActivity) getActivity();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.app_setting) {
            m8041v2(AppSettingFragment.m10164w3());
        } else if (id == R.id.discovery_pager) {
            DiscoveryActivity.start(this.f15282A);
        } else if (id != R.id.radio_exam) {
            switch (id) {
                case R.id.setting_more_about_device /* 2131297303 */:
                    m8041v2(AboutFragment.m10186z3());
                    return;
                case R.id.setting_more_question_feedback /* 2131297304 */:
                    startActivity(new Intent(this.f15282A, QuestionFeedbackActivity.class));
                    return;
                case R.id.setting_product_instructions /* 2131297305 */:
                    WebActivity.m14208N(getContext(), UIUtils.m8603o(R.string.setting_product_instructions), MethodsUtils.m11297c() ? "https://m.ifengyu.com/resourcesDev/resources/en/productList.html" : "https://m.ifengyu.com/resourcesDev/resources/productList.html");
                    return;
                case R.id.setting_use_help /* 2131297306 */:
                    Intent intent = new Intent(this.f15282A, WebViewActivity.class);
                    intent.setAction("com.ifengyu.intercom.action.USE_HELP");
                    startActivity(intent);
                    return;
                case R.id.setting_user_info /* 2131297307 */:
                    Intent intent2 = new Intent(this.f15282A, MyInfoSettingActivity.class);
                    intent2.putExtra("setting_my_name", MiTalkClientUtil.m11239R());
                    startActivityForResult(intent2, 5);
                    return;
                default:
                    return;
            }
        } else {
            m8041v2(RadioExamFragment.m10033j3());
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        C4161y.m11049f("MyFragment", "onCreate");
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }
}
