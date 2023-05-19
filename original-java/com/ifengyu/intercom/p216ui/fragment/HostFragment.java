package com.ifengyu.intercom.p216ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.blankj.utilcode.util.ToastUtils;
import com.ifengyu.intercom.AppData;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.SplashActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.talk.database.TalkDatabase;
import com.just.agentweb.DefaultWebClient;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import org.apache.commons.lang.C6718a;

/* renamed from: com.ifengyu.intercom.ui.fragment.HostFragment */
/* loaded from: classes2.dex */
public class HostFragment extends BaseFragment {
    @BindView(R.id.btn_save)
    QMUIRoundButton btnSave;
    @BindView(R.id.cb_m303)
    CheckBox checkBoxM303;
    @BindView(R.id.env_group)
    RadioGroup envRadioGroup;
    @BindView(R.id.et_audio_host)
    EditText etAudioHost;
    @BindView(R.id.et_poc_host)
    EditText etPostHost;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* renamed from: g3 */
    private void m10097g3() {
        this.mTopBar.setBottomDividerAlpha(0);
        this.mTopBar.m7337q("测试设置");
        this.mTopBar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HostFragment.this.m10095i3(view);
            }
        });
        String m12435c = AppData.m12436b().m12435c();
        String m12437a = AppData.m12436b().m12437a();
        boolean m12433e = AppData.m12436b().m12433e();
        this.etPostHost.setText(m12435c);
        this.etAudioHost.setText(m12437a);
        if ("https://api-mipoc.ifengyu.com:8088".equals(m12435c)) {
            this.envRadioGroup.check(R.id.radio_prod);
        } else {
            this.envRadioGroup.check(R.id.radio_test);
        }
        this.checkBoxM303.setChecked(m12433e);
        this.envRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.ifengyu.intercom.ui.fragment.l0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                HostFragment.this.m10093k3(radioGroup, i);
            }
        });
        this.btnSave.setChangeAlphaWhenPress(true);
        this.btnSave.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HostFragment.this.m10091m3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public /* synthetic */ void m10095i3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m10093k3(RadioGroup radioGroup, int i) {
        if (i == R.id.radio_prod) {
            this.etPostHost.setText("https://api-mipoc.ifengyu.com:8088");
            this.etAudioHost.setText("redirector.ifengyu.com:9099");
        } else if (i == R.id.radio_test) {
            this.etPostHost.setText("https://api-mipoc-test.ifengyu.com");
            this.etAudioHost.setText("39.97.69.72:9099");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m10091m3(View view) {
        String trim = this.etPostHost.getText().toString().trim();
        String trim2 = this.etAudioHost.getText().toString().trim();
        if (!C6718a.m279a(trim) && !C6718a.m279a(trim2)) {
            if (!C6718a.m276d(trim, DefaultWebClient.HTTP_SCHEME) && !C6718a.m276d(trim, DefaultWebClient.HTTPS_SCHEME)) {
                ToastUtils.m18371r("http服务地址必须携带http或https协议头");
                return;
            } else if (!C6718a.m276d(trim2, DefaultWebClient.HTTP_SCHEME) && !C6718a.m276d(trim2, DefaultWebClient.HTTPS_SCHEME)) {
                boolean isChecked = this.checkBoxM303.isChecked();
                AppData.m12436b().m12431g(trim);
                AppData.m12436b().m12432f(trim2);
                AppData.m12436b().m12430h(isChecked);
                MiTalkiApp.m14296h().m14281w();
                m10086r3(getContext());
                return;
            } else {
                ToastUtils.m18371r("语音服务地址不能有http协议头");
                return;
            }
        }
        ToastUtils.m18371r("Host地址不能为空");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m10089o3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        TalkDatabase.m8505D().mo8501F().mo8469c();
        m10087q3();
    }

    /* renamed from: p3 */
    public static HostFragment m10088p3() {
        return new HostFragment();
    }

    /* renamed from: q3 */
    private void m10087q3() {
        Intent intent = new Intent(getContext(), SplashActivity.class);
        intent.setFlags(268468224);
        startActivity(intent);
        Process.killProcess(Process.myPid());
        System.exit(0);
    }

    /* renamed from: r3 */
    private void m10086r3(Context context) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(context);
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7247F("配置已更新，确认退出登录并重启应用？");
        messageDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.j0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                HostFragment.this.m10089o3(qMUIDialog, i);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_host, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10097g3();
        return inflate;
    }
}
