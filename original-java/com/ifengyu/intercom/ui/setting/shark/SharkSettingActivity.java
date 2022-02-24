package com.ifengyu.intercom.ui.setting.shark;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.h0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.activity.AutoSendLocationActivity;
import com.ifengyu.intercom.ui.activity.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.ui.activity.SetSealSharkBleNameActivity;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.w;
import com.ifengyu.intercom.ui.widget.dialog.z;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.library.base.BaseApp;
import com.squareup.otto.Subscribe;
import okhttp3.Call;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class SharkSettingActivity extends BaseActivity implements View.OnClickListener {
    private Runnable A;
    private Typeface B;
    private CheckBox D;
    private View E;
    TextView q;
    TextView r;
    CheckBox s;
    LinearLayout t;
    LinearLayout u;
    TextView v;
    private com.ifengyu.intercom.ui.widget.dialog.e w;
    private z x;
    private v y;
    private int z = -1;
    private int C = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.z = -1;
            SharkSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.z = -1;
            SharkSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.j();
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.z = -1;
            SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
            sharkSettingActivity.b(sharkSettingActivity.getString(R.string.shark_time_update_fail));
            SharkSettingActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements Runnable {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.j();
            }
        }

        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
            sharkSettingActivity.b(sharkSettingActivity.getString(R.string.request_time_out));
            SharkSettingActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends com.ifengyu.intercom.g.d.j {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.j();
            }
        }

        f() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            exc.printStackTrace();
            k0.b(SharkSettingActivity.this.A);
            SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
            sharkSettingActivity.b(sharkSettingActivity.getString(R.string.net_error_please_check));
            SharkSettingActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }

        public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
            k0.b(SharkSettingActivity.this.A);
            SharkSettingActivity.this.j();
            if (mcuUpdateInfoModel != null) {
                com.ifengyu.intercom.i.z.c("SharkSettingActivity", "updateInfoModel:" + mcuUpdateInfoModel.toString());
                com.ifengyu.intercom.i.z.c("SharkSettingActivity", "getVersionCode:" + mcuUpdateInfoModel.getVersionCode());
                int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                int K = d0.K();
                Intent intent = new Intent(SharkSettingActivity.this, SealSharkMcuUpdateActivity.class);
                intent.putExtra("mcu_update_device_type", "shark");
                if (K <= 0 || K >= parseInt) {
                    intent.putExtra("mcu_have_update", false);
                } else {
                    intent.putExtra("mcu_have_update", true);
                }
                intent.putExtra("mcu_update_info", mcuUpdateInfoModel);
                intent.setAction("mcu_update_action_from_setting");
                SharkSettingActivity.this.startActivity(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements z.a {

        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: com.ifengyu.intercom.ui.setting.shark.SharkSettingActivity$g$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class RunnableC0185a implements Runnable {
                RunnableC0185a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SharkSettingActivity.this.j();
                    SharkSettingActivity.this.finish();
                }
            }

            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
                sharkSettingActivity.b(sharkSettingActivity.getString(R.string.unbind_success));
                SharkSettingActivity.this.b(R.drawable.mine_icon_win);
                if (SharkSettingActivity.this.A != null) {
                    BaseApp.a().removeCallbacks(SharkSettingActivity.this.A);
                    SharkSettingActivity.this.A = null;
                }
                SharkSettingActivity.this.A = new RunnableC0185a();
                BaseApp.a().postDelayed(SharkSettingActivity.this.A, 1000L);
            }
        }

        g() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.z.a
        public void a() {
            SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
            sharkSettingActivity.a(false, false, sharkSettingActivity.getString(R.string.unbind_ing), R.drawable.load_spinner);
            String l = SharkSettingActivity.this.l();
            if (!TextUtils.isEmpty(l)) {
                com.ifengyu.intercom.node.q.d a2 = com.ifengyu.intercom.service.a.a();
                if (a2 != null) {
                    a2.c(l);
                }
                com.ifengyu.intercom.node.q.d.c().d.b(l);
            }
            d0.b();
            SharkSettingActivity.this.x.dismiss();
            if (SharkSettingActivity.this.A != null) {
                BaseApp.a().removeCallbacks(SharkSettingActivity.this.A);
                SharkSettingActivity.this.A = null;
            }
            SharkSettingActivity.this.A = new a();
            BaseApp.a().postDelayed(SharkSettingActivity.this.A, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6822a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f6823b;

        h(SealSharkChannel sealSharkChannel, boolean z) {
            this.f6822a = sealSharkChannel;
            this.f6823b = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.b(this.f6822a, this.f6823b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6825a;

        i(SealSharkChannel sealSharkChannel) {
            this.f6825a = sealSharkChannel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.b(this.f6825a, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6827a;

        j(SealSharkChannel sealSharkChannel) {
            this.f6827a = sealSharkChannel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.b(this.f6827a, false);
        }
    }

    /* loaded from: classes2.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_ChannelStateOperate f6829a;

        k(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
            this.f6829a = sHARK_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f6829a.hasResult()) {
                SharkSettingActivity.this.C = -1;
            } else if (this.f6829a.getResult() == SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR.SHARK_ST_OK) {
                SharkSettingActivity.this.a(this.f6829a);
            } else {
                SharkSettingActivity.this.C = -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.a((CharSequence) SharkSettingActivity.this.getString(R.string.sos_mode_can_not_setting), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6832a;

        m(SealSharkChannel sealSharkChannel) {
            this.f6832a = sealSharkChannel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharkSettingActivity.this.b(this.f6832a, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.a((CharSequence) SharkSettingActivity.this.getString(R.string.scan_mode_can_not_setting), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c0.a((CharSequence) SharkSettingActivity.this.getString(R.string.team_mode_can_not_setting), false);
        }
    }

    /* loaded from: classes2.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_DeviceParam f6836a;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.j();
                BaseActivity.e eVar = SharkSettingActivity.this.m;
                if (eVar != null) {
                    eVar.a();
                }
            }
        }

        p(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
            this.f6836a = sHARK_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.b(SharkSettingActivity.this.p);
            if (this.f6836a.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                SharkSettingActivity.this.b(R.drawable.mine_icon_win);
                SharkSettingActivity.this.c(R.string.activation_successful);
                k0.a(new a(), 800L);
                MiTalkiApp.b().h = true;
                d0.a(true);
                return;
            }
            SharkSettingActivity.this.p.run();
        }
    }

    /* loaded from: classes2.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_DeviceParam f6839a;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.j();
            }
        }

        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.j();
            }
        }

        q(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
            this.f6839a = sHARK_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6839a.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                int i = SharkSettingActivity.this.z;
                if (i != -1) {
                    if (i == 1) {
                        SharkSettingActivity.this.j();
                        SharkSettingActivity.this.z = -1;
                        SharkSettingActivity.this.s.setChecked(d0.G());
                    } else if (i == 2) {
                        SharkSettingActivity.this.j();
                        SharkSettingActivity.this.z = -1;
                        SharkSettingActivity.this.H();
                    } else if (i == 3) {
                        SharkSettingActivity.this.z = -1;
                        SharkSettingActivity.this.b(R.drawable.mine_icon_win);
                        SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
                        sharkSettingActivity.b(sharkSettingActivity.getString(R.string.shark_time_update_success));
                        k0.a(new a(), 500L);
                    }
                } else if (this.f6839a.hasCh() && this.f6839a.getCh().hasChTxPower()) {
                    SharkSettingActivity.this.H();
                } else if (this.f6839a.hasShareLoc()) {
                    SharkSettingActivity.this.s.setChecked(d0.G());
                }
            } else {
                SharkSettingActivity.this.z = -1;
                SharkSettingActivity.this.b(R.drawable.mine_icon_lose);
                SharkSettingActivity.this.c(R.string.not_support_switch);
                k0.a(new b(), 500L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class s implements BaseActivity.e {
        s() {
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void a() {
            SharkSettingActivity.this.t.setVisibility(8);
            String F = d0.F();
            String N = d0.N();
            if (!TextUtils.isEmpty(F) && !TextUtils.isEmpty(N)) {
                com.ifengyu.intercom.g.a.a(N, F, (com.ifengyu.intercom.g.d.b) null);
            }
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void b() {
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class t implements w.c {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.z = -1;
                SharkSettingActivity.this.j();
            }
        }

        t() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.w.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i <= 1) {
                SharkSettingActivity sharkSettingActivity = SharkSettingActivity.this;
                sharkSettingActivity.a(false, true, sharkSettingActivity.getString(R.string.please_wait), R.drawable.load_spinner);
                if (SharkSettingActivity.this.A != null) {
                    BaseApp.a().removeCallbacks(SharkSettingActivity.this.A);
                }
                SharkSettingActivity.this.A = new a();
                BaseApp.a().postDelayed(SharkSettingActivity.this.A, 5000L);
                SharkSettingActivity.this.z = 2;
                h0.a(i + 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkSettingActivity.this.j();
        }
    }

    /* loaded from: classes2.dex */
    private class v implements com.ifengyu.intercom.node.h {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SharkSettingActivity.this.w != null && SharkSettingActivity.this.w.isShowing()) {
                    SharkSettingActivity.this.w.dismiss();
                }
                h0.b();
            }
        }

        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SharkSettingActivity.this.w = new com.ifengyu.intercom.ui.widget.dialog.e(SharkSettingActivity.this);
                SharkSettingActivity.this.w.setCanceledOnTouchOutside(false);
                SharkSettingActivity.this.w.show();
            }
        }

        private v() {
        }

        @Override // com.ifengyu.intercom.node.h
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void b(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void c(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void d(String str) {
            SharkSettingActivity.this.runOnUiThread(new a());
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
            SharkSettingActivity.this.runOnUiThread(new b());
        }

        /* synthetic */ v(SharkSettingActivity sharkSettingActivity, k kVar) {
            this();
        }
    }

    private void A() {
        if (com.ifengyu.intercom.node.j.b().a()) {
            startActivityForResult(new Intent(this, SetSealSharkBleNameActivity.class), 6);
        } else {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    private void B() {
        if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (this.s.isChecked()) {
            startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
        } else {
            c0.a((CharSequence) getString(R.string.setting_please_open_share_loc_btn), false);
        }
    }

    private void C() {
        if (com.ifengyu.intercom.node.j.b().a()) {
            a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
            if (this.A != null) {
                BaseApp.a().removeCallbacks(this.A);
            }
            this.A = new b();
            BaseApp.a().postDelayed(this.A, 5000L);
            this.z = 1;
            h0.b(!this.s.isChecked());
        } else if (this.s.isChecked()) {
            this.s.setChecked(false);
            stopService(new Intent(this, ShareLocationService.class));
        } else {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    private void D() {
        if (com.ifengyu.intercom.node.j.b().a()) {
            a(false, true, getString(R.string.shark_time_update_ing), R.drawable.load_spinner);
            if (this.A != null) {
                BaseApp.a().removeCallbacks(this.A);
            }
            this.A = new c();
            BaseApp.a().postDelayed(this.A, 5000L);
            this.z = 3;
            h0.f();
            return;
        }
        c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
    }

    private void E() {
        z zVar = new z(this, true);
        this.x = zVar;
        zVar.a(new g());
        this.x.show();
    }

    private void F() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        this.u = (LinearLayout) findViewById(R.id.top_channel_container);
        this.t = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.q = (TextView) findViewById(R.id.current_device_name);
        this.r = (TextView) findViewById(R.id.auto_send_location_time);
        this.v = (TextView) findViewById(R.id.power_level_value);
        this.D = (CheckBox) findViewById(R.id.double_channel_switch_btn);
        this.s = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.B = com.ifengyu.intercom.i.p.f5324b;
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
        this.E = findViewById(R.id.have_mcu_update_red_point);
        if (!com.ifengyu.intercom.node.j.b().a()) {
            com.ifengyu.intercom.ui.widget.dialog.e eVar = new com.ifengyu.intercom.ui.widget.dialog.e(this);
            this.w = eVar;
            eVar.setCanceledOnTouchOutside(false);
            this.w.show();
        }
        this.t.setVisibility(d0.U() ? 8 : 0);
        this.q.setText(d0.q());
        H();
        this.D.setClickable(false);
        this.s.setClickable(false);
        this.s.setChecked(d0.G());
        this.r.setText(k0.a((int) R.string.minute, Long.valueOf(d0.a(l()) / OpenStreetMapTileProviderConstants.ONE_MINUTE)));
    }

    private void G() {
        com.ifengyu.intercom.g.a.d(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        int H = d0.H();
        if (H == 1) {
            this.v.setText(getString(R.string.shark_power_level_low));
        } else if (H == 2) {
            this.v.setText(getString(R.string.shark_power_level_high));
        }
    }

    private void w() {
        if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (d0.U()) {
            a(false, false, getString(R.string.device_had_actived), R.drawable.load_spinner);
            b(R.drawable.mine_icon_win);
            k0.a(new r(), 500L);
        } else {
            a(new s());
        }
    }

    private void x() {
        if (!c0.b(this)) {
            c0.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else {
            int i2 = this.C;
            if (i2 <= 0 || i2 == SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                a(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
                e eVar = new e();
                this.A = eVar;
                k0.a(eVar, 8000L);
                G();
                return;
            }
            a(false, true, getString(R.string.current_mode_not_support_this_set), R.drawable.load_spinner);
            b(R.drawable.mine_icon_lose);
            BaseApp.a().postDelayed(new d(), 1000L);
        }
    }

    private void y() {
        if (com.ifengyu.intercom.node.j.b().a()) {
            int i2 = this.C;
            if (i2 <= 0 || i2 == SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                if (this.A != null) {
                    BaseApp.a().removeCallbacks(this.A);
                }
                this.A = new a();
                BaseApp.a().postDelayed(this.A, 5000L);
                this.z = 0;
                h0.a(!this.D.isChecked());
                return;
            }
            a(false, true, getString(R.string.current_mode_not_support_this_set), R.drawable.load_spinner);
            b(R.drawable.mine_icon_lose);
            BaseApp.a().postDelayed(new u(), 1000L);
            return;
        }
        c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
    }

    private void z() {
        int i2;
        if (com.ifengyu.intercom.node.j.b().a()) {
            if (this.v.getText().equals(getString(R.string.shark_power_level_low))) {
                i2 = 1;
            } else {
                i2 = this.v.getText().equals(getString(R.string.shark_power_level_high)) ? 2 : 0;
            }
            String[] strArr = {getString(R.string.shark_power_level_low), getString(R.string.shark_power_level_high), getString(R.string.common_cancel)};
            w wVar = new w(this, i2);
            wVar.a(true);
            wVar.b(R.string.shark_power_level);
            wVar.a(strArr, new t());
            wVar.show();
            return;
        }
        c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == 6) {
            if (i3 == 1) {
                this.q.setText(intent.getStringExtra("setting_walkie_name"));
                com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(this);
                fVar.a(getString(R.string.setting_success_please_restart));
                fVar.b(R.string.user_guide_i_know, (DialogInterface.OnClickListener) null);
                fVar.a();
                fVar.d();
            }
        } else if (i2 == 7 && i3 == 1) {
            int intExtra = intent.getIntExtra("setting_auto_send_location_space_time", 3);
            this.r.setText(k0.a((int) R.string.minute, Integer.valueOf(intExtra)));
            long j2 = intExtra * 60000;
            d0.a(l(), j2);
            if (ShareLocationService.a() != null) {
                ShareLocationService.a().a(j2);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.auto_send_location /* 2131296372 */:
                B();
                return;
            case R.id.device_name_select_talkie /* 2131296540 */:
                A();
                return;
            case R.id.device_update /* 2131296543 */:
                x();
                return;
            case R.id.double_channel_model /* 2131296579 */:
                y();
                return;
            case R.id.item_about /* 2131296739 */:
                UserProtocolActivity.b(this, 4);
                return;
            case R.id.power_level_layout /* 2131297037 */:
                z();
                return;
            case R.id.public_my_location /* 2131297045 */:
                C();
                return;
            case R.id.relieve_binding /* 2131297091 */:
                E();
                return;
            case R.id.rl_device_activate /* 2131297105 */:
                w();
                return;
            case R.id.time_update_layout /* 2131297297 */:
                D();
                return;
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_shark_setting);
        F();
        this.y = new v(this, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        com.ifengyu.intercom.i.z.c("SharkSettingActivity", "onNewIntent");
        super.onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        UpdateManager.d().c();
        com.ifengyu.intercom.node.j.b().b(this.y);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.ifengyu.intercom.node.j.b().a(this.y);
        this.E.setVisibility(d0.f0() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        com.ifengyu.intercom.i.z.c("SharkSettingActivity", "onStart");
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().b(this);
        this.z = -1;
        this.s.setChecked(d0.G());
        h0.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().c(this);
        com.ifengyu.intercom.ui.widget.dialog.e eVar = this.w;
        if (eVar != null) {
            eVar.dismiss();
        }
        z zVar = this.x;
        if (zVar != null) {
            zVar.dismiss();
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        com.ifengyu.intercom.i.z.c("SharkSettingActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new k(sHARK_ChannelStateOperate));
    }

    @Subscribe
    public void receiveParamResponse(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        com.ifengyu.intercom.i.z.c("SharkSettingActivity", "receiveParamResponse");
        if (this.l) {
            this.l = false;
            k0.a(new p(sHARK_DeviceParam));
            return;
        }
        k0.a(new q(sHARK_DeviceParam));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(SealSharkChannel sealSharkChannel, boolean z) {
        if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (sealSharkChannel != null) {
            SharkChannelSettingActivity.a(this, sealSharkChannel, z);
        }
    }

    public void b(SealSharkChannel sealSharkChannel, SealSharkChannel sealSharkChannel2) {
        View view;
        TextView textView;
        View inflate = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
        TextView textView2 = (TextView) inflate.findViewById(R.id.normal_channel_number);
        textView2.setTypeface(this.B);
        textView2.setText(c0.b(sealSharkChannel.i()));
        ((TextView) inflate.findViewById(R.id.normal_channel_name)).setText(sealSharkChannel.e());
        inflate.setId(R.id.double_channel_top_item_id);
        inflate.setOnClickListener(new l());
        if (sealSharkChannel2.d()) {
            view = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView = (TextView) view.findViewById(R.id.normal_channel_name);
            TextView textView3 = (TextView) view.findViewById(R.id.normal_channel_number);
            textView3.setTypeface(this.B);
            textView3.setText(c0.b(sealSharkChannel2.i()));
        } else {
            view = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView = (TextView) view.findViewById(R.id.relay_name);
            TextView textView4 = (TextView) view.findViewById(R.id.relay_receive_number);
            TextView textView5 = (TextView) view.findViewById(R.id.relay_transmit_number);
            textView4.setTypeface(this.B);
            textView5.setTypeface(this.B);
            textView4.setText(c0.b(sealSharkChannel2.i()));
            textView5.setText(c0.b(sealSharkChannel2.l()));
        }
        textView.setText(sealSharkChannel2.e());
        view.setId(R.id.double_channel_bottom_item_id);
        view.setOnClickListener(new m(sealSharkChannel2));
        this.u.removeAllViews();
        this.u.addView(inflate);
        this.u.addView(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.C = number;
            if (number != SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                int i2 = this.C;
                if (i2 != 1 && i2 != 2) {
                    View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                    TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                    TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                    this.u.removeAllViews();
                    this.u.addView(inflate);
                    inflate.setId(R.id.scan_and_team_mode_item_id);
                    int i3 = this.C;
                    if (i3 == 3 || i3 == 4) {
                        textView.setText(getString(R.string.device_mode_channel_scan));
                        textView2.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                        inflate.setOnClickListener(new n());
                    } else if (i3 == 5 || i3 == 6) {
                        textView.setText(getString(R.string.device_mode_team));
                        textView2.setText(getString(R.string.device_mode_team_ing_describe));
                        inflate.setOnClickListener(new o());
                    }
                } else if (sHARK_ChannelStateOperate.hasCh1() && sHARK_ChannelStateOperate.hasCh2()) {
                    SharkProtos.SHARK_ChannelInfo ch1 = sHARK_ChannelStateOperate.getCh1();
                    SharkProtos.SHARK_ChannelInfo ch2 = sHARK_ChannelStateOperate.getCh2();
                    SealSharkChannel a2 = h0.a(ch1);
                    SealSharkChannel a3 = h0.a(ch2);
                    if (a2 != null && a3 != null) {
                        b(a2, a3);
                    }
                }
            } else if (sHARK_ChannelStateOperate.hasStateMode()) {
                int stateMode = sHARK_ChannelStateOperate.getStateMode();
                if (this.z == 0) {
                    j();
                    this.z = -1;
                }
                this.D.setChecked(stateMode == 2);
                if (stateMode == 1) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        a(h0.a(sHARK_ChannelStateOperate.getCh1()), true);
                    } else if (sHARK_ChannelStateOperate.hasCh2()) {
                        a(h0.a(sHARK_ChannelStateOperate.getCh2()), false);
                    }
                } else if (stateMode == 2 && sHARK_ChannelStateOperate.hasCh1() && sHARK_ChannelStateOperate.hasCh2()) {
                    SharkProtos.SHARK_ChannelInfo ch12 = sHARK_ChannelStateOperate.getCh1();
                    SharkProtos.SHARK_ChannelInfo ch22 = sHARK_ChannelStateOperate.getCh2();
                    SealSharkChannel a4 = h0.a(ch12);
                    SealSharkChannel a5 = h0.a(ch22);
                    if (a4 != null && a5 != null) {
                        a(a4, a5);
                    }
                }
            }
        } else {
            this.C = -1;
        }
    }

    private void a(SealSharkChannel sealSharkChannel, boolean z) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        View view;
        if (sealSharkChannel.d()) {
            view = View.inflate(this, R.layout.seal_shark_single_channel_normal_layout, null);
            textView2 = (TextView) view.findViewById(R.id.normal_channel_name);
            TextView textView4 = (TextView) view.findViewById(R.id.normal_channel_number);
            ((LinearLayout) view.findViewById(R.id.normal_css_channel_layout)).setVisibility(8);
            textView3 = (TextView) view.findViewById(R.id.normal_rx_css_value);
            textView = (TextView) view.findViewById(R.id.normal_tx_css_value);
            textView4.setTypeface(this.B);
            textView4.setText(c0.b(sealSharkChannel.i()));
        } else {
            view = View.inflate(this, R.layout.seal_shark_single_channel_custom_layout, null);
            textView2 = (TextView) view.findViewById(R.id.relay_channel_name);
            TextView textView5 = (TextView) view.findViewById(R.id.relay_channel_receive_number);
            TextView textView6 = (TextView) view.findViewById(R.id.relay_channel_transmit_number);
            ((LinearLayout) view.findViewById(R.id.custom_css_layout)).setVisibility(8);
            textView3 = (TextView) view.findViewById(R.id.relay_rx_css_value);
            textView = (TextView) view.findViewById(R.id.relay_tx_css_value);
            textView5.setTypeface(this.B);
            textView6.setTypeface(this.B);
            textView5.setText(c0.b(sealSharkChannel.i()));
            textView6.setText(c0.b(sealSharkChannel.l()));
        }
        textView2.setText(sealSharkChannel.e());
        textView3.setText(k0.a((int) R.string.receive_css_code_s, c0.h(sealSharkChannel.h())));
        textView.setText(k0.a((int) R.string.translate_css_code_s, c0.h(sealSharkChannel.k())));
        view.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(new h(sealSharkChannel, z));
        this.u.removeAllViews();
        this.u.addView(view);
    }

    public void a(SealSharkChannel sealSharkChannel, SealSharkChannel sealSharkChannel2) {
        TextView textView;
        View view;
        View view2;
        TextView textView2;
        if (sealSharkChannel.d()) {
            view = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView = (TextView) view.findViewById(R.id.normal_channel_name);
            TextView textView3 = (TextView) view.findViewById(R.id.normal_channel_number);
            textView3.setTypeface(this.B);
            textView3.setText(c0.b(sealSharkChannel.i()));
        } else {
            view = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView = (TextView) view.findViewById(R.id.relay_name);
            TextView textView4 = (TextView) view.findViewById(R.id.relay_receive_number);
            TextView textView5 = (TextView) view.findViewById(R.id.relay_transmit_number);
            textView4.setTypeface(this.B);
            textView5.setTypeface(this.B);
            textView4.setText(c0.b(sealSharkChannel.i()));
            textView5.setText(c0.b(sealSharkChannel.l()));
        }
        textView.setText(sealSharkChannel.e());
        view.setId(R.id.double_channel_top_item_id);
        view.setOnClickListener(new i(sealSharkChannel));
        if (sealSharkChannel2.d()) {
            view2 = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView2 = (TextView) view2.findViewById(R.id.normal_channel_name);
            TextView textView6 = (TextView) view2.findViewById(R.id.normal_channel_number);
            textView6.setTypeface(this.B);
            textView6.setText(c0.b(sealSharkChannel2.i()));
        } else {
            view2 = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView2 = (TextView) view2.findViewById(R.id.relay_name);
            TextView textView7 = (TextView) view2.findViewById(R.id.relay_receive_number);
            TextView textView8 = (TextView) view2.findViewById(R.id.relay_transmit_number);
            textView7.setTypeface(this.B);
            textView8.setTypeface(this.B);
            textView7.setText(c0.b(sealSharkChannel2.i()));
            textView8.setText(c0.b(sealSharkChannel2.l()));
        }
        textView2.setText(sealSharkChannel2.e());
        view2.setId(R.id.double_channel_bottom_item_id);
        view2.setOnClickListener(new j(sealSharkChannel2));
        this.u.removeAllViews();
        this.u.addView(view);
        this.u.addView(view2);
    }
}
