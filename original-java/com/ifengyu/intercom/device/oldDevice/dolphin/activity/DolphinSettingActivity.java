package com.ifengyu.intercom.device.oldDevice.dolphin.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.ChannelBean;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateManager;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.DolphinUpdateMcuActivity;
import com.ifengyu.intercom.device.oldDevice.dolphin.update.OnCheckDolphinUpdateCallback;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.event.StateUpdateEvent;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.DolphinBleManager;
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
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.service.ShareLocationService;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.squareup.otto.Subscribe;
import io.reactivex.functions.Consumer;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class DolphinSettingActivity extends BaseActivity1 implements View.OnClickListener, OnCheckDolphinUpdateCallback {

    /* renamed from: B */
    private Typeface f12802B;

    /* renamed from: C */
    private LinearLayout f12803C;

    /* renamed from: D */
    private View f12804D;

    /* renamed from: E */
    private View f12805E;

    /* renamed from: F */
    private TextView f12806F;

    /* renamed from: G */
    private TextView f12807G;

    /* renamed from: H */
    private TextView f12808H;

    /* renamed from: I */
    private TextView f12809I;

    /* renamed from: J */
    private TextView f12810J;

    /* renamed from: K */
    private TextView f12811K;

    /* renamed from: L */
    private View f12812L;

    /* renamed from: M */
    private TextView f12813M;

    /* renamed from: N */
    private TextView f12814N;

    /* renamed from: O */
    private TextView f12815O;

    /* renamed from: P */
    private BleHadDisconnectedDialog f12816P;

    /* renamed from: Q */
    private String f12817Q;

    /* renamed from: R */
    private DolphinBleManager f12818R;

    /* renamed from: j */
    private TextView f12819j;

    /* renamed from: k */
    private TextView f12820k;

    /* renamed from: l */
    private CheckBox f12821l;

    /* renamed from: m */
    private CheckBox f12822m;

    /* renamed from: n */
    View f12823n;

    /* renamed from: o */
    View f12824o;

    /* renamed from: p */
    View f12825p;

    /* renamed from: q */
    View f12826q;

    /* renamed from: r */
    View f12827r;

    /* renamed from: s */
    View f12828s;

    /* renamed from: t */
    View f12829t;

    /* renamed from: u */
    LinearLayout f12830u;

    /* renamed from: w */
    private Runnable f12832w;

    /* renamed from: x */
    private QMUIDialog f12833x;

    /* renamed from: y */
    private DolphinChannelModel f12834y;

    /* renamed from: z */
    private DolphinChannelModel f12835z;

    /* renamed from: v */
    private int f12831v = -1;

    /* renamed from: A */
    private int f12801A = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$a */
    /* loaded from: classes2.dex */
    public class RunnableC3536a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ StateUpdateEvent f12836a;

        RunnableC3536a(StateUpdateEvent stateUpdateEvent) {
            this.f12836a = stateUpdateEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DolphinSettingActivity.this.f12831v == 1) {
                DolphinSettingActivity.this.m10283n();
                DolphinSettingActivity.this.f12831v = -1;
            }
            if (!this.f12836a.isHasCh1() || !this.f12836a.isHasCh2()) {
                DolphinSettingActivity.this.f12821l.setChecked(false);
            } else {
                DolphinSettingActivity.this.f12821l.setChecked(true);
            }
            if (MiTalkClientUtil.f14440a == 1) {
                DolphinSettingActivity.this.m13261g0(this.f12836a);
            } else {
                DolphinSettingActivity.this.m13260h0(this.f12836a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$b */
    /* loaded from: classes2.dex */
    public class RunnableC3537b implements Runnable {
        RunnableC3537b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$c */
    /* loaded from: classes2.dex */
    public class C3538c implements CompoundButton.OnCheckedChangeListener {
        C3538c(DolphinSettingActivity dolphinSettingActivity) {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            MiTalkClientUtil.m11184t0(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$d */
    /* loaded from: classes2.dex */
    public class C3539d implements CompoundButton.OnCheckedChangeListener {
        C3539d(DolphinSettingActivity dolphinSettingActivity) {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            MiTalkClientUtil.m11186s0(z);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$e */
    /* loaded from: classes2.dex */
    class RunnableC3540e implements Runnable {
        RunnableC3540e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.m10283n();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$f */
    /* loaded from: classes2.dex */
    class C3541f implements BaseActivity1.InterfaceC4462d {
        C3541f() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: a */
        public void mo10270a() {
            DolphinSettingActivity.this.f12830u.setVisibility(8);
            String m11211g = MiTalkClientUtil.m11211g();
            if (TextUtils.isEmpty(m11211g)) {
                return;
            }
            DolphinSettingActivity.this.m13281L(m11211g);
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

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$g */
    /* loaded from: classes2.dex */
    class RunnableC3542g implements Runnable {
        RunnableC3542g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.f12831v = -1;
            DolphinSettingActivity.this.m10283n();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$h */
    /* loaded from: classes2.dex */
    class RunnableC3543h implements Runnable {
        RunnableC3543h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.f12831v = -1;
            DolphinSettingActivity.this.m10283n();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$i */
    /* loaded from: classes2.dex */
    class C3544i implements QMUIDialogAction.InterfaceC5249b {
        C3544i() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            qMUIDialog.dismiss();
            DolphinSettingActivity.this.m13266b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$j */
    /* loaded from: classes2.dex */
    public class C3545j extends ErrorConsumer {
        C3545j(DolphinSettingActivity dolphinSettingActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("DolphinSettingActivity", "activateDevice fail");
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$k */
    /* loaded from: classes2.dex */
    class RunnableC3546k implements Runnable {

        /* renamed from: a */
        final /* synthetic */ MitalkProtos.ParamUpdate f12844a;

        /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$k$a */
        /* loaded from: classes2.dex */
        class RunnableC3547a implements Runnable {
            RunnableC3547a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinSettingActivity.this.m10283n();
                BaseActivity1.InterfaceC4462d interfaceC4462d = DolphinSettingActivity.this.f15062h;
                if (interfaceC4462d != null) {
                    interfaceC4462d.mo10270a();
                }
            }
        }

        RunnableC3546k(MitalkProtos.ParamUpdate paramUpdate) {
            this.f12844a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            UIUtils.m8596v(DolphinSettingActivity.this.f15063i);
            if (this.f12844a.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                DolphinSettingActivity.this.m10277t(R.drawable.load_success);
                DolphinSettingActivity.this.m10276u(R.string.activation_successful);
                UIUtils.m8599s(new RunnableC3547a(), 800L);
                return;
            }
            DolphinSettingActivity.this.f15063i.run();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$l */
    /* loaded from: classes2.dex */
    class RunnableC3548l implements Runnable {

        /* renamed from: a */
        final /* synthetic */ MitalkProtos.ParamUpdate f12847a;

        RunnableC3548l(MitalkProtos.ParamUpdate paramUpdate) {
            this.f12847a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.m13265c0(this.f12847a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$m */
    /* loaded from: classes2.dex */
    public class RunnableC3549m implements Runnable {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinSettingActivity$m$a */
        /* loaded from: classes2.dex */
        class RunnableC3550a implements Runnable {
            RunnableC3550a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinSettingActivity.this.m10283n();
            }
        }

        RunnableC3549m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity dolphinSettingActivity = DolphinSettingActivity.this;
            dolphinSettingActivity.m10275v(dolphinSettingActivity.getString(R.string.request_time_out));
            DolphinSettingActivity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new RunnableC3550a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: L */
    public void m13281L(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("deviceId", str);
        hashMap.put("active", 1);
        AppServiceClient.m11355a().m11390Q(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(C3557e.f12869a, new C3545j(this));
    }

    /* renamed from: M */
    private void m13280M() {
        DolphinUpdateManager.m13109f().m13096s(this);
        if (!MethodsUtils.m11274z(this)) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
        } else if (!BleCoreClient.m12373n().m12372o(this.f12817Q)) {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        } else {
            m10287D(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
            DolphinUpdateManager.m13109f().m13111d(false, MiTalkClientUtil.m11203k());
            RunnableC3549m runnableC3549m = new RunnableC3549m();
            this.f12832w = runnableC3549m;
            UIUtils.m8599s(runnableC3549m, 8000L);
        }
    }

    /* renamed from: N */
    private void m13279N(MitalkProtos.ChannelInfo channelInfo, MitalkProtos.ChannelInfo channelInfo2) {
        this.f12804D = null;
        this.f12806F = null;
        this.f12807G = null;
        this.f12808H = null;
        this.f12805E = null;
        this.f12809I = null;
        this.f12810J = null;
        this.f12811K = null;
        MitalkProtos.CHTYPE type = channelInfo.getType();
        MitalkProtos.CHTYPE chtype = MitalkProtos.CHTYPE.RELAY;
        if (type == chtype) {
            View inflate = View.inflate(this, R.layout.dolphin_double_channel_relay_item, null);
            this.f12804D = inflate;
            this.f12806F = (TextView) inflate.findViewById(R.id.relay_name);
            this.f12807G = (TextView) this.f12804D.findViewById(R.id.relay_receive_number);
            this.f12808H = (TextView) this.f12804D.findViewById(R.id.relay_transmit_number);
            this.f12807G.setTypeface(this.f12802B);
            this.f12808H.setTypeface(this.f12802B);
        } else {
            View inflate2 = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.f12804D = inflate2;
            this.f12806F = (TextView) inflate2.findViewById(R.id.normal_channel_name);
            TextView textView = (TextView) this.f12804D.findViewById(R.id.normal_channel_number);
            this.f12807G = textView;
            textView.setTypeface(this.f12802B);
        }
        this.f12804D.setId(R.id.double_channel_top_item_id);
        this.f12804D.setOnClickListener(this);
        if (channelInfo2.getType() == chtype) {
            View inflate3 = View.inflate(this, R.layout.dolphin_double_channel_relay_item, null);
            this.f12805E = inflate3;
            inflate3.findViewById(R.id.space_line).setVisibility(0);
            this.f12809I = (TextView) this.f12805E.findViewById(R.id.relay_name);
            this.f12810J = (TextView) this.f12805E.findViewById(R.id.relay_receive_number);
            this.f12811K = (TextView) this.f12805E.findViewById(R.id.relay_transmit_number);
            this.f12810J.setTypeface(this.f12802B);
            this.f12811K.setTypeface(this.f12802B);
        } else {
            View inflate4 = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.f12805E = inflate4;
            inflate4.findViewById(R.id.space_line).setVisibility(0);
            this.f12809I = (TextView) this.f12805E.findViewById(R.id.normal_channel_name);
            TextView textView2 = (TextView) this.f12805E.findViewById(R.id.normal_channel_number);
            this.f12810J = textView2;
            textView2.setTypeface(this.f12802B);
        }
        this.f12805E.setId(R.id.double_channel_bottom_item_id);
        this.f12805E.setOnClickListener(this);
        this.f12803C.removeAllViews();
        this.f12803C.addView(this.f12804D);
        this.f12803C.addView(this.f12805E);
    }

    /* renamed from: O */
    private void m13278O(MitalkProtos.ChannelInfo channelInfo) {
        this.f12812L = null;
        this.f12813M = null;
        this.f12814N = null;
        this.f12815O = null;
        if (channelInfo.getType() == MitalkProtos.CHTYPE.RELAY) {
            View inflate = View.inflate(this, R.layout.single_channel_display_relay_layout, null);
            this.f12812L = inflate;
            this.f12813M = (TextView) inflate.findViewById(R.id.relay_channel_name);
            this.f12814N = (TextView) this.f12812L.findViewById(R.id.relay_channel_receive_number);
            this.f12815O = (TextView) this.f12812L.findViewById(R.id.normal_channel_transmit_number);
            this.f12814N.setTypeface(this.f12802B);
            this.f12815O.setTypeface(this.f12802B);
        } else {
            View inflate2 = View.inflate(this, R.layout.single_channel_display_normal_layout, null);
            this.f12812L = inflate2;
            this.f12813M = (TextView) inflate2.findViewById(R.id.normal_channel_name);
            TextView textView = (TextView) this.f12812L.findViewById(R.id.normal_channel_number);
            this.f12814N = textView;
            textView.setTypeface(this.f12802B);
        }
        this.f12812L.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.f12803C.removeAllViews();
        this.f12803C.addView(this.f12812L);
    }

    /* renamed from: P */
    private void m13277P(DolphinChannelModel dolphinChannelModel, boolean z) {
        if (!BleCoreClient.m12373n().m12372o(this.f12817Q)) {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        } else if (dolphinChannelModel == null) {
        } else {
            if (dolphinChannelModel.getType() == 4) {
                MethodsUtils.m11302H(getString(R.string.sos_mode_can_not_setting), false);
            } else if (dolphinChannelModel.getType() == 6) {
                MethodsUtils.m11302H(getString(R.string.team_mode_can_not_setting), false);
            } else if (dolphinChannelModel.getType() == 7) {
                MethodsUtils.m11302H(getString(R.string.scan_mode_can_not_setting), false);
            } else if (this.f12801A == 2) {
                CommonDialog commonDialog = new CommonDialog(this);
                commonDialog.m9025l(UIUtils.m8603o(R.string.not_support_chapin_mode_please_do_it_on_device));
                commonDialog.m9022o(R.string.sure, null);
                commonDialog.m9032e();
                commonDialog.m9016u();
            } else {
                DolphinCHSettingActivity.m13303O(this, this.f12817Q, dolphinChannelModel, z);
            }
        }
    }

    /* renamed from: R */
    private void m13276R(StateUpdateEvent stateUpdateEvent) {
        runOnUiThread(new RunnableC3536a(stateUpdateEvent));
    }

    /* renamed from: S */
    private void m13275S() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        this.f12823n = findViewById(R.id.rl_device_activate);
        this.f12824o = findViewById(R.id.device_name_select_talkie);
        this.f12825p = findViewById(R.id.double_frequency_model);
        this.f12826q = findViewById(R.id.public_my_location);
        this.f12827r = findViewById(R.id.auto_send_location);
        this.f12828s = findViewById(R.id.device_update);
        this.f12829t = findViewById(R.id.device_about);
        this.f12830u = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.device_setting_container);
        this.f12819j = (TextView) findViewById(R.id.current_device_name);
        this.f12820k = (TextView) findViewById(R.id.auto_send_location_time);
        this.f12821l = (CheckBox) findViewById(R.id.double_frequency_model_switch_btn);
        this.f12822m = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.f12802B = AppConstants.f13909c;
        this.f12803C = (LinearLayout) findViewById(R.id.top_channel_container);
        this.f12823n.setOnClickListener(this);
        this.f12824o.setOnClickListener(this);
        this.f12825p.setOnClickListener(this);
        this.f12826q.setOnClickListener(this);
        this.f12827r.setOnClickListener(this);
        this.f12828s.setOnClickListener(this);
        this.f12829t.setOnClickListener(this);
        findViewById(R.id.relieve_binding).setOnClickListener(this);
        if (!BleCoreClient.m12373n().m12372o(this.f12817Q)) {
            BleHadDisconnectedDialog bleHadDisconnectedDialog = new BleHadDisconnectedDialog(this);
            this.f12816P = bleHadDisconnectedDialog;
            bleHadDisconnectedDialog.show();
        }
        this.f12830u.setVisibility(this.f12818R.m12361D0() ? 8 : 0);
        this.f12819j.setText(MiTalkClientUtil.m11193p());
        this.f12822m.setClickable(false);
        this.f12822m.setChecked(MiTalkClientUtil.m11224Z());
        this.f12820k.setText(UIUtils.m8602p(R.string.minute, Long.valueOf(MiTalkClientUtil.m11201l(this.f12817Q) / 60000)));
        this.f12822m.setOnCheckedChangeListener(new C3538c(this));
        this.f12821l.setClickable(false);
        this.f12821l.setChecked(MiTalkClientUtil.m11225Y());
        this.f12821l.setOnCheckedChangeListener(new C3539d(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public /* synthetic */ void m13271W() {
        m10283n();
        m10286E(MainActivity.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public /* synthetic */ void m13269Y() {
        m10275v(getString(R.string.unbind_success));
        m10277t(R.drawable.load_success);
        if (this.f12832w != null) {
            BaseApp.m8713a().removeCallbacks(this.f12832w);
            this.f12832w = null;
        }
        this.f12832w = new Runnable() { // from class: com.ifengyu.intercom.device.oldDevice.dolphin.activity.d
            @Override // java.lang.Runnable
            public final void run() {
                DolphinSettingActivity.this.m13271W();
            }
        };
        BaseApp.m8713a().postDelayed(this.f12832w, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public /* synthetic */ void m13267a0(ConnectStateEvent connectStateEvent) throws Exception {
        if (BleCoreClient.m12373n().m12372o(this.f12817Q)) {
            this.f12818R.m12317p1();
            BleHadDisconnectedDialog bleHadDisconnectedDialog = this.f12816P;
            if (bleHadDisconnectedDialog != null && bleHadDisconnectedDialog.isShowing()) {
                this.f12816P.dismiss();
            }
        }
        if (BleCoreClient.m12373n().m12372o(this.f12817Q)) {
            return;
        }
        BleHadDisconnectedDialog bleHadDisconnectedDialog2 = new BleHadDisconnectedDialog(this);
        this.f12816P = bleHadDisconnectedDialog2;
        bleHadDisconnectedDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public void m13266b0() {
        m10287D(false, false, getString(R.string.unbind_ing), R.drawable.load_spinner);
        BleCoreClient.m12373n().m12384c(this.f12817Q);
        MiTalkClientUtil.m11221b();
        if (this.f12832w != null) {
            BaseApp.m8713a().removeCallbacks(this.f12832w);
            this.f12832w = null;
        }
        this.f12832w = new Runnable() { // from class: com.ifengyu.intercom.device.oldDevice.dolphin.activity.c
            @Override // java.lang.Runnable
            public final void run() {
                DolphinSettingActivity.this.m13269Y();
            }
        };
        BaseApp.m8713a().postDelayed(this.f12832w, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public void m13265c0(MitalkProtos.ParamUpdate paramUpdate) {
        MitalkProtos.STATECODE result = paramUpdate.getResult();
        if (result == MitalkProtos.STATECODE.SUCCESS) {
            int i = this.f12831v;
            if (i != -1) {
                if (i == 1) {
                    this.f12818R.m12309t1();
                    return;
                } else if (i != 2) {
                    return;
                } else {
                    m10283n();
                    this.f12831v = -1;
                    CheckBox checkBox = this.f12822m;
                    checkBox.setChecked(!checkBox.isChecked());
                    return;
                }
            }
            if (paramUpdate.hasShareLoc()) {
                this.f12822m.setChecked(paramUpdate.getShareLoc() != 0);
            }
            if (paramUpdate.hasStateMode()) {
                if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.SINGLE) {
                    this.f12821l.setChecked(false);
                } else if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.DOUBLE) {
                    this.f12821l.setChecked(true);
                }
            }
            if (paramUpdate.hasDevNameGBK()) {
                try {
                    this.f12819j.setText(new String(paramUpdate.getDevNameGBK().toByteArray(), "GB2312"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        } else if (result == MitalkProtos.STATECODE.NOTSUPPORT) {
            this.f12831v = -1;
            m10277t(R.drawable.load_fail);
            m10276u(R.string.not_support_switch);
            UIUtils.m8599s(new RunnableC3537b(), 500L);
        }
    }

    /* renamed from: d0 */
    private void m13264d0() {
        this.f12831v = 1;
        this.f12818R.m12323m1(this.f12821l.isChecked() ? MitalkProtos.STATEMODE.SINGLE : MitalkProtos.STATEMODE.DOUBLE);
    }

    /* renamed from: e0 */
    private void m13263e0() {
        this.f12831v = 2;
        this.f12818R.m12321n1(!this.f12822m.isChecked());
    }

    /* renamed from: f0 */
    private void m13262f0(StateUpdateEvent stateUpdateEvent, MitalkProtos.ChannelInfo channelInfo) {
        this.f12812L = null;
        this.f12813M = null;
        this.f12814N = null;
        this.f12815O = null;
        View inflate = View.inflate(this, R.layout.single_channel_display_normal_layout, null);
        this.f12812L = inflate;
        this.f12813M = (TextView) inflate.findViewById(R.id.normal_channel_name);
        TextView textView = (TextView) this.f12812L.findViewById(R.id.normal_channel_number);
        this.f12814N = textView;
        textView.setTypeface(this.f12802B);
        this.f12812L.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.f12803C.removeAllViews();
        this.f12803C.addView(this.f12812L);
        if (channelInfo.hasFreq()) {
            if (stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_M && stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_S) {
                this.f12814N.setText(MethodsUtils.m11290j(channelInfo.getFreq()));
            } else {
                this.f12814N.setText("");
            }
        } else {
            this.f12814N.setText("");
        }
        this.f12801A = -1;
        this.f12813M.setText(MethodsUtils.m11287m(new ChannelBean(channelInfo)));
    }

    /* renamed from: g0 */
    public void m13261g0(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent != null) {
            if (stateUpdateEvent.isHasCh1() && stateUpdateEvent.isHasCh2()) {
                MitalkProtos.ChannelInfo ch1 = stateUpdateEvent.getCh1();
                this.f12834y = BleChannelUtils.m11819b(ch1);
                MitalkProtos.ChannelInfo ch2 = stateUpdateEvent.getCh2();
                this.f12835z = BleChannelUtils.m11819b(ch2);
                this.f12804D = null;
                this.f12806F = null;
                this.f12807G = null;
                this.f12805E = null;
                this.f12809I = null;
                this.f12810J = null;
                View inflate = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
                this.f12804D = inflate;
                this.f12806F = (TextView) inflate.findViewById(R.id.normal_channel_name);
                TextView textView = (TextView) this.f12804D.findViewById(R.id.normal_channel_number);
                this.f12807G = textView;
                textView.setTypeface(this.f12802B);
                this.f12804D.setId(R.id.double_channel_top_item_id);
                this.f12804D.setOnClickListener(this);
                View inflate2 = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
                this.f12805E = inflate2;
                inflate2.findViewById(R.id.space_line).setVisibility(0);
                this.f12809I = (TextView) this.f12805E.findViewById(R.id.normal_channel_name);
                TextView textView2 = (TextView) this.f12805E.findViewById(R.id.normal_channel_number);
                this.f12810J = textView2;
                textView2.setTypeface(this.f12802B);
                this.f12805E.setId(R.id.double_channel_bottom_item_id);
                this.f12805E.setOnClickListener(this);
                this.f12803C.removeAllViews();
                this.f12803C.addView(this.f12804D);
                this.f12803C.addView(this.f12805E);
                if (ch1.hasFreq()) {
                    if (stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_M && stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_S) {
                        this.f12807G.setText(MethodsUtils.m11290j(ch1.getFreq()));
                    } else {
                        this.f12807G.setText("");
                    }
                } else {
                    this.f12807G.setText("");
                }
                MitalkProtos.STATEMODE stateMode = stateUpdateEvent.getStateMode();
                MitalkProtos.STATEMODE statemode = MitalkProtos.STATEMODE.DIFFER;
                if (stateMode == statemode) {
                    this.f12801A = 2;
                    this.f12806F.setText(UIUtils.m8603o(R.string.channel_receive));
                } else {
                    this.f12801A = -1;
                    this.f12806F.setText(MethodsUtils.m11287m(new ChannelBean(ch1)));
                }
                if (ch2.hasFreq()) {
                    if (stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_M && stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_S) {
                        this.f12810J.setText(MethodsUtils.m11290j(ch2.getFreq()));
                    } else {
                        this.f12810J.setText("");
                    }
                } else {
                    this.f12810J.setText("");
                }
                if (stateUpdateEvent.getStateMode() == statemode) {
                    this.f12801A = 2;
                    this.f12809I.setText(UIUtils.m8603o(R.string.channel_launch));
                    return;
                }
                this.f12801A = -1;
                this.f12809I.setText(MethodsUtils.m11287m(new ChannelBean(ch2)));
            } else if (stateUpdateEvent.isHasCh1()) {
                MitalkProtos.ChannelInfo ch12 = stateUpdateEvent.getCh1();
                this.f12834y = BleChannelUtils.m11819b(ch12);
                this.f12835z = null;
                MitalkProtos.CHTYPE type = ch12.getType();
                MitalkProtos.CHTYPE chtype = MitalkProtos.CHTYPE.TEAM;
                if (type != chtype && ch12.getType() != MitalkProtos.CHTYPE.SCAN) {
                    m13262f0(stateUpdateEvent, ch12);
                    return;
                }
                View inflate3 = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView3 = (TextView) inflate3.findViewById(R.id.the_mode_of_current);
                TextView textView4 = (TextView) inflate3.findViewById(R.id.bottom_text_ing_describe);
                this.f12803C.removeAllViews();
                this.f12803C.addView(inflate3);
                if (ch12.getType() == chtype) {
                    textView3.setText(getString(R.string.device_mode_team));
                    textView4.setText(getString(R.string.device_mode_team_ing_describe));
                    return;
                }
                textView3.setText(getString(R.string.device_mode_channel_scan));
                textView4.setText(getString(R.string.device_mode_channel_scan_ing_describe));
            } else if (stateUpdateEvent.isHasCh2()) {
                MitalkProtos.ChannelInfo ch22 = stateUpdateEvent.getCh2();
                this.f12835z = BleChannelUtils.m11819b(ch22);
                this.f12834y = null;
                m13262f0(stateUpdateEvent, ch22);
            }
        }
    }

    /* renamed from: h0 */
    public void m13260h0(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent != null) {
            if (stateUpdateEvent.isHasCh1() && stateUpdateEvent.isHasCh2()) {
                MitalkProtos.ChannelInfo ch1 = stateUpdateEvent.getCh1();
                this.f12834y = BleChannelUtils.m11819b(ch1);
                MitalkProtos.ChannelInfo ch2 = stateUpdateEvent.getCh2();
                this.f12835z = BleChannelUtils.m11819b(ch2);
                m13279N(ch1, ch2);
                this.f12806F.setText(MethodsUtils.m11286n(BleChannelUtils.m11819b(ch1)));
                if (ch1.hasFreq()) {
                    if (stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_M && stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_S) {
                        if (ch1.getType() == MitalkProtos.CHTYPE.RELAY) {
                            this.f12807G.setText(MethodsUtils.m11290j(ch1.getFreq()));
                            this.f12808H.setText(MethodsUtils.m11290j(ch1.getFreq2()));
                        } else {
                            this.f12807G.setText(MethodsUtils.m11290j(ch1.getFreq()));
                        }
                    } else {
                        this.f12807G.setText("");
                    }
                } else {
                    this.f12807G.setText("");
                }
                this.f12809I.setText(MethodsUtils.m11286n(BleChannelUtils.m11819b(ch2)));
                if (ch2.hasFreq()) {
                    if (stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_M && stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_S) {
                        if (ch2.getType() == MitalkProtos.CHTYPE.RELAY) {
                            this.f12810J.setText(MethodsUtils.m11290j(ch2.getFreq()));
                            this.f12811K.setText(MethodsUtils.m11290j(ch2.getFreq2()));
                            return;
                        }
                        this.f12810J.setText(MethodsUtils.m11290j(ch2.getFreq()));
                        return;
                    }
                    this.f12810J.setText("");
                    return;
                }
                this.f12810J.setText("");
            } else if (stateUpdateEvent.isHasCh1()) {
                MitalkProtos.ChannelInfo ch12 = stateUpdateEvent.getCh1();
                this.f12834y = BleChannelUtils.m11819b(ch12);
                this.f12835z = null;
                MitalkProtos.CHTYPE type = ch12.getType();
                MitalkProtos.CHTYPE chtype = MitalkProtos.CHTYPE.TEAM;
                if ((type == chtype || ch12.getType() == MitalkProtos.CHTYPE.SCAN) && !ch12.hasFreq()) {
                    View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                    TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                    TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                    this.f12803C.removeAllViews();
                    this.f12803C.addView(inflate);
                    if (ch12.getType() == chtype) {
                        textView.setText(getString(R.string.device_mode_team));
                        textView2.setText(getString(R.string.device_mode_team_ing_describe));
                        return;
                    }
                    textView.setText(getString(R.string.device_mode_channel_scan));
                    textView2.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                    return;
                }
                m13278O(ch12);
                this.f12813M.setText(MethodsUtils.m11286n(BleChannelUtils.m11819b(ch12)));
                if (ch12.hasFreq()) {
                    if (stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_M && stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_S) {
                        if (ch12.getType() == MitalkProtos.CHTYPE.RELAY) {
                            this.f12814N.setText(MethodsUtils.m11290j(ch12.getFreq()));
                            this.f12815O.setText(MethodsUtils.m11290j(ch12.getFreq2()));
                            return;
                        }
                        this.f12814N.setText(MethodsUtils.m11290j(ch12.getFreq()));
                        return;
                    }
                    this.f12814N.setText("");
                    return;
                }
                this.f12814N.setText("");
            } else if (stateUpdateEvent.isHasCh2()) {
                MitalkProtos.ChannelInfo ch22 = stateUpdateEvent.getCh2();
                this.f12835z = BleChannelUtils.m11819b(ch22);
                this.f12834y = null;
                m13278O(ch22);
                this.f12813M.setText(MethodsUtils.m11286n(BleChannelUtils.m11819b(ch22)));
                if (ch22.hasFreq()) {
                    if (stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_M && stateUpdateEvent.getStateMode() != MitalkProtos.STATEMODE.TEAM_S) {
                        if (ch22.getType() == MitalkProtos.CHTYPE.RELAY) {
                            this.f12814N.setText(MethodsUtils.m11290j(ch22.getFreq()));
                            this.f12815O.setText(MethodsUtils.m11290j(ch22.getFreq2()));
                            return;
                        }
                        this.f12814N.setText(MethodsUtils.m11290j(ch22.getFreq()));
                        return;
                    }
                    this.f12814N.setText("");
                    return;
                }
                this.f12814N.setText("");
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.OnCheckDolphinUpdateCallback
    /* renamed from: i */
    public void mo13063i(boolean z) {
        m10283n();
        Runnable runnable = this.f12832w;
        if (runnable != null) {
            UIUtils.m8596v(runnable);
            this.f12832w = null;
        }
        int m11205j = MiTalkClientUtil.m11205j();
        if (!z) {
            Intent intent = new Intent(this, DolphinUpdateMcuActivity.class);
            intent.putExtra("device_mac_address", this.f12817Q);
            intent.putExtra("key_update_type", m11205j >= 65542 ? "update_type_mcu_ble" : "update_type_mcu");
            if (DolphinUpdateManager.m13109f().m13108g() != null) {
                intent.putExtra("key_mcu_server_version_code", Integer.parseInt(DolphinUpdateManager.m13109f().m13108g().get("versionCode")));
            }
            startActivity(intent);
        } else if (DolphinUpdateManager.m13109f().m13108g() != null) {
            if (m11205j >= 65542) {
                Intent intent2 = new Intent(this, DolphinUpdateMcuActivity.class);
                intent2.putExtra("device_mac_address", this.f12817Q);
                if (MethodsUtils.m11297c()) {
                    if (!MiTalkClientUtil.m11209h().equals("mcu_language_type_english")) {
                        intent2.putExtra("key_update_type", "update_diff_language");
                        if (DolphinUpdateManager.m13109f().m13108g() != null) {
                            intent2.putExtra("key_mcu_server_version_code", Integer.parseInt(DolphinUpdateManager.m13109f().m13108g().get("versionCode")));
                        }
                    } else {
                        intent2.putExtra("key_update_type", "update_type_all_is_newest");
                    }
                } else if (MethodsUtils.m11296d()) {
                    if (!MiTalkClientUtil.m11209h().equals("mcu_language_type_chinese")) {
                        intent2.putExtra("key_update_type", "update_diff_language");
                        if (DolphinUpdateManager.m13109f().m13108g() != null) {
                            intent2.putExtra("key_mcu_server_version_code", Integer.parseInt(DolphinUpdateManager.m13109f().m13108g().get("versionCode")));
                        }
                    } else {
                        intent2.putExtra("key_update_type", "update_type_all_is_newest");
                    }
                } else {
                    intent2.putExtra("key_update_type", "update_type_all_is_newest");
                }
                startActivity(intent2);
                return;
            }
            UIUtils.m8593y(R.string.setting_check_apk_update_is_newest);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 6) {
            if (i2 == 1) {
                this.f12819j.setText(intent.getStringExtra("setting_walkie_name"));
                CommonDialog commonDialog = new CommonDialog(this);
                commonDialog.m9025l(getString(R.string.setting_success_please_restart));
                commonDialog.m9022o(R.string.user_guide_i_know, null);
                commonDialog.m9032e();
                commonDialog.m9016u();
            }
        } else if (i == 7 && i2 == 1) {
            int intExtra = intent.getIntExtra("setting_auto_send_location_space_time", 3);
            this.f12820k.setText(UIUtils.m8602p(R.string.minute, Integer.valueOf(intExtra)));
            long j = intExtra * 60000;
            MiTalkClientUtil.m11174y0(this.f12817Q, j);
            if (ShareLocationService.m10698e() != null) {
                ShareLocationService.m10698e().m10688o(j);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.auto_send_location /* 2131296368 */:
                if (BleCoreClient.m12373n().m12372o(this.f12817Q)) {
                    if (this.f12822m.isChecked()) {
                        startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
                        return;
                    } else {
                        MethodsUtils.m11302H(getString(R.string.setting_please_open_share_loc_btn), false);
                        return;
                    }
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.device_about /* 2131296577 */:
                UserProtocolActivity.m10424O(this, MiTalkClientUtil.m11211g());
                return;
            case R.id.device_name_select_talkie /* 2131296595 */:
                if (BleCoreClient.m12373n().m12372o(this.f12817Q)) {
                    Intent intent = new Intent(this, SetDolphinBleNameActivity.class);
                    intent.putExtra("device_mac_address", this.f12817Q);
                    startActivityForResult(intent, 6);
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.device_update /* 2131296603 */:
                m13280M();
                return;
            case R.id.double_channel_bottom_item_id /* 2131296643 */:
                m13277P(this.f12835z, false);
                return;
            case R.id.double_channel_top_item_id /* 2131296646 */:
                m13277P(this.f12834y, true);
                return;
            case R.id.double_frequency_model /* 2131296647 */:
                if (BleCoreClient.m12373n().m12372o(this.f12817Q)) {
                    m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.f12832w != null) {
                        BaseApp.m8713a().removeCallbacks(this.f12832w);
                    }
                    this.f12832w = new RunnableC3542g();
                    BaseApp.m8713a().postDelayed(this.f12832w, 5000L);
                    m13264d0();
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.public_my_location /* 2131297144 */:
                if (BleCoreClient.m12373n().m12372o(this.f12817Q)) {
                    m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.f12832w != null) {
                        BaseApp.m8713a().removeCallbacks(this.f12832w);
                    }
                    this.f12832w = new RunnableC3543h();
                    BaseApp.m8713a().postDelayed(this.f12832w, 5000L);
                    m13263e0();
                    return;
                } else if (this.f12822m.isChecked()) {
                    this.f12822m.setChecked(false);
                    stopService(new Intent(this, ShareLocationService.class));
                    return;
                } else {
                    MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                    return;
                }
            case R.id.relieve_binding /* 2131297199 */:
                MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
                messageDialogBuilder.m7248E(R.string.setting_confirm_un_bind_current_device);
                messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3554b.f12866a);
                MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
                messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new C3544i());
                QMUIDialog m7296f = messageDialogBuilder2.m7296f(R.style.DialogTheme1);
                this.f12833x = m7296f;
                m7296f.show();
                return;
            case R.id.rl_device_activate /* 2131297218 */:
                if (BleCoreClient.m12373n().m12372o(this.f12817Q)) {
                    if (this.f12818R.m12361D0()) {
                        m10287D(false, false, getString(R.string.device_had_actived), R.drawable.load_spinner);
                        m10277t(R.drawable.load_success);
                        UIUtils.m8599s(new RunnableC3540e(), 500L);
                        return;
                    }
                    m10289B(new C3541f());
                    return;
                }
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
                return;
            case R.id.single_channel_item_enter_btn /* 2131297317 */:
                DolphinChannelModel dolphinChannelModel = this.f12834y;
                if (dolphinChannelModel != null) {
                    m13277P(dolphinChannelModel, true);
                    return;
                }
                DolphinChannelModel dolphinChannelModel2 = this.f12835z;
                if (dolphinChannelModel2 != null) {
                    m13277P(dolphinChannelModel2, false);
                    return;
                }
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
        setContentView(R.layout.activity_dolphin_setting);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f12817Q = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f12818R = BleCoreClient.m12373n().m12378i(this.f12817Q);
        m13275S();
        StateUpdateEvent m12306v0 = this.f12818R.m12306v0();
        if (m12306v0 != null) {
            receiveStateUpdateResponse(m12306v0);
        }
        RxBus.m11806d().m11808b(this, ConnectStateEvent.class, new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.dolphin.activity.a
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DolphinSettingActivity.this.m13267a0((ConnectStateEvent) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        RxBus.m11806d().m11803g(this);
    }

    @Subscribe
    public void onParamUpdate(MitalkProtos.ParamUpdate paramUpdate) {
        if (this.f15061g) {
            this.f15061g = false;
            UIUtils.m8598t(new RunnableC3546k(paramUpdate));
            return;
        }
        UIUtils.m8598t(new RunnableC3548l(paramUpdate));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        DolphinUpdateManager.m13109f().m13098q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        MiBus.getInstance().m6411j(this);
        this.f12831v = -1;
        this.f12822m.setChecked(MiTalkClientUtil.m11224Z());
        this.f12821l.setChecked(MiTalkClientUtil.m11225Y());
        this.f12818R.m12309t1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MiBus.getInstance().m6409l(this);
        BleHadDisconnectedDialog bleHadDisconnectedDialog = this.f12816P;
        if (bleHadDisconnectedDialog != null) {
            bleHadDisconnectedDialog.dismiss();
        }
        QMUIDialog qMUIDialog = this.f12833x;
        if (qMUIDialog != null) {
            qMUIDialog.dismiss();
        }
    }

    @Subscribe
    public void receiveStateUpdateResponse(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent.getOption() == MitalkProtos.CHOPTION.ST_QUERY) {
            m13276R(stateUpdateEvent);
        }
    }
}
