package com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity;

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
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p185i.SharkBleManager;
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
import com.ifengyu.intercom.p216ui.widget.dialog.SharkSetPowerListDialog;
import com.ifengyu.intercom.protos.SharkProtos;
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
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class SharkSettingActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    TextView f13468j;

    /* renamed from: k */
    TextView f13469k;

    /* renamed from: l */
    CheckBox f13470l;

    /* renamed from: m */
    LinearLayout f13471m;

    /* renamed from: n */
    LinearLayout f13472n;

    /* renamed from: o */
    TextView f13473o;

    /* renamed from: p */
    private BleHadDisconnectedDialog f13474p;

    /* renamed from: q */
    private QMUIDialog f13475q;

    /* renamed from: s */
    private Runnable f13477s;

    /* renamed from: t */
    private Typeface f13478t;

    /* renamed from: v */
    private CheckBox f13480v;

    /* renamed from: w */
    private View f13481w;

    /* renamed from: x */
    private String f13482x;

    /* renamed from: y */
    private SharkBleManager f13483y;

    /* renamed from: r */
    private int f13476r = -1;

    /* renamed from: u */
    private int f13479u = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$a */
    /* loaded from: classes2.dex */
    public class RunnableC3771a implements Runnable {
        RunnableC3771a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$b */
    /* loaded from: classes2.dex */
    public class RunnableC3772b implements Runnable {
        RunnableC3772b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.f13476r = -1;
            SharkSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$c */
    /* loaded from: classes2.dex */
    public class RunnableC3773c implements Runnable {
        RunnableC3773c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.f13476r = -1;
            SharkSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$d */
    /* loaded from: classes2.dex */
    public class RunnableC3774d implements Runnable {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$d$a */
        /* loaded from: classes2.dex */
        class RunnableC3775a implements Runnable {
            RunnableC3775a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.m10283n();
            }
        }

        RunnableC3774d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.f13476r = -1;
            SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
            sharkSettingActivity.m10275v(sharkSettingActivity.getString(R.string.shark_time_update_fail));
            SharkSettingActivity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new RunnableC3775a(), 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$e */
    /* loaded from: classes2.dex */
    public class RunnableC3776e implements Runnable {
        RunnableC3776e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$f */
    /* loaded from: classes2.dex */
    public class RunnableC3777f implements Runnable {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$f$a */
        /* loaded from: classes2.dex */
        class RunnableC3778a implements Runnable {
            RunnableC3778a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.m10283n();
            }
        }

        RunnableC3777f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
            sharkSettingActivity.m10275v(sharkSettingActivity.getString(R.string.request_time_out));
            SharkSettingActivity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new RunnableC3778a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$g */
    /* loaded from: classes2.dex */
    public class C3779g extends ErrorConsumer {
        C3779g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m12643d() {
            SharkSettingActivity.this.m10283n();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
            UIUtils.m8596v(SharkSettingActivity.this.f13477s);
            SharkSettingActivity.this.m10275v(NewHttpHelper.m8714a(newApiException.m8703a()));
            SharkSettingActivity.this.m10277t(R.drawable.load_fail);
            UIUtils.m8599s(new Runnable() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.a
                @Override // java.lang.Runnable
                public final void run() {
                    SharkSettingActivity.C3779g.this.m12643d();
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$h */
    /* loaded from: classes2.dex */
    public class C3780h implements QMUIDialogAction.InterfaceC5249b {
        C3780h() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            qMUIDialog.dismiss();
            SharkSettingActivity.this.m12647o0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$i */
    /* loaded from: classes2.dex */
    public class RunnableC3781i implements Runnable {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$i$a */
        /* loaded from: classes2.dex */
        class RunnableC3782a implements Runnable {
            RunnableC3782a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.m10283n();
                SharkSettingActivity.this.m10286E(MainActivity.class);
            }
        }

        RunnableC3781i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
            sharkSettingActivity.m10275v(sharkSettingActivity.getString(R.string.unbind_success));
            SharkSettingActivity.this.m10277t(R.drawable.load_success);
            if (SharkSettingActivity.this.f13477s != null) {
                BaseApp.m8713a().removeCallbacks(SharkSettingActivity.this.f13477s);
                SharkSettingActivity.this.f13477s = null;
            }
            SharkSettingActivity.this.f13477s = new RunnableC3782a();
            BaseApp.m8713a().postDelayed(SharkSettingActivity.this.f13477s, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$j */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3783j implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13496a;

        /* renamed from: b */
        final /* synthetic */ boolean f13497b;

        View$OnClickListenerC3783j(SealSharkChannelModel sealSharkChannelModel, boolean z) {
            this.f13496a = sealSharkChannelModel;
            this.f13497b = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.m12665W(this.f13496a, this.f13497b);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$k */
    /* loaded from: classes2.dex */
    class RunnableC3784k implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SharkProtos.SHARK_ChannelStateOperate f13499a;

        RunnableC3784k(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            this.f13499a = sHARK_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f13499a.hasResult()) {
                SharkSettingActivity.this.f13479u = -1;
            } else if (this.f13499a.getResult() == SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_OK) {
                SharkSettingActivity.this.m12660b0(this.f13499a);
            } else {
                SharkSettingActivity.this.f13479u = -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$l */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3785l implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13501a;

        View$OnClickListenerC3785l(SealSharkChannelModel sealSharkChannelModel) {
            this.f13501a = sealSharkChannelModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.m12665W(this.f13501a, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$m */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3786m implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13503a;

        View$OnClickListenerC3786m(SealSharkChannelModel sealSharkChannelModel) {
            this.f13503a = sealSharkChannelModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.m12665W(this.f13503a, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$n */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3787n implements View.OnClickListener {
        View$OnClickListenerC3787n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MethodsUtils.m11302H(SharkSettingActivity.this.getString(R.string.sos_mode_can_not_setting), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$o */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3788o implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13506a;

        View$OnClickListenerC3788o(SealSharkChannelModel sealSharkChannelModel) {
            this.f13506a = sealSharkChannelModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.m12665W(this.f13506a, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$p */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3789p implements View.OnClickListener {
        View$OnClickListenerC3789p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MethodsUtils.m11302H(SharkSettingActivity.this.getString(R.string.scan_mode_can_not_setting), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$q */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3790q implements View.OnClickListener {
        View$OnClickListenerC3790q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MethodsUtils.m11302H(SharkSettingActivity.this.getString(R.string.team_mode_can_not_setting), false);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$r */
    /* loaded from: classes2.dex */
    class RunnableC3791r implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SharkProtos.SHARK_DeviceParam f13510a;

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$r$a */
        /* loaded from: classes2.dex */
        class RunnableC3792a implements Runnable {
            RunnableC3792a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.m10283n();
                BaseActivity1.InterfaceC4462d interfaceC4462d = SharkSettingActivity.this.f15062h;
                if (interfaceC4462d != null) {
                    interfaceC4462d.mo10270a();
                }
            }
        }

        RunnableC3791r(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
            this.f13510a = sHARK_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            UIUtils.m8596v(SharkSettingActivity.this.f15063i);
            if (this.f13510a.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                SharkSettingActivity.this.m10277t(R.drawable.load_success);
                SharkSettingActivity.this.m10276u(R.string.activation_successful);
                UIUtils.m8599s(new RunnableC3792a(), 800L);
                return;
            }
            SharkSettingActivity.this.f15063i.run();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$s */
    /* loaded from: classes2.dex */
    class RunnableC3793s implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SharkProtos.SHARK_DeviceParam f13513a;

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$s$a */
        /* loaded from: classes2.dex */
        class RunnableC3794a implements Runnable {
            RunnableC3794a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.m10283n();
            }
        }

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$s$b */
        /* loaded from: classes2.dex */
        class RunnableC3795b implements Runnable {
            RunnableC3795b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.m10283n();
            }
        }

        RunnableC3793s(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
            this.f13513a = sHARK_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f13513a.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                int i = SharkSettingActivity.this.f13476r;
                if (i == -1) {
                    if (this.f13513a.hasCh() && this.f13513a.getCh().hasChTxPower()) {
                        SharkSettingActivity.this.m12645q0();
                        return;
                    } else if (this.f13513a.hasShareLoc()) {
                        SharkSettingActivity.this.f13470l.setChecked(MiTalkClientUtil.m11259H());
                        return;
                    } else {
                        return;
                    }
                } else if (i == 1) {
                    SharkSettingActivity.this.m10283n();
                    SharkSettingActivity.this.f13476r = -1;
                    SharkSettingActivity.this.f13470l.setChecked(MiTalkClientUtil.m11259H());
                    return;
                } else if (i == 2) {
                    SharkSettingActivity.this.m10283n();
                    SharkSettingActivity.this.f13476r = -1;
                    SharkSettingActivity.this.m12645q0();
                    return;
                } else if (i != 3) {
                    return;
                } else {
                    SharkSettingActivity.this.f13476r = -1;
                    SharkSettingActivity.this.m10277t(R.drawable.load_success);
                    SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
                    sharkSettingActivity.m10275v(sharkSettingActivity.getString(R.string.shark_time_update_success));
                    UIUtils.m8599s(new RunnableC3794a(), 500L);
                    return;
                }
            }
            SharkSettingActivity.this.f13476r = -1;
            SharkSettingActivity.this.m10277t(R.drawable.load_fail);
            SharkSettingActivity.this.m10276u(R.string.not_support_switch);
            UIUtils.m8599s(new RunnableC3795b(), 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$t */
    /* loaded from: classes2.dex */
    public class RunnableC3796t implements Runnable {
        RunnableC3796t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.m10283n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$u */
    /* loaded from: classes2.dex */
    public class C3797u implements BaseActivity1.InterfaceC4462d {
        C3797u() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: a */
        public void mo10270a() {
            SharkSettingActivity.this.f13471m.setVisibility(8);
            String m11261G = MiTalkClientUtil.m11261G();
            if (TextUtils.isEmpty(m11261G)) {
                return;
            }
            SharkSettingActivity.this.m12669S(m11261G);
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
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$v */
    /* loaded from: classes2.dex */
    public class C3798v extends ErrorConsumer {
        C3798v(SharkSettingActivity sharkSettingActivity) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("SharkSettingActivity", "activateDevice fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$w */
    /* loaded from: classes2.dex */
    public class C3799w implements SharkSetPowerListDialog.InterfaceC4933c {

        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkSettingActivity$w$a */
        /* loaded from: classes2.dex */
        class RunnableC3800a implements Runnable {
            RunnableC3800a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.f13476r = -1;
                SharkSettingActivity.this.m10283n();
            }
        }

        C3799w() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SharkSetPowerListDialog.InterfaceC4933c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i <= 1) {
                SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
                sharkSettingActivity.m10287D(false, true, sharkSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SharkSettingActivity.this.f13477s != null) {
                    BaseApp.m8713a().removeCallbacks(SharkSettingActivity.this.f13477s);
                }
                SharkSettingActivity.this.f13477s = new RunnableC3800a();
                BaseApp.m8713a().postDelayed(SharkSettingActivity.this.f13477s, 5000L);
                SharkSettingActivity.this.f13476r = 2;
                SharkSettingActivity.this.f13483y.m12029n1(i + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: S */
    public void m12669S(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("deviceId", str);
        hashMap.put("active", 1);
        AppServiceClient.m11355a().m11390Q(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(C3804d.f13524a, new C3798v(this));
    }

    /* renamed from: U */
    private void m12667U(SealSharkChannelModel sealSharkChannelModel, boolean z) {
        View inflate;
        TextView textView;
        TextView textView2;
        TextView textView3;
        if (sealSharkChannelModel.isStChannel()) {
            inflate = View.inflate(this, R.layout.seal_shark_single_channel_normal_layout, null);
            textView = (TextView) inflate.findViewById(R.id.normal_channel_name);
            TextView textView4 = (TextView) inflate.findViewById(R.id.normal_channel_number);
            ((LinearLayout) inflate.findViewById(R.id.normal_css_channel_layout)).setVisibility(8);
            textView2 = (TextView) inflate.findViewById(R.id.normal_rx_css_value);
            textView3 = (TextView) inflate.findViewById(R.id.normal_tx_css_value);
            textView4.setTypeface(this.f13478t);
            textView4.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
        } else {
            inflate = View.inflate(this, R.layout.seal_shark_single_channel_custom_layout, null);
            textView = (TextView) inflate.findViewById(R.id.relay_channel_name);
            TextView textView5 = (TextView) inflate.findViewById(R.id.relay_channel_receive_number);
            TextView textView6 = (TextView) inflate.findViewById(R.id.relay_channel_transmit_number);
            ((LinearLayout) inflate.findViewById(R.id.custom_css_layout)).setVisibility(8);
            textView2 = (TextView) inflate.findViewById(R.id.relay_rx_css_value);
            textView5.setTypeface(this.f13478t);
            textView6.setTypeface(this.f13478t);
            textView5.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
            textView6.setText(MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq()));
            textView3 = (TextView) inflate.findViewById(R.id.relay_tx_css_value);
        }
        textView.setText(sealSharkChannelModel.getName());
        textView2.setText(UIUtils.m8602p(R.string.receive_css_code_s, MethodsUtils.m11304F(sealSharkChannelModel.getRxCss())));
        textView3.setText(UIUtils.m8602p(R.string.translate_css_code_s, MethodsUtils.m11304F(sealSharkChannelModel.getTxCss())));
        inflate.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(new View$OnClickListenerC3783j(sealSharkChannelModel, z));
        this.f13472n.removeAllViews();
        this.f13472n.addView(inflate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public void m12665W(SealSharkChannelModel sealSharkChannelModel, boolean z) {
        if (!this.f13483y.m329v()) {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        } else if (sealSharkChannelModel == null) {
        } else {
            SharkChannelSettingActivity.m12699I(this, sealSharkChannelModel, z, this.f13482x);
        }
    }

    /* renamed from: X */
    private void m12664X() {
        if (this.f13483y.m329v()) {
            if (this.f13483y.m12071A0()) {
                m10287D(false, false, getString(R.string.device_had_actived), R.drawable.load_spinner);
                m10277t(R.drawable.load_success);
                UIUtils.m8599s(new RunnableC3796t(), 500L);
                return;
            }
            m10289B(new C3797u());
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: Y */
    private void m12663Y() {
        if (!MethodsUtils.m11274z(this)) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
        } else if (!this.f13483y.m329v()) {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        } else {
            int i = this.f13479u;
            if (i > 0 && i != SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                m10287D(false, true, getString(R.string.current_mode_not_support_this_set), R.drawable.load_spinner);
                m10277t(R.drawable.load_fail);
                BaseApp.m8713a().postDelayed(new RunnableC3776e(), 1000L);
                return;
            }
            m10287D(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
            RunnableC3777f runnableC3777f = new RunnableC3777f();
            this.f13477s = runnableC3777f;
            UIUtils.m8599s(runnableC3777f, 8000L);
            m12646p0();
        }
    }

    /* renamed from: Z */
    private void m12662Z() {
        if (this.f13483y.m329v()) {
            int i = this.f13479u;
            if (i > 0 && i != SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                m10287D(false, true, getString(R.string.current_mode_not_support_this_set), R.drawable.load_spinner);
                m10277t(R.drawable.load_fail);
                BaseApp.m8713a().postDelayed(new RunnableC3771a(), 1000L);
                return;
            }
            m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
            if (this.f13477s != null) {
                BaseApp.m8713a().removeCallbacks(this.f13477s);
            }
            this.f13477s = new RunnableC3772b();
            BaseApp.m8713a().postDelayed(this.f13477s, 5000L);
            this.f13476r = 0;
            this.f13483y.m12038h1(!this.f13480v.isChecked());
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: a0 */
    private void m12661a0() {
        int i;
        if (this.f13483y.m329v()) {
            if (this.f13473o.getText().equals(getString(R.string.shark_power_level_low))) {
                i = 1;
            } else {
                i = this.f13473o.getText().equals(getString(R.string.shark_power_level_high)) ? 2 : 0;
            }
            String[] strArr = {getString(R.string.shark_power_level_low), getString(R.string.shark_power_level_high), getString(R.string.common_cancel)};
            SharkSetPowerListDialog sharkSetPowerListDialog = new SharkSetPowerListDialog(this, i);
            sharkSetPowerListDialog.m8917m(true);
            sharkSetPowerListDialog.m8916n(R.string.shark_power_level);
            sharkSetPowerListDialog.m8915o(strArr, new C3799w());
            sharkSetPowerListDialog.show();
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public void m12660b0(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.f13479u = number;
            if (number == SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                if (sHARK_ChannelStateOperate.hasStateMode()) {
                    int stateMode = sHARK_ChannelStateOperate.getStateMode();
                    if (this.f13476r == 0) {
                        m10283n();
                        this.f13476r = -1;
                    }
                    this.f13480v.setChecked(stateMode == 2);
                    if (stateMode == 1) {
                        if (sHARK_ChannelStateOperate.hasCh1()) {
                            m12667U(BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh1()), true);
                            return;
                        } else if (sHARK_ChannelStateOperate.hasCh2()) {
                            m12667U(BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh2()), false);
                            return;
                        } else {
                            return;
                        }
                    } else if (stateMode == 2 && sHARK_ChannelStateOperate.hasCh1() && sHARK_ChannelStateOperate.hasCh2()) {
                        SharkProtos.SHARK_ChannelInfo ch1 = sHARK_ChannelStateOperate.getCh1();
                        SharkProtos.SHARK_ChannelInfo ch2 = sHARK_ChannelStateOperate.getCh2();
                        SealSharkChannelModel m11814g = BleChannelUtils.m11814g(ch1);
                        SealSharkChannelModel m11814g2 = BleChannelUtils.m11814g(ch2);
                        if (m11814g == null || m11814g2 == null) {
                            return;
                        }
                        m12668T(m11814g, m11814g2);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            int i = this.f13479u;
            if (i != 1 && i != 2) {
                View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                this.f13472n.removeAllViews();
                this.f13472n.addView(inflate);
                inflate.setId(R.id.scan_and_team_mode_item_id);
                int i2 = this.f13479u;
                if (i2 == 3 || i2 == 4) {
                    textView.setText(getString(R.string.device_mode_channel_scan));
                    textView2.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                    inflate.setOnClickListener(new View$OnClickListenerC3789p());
                    return;
                } else if (i2 == 5 || i2 == 6) {
                    textView.setText(getString(R.string.device_mode_team));
                    textView2.setText(getString(R.string.device_mode_team_ing_describe));
                    inflate.setOnClickListener(new View$OnClickListenerC3790q());
                    return;
                } else {
                    return;
                }
            } else if (sHARK_ChannelStateOperate.hasCh1() && sHARK_ChannelStateOperate.hasCh2()) {
                SharkProtos.SHARK_ChannelInfo ch12 = sHARK_ChannelStateOperate.getCh1();
                SharkProtos.SHARK_ChannelInfo ch22 = sHARK_ChannelStateOperate.getCh2();
                SealSharkChannelModel m11814g3 = BleChannelUtils.m11814g(ch12);
                SealSharkChannelModel m11814g4 = BleChannelUtils.m11814g(ch22);
                if (m11814g3 == null || m11814g4 == null) {
                    return;
                }
                m12666V(m11814g3, m11814g4);
                return;
            } else {
                return;
            }
        }
        this.f13479u = -1;
    }

    /* renamed from: c0 */
    private void m12659c0() {
        if (this.f13483y.m329v()) {
            Intent intent = new Intent(this, SetSealSharkBleNameActivity.class);
            intent.putExtra("device_mac_address", this.f13482x);
            startActivityForResult(intent, 6);
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: d0 */
    private void m12658d0() {
        if (this.f13483y.m329v()) {
            if (this.f13470l.isChecked()) {
                startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
                return;
            } else {
                MethodsUtils.m11302H(getString(R.string.setting_please_open_share_loc_btn), false);
                return;
            }
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: e0 */
    private void m12657e0() {
        if (this.f13483y.m329v()) {
            m10287D(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
            if (this.f13477s != null) {
                BaseApp.m8713a().removeCallbacks(this.f13477s);
            }
            this.f13477s = new RunnableC3773c();
            BaseApp.m8713a().postDelayed(this.f13477s, 5000L);
            this.f13476r = 1;
            this.f13483y.m12037i1(!this.f13470l.isChecked());
        } else if (this.f13470l.isChecked()) {
            this.f13470l.setChecked(false);
            stopService(new Intent(this, ShareLocationService.class));
        } else {
            MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
        }
    }

    /* renamed from: f0 */
    private void m12656f0() {
        if (this.f13483y.m329v()) {
            m10287D(false, true, getString(R.string.shark_time_update_ing), R.drawable.load_spinner);
            if (this.f13477s != null) {
                BaseApp.m8713a().removeCallbacks(this.f13477s);
            }
            this.f13477s = new RunnableC3774d();
            BaseApp.m8713a().postDelayed(this.f13477s, 5000L);
            this.f13476r = 3;
            this.f13483y.m12025p1();
            return;
        }
        MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
    }

    /* renamed from: g0 */
    private void m12655g0() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(this);
        messageDialogBuilder.m7248E(R.string.setting_confirm_un_bind_current_device);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3805e.f13525a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new C3780h());
        QMUIDialog m7296f = messageDialogBuilder2.m7296f(R.style.DialogTheme1);
        this.f13475q = m7296f;
        m7296f.show();
    }

    /* renamed from: h0 */
    private void m12654h0() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        this.f13472n = (LinearLayout) findViewById(R.id.top_channel_container);
        this.f13471m = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.f13468j = (TextView) findViewById(R.id.current_device_name);
        this.f13469k = (TextView) findViewById(R.id.auto_send_location_time);
        this.f13473o = (TextView) findViewById(R.id.power_level_value);
        this.f13480v = (CheckBox) findViewById(R.id.double_channel_switch_btn);
        this.f13470l = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.f13478t = AppConstants.f13909c;
        findViewById(R.id.rl_device_activate).setOnClickListener(this);
        findViewById(R.id.device_name_select_talkie).setOnClickListener(this);
        findViewById(R.id.power_level_layout).setOnClickListener(this);
        findViewById(R.id.double_channel_model).setOnClickListener(this);
        findViewById(R.id.public_my_location).setOnClickListener(this);
        findViewById(R.id.auto_send_location).setOnClickListener(this);
        findViewById(R.id.time_update_layout).setOnClickListener(this);
        findViewById(R.id.device_update).setOnClickListener(this);
        findViewById(R.id.relieve_binding).setOnClickListener(this);
        findViewById(R.id.item_about).setOnClickListener(this);
        this.f13481w = findViewById(R.id.have_mcu_update_red_point);
        if (!this.f13483y.m329v()) {
            BleHadDisconnectedDialog bleHadDisconnectedDialog = new BleHadDisconnectedDialog(this);
            this.f13474p = bleHadDisconnectedDialog;
            bleHadDisconnectedDialog.show();
        }
        this.f13471m.setVisibility(this.f13483y.m12071A0() ? 8 : 0);
        this.f13468j.setText(MiTalkClientUtil.m11193p());
        m12645q0();
        this.f13480v.setClickable(false);
        this.f13470l.setClickable(false);
        this.f13470l.setChecked(MiTalkClientUtil.m11259H());
        this.f13469k.setText(UIUtils.m8602p(R.string.minute, Long.valueOf(MiTalkClientUtil.m11201l(this.f13482x) / 60000)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ void m12650l0(ConnectStateEvent connectStateEvent) throws Exception {
        if (BleCoreClient.m12373n().m12372o(this.f13482x)) {
            BleHadDisconnectedDialog bleHadDisconnectedDialog = this.f13474p;
            if (bleHadDisconnectedDialog != null && bleHadDisconnectedDialog.isShowing()) {
                this.f13474p.dismiss();
            }
            this.f13483y.m12042d1();
        }
        if (BleCoreClient.m12373n().m12372o(this.f13482x)) {
            return;
        }
        BleHadDisconnectedDialog bleHadDisconnectedDialog2 = new BleHadDisconnectedDialog(this);
        this.f13474p = bleHadDisconnectedDialog2;
        bleHadDisconnectedDialog2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0 */
    public /* synthetic */ void m12648n0(VersionInfo versionInfo) throws Exception {
        C4161y.m11049f("SharkSettingActivity", "shark versionInfo:" + versionInfo.toString());
        UIUtils.m8596v(this.f13477s);
        m10283n();
        versionInfo.getVersionCode();
        int m11251L = MiTalkClientUtil.m11251L();
        Intent intent = new Intent(this, SealSharkMcuUpdateActivity.class);
        intent.putExtra("device_mac_address", this.f13482x);
        intent.putExtra("mcu_update_device_type", "shark");
        if (m11251L > 0 && versionInfo.isHasNewVersion()) {
            intent.putExtra("mcu_have_update", true);
        } else {
            intent.putExtra("mcu_have_update", false);
        }
        intent.putExtra("mcu_update_info", versionInfo);
        intent.setAction("mcu_update_action_from_setting");
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o0 */
    public void m12647o0() {
        m10287D(false, false, getString(R.string.unbind_ing), R.drawable.load_spinner);
        BleCoreClient.m12373n().m12384c(this.f13482x);
        MiTalkClientUtil.m11221b();
        if (this.f13477s != null) {
            BaseApp.m8713a().removeCallbacks(this.f13477s);
            this.f13477s = null;
        }
        this.f13477s = new RunnableC3781i();
        BaseApp.m8713a().postDelayed(this.f13477s, 500L);
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: p0 */
    private void m12646p0() {
        AppServiceClient.m11355a().m11387T("shark", MiTalkClientUtil.m11251L(), MiTalkClientUtil.m11253K(), "zh_cn").compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SharkSettingActivity.this.m12648n0((VersionInfo) obj);
            }
        }, new C3779g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q0 */
    public void m12645q0() {
        int m11257I = MiTalkClientUtil.m11257I();
        if (m11257I == 1) {
            this.f13473o.setText(getString(R.string.shark_power_level_low));
        } else if (m11257I != 2) {
        } else {
            this.f13473o.setText(getString(R.string.shark_power_level_high));
        }
    }

    /* renamed from: T */
    public void m12668T(SealSharkChannelModel sealSharkChannelModel, SealSharkChannelModel sealSharkChannelModel2) {
        View inflate;
        TextView textView;
        View inflate2;
        TextView textView2;
        if (sealSharkChannelModel.isStChannel()) {
            inflate = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView = (TextView) inflate.findViewById(R.id.normal_channel_name);
            TextView textView3 = (TextView) inflate.findViewById(R.id.normal_channel_number);
            textView3.setTypeface(this.f13478t);
            textView3.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
        } else {
            inflate = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView = (TextView) inflate.findViewById(R.id.relay_name);
            TextView textView4 = (TextView) inflate.findViewById(R.id.relay_receive_number);
            TextView textView5 = (TextView) inflate.findViewById(R.id.relay_transmit_number);
            textView4.setTypeface(this.f13478t);
            textView5.setTypeface(this.f13478t);
            textView4.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
            textView5.setText(MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq()));
        }
        textView.setText(sealSharkChannelModel.getName());
        inflate.setId(R.id.double_channel_top_item_id);
        inflate.setOnClickListener(new View$OnClickListenerC3785l(sealSharkChannelModel));
        if (sealSharkChannelModel2.isStChannel()) {
            inflate2 = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView2 = (TextView) inflate2.findViewById(R.id.normal_channel_name);
            TextView textView6 = (TextView) inflate2.findViewById(R.id.normal_channel_number);
            textView6.setTypeface(this.f13478t);
            textView6.setText(MethodsUtils.m11290j(sealSharkChannelModel2.getRxFreq()));
        } else {
            inflate2 = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView2 = (TextView) inflate2.findViewById(R.id.relay_name);
            TextView textView7 = (TextView) inflate2.findViewById(R.id.relay_receive_number);
            TextView textView8 = (TextView) inflate2.findViewById(R.id.relay_transmit_number);
            textView7.setTypeface(this.f13478t);
            textView8.setTypeface(this.f13478t);
            textView7.setText(MethodsUtils.m11290j(sealSharkChannelModel2.getRxFreq()));
            textView8.setText(MethodsUtils.m11290j(sealSharkChannelModel2.getTxFreq()));
        }
        textView2.setText(sealSharkChannelModel2.getName());
        inflate2.setId(R.id.double_channel_bottom_item_id);
        inflate2.setOnClickListener(new View$OnClickListenerC3786m(sealSharkChannelModel2));
        this.f13472n.removeAllViews();
        this.f13472n.addView(inflate);
        this.f13472n.addView(inflate2);
    }

    /* renamed from: V */
    public void m12666V(SealSharkChannelModel sealSharkChannelModel, SealSharkChannelModel sealSharkChannelModel2) {
        View inflate;
        TextView textView;
        View inflate2 = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
        TextView textView2 = (TextView) inflate2.findViewById(R.id.normal_channel_number);
        textView2.setTypeface(this.f13478t);
        textView2.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
        ((TextView) inflate2.findViewById(R.id.normal_channel_name)).setText(sealSharkChannelModel.getName());
        inflate2.setId(R.id.double_channel_top_item_id);
        inflate2.setOnClickListener(new View$OnClickListenerC3787n());
        if (sealSharkChannelModel2.isStChannel()) {
            inflate = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView = (TextView) inflate.findViewById(R.id.normal_channel_name);
            TextView textView3 = (TextView) inflate.findViewById(R.id.normal_channel_number);
            textView3.setTypeface(this.f13478t);
            textView3.setText(MethodsUtils.m11290j(sealSharkChannelModel2.getRxFreq()));
        } else {
            inflate = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView = (TextView) inflate.findViewById(R.id.relay_name);
            TextView textView4 = (TextView) inflate.findViewById(R.id.relay_receive_number);
            TextView textView5 = (TextView) inflate.findViewById(R.id.relay_transmit_number);
            textView4.setTypeface(this.f13478t);
            textView5.setTypeface(this.f13478t);
            textView4.setText(MethodsUtils.m11290j(sealSharkChannelModel2.getRxFreq()));
            textView5.setText(MethodsUtils.m11290j(sealSharkChannelModel2.getTxFreq()));
        }
        textView.setText(sealSharkChannelModel2.getName());
        inflate.setId(R.id.double_channel_bottom_item_id);
        inflate.setOnClickListener(new View$OnClickListenerC3788o(sealSharkChannelModel2));
        this.f13472n.removeAllViews();
        this.f13472n.addView(inflate2);
        this.f13472n.addView(inflate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 6) {
            if (i2 == 1) {
                this.f13468j.setText(intent.getStringExtra("setting_walkie_name"));
                CommonDialog commonDialog = new CommonDialog(this);
                commonDialog.m9025l(getString(R.string.setting_success_please_restart));
                commonDialog.m9022o(R.string.user_guide_i_know, null);
                commonDialog.m9032e();
                commonDialog.m9016u();
            }
        } else if (i == 7 && i2 == 1) {
            int intExtra = intent.getIntExtra("setting_auto_send_location_space_time", 3);
            this.f13469k.setText(UIUtils.m8602p(R.string.minute, Integer.valueOf(intExtra)));
            long j = intExtra * 60000;
            MiTalkClientUtil.m11174y0(this.f13482x, j);
            if (ShareLocationService.m10698e() != null) {
                ShareLocationService.m10698e().m10688o(j);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.auto_send_location /* 2131296368 */:
                m12658d0();
                return;
            case R.id.device_name_select_talkie /* 2131296595 */:
                m12659c0();
                return;
            case R.id.device_update /* 2131296603 */:
                m12663Y();
                return;
            case R.id.double_channel_model /* 2131296644 */:
                m12662Z();
                return;
            case R.id.item_about /* 2131296828 */:
                UserProtocolActivity.m10419U(this, MiTalkClientUtil.m11261G());
                return;
            case R.id.power_level_layout /* 2131297135 */:
                m12661a0();
                return;
            case R.id.public_my_location /* 2131297144 */:
                m12657e0();
                return;
            case R.id.relieve_binding /* 2131297199 */:
                m12655g0();
                return;
            case R.id.rl_device_activate /* 2131297218 */:
                m12664X();
                return;
            case R.id.time_update_layout /* 2131297415 */:
                m12656f0();
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
        setContentView(R.layout.activity_shark_setting);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13482x = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f13483y = BleCoreClient.m12373n().m12374m(this.f13482x);
        m12654h0();
        RxBus.m11806d().m11808b(this, ConnectStateEvent.class, new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SharkSettingActivity.this.m12650l0((ConnectStateEvent) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        C4161y.m11049f("SharkSettingActivity", "onNewIntent");
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
        this.f13481w.setVisibility(MiTalkClientUtil.m11214e0() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        C4161y.m11049f("SharkSettingActivity", "onStart");
        super.onStart();
        MiBus.getInstance().m6411j(this);
        this.f13476r = -1;
        this.f13470l.setChecked(MiTalkClientUtil.m11259H());
        this.f13483y.m12042d1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MiBus.getInstance().m6409l(this);
        BleHadDisconnectedDialog bleHadDisconnectedDialog = this.f13474p;
        if (bleHadDisconnectedDialog != null) {
            bleHadDisconnectedDialog.dismiss();
        }
        QMUIDialog qMUIDialog = this.f13475q;
        if (qMUIDialog != null) {
            qMUIDialog.dismiss();
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        C4161y.m11049f("SharkSettingActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new RunnableC3784k(sHARK_ChannelStateOperate));
    }

    @Subscribe
    public void receiveParamResponse(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        C4161y.m11049f("SharkSettingActivity", "receiveParamResponse");
        if (this.f15061g) {
            this.f15061g = false;
            UIUtils.m8598t(new RunnableC3791r(sHARK_DeviceParam));
            return;
        }
        UIUtils.m8598t(new RunnableC3793s(sHARK_DeviceParam));
    }
}
