package com.ifengyu.intercom.p216ui.fragment;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p205m.p207b.AppHasNewVersionDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.OnMultipleClickListener;
import com.ifengyu.intercom.p216ui.activity.UserImprovePlanActivity;
import com.ifengyu.intercom.p216ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.service.p215b.ApkDownloadManager;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment */
/* loaded from: classes2.dex */
public class AboutFragment extends BaseFragment {
    @BindView(R.id.about_icon)
    ImageView aboutIcon;
    @BindView(R.id.about_app_versionName)
    TextView appVersionName;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment$a */
    /* loaded from: classes2.dex */
    public class C4471a extends OnMultipleClickListener {
        C4471a(long j, int i) {
            super(j, i);
        }

        @Override // com.ifengyu.intercom.p214p.OnMultipleClickListener
        /* renamed from: a */
        public void mo10185a(View view) {
            AboutFragment.this.m8041v2(HostFragment.m10088p3());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.AboutFragment$b */
    /* loaded from: classes2.dex */
    public class C4472b extends ErrorConsumer {
        C4472b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) AboutFragment.this).f15047y, "check App Version fail");
            newApiException.printStackTrace();
            AboutFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* renamed from: A3 */
    private void m10207A3(final VersionInfo versionInfo) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7248E(R.string.dialog_message_ask_the_network);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4513e.f15209a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.c
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                AboutFragment.this.m10187y3(versionInfo, qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: B3 */
    private void m10206B3(VersionInfo versionInfo) {
        ApkDownloadManager.m10684c().m10685b(versionInfo.getSource(), versionInfo.getMd5());
    }

    /* renamed from: i3 */
    private void m10203i3() {
        if (ApkDownloadManager.m10684c().f14679a) {
            UIUtils.m8593y(R.string.toast_downloading);
            return;
        }
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11387T("android", MethodsUtils.m11284p(), 0, MethodsUtils.m11297c() ? "en_us" : "zh_cn").compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AboutFragment.this.m10199m3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.d
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AboutFragment.this.m10197o3((VersionInfo) obj);
            }
        }, new C4472b());
    }

    /* renamed from: j3 */
    private void m10202j3(final VersionInfo versionInfo) {
        if (versionInfo.getMode() == 1) {
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder = new AppHasNewVersionDialogBuilder(getActivity());
            appHasNewVersionDialogBuilder.m11453F(versionInfo);
            appHasNewVersionDialogBuilder.m7286t(true);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder2 = appHasNewVersionDialogBuilder;
            appHasNewVersionDialogBuilder2.m7285u(true);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder3 = appHasNewVersionDialogBuilder2;
            appHasNewVersionDialogBuilder3.m7300b(0, R.string.dialog_btn_not_updated_yet, 2, C4522h.f15222a);
            AppHasNewVersionDialogBuilder appHasNewVersionDialogBuilder4 = appHasNewVersionDialogBuilder3;
            appHasNewVersionDialogBuilder4.m7300b(0, R.string.upgrade_immediately, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.f
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                    AboutFragment.this.m10194r3(versionInfo, qMUIDialog, i);
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
            appHasNewVersionDialogBuilder7.m7300b(0, R.string.upgrade_immediately, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.b
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                    AboutFragment.this.m10192t3(versionInfo, qMUIDialog, i);
                }
            });
            appHasNewVersionDialogBuilder7.m7296f(R.style.DialogTheme1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m10199m3(Disposable disposable) throws Exception {
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m10197o3(VersionInfo versionInfo) throws Exception {
        String str = this.f15047y;
        C4161y.m11054a(str, "check App Version Info: " + versionInfo.toString());
        if (versionInfo.isHasNewVersion()) {
            m10329C2();
            m10202j3(versionInfo);
            return;
        }
        m10306d3(R.string.setting_check_apk_update_is_newest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m10194r3(VersionInfo versionInfo, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        if (getContext() == null) {
            return;
        }
        if (!MethodsUtils.m11307C(getContext())) {
            m10207A3(versionInfo);
        } else {
            m10206B3(versionInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m10192t3(VersionInfo versionInfo, QMUIDialog qMUIDialog, int i) {
        m10206B3(versionInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m10190v3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x3 */
    public /* synthetic */ void m10187y3(VersionInfo versionInfo, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10206B3(versionInfo);
    }

    /* renamed from: z3 */
    public static AboutFragment m10186z3() {
        Bundle bundle = new Bundle();
        AboutFragment aboutFragment = new AboutFragment();
        aboutFragment.setArguments(bundle);
        return aboutFragment;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_about, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10201k3();
        return inflate;
    }

    /* renamed from: k3 */
    protected void m10201k3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.about);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutFragment.this.m10190v3(view);
            }
        });
        try {
            this.appVersionName.setText(UIUtils.m8602p(R.string.about_app_version, getContext().getPackageManager().getPackageInfo(UIUtils.m8607k(), 0).versionName));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        this.appVersionName.setOnClickListener(new C4471a(2000L, 5));
    }

    @OnClick({R.id.check_app_update, R.id.user_protocol, R.id.user_improve_plan_layout, R.id.user_power_center_layout})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id != R.id.check_app_update) {
            switch (id) {
                case R.id.user_improve_plan_layout /* 2131297576 */:
                    startActivity(new Intent(getContext(), UserImprovePlanActivity.class));
                    return;
                case R.id.user_power_center_layout /* 2131297577 */:
                    Intent intent = new Intent(getContext(), WebViewActivity.class);
                    intent.setAction("com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER");
                    startActivity(intent);
                    return;
                case R.id.user_protocol /* 2131297578 */:
                    UserProtocolActivity.m10425N(getContext());
                    return;
                default:
                    return;
            }
        }
        m10203i3();
    }
}
