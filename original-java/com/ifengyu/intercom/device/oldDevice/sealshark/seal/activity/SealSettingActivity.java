package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.sealshark.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.SetSealSharkBleNameActivity;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.SealBleManager;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.AutoSendLocationActivity;
import com.ifengyu.intercom.p216ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.BleHadDisconnectedDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.ListDialog;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.squareup.otto.Subscribe;
import io.reactivex.functions.Consumer;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Locale;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SealSettingActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: B */
    private LinearLayout f13314B;

    /* renamed from: C */
    private LinearLayout f13315C;

    /* renamed from: D */
    private TextView f13316D;

    /* renamed from: E */
    private TextView f13317E;

    /* renamed from: F */
    private View f13318F;

    /* renamed from: G */
    private String f13319G;

    /* renamed from: H */
    private SealBleManager f13320H;

    /* renamed from: j */
    TextView f13321j;

    /* renamed from: k */
    TextView f13322k;

    /* renamed from: l */
    CheckBox f13323l;

    /* renamed from: m */
    LinearLayout f13324m;

    /* renamed from: n */
    LinearLayout f13325n;

    /* renamed from: o */
    TextView f13326o;

    /* renamed from: p */
    TextView f13327p;

    /* renamed from: q */
    TextView f13328q;

    /* renamed from: r */
    TextView f13329r;

    /* renamed from: s */
    private LinearLayout f13330s;

    /* renamed from: t */
    private TextView f13331t;

    /* renamed from: u */
    private BleHadDisconnectedDialog f13332u;

    /* renamed from: v */
    private QMUIDialog f13333v;

    /* renamed from: x */
    private Runnable f13335x;

    /* renamed from: y */
    private SealSharkChannelModel f13336y;

    /* renamed from: z */
    private Typeface f13337z;

    /* renamed from: w */
    private int f13334w = -1;

    /* renamed from: A */
    private int f13313A = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$a */
    /* loaded from: classes2.dex */
    public class RunnableC3708a implements Runnable {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$a$a */
        /* loaded from: classes2.dex */
        class RunnableC3709a implements Runnable {
            RunnableC3709a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.m10283n();
            }
        }

        RunnableC3708a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSettingActivity sealSettingActivity = SealSettingActivity.this;
            sealSettingActivity.m10275v(sealSettingActivity.getString(R.string.request_time_out));
            SealSettingActivity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new RunnableC3709a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$b */
    /* loaded from: classes2.dex */
    public class C3710b extends ErrorConsumer {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$b$a */
        /* loaded from: classes2.dex */
        class RunnableC3711a implements Runnable {
            RunnableC3711a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.m10283n();
            }
        }

        C3710b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
            UIUtils.m8596v(SealSettingActivity.this.f13335x);
            SealSettingActivity.this.m10275v(NewHttpHelper.m8714a(newApiException.m8703a()));
            SealSettingActivity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new RunnableC3711a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$c */
    /* loaded from: classes2.dex */
    public class C3712c implements QMUIDialogAction.InterfaceC5249b {
        C3712c() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            qMUIDialog.dismiss();
            SealSettingActivity.this.m12792v0();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$d */
    /* loaded from: classes2.dex */
    class RunnableC3713d implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_ChannelStateOperate f13343a;

        RunnableC3713d(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            this.f13343a = sEAL_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f13343a.hasResult()) {
                SealSettingActivity.this.f13313A = -1;
            } else if (this.f13343a.getResult() == SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK) {
                SealSettingActivity.this.m12813Z(this.f13343a);
            } else {
                SealSettingActivity.this.f13313A = -1;
            }
            SealSettingActivity.this.f13320H.m12096n1();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$e */
    /* loaded from: classes2.dex */
    class RunnableC3714e implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_BtEarConnectState f13345a;

        RunnableC3714e(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            this.f13345a = sEAL_BtEarConnectState;
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((this.f13345a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY || this.f13345a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT) && this.f13345a.getResult() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                if (!this.f13345a.hasBtEar()) {
                    SealSettingActivity.this.f13330s.setVisibility(8);
                    return;
                }
                SealProtos.SEAL_BtEarInfo btEar = this.f13345a.getBtEar();
                try {
                    SealSettingActivity.this.f13330s.setVisibility(0);
                    SealSettingActivity.this.f13331t.setText(UIUtils.m8602p(R.string.have_conn_bt_ear_name_s, new String(btEar.getName().toByteArray(), "UTF-8")));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            } else if (this.f13345a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT) {
                SealSettingActivity.this.f13330s.setVisibility(8);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$f */
    /* loaded from: classes2.dex */
    class RunnableC3715f implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f13347a;

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$f$a */
        /* loaded from: classes2.dex */
        class RunnableC3716a implements Runnable {
            RunnableC3716a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.m10283n();
                BaseActivity1.InterfaceC4462d interfaceC4462d = SealSettingActivity.this.f15062h;
                if (interfaceC4462d != null) {
                    interfaceC4462d.mo10270a();
                }
            }
        }

        RunnableC3715f(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f13347a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            UIUtils.m8596v(SealSettingActivity.this.f15063i);
            if (this.f13347a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                SealSettingActivity.this.m10277t(R.drawable.load_success);
                SealSettingActivity.this.m10276u(R.string.activation_successful);
                UIUtils.m8599s(new RunnableC3716a(), 800L);
                return;
            }
            SealSettingActivity.this.f15063i.run();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$g */
    /* loaded from: classes2.dex */
    class RunnableC3717g implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f13350a;

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$g$a */
        /* loaded from: classes2.dex */
        class RunnableC3718a implements Runnable {
            RunnableC3718a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.m10283n();
            }
        }

        RunnableC3717g(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f13350a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f13350a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                int i = SealSettingActivity.this.f13334w;
                if (i == -1) {
                    if (this.f13350a.getCh().hasChVox()) {
                        SealSettingActivity.this.m12789y0();
                        return;
                    }
                    return;
                } else if (i == 0) {
                    SealSettingActivity.this.m10283n();
                    SealSettingActivity.this.f13334w = -1;
                    SealSettingActivity.this.m12789y0();
                    return;
                } else if (i != 1) {
                    return;
                } else {
                    SealSettingActivity.this.m10283n();
                    SealSettingActivity.this.f13334w = -1;
                    CheckBox checkBox = SealSettingActivity.this.f13323l;
                    checkBox.setChecked(true ^ checkBox.isChecked());
                    return;
                }
            }
            SealSettingActivity.this.f13334w = -1;
            SealSettingActivity.this.m10277t(R.drawable.load_fail);
            SealSettingActivity.this.m10276u(R.string.not_support_switch);
            UIUtils.m8599s(new RunnableC3718a(), 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$h */
    /* loaded from: classes2.dex */
    public class RunnableC3719h implements Runnable {
        RunnableC3719h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$i */
    /* loaded from: classes2.dex */
    public class C3720i implements BaseActivity1.InterfaceC4462d {
        C3720i() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: a */
        public void mo10270a() {
            SealSettingActivity.this.f13324m.setVisibility(8);
            String m11181v = MiTalkClientUtil.m11181v();
            if (TextUtils.isEmpty(m11181v)) {
                return;
            }
            SealSettingActivity.this.m12819T(m11181v);
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: b */
        public void mo10269b() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: c */
        public void mo10268c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$j */
    /* loaded from: classes2.dex */
    public class C3721j extends ErrorConsumer {
        C3721j(SealSettingActivity sealSettingActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("SealSettingActivity", "activateDevice fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$k */
    /* loaded from: classes2.dex */
    public class C3722k implements ListDialog.InterfaceC4927c {
        C3722k() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i <= 3) {
                if (i == 0 || MiTalkClientUtil.m11263F() != 0) {
                    SealSettingActivity.this.m12790x0(i);
                } else {
                    SealSettingActivity.this.m12788z0(i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealSettingActivity$l */
    /* loaded from: classes2.dex */
    public class RunnableC3723l implements Runnable {
        RunnableC3723l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSettingActivity.this.f13334w = -1;
            SealSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: T */
    public void m12819T(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("deviceId", str);
        hashMap.put("active", 1);
        AppServiceClient.m11355a().m11390Q(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(C3734k.f13368a, new C3721j(this));
    }

    /* renamed from: U */
    private void m12818U(SealSharkChannelModel sealSharkChannelModel) {
        View inflate;
        this.f13327p = null;
        this.f13328q = null;
        this.f13329r = null;
        if (sealSharkChannelModel.isStChannel()) {
            inflate = View.inflate(this, R.layout.seal_shark_single_channel_normal_layout, null);
            this.f13327p = (TextView) inflate.findViewById(R.id.normal_channel_name);
            this.f13328q = (TextView) inflate.findViewById(R.id.normal_channel_number);
            this.f13314B = (LinearLayout) inflate.findViewById(R.id.normal_css_channel_layout);
            this.f13316D = (TextView) inflate.findViewById(R.id.normal_rx_css_value);
            this.f13317E = (TextView) inflate.findViewById(R.id.normal_tx_css_value);
            this.f13328q.setTypeface(this.f13337z);
        } else {
            inflate = View.inflate(this, R.layout.seal_shark_single_channel_custom_layout, null);
            this.f13327p = (TextView) inflate.findViewById(R.id.relay_channel_name);
            this.f13328q = (TextView) inflate.findViewById(R.id.relay_channel_receive_number);
            this.f13329r = (TextView) inflate.findViewById(R.id.relay_channel_transmit_number);
            this.f13315C = (LinearLayout) inflate.findViewById(R.id.custom_css_layout);
            this.f13316D = (TextView) inflate.findViewById(R.id.relay_rx_css_value);
            this.f13317E = (TextView) inflate.findViewById(R.id.relay_tx_css_value);
            this.f13328q.setTypeface(this.f13337z);
            this.f13329r.setTypeface(this.f13337z);
        }
        inflate.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.f13325n.removeAllViews();
        this.f13325n.addView(inflate);
    }

    /* renamed from: V */
    private void m12817V(SealSharkChannelModel sealSharkChannelModel, boolean z) {
        if (!this.f13320H.m329v()) {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        } else if (sealSharkChannelModel == null) {
        } else {
            int i = this.f13313A;
            if (i > 0) {
                switch (i) {
                    case 1:
                    case 2:
                        MethodsUtils.m11302H(getString(R.string.sos_mode_can_not_setting), false);
                        return;
                    case 3:
                    case 4:
                        MethodsUtils.m11302H(getString(R.string.scan_mode_can_not_setting), false);
                        return;
                    case 5:
                    case 6:
                        MethodsUtils.m11302H(getString(R.string.team_mode_can_not_setting), false);
                        return;
                    default:
                        return;
                }
            } else if (sealSharkChannelModel.getName() == null || sealSharkChannelModel.getRxFreq() <= 0 || sealSharkChannelModel.getTxFreq() <= 0) {
            } else {
                SealChannelSettingActivity.m12862I(this, sealSharkChannelModel, true, this.f13319G);
            }
        }
    }

    /* renamed from: W */
    private void m12816W() {
        if (this.f13320H.m329v()) {
            if (this.f13320H.m12143C0()) {
                m10287D(false, false, getString(R.string.device_had_actived), R.drawable.load_spinner);
                m10277t(R.drawable.load_success);
                UIUtils.m8599s(new RunnableC3719h(), 500L);
                return;
            }
            m10289B(new C3720i());
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: X */
    private void m12815X() {
        if (!MethodsUtils.m11274z(this)) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
        } else if (!this.f13320H.m329v()) {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        } else {
            m10287D(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
            RunnableC3708a runnableC3708a = new RunnableC3708a();
            this.f13335x = runnableC3708a;
            UIUtils.m8599s(runnableC3708a, 8000L);
            m12791w0();
        }
    }

    /* renamed from: Y */
    private void m12814Y() {
        if (this.f13320H.m329v()) {
            String[] strArr = {getString(R.string.common_off), getString(R.string.free_call_level_low), getString(R.string.free_call_level_middle), getString(R.string.free_call_level_high), getString(R.string.common_cancel)};
            ListDialog listDialog = new ListDialog(this);
            listDialog.m8937k(true);
            listDialog.m8936l(R.string.button_free_call_text);
            listDialog.m8934n(strArr, new C3722k());
            listDialog.show();
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public void m12813Z(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode()) {
            int number = sEAL_ChannelStateOperate.getDeviceMode().getNumber();
            this.f13313A = number;
            if (number == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL.getNumber()) {
                if (sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
                    SealProtos.SEAL_ChannelInfo ch1 = sEAL_ChannelStateOperate.getCh1();
                    if (ch1.hasChNo() && ch1.hasChName() && ch1.hasChType() && ch1.hasChRxFreq()) {
                        SealSharkChannelModel m11815f = BleChannelUtils.m11815f(ch1);
                        this.f13336y = m11815f;
                        if (m11815f != null) {
                            m12818U(m11815f);
                            if (this.f13336y.isStChannel()) {
                                this.f13328q.setText(MethodsUtils.m11290j(this.f13336y.getRxFreq()));
                                this.f13327p.setText(this.f13336y.getName());
                                if (this.f13336y.getRxCss() % 256 == 0 && this.f13336y.getTxCss() % 256 == 0) {
                                    this.f13314B.setVisibility(4);
                                    return;
                                }
                                this.f13316D.setText(UIUtils.m8602p(R.string.receive_css_code_s, MethodsUtils.m11305E(this.f13336y.getRxCss())));
                                this.f13317E.setText(UIUtils.m8602p(R.string.translate_css_code_s, MethodsUtils.m11305E(this.f13336y.getTxCss())));
                                return;
                            }
                            this.f13328q.setText(MethodsUtils.m11290j(this.f13336y.getRxFreq()));
                            this.f13329r.setText(MethodsUtils.m11290j(this.f13336y.getTxFreq()));
                            String format = String.format(Locale.getDefault(), "C%02d", Integer.valueOf(this.f13336y.getNo() + 1));
                            if (this.f13336y.getName().trim().length() == 0) {
                                this.f13327p.setText(format);
                            } else {
                                TextView textView = this.f13327p;
                                textView.setText(format + " " + this.f13336y.getName().trim());
                            }
                            if (this.f13336y.getRxCss() % 256 == 0 && this.f13336y.getTxCss() % 256 == 0) {
                                this.f13315C.setVisibility(4);
                                return;
                            }
                            this.f13316D.setText(UIUtils.m8602p(R.string.receive_css_code_s, MethodsUtils.m11305E(this.f13336y.getRxCss())));
                            this.f13317E.setText(UIUtils.m8602p(R.string.translate_css_code_s, MethodsUtils.m11305E(this.f13336y.getTxCss())));
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
            TextView textView2 = (TextView) inflate.findViewById(R.id.the_mode_of_current);
            TextView textView3 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
            this.f13325n.removeAllViews();
            this.f13325n.addView(inflate);
            return;
        }
        this.f13313A = -1;
    }

    /* renamed from: a0 */
    private void m12812a0() {
        if (this.f13320H.m329v()) {
            Intent intent = new Intent(this, SetSealSharkBleNameActivity.class);
            intent.putExtra("device_mac_address", this.f13319G);
            startActivityForResult(intent, 6);
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: b0 */
    private void m12811b0() {
        if (this.f13320H.m329v()) {
            if (this.f13323l.isChecked()) {
                startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
                return;
            } else {
                MethodsUtils.m11302H(getString(R.string.setting_please_open_share_loc_btn), false);
                return;
            }
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: c0 */
    private void m12810c0() {
        if (this.f13320H.m329v()) {
            m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
            if (this.f13335x != null) {
                BaseApp.m8713a().removeCallbacks(this.f13335x);
            }
            this.f13335x = new RunnableC3723l();
            BaseApp.m8713a().postDelayed(this.f13335x, 5000L);
            this.f13334w = 1;
            this.f13320H.m12144B1(!this.f13323l.isChecked());
        } else if (this.f13323l.isChecked()) {
            this.f13323l.setChecked(false);
            stopService(new Intent(this, ShareLocationService.class));
        } else {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        }
    }

    /* renamed from: d0 */
    private void m12809d0() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
        messageDialogBuilder.m7248E(R.string.setting_confirm_un_bind_current_device);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3732i.f13366a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new C3712c());
        QMUIDialog m7296f = messageDialogBuilder2.m7296f(R.style.DialogTheme1);
        this.f13333v = m7296f;
        m7296f.show();
    }

    /* renamed from: e0 */
    private void m12808e0() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.have_conn_bt_ear_layout);
        this.f13330s = linearLayout;
        linearLayout.setVisibility(8);
        this.f13331t = (TextView) findViewById(R.id.have_conn_bt_ear_tv);
        this.f13325n = (LinearLayout) findViewById(R.id.top_channel_container);
        this.f13324m = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.f13321j = (TextView) findViewById(R.id.current_device_name);
        this.f13322k = (TextView) findViewById(R.id.auto_send_location_time);
        this.f13326o = (TextView) findViewById(R.id.free_call_level);
        this.f13323l = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.f13337z = AppConstants.f13909c;
        findViewById(R.id.have_conn_bt_ear_layout).setOnClickListener(this);
        findViewById(R.id.rl_device_activate).setOnClickListener(this);
        findViewById(R.id.device_name_select_talkie).setOnClickListener(this);
        findViewById(R.id.button_free_call).setOnClickListener(this);
        findViewById(R.id.public_my_location).setOnClickListener(this);
        findViewById(R.id.auto_send_location).setOnClickListener(this);
        findViewById(R.id.device_update).setOnClickListener(this);
        findViewById(R.id.help_device_connect_ble_ear).setOnClickListener(this);
        findViewById(R.id.more_setting).setOnClickListener(this);
        findViewById(R.id.relieve_binding).setOnClickListener(this);
        findViewById(R.id.item_about).setOnClickListener(this);
        this.f13318F = findViewById(R.id.have_mcu_update_red_point);
        if (!this.f13320H.m329v()) {
            BleHadDisconnectedDialog bleHadDisconnectedDialog = new BleHadDisconnectedDialog(this);
            this.f13332u = bleHadDisconnectedDialog;
            bleHadDisconnectedDialog.show();
        }
        this.f13324m.setVisibility(this.f13320H.m12143C0() ? 8 : 0);
        this.f13321j.setText(MiTalkClientUtil.m11193p());
        m12789y0();
        this.f13323l.setClickable(false);
        this.f13323l.setChecked(MiTalkClientUtil.m11175y());
        this.f13322k.setText(UIUtils.m8602p(R.string.minute, Long.valueOf(MiTalkClientUtil.m11201l(this.f13319G) / 60000)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m12804i0() {
        m10283n();
        m10286E(MainActivity.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ void m12802k0() {
        m10275v(getString(R.string.unbind_success));
        m10277t(R.drawable.load_success);
        if (this.f13335x != null) {
            BaseApp.m8713a().removeCallbacks(this.f13335x);
            this.f13335x = null;
        }
        this.f13335x = new Runnable() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.c
            @Override // java.lang.Runnable
            public final void run() {
                SealSettingActivity.this.m12804i0();
            }
        };
        BaseApp.m8713a().postDelayed(this.f13335x, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ void m12800m0(ConnectStateEvent connectStateEvent) throws Exception {
        if (BleCoreClient.m12373n().m12372o(this.f13319G)) {
            BleHadDisconnectedDialog bleHadDisconnectedDialog = this.f13332u;
            if (bleHadDisconnectedDialog != null && bleHadDisconnectedDialog.isShowing()) {
                this.f13332u.dismiss();
            }
            this.f13320H.m12106g1();
        }
        if (BleCoreClient.m12373n().m12372o(this.f13319G)) {
            return;
        }
        this.f13330s.setVisibility(8);
        BleHadDisconnectedDialog bleHadDisconnectedDialog2 = new BleHadDisconnectedDialog(this);
        this.f13332u = bleHadDisconnectedDialog2;
        bleHadDisconnectedDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ void m12798o0(VersionInfo versionInfo) throws Exception {
        C4161y.m11049f("SealSettingActivity", "seal versionInfo:" + versionInfo.toString());
        UIUtils.m8596v(this.f13335x);
        m10283n();
        versionInfo.getVersionCode();
        int m11265E = MiTalkClientUtil.m11265E();
        Intent intent = new Intent(this, SealSharkMcuUpdateActivity.class);
        intent.putExtra("device_mac_address", this.f13319G);
        intent.putExtra("mcu_update_device_type", "seal");
        if (m11265E > 0 && versionInfo.isHasNewVersion()) {
            intent.putExtra("mcu_have_update", true);
        } else {
            intent.putExtra("mcu_have_update", false);
        }
        intent.putExtra("mcu_update_info", versionInfo);
        intent.setAction("mcu_update_action_from_setting");
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m12796q0() {
        this.f13334w = -1;
        m10283n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t0 */
    public /* synthetic */ void m12793u0(int i, QMUIDialog qMUIDialog, int i2) {
        qMUIDialog.dismiss();
        m12790x0(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v0 */
    public void m12792v0() {
        m10287D(false, false, getString(R.string.unbind_ing), R.drawable.load_spinner);
        BleCoreClient.m12373n().m12384c(this.f13319G);
        MiTalkClientUtil.m11221b();
        if (this.f13335x != null) {
            BaseApp.m8713a().removeCallbacks(this.f13335x);
            this.f13335x = null;
        }
        this.f13335x = new Runnable() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.e
            @Override // java.lang.Runnable
            public final void run() {
                SealSettingActivity.this.m12802k0();
            }
        };
        BaseApp.m8713a().postDelayed(this.f13335x, 500L);
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: w0 */
    private void m12791w0() {
        AppServiceClient.m11355a().m11387T("seal", MiTalkClientUtil.m11265E(), MiTalkClientUtil.m11267D(), "zh_cn").compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.j
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SealSettingActivity.this.m12798o0((VersionInfo) obj);
            }
        }, new C3710b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x0 */
    public void m12790x0(int i) {
        m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
        if (this.f13335x != null) {
            BaseApp.m8713a().removeCallbacks(this.f13335x);
        }
        this.f13335x = new Runnable() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.d
            @Override // java.lang.Runnable
            public final void run() {
                SealSettingActivity.this.m12796q0();
            }
        };
        BaseApp.m8713a().postDelayed(this.f13335x, 5000L);
        this.f13334w = 0;
        this.f13320H.m12078w1(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y0 */
    public void m12789y0() {
        int m11263F = MiTalkClientUtil.m11263F();
        if (m11263F == 0) {
            this.f13326o.setText(getString(R.string.common_off));
        } else if (m11263F == 1) {
            if (MethodsUtils.m11297c()) {
                this.f13326o.setText("Low");
            } else {
                this.f13326o.setText(getString(R.string.free_call_level_low));
            }
        } else if (m11263F == 2) {
            if (MethodsUtils.m11297c()) {
                this.f13326o.setText("Medium");
            } else {
                this.f13326o.setText(getString(R.string.free_call_level_middle));
            }
        } else if (m11263F != 3) {
        } else {
            if (MethodsUtils.m11297c()) {
                this.f13326o.setText("High");
            } else {
                this.f13326o.setText(getString(R.string.free_call_level_high));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z0 */
    public void m12788z0(final int i) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
        messageDialogBuilder.m7282x(R.string.sure_open_vox_prompt_title);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7248E(R.string.sure_open_vox_prompt_detail);
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3729f.f13362a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.action_open, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.g
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                SealSettingActivity.this.m12793u0(i, qMUIDialog, i2);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 6) {
            if (i2 == 1) {
                this.f13321j.setText(intent.getStringExtra("setting_walkie_name"));
                CommonDialog commonDialog = new CommonDialog(this);
                commonDialog.m9025l(getString(R.string.setting_success_please_restart));
                commonDialog.m9022o(R.string.user_guide_i_know, null);
                commonDialog.m9032e();
                commonDialog.m9016u();
            }
        } else if (i == 7 && i2 == 1) {
            int intExtra = intent.getIntExtra("setting_auto_send_location_space_time", 3);
            this.f13322k.setText(UIUtils.m8602p(R.string.minute, Integer.valueOf(intExtra)));
            long j = intExtra * 60000;
            MiTalkClientUtil.m11174y0(this.f13319G, j);
            if (ShareLocationService.m10698e() != null) {
                ShareLocationService.m10698e().m10688o(j);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.auto_send_location /* 2131296368 */:
                m12811b0();
                return;
            case R.id.button_free_call /* 2131296447 */:
                m12814Y();
                return;
            case R.id.device_name_select_talkie /* 2131296595 */:
                m12812a0();
                return;
            case R.id.device_update /* 2131296603 */:
                m12815X();
                return;
            case R.id.have_conn_bt_ear_layout /* 2131296770 */:
                if (this.f13320H.m329v()) {
                    Intent intent = new Intent(this, SealBtEarDisConnActivity.class);
                    intent.putExtra("bt_ear_had_conn_to", this.f13331t.getText());
                    intent.putExtra("device_mac_address", this.f13319G);
                    startActivity(intent);
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.help_device_connect_ble_ear /* 2131296774 */:
                Intent intent2 = new Intent(this, SealBtEarGuide1Activity.class);
                intent2.putExtra("device_mac_address", this.f13319G);
                startActivity(intent2);
                return;
            case R.id.item_about /* 2131296828 */:
                UserProtocolActivity.m10420T(this, MiTalkClientUtil.m11181v());
                return;
            case R.id.more_setting /* 2131297039 */:
                Intent intent3 = new Intent(this, SealMoreSettingActivity.class);
                intent3.putExtra("device_mac_address", this.f13319G);
                startActivity(intent3);
                return;
            case R.id.public_my_location /* 2131297144 */:
                m12810c0();
                return;
            case R.id.relieve_binding /* 2131297199 */:
                m12809d0();
                return;
            case R.id.rl_device_activate /* 2131297218 */:
                m12816W();
                return;
            case R.id.single_channel_item_enter_btn /* 2131297317 */:
                m12817V(this.f13336y, true);
                return;
            case R.id.title_bar_left /* 2131297422 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_setting);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13319G = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f13320H = BleCoreClient.m12373n().m12375l(this.f13319G);
        m12808e0();
        RxBus.m11806d().m11808b(this, ConnectStateEvent.class, new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SealSettingActivity.this.m12800m0((ConnectStateEvent) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        RxBus.m11806d().m11803g(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        C4161y.m11049f("SealSettingActivity", "onNewIntent");
        super.onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f13318F.setVisibility(MiTalkClientUtil.m11216d0() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        C4161y.m11049f("SealSettingActivity", "onStart");
        super.onStart();
        MiBus.getInstance().m6411j(this);
        this.f13334w = -1;
        this.f13323l.setChecked(MiTalkClientUtil.m11175y());
        this.f13320H.m12106g1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MiBus.getInstance().m6409l(this);
        BleHadDisconnectedDialog bleHadDisconnectedDialog = this.f13332u;
        if (bleHadDisconnectedDialog != null) {
            bleHadDisconnectedDialog.dismiss();
        }
        QMUIDialog qMUIDialog = this.f13333v;
        if (qMUIDialog != null) {
            qMUIDialog.dismiss();
        }
    }

    @Subscribe
    public void receiveBtEarConnectStateResp(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        C4161y.m11049f("SealSettingActivity", "receiveBtEarConnectStateResp");
        runOnUiThread(new RunnableC3714e(sEAL_BtEarConnectState));
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        C4161y.m11049f("SealSettingActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new RunnableC3713d(sEAL_ChannelStateOperate));
    }

    @Subscribe
    public void receiveParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        C4161y.m11049f("SealSettingActivity", "receiveParamResponse");
        if (this.f15061g) {
            this.f15061g = false;
            UIUtils.m8598t(new RunnableC3715f(sEAL_DeviceParam));
            return;
        }
        UIUtils.m8598t(new RunnableC3717g(sEAL_DeviceParam));
    }
}
