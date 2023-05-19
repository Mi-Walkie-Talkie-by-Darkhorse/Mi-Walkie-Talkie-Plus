package com.ifengyu.intercom.p216ui.fragment;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.xiaomi.infra.galaxy.fds.Constants;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.text.DecimalFormat;
import java.util.concurrent.Callable;

/* renamed from: com.ifengyu.intercom.ui.fragment.AppSettingFragment */
/* loaded from: classes2.dex */
public class AppSettingFragment extends BaseFragment {
    @BindView(R.id.appCacheSize)
    TextView appCacheSize;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;

    /* renamed from: z */
    private final File[] f15138z = {UIUtils.m8613e().getExternalCacheDir()};

    /* renamed from: g3 */
    private boolean m10180g3() {
        try {
            for (File file : this.f15138z) {
                C4970j.m8667c(file);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: h3 */
    private String m10179h3(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("#0.0");
        if (j < 1024) {
            return decimalFormat.format(j) + "B";
        } else if (j < 1048576) {
            return decimalFormat.format(j / 1024.0d) + "K";
        } else if (j < Constants.DEFAULT_SPACE_LIMIT) {
            return decimalFormat.format(j / 1048576.0d) + "M";
        } else {
            return decimalFormat.format(j / 1.073741824E9d) + "G";
        }
    }

    /* renamed from: i3 */
    private String m10178i3() {
        long j = 0;
        for (File file : this.f15138z) {
            j += m10177j3(file);
        }
        return m10179h3(j);
    }

    /* renamed from: j3 */
    private long m10177j3(File file) {
        File[] listFiles;
        long m10177j3;
        long j = 0;
        if (file != null && file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    m10177j3 = file2.length();
                } else if (file2.isDirectory()) {
                    j += file2.length();
                    m10177j3 = m10177j3(file2);
                }
                j += m10177j3;
            }
            return j;
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m10174m3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ ObservableSource m10172o3() throws Exception {
        return Observable.just(Boolean.valueOf(m10180g3()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m10170q3(Boolean bool) throws Exception {
        this.appCacheSize.setText(m10178i3());
        m10306d3(R.string.app_clear_cache_success);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m10168s3(Throwable th) throws Exception {
        m10329C2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m10165v3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10163x3();
    }

    /* renamed from: w3 */
    public static AppSettingFragment m10164w3() {
        Bundle bundle = new Bundle();
        AppSettingFragment appSettingFragment = new AppSettingFragment();
        appSettingFragment.setArguments(bundle);
        return appSettingFragment;
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: x3 */
    private void m10163x3() {
        m10308b3();
        Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.fragment.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return AppSettingFragment.this.m10172o3();
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AppSettingFragment.this.m10170q3((Boolean) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AppSettingFragment.this.m10168s3((Throwable) obj);
            }
        });
    }

    /* renamed from: y3 */
    private void m10162y3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.app_clear_cache_dialog_msg);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4534l.f15234a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.app_clear_cache_now, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.k
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                AppSettingFragment.this.m10165v3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_app_setting, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10176k3();
        return inflate;
    }

    /* renamed from: k3 */
    protected void m10176k3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.setting);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AppSettingFragment.this.m10174m3(view);
            }
        });
        this.appCacheSize.setText(m10178i3());
    }

    @OnClick({R.id.ll_system_permission, R.id.ll_clear_cache})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.ll_clear_cache) {
            m10162y3();
        } else if (id != R.id.ll_system_permission) {
        } else {
            m8041v2(SystemPermissionFragment.m10029j3());
        }
    }
}
