package com.ifengyu.intercom.ui.setting.seal;

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
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.activity.AutoSendLocationActivity;
import com.ifengyu.intercom.ui.activity.SealBtEarDisConnActivity;
import com.ifengyu.intercom.ui.activity.SealBtEarGuide1Activity;
import com.ifengyu.intercom.ui.activity.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.ui.activity.SetSealSharkBleNameActivity;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.dialog.z;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.library.base.BaseApp;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.squareup.otto.Subscribe;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import okhttp3.Call;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class SealSettingActivity extends BaseActivity implements View.OnClickListener {
    private TextView A;
    private com.ifengyu.intercom.ui.widget.dialog.e B;
    private z C;
    private l D;
    private Runnable F;
    private SealSharkChannel G;
    private Typeface H;
    private LinearLayout J;
    private LinearLayout K;
    private TextView L;
    private TextView M;
    private View N;
    TextView q;
    TextView r;
    CheckBox s;
    LinearLayout t;
    LinearLayout u;
    TextView v;
    TextView w;
    TextView x;
    TextView y;
    private LinearLayout z;
    private int E = -1;
    private int I = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends com.ifengyu.intercom.g.d.i {

        /* renamed from: com.ifengyu.intercom.ui.setting.seal.SealSettingActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0177a implements Runnable {
            RunnableC0177a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.j();
            }
        }

        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            exc.printStackTrace();
            k0.b(SealSettingActivity.this.F);
            SealSettingActivity sealSettingActivity = SealSettingActivity.this;
            sealSettingActivity.b(sealSettingActivity.getString(R.string.net_error_please_check));
            SealSettingActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new RunnableC0177a(), 1000L);
        }

        public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
            k0.b(SealSettingActivity.this.F);
            SealSettingActivity.this.j();
            if (mcuUpdateInfoModel != null) {
                com.ifengyu.intercom.i.z.c("SealSettingActivity", "updateInfoModel:" + mcuUpdateInfoModel.toString());
                com.ifengyu.intercom.i.z.c("SealSettingActivity", "getVersionCode:" + mcuUpdateInfoModel.getVersionCode());
                int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                int D = d0.D();
                Intent intent = new Intent(SealSettingActivity.this, SealSharkMcuUpdateActivity.class);
                intent.putExtra("mcu_update_device_type", "seal");
                if (D <= 0 || D >= parseInt) {
                    intent.putExtra("mcu_have_update", false);
                } else {
                    intent.putExtra("mcu_have_update", true);
                }
                intent.putExtra("mcu_update_info", mcuUpdateInfoModel);
                intent.setAction("mcu_update_action_from_setting");
                SealSettingActivity.this.startActivity(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements z.a {

        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: com.ifengyu.intercom.ui.setting.seal.SealSettingActivity$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class RunnableC0178a implements Runnable {
                RunnableC0178a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SealSettingActivity.this.j();
                    SealSettingActivity.this.finish();
                }
            }

            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity sealSettingActivity = SealSettingActivity.this;
                sealSettingActivity.b(sealSettingActivity.getString(R.string.unbind_success));
                SealSettingActivity.this.b(R.drawable.mine_icon_win);
                if (SealSettingActivity.this.F != null) {
                    BaseApp.a().removeCallbacks(SealSettingActivity.this.F);
                    SealSettingActivity.this.F = null;
                }
                SealSettingActivity.this.F = new RunnableC0178a();
                BaseApp.a().postDelayed(SealSettingActivity.this.F, 1000L);
            }
        }

        b() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.z.a
        public void a() {
            SealSettingActivity sealSettingActivity = SealSettingActivity.this;
            sealSettingActivity.a(false, false, sealSettingActivity.getString(R.string.unbind_ing), R.drawable.load_spinner);
            String l = SealSettingActivity.this.l();
            if (!TextUtils.isEmpty(l)) {
                com.ifengyu.intercom.node.q.d a2 = com.ifengyu.intercom.service.a.a();
                if (a2 != null) {
                    a2.c(l);
                }
                com.ifengyu.intercom.node.q.d.c().d.b(l);
            }
            d0.b();
            SealSettingActivity.this.C.dismiss();
            if (SealSettingActivity.this.F != null) {
                BaseApp.a().removeCallbacks(SealSettingActivity.this.F);
                SealSettingActivity.this.F = null;
            }
            SealSettingActivity.this.F = new a();
            BaseApp.a().postDelayed(SealSettingActivity.this.F, 500L);
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_ChannelStateOperate f6721a;

        c(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
            this.f6721a = sEAL_ChannelStateOperate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f6721a.hasResult()) {
                SealSettingActivity.this.I = -1;
            } else if (this.f6721a.getResult() == SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK) {
                SealSettingActivity.this.a(this.f6721a);
            } else {
                SealSettingActivity.this.I = -1;
            }
            g0.d();
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_BtEarConnectState f6723a;

        d(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            this.f6723a = sEAL_BtEarConnectState;
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((this.f6723a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY || this.f6723a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT) && this.f6723a.getResult() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                if (this.f6723a.hasBtEar()) {
                    SealProtos.SEAL_BtEarInfo btEar = this.f6723a.getBtEar();
                    try {
                        SealSettingActivity.this.z.setVisibility(0);
                        SealSettingActivity.this.A.setText(k0.a((int) R.string.have_conn_bt_ear_name_s, new String(btEar.getName().toByteArray(), "UTF-8")));
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                } else {
                    SealSettingActivity.this.z.setVisibility(8);
                }
            } else if (this.f6723a.getOption() == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT) {
                SealSettingActivity.this.z.setVisibility(8);
            }
        }
    }

    /* loaded from: classes2.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f6725a;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.j();
                BaseActivity.e eVar = SealSettingActivity.this.m;
                if (eVar != null) {
                    eVar.a();
                }
            }
        }

        e(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f6725a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.b(SealSettingActivity.this.p);
            if (this.f6725a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                SealSettingActivity.this.b(R.drawable.mine_icon_win);
                SealSettingActivity.this.c(R.string.activation_successful);
                k0.a(new a(), 800L);
                MiTalkiApp.b().h = true;
                d0.a(true);
                return;
            }
            SealSettingActivity.this.p.run();
        }
    }

    /* loaded from: classes2.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f6728a;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.j();
            }
        }

        f(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f6728a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6728a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                int i = SealSettingActivity.this.E;
                if (i != -1) {
                    if (i == 0) {
                        SealSettingActivity.this.j();
                        SealSettingActivity.this.E = -1;
                        SealSettingActivity.this.G();
                    } else if (i == 1) {
                        SealSettingActivity.this.j();
                        SealSettingActivity.this.E = -1;
                        CheckBox checkBox = SealSettingActivity.this.s;
                        checkBox.setChecked(true ^ checkBox.isChecked());
                    }
                } else if (this.f6728a.getCh().hasChVox()) {
                    SealSettingActivity.this.G();
                }
            } else {
                SealSettingActivity.this.E = -1;
                SealSettingActivity.this.b(R.drawable.mine_icon_lose);
                SealSettingActivity.this.c(R.string.not_support_switch);
                k0.a(new a(), 500L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements BaseActivity.e {
        h() {
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void a() {
            SealSettingActivity.this.t.setVisibility(8);
            String u = d0.u();
            String N = d0.N();
            if (!TextUtils.isEmpty(u) && !TextUtils.isEmpty(N)) {
                com.ifengyu.intercom.g.a.a(N, u, (com.ifengyu.intercom.g.d.b) null);
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
    public class i implements q.c {
        i() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i > 3) {
                return;
            }
            if (i == 0 || d0.E() != 0) {
                SealSettingActivity.this.e(i);
            } else {
                SealSettingActivity.this.f(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSettingActivity.this.E = -1;
            SealSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class k implements Runnable {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.j();
            }
        }

        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealSettingActivity sealSettingActivity = SealSettingActivity.this;
            sealSettingActivity.b(sealSettingActivity.getString(R.string.request_time_out));
            SealSettingActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }
    }

    /* loaded from: classes2.dex */
    private class l implements com.ifengyu.intercom.node.h {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SealSettingActivity.this.B != null && SealSettingActivity.this.B.isShowing()) {
                    SealSettingActivity.this.B.dismiss();
                }
                g0.b();
            }
        }

        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealSettingActivity.this.z.setVisibility(8);
                SealSettingActivity.this.B = new com.ifengyu.intercom.ui.widget.dialog.e(SealSettingActivity.this);
                SealSettingActivity.this.B.setCanceledOnTouchOutside(false);
                SealSettingActivity.this.B.show();
            }
        }

        private l() {
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
            SealSettingActivity.this.runOnUiThread(new a());
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
            SealSettingActivity.this.runOnUiThread(new b());
        }

        /* synthetic */ l(SealSettingActivity sealSettingActivity, c cVar) {
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
            if (this.F != null) {
                BaseApp.a().removeCallbacks(this.F);
            }
            this.F = new j();
            BaseApp.a().postDelayed(this.F, 5000L);
            this.E = 1;
            g0.d(!this.s.isChecked());
        } else if (this.s.isChecked()) {
            this.s.setChecked(false);
            stopService(new Intent(this, ShareLocationService.class));
        } else {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    private void D() {
        z zVar = new z(this, true);
        this.C = zVar;
        zVar.a(new b());
        this.C.show();
    }

    private void E() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.have_conn_bt_ear_layout);
        this.z = linearLayout;
        int i2 = 8;
        linearLayout.setVisibility(8);
        this.A = (TextView) findViewById(R.id.have_conn_bt_ear_tv);
        this.u = (LinearLayout) findViewById(R.id.top_channel_container);
        this.t = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.q = (TextView) findViewById(R.id.current_device_name);
        this.r = (TextView) findViewById(R.id.auto_send_location_time);
        this.v = (TextView) findViewById(R.id.free_call_level);
        this.s = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.H = p.f5324b;
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
        this.N = findViewById(R.id.have_mcu_update_red_point);
        if (!com.ifengyu.intercom.node.j.b().a()) {
            com.ifengyu.intercom.ui.widget.dialog.e eVar = new com.ifengyu.intercom.ui.widget.dialog.e(this);
            this.B = eVar;
            eVar.setCanceledOnTouchOutside(false);
            this.B.show();
        }
        LinearLayout linearLayout2 = this.t;
        if (!d0.U()) {
            i2 = 0;
        }
        linearLayout2.setVisibility(i2);
        this.q.setText(d0.q());
        G();
        this.s.setClickable(false);
        this.s.setChecked(d0.x());
        this.r.setText(k0.a((int) R.string.minute, Long.valueOf(d0.a(l()) / OpenStreetMapTileProviderConstants.ONE_MINUTE)));
    }

    private void F() {
        com.ifengyu.intercom.g.a.c(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        int E = d0.E();
        if (E == 0) {
            this.v.setText(getString(R.string.common_off));
        } else if (E != 1) {
            if (E != 2) {
                if (E == 3) {
                    if (c0.a()) {
                        this.v.setText("High");
                    } else {
                        this.v.setText(getString(R.string.free_call_level_high));
                    }
                }
            } else if (c0.a()) {
                this.v.setText("Medium");
            } else {
                this.v.setText(getString(R.string.free_call_level_middle));
            }
        } else if (c0.a()) {
            this.v.setText("Low");
        } else {
            this.v.setText(getString(R.string.free_call_level_low));
        }
    }

    private void x() {
        if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (d0.U()) {
            a(false, false, getString(R.string.device_had_actived), R.drawable.load_spinner);
            b(R.drawable.mine_icon_win);
            k0.a(new g(), 500L);
        } else {
            a(new h());
        }
    }

    private void y() {
        if (!c0.b(this)) {
            c0.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else {
            a(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
            k kVar = new k();
            this.F = kVar;
            k0.a(kVar, 8000L);
            F();
        }
    }

    private void z() {
        if (com.ifengyu.intercom.node.j.b().a()) {
            String[] strArr = {getString(R.string.common_off), getString(R.string.free_call_level_low), getString(R.string.free_call_level_middle), getString(R.string.free_call_level_high), getString(R.string.common_cancel)};
            q qVar = new q(this);
            qVar.a(true);
            qVar.b(R.string.button_free_call_text);
            qVar.a(strArr, new i());
            qVar.show();
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
            case R.id.button_free_call /* 2131296430 */:
                z();
                return;
            case R.id.device_name_select_talkie /* 2131296540 */:
                A();
                return;
            case R.id.device_update /* 2131296543 */:
                y();
                return;
            case R.id.have_conn_bt_ear_layout /* 2131296697 */:
                if (com.ifengyu.intercom.node.j.b().a()) {
                    Intent intent = new Intent(this, SealBtEarDisConnActivity.class);
                    intent.putExtra("bt_ear_had_conn_to", this.A.getText());
                    startActivity(intent);
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.help_device_connect_ble_ear /* 2131296701 */:
                a(SealBtEarGuide1Activity.class);
                return;
            case R.id.item_about /* 2131296739 */:
                UserProtocolActivity.b(this, 5);
                return;
            case R.id.more_setting /* 2131296943 */:
                a(SealMoreSettingActivity.class);
                return;
            case R.id.public_my_location /* 2131297045 */:
                C();
                return;
            case R.id.relieve_binding /* 2131297091 */:
                D();
                return;
            case R.id.rl_device_activate /* 2131297105 */:
                x();
                return;
            case R.id.single_channel_item_enter_btn /* 2131297200 */:
                a(this.G, true);
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
        setContentView(R.layout.activity_seal_setting);
        E();
        this.D = new l(this, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        com.ifengyu.intercom.i.z.c("SealSettingActivity", "onNewIntent");
        super.onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        UpdateManager.d().c();
        com.ifengyu.intercom.node.j.b().b(this.D);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.ifengyu.intercom.node.j.b().a(this.D);
        this.N.setVisibility(d0.e0() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        com.ifengyu.intercom.i.z.c("SealSettingActivity", "onStart");
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().b(this);
        this.E = -1;
        this.s.setChecked(d0.x());
        g0.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().c(this);
        com.ifengyu.intercom.ui.widget.dialog.e eVar = this.B;
        if (eVar != null) {
            eVar.dismiss();
        }
        z zVar = this.C;
        if (zVar != null) {
            zVar.dismiss();
        }
    }

    @Subscribe
    public void receiveBtEarConnectStateResp(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        com.ifengyu.intercom.i.z.c("SealSettingActivity", "receiveBtEarConnectStateResp");
        runOnUiThread(new d(sEAL_BtEarConnectState));
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        com.ifengyu.intercom.i.z.c("SealSettingActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new c(sEAL_ChannelStateOperate));
    }

    @Subscribe
    public void receiveParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        com.ifengyu.intercom.i.z.c("SealSettingActivity", "receiveParamResponse");
        if (this.l) {
            this.l = false;
            k0.a(new e(sEAL_DeviceParam));
            return;
        }
        k0.a(new f(sEAL_DeviceParam));
    }

    public /* synthetic */ void w() {
        this.E = -1;
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i2) {
        a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
        if (this.F != null) {
            BaseApp.a().removeCallbacks(this.F);
        }
        this.F = new Runnable() { // from class: com.ifengyu.intercom.ui.setting.seal.c
            @Override // java.lang.Runnable
            public final void run() {
                SealSettingActivity.this.w();
            }
        };
        BaseApp.a().postDelayed(this.F, 5000L);
        this.E = 0;
        g0.c(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(final int i2) {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(this);
        eVar.c(R.string.sure_open_vox_prompt_title);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.d(R.string.sure_open_vox_prompt_detail);
        eVar2.a(0, R.string.common_cancel, 2, a.f6740a);
        com.ifengyu.intercom.lite.c.b.e eVar3 = eVar2;
        eVar3.a(0, R.string.action_open, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.setting.seal.b
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i3) {
                SealSettingActivity.this.a(i2, bVar, i3);
            }
        });
        eVar3.a(R.style.DialogTheme2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode()) {
            int number = sEAL_ChannelStateOperate.getDeviceMode().getNumber();
            this.I = number;
            if (number != SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL.getNumber()) {
                View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                this.u.removeAllViews();
                this.u.addView(inflate);
            } else if (sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
                SealProtos.SEAL_ChannelInfo ch1 = sEAL_ChannelStateOperate.getCh1();
                if (ch1.hasChNo() && ch1.hasChName() && ch1.hasChType() && ch1.hasChRxFreq()) {
                    SealSharkChannel a2 = g0.a(ch1);
                    this.G = a2;
                    if (a2 != null) {
                        a(a2);
                        if (this.G.d()) {
                            this.x.setText(c0.b(this.G.i()));
                            this.w.setText(this.G.e());
                            if (this.G.h() % 256 == 0 && this.G.k() % 256 == 0) {
                                this.J.setVisibility(4);
                                return;
                            }
                            this.L.setText(k0.a((int) R.string.receive_css_code_s, c0.g(this.G.h())));
                            this.M.setText(k0.a((int) R.string.translate_css_code_s, c0.g(this.G.k())));
                            return;
                        }
                        this.x.setText(c0.b(this.G.i()));
                        this.y.setText(c0.b(this.G.l()));
                        String format = String.format(Locale.getDefault(), "C%02d", Integer.valueOf(this.G.f() + 1));
                        if (this.G.e().trim().length() == 0) {
                            this.w.setText(format);
                        } else {
                            TextView textView3 = this.w;
                            textView3.setText(format + " " + this.G.e().trim());
                        }
                        if (this.G.h() % 256 == 0 && this.G.k() % 256 == 0) {
                            this.K.setVisibility(4);
                            return;
                        }
                        this.L.setText(k0.a((int) R.string.receive_css_code_s, c0.g(this.G.h())));
                        this.M.setText(k0.a((int) R.string.translate_css_code_s, c0.g(this.G.k())));
                    }
                }
            }
        } else {
            this.I = -1;
        }
    }

    private void a(SealSharkChannel sealSharkChannel, boolean z) {
        if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (sealSharkChannel != null) {
            int i2 = this.I;
            if (i2 > 0) {
                switch (i2) {
                    case 1:
                    case 2:
                        c0.a((CharSequence) getString(R.string.sos_mode_can_not_setting), false);
                        return;
                    case 3:
                    case 4:
                        c0.a((CharSequence) getString(R.string.scan_mode_can_not_setting), false);
                        return;
                    case 5:
                    case 6:
                        c0.a((CharSequence) getString(R.string.team_mode_can_not_setting), false);
                        return;
                    default:
                        return;
                }
            } else if (sealSharkChannel.e() != null && sealSharkChannel.i() > 0 && sealSharkChannel.l() > 0) {
                SealChannelSettingActivity.a(this, sealSharkChannel, true);
            }
        }
    }

    private void a(SealSharkChannel sealSharkChannel) {
        View view;
        this.w = null;
        this.x = null;
        this.y = null;
        if (sealSharkChannel.d()) {
            view = View.inflate(this, R.layout.seal_shark_single_channel_normal_layout, null);
            this.w = (TextView) view.findViewById(R.id.normal_channel_name);
            this.x = (TextView) view.findViewById(R.id.normal_channel_number);
            this.J = (LinearLayout) view.findViewById(R.id.normal_css_channel_layout);
            this.L = (TextView) view.findViewById(R.id.normal_rx_css_value);
            this.M = (TextView) view.findViewById(R.id.normal_tx_css_value);
            this.x.setTypeface(this.H);
        } else {
            view = View.inflate(this, R.layout.seal_shark_single_channel_custom_layout, null);
            this.w = (TextView) view.findViewById(R.id.relay_channel_name);
            this.x = (TextView) view.findViewById(R.id.relay_channel_receive_number);
            this.y = (TextView) view.findViewById(R.id.relay_channel_transmit_number);
            this.K = (LinearLayout) view.findViewById(R.id.custom_css_layout);
            this.L = (TextView) view.findViewById(R.id.relay_rx_css_value);
            this.M = (TextView) view.findViewById(R.id.relay_tx_css_value);
            this.x.setTypeface(this.H);
            this.y.setTypeface(this.H);
        }
        view.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.u.removeAllViews();
        this.u.addView(view);
    }

    public /* synthetic */ void a(int i2, com.qmuiteam.qmui.widget.dialog.b bVar, int i3) {
        bVar.dismiss();
        e(i2);
    }
}
