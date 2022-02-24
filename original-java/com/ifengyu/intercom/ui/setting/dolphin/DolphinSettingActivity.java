package com.ifengyu.intercom.ui.setting.dolphin;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.ChannelBean;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.q;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.activity.AutoSendLocationActivity;
import com.ifengyu.intercom.ui.activity.SetDeviceBleNameActivity;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.z;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.UpdateMcuActivity;
import com.ifengyu.library.base.BaseApp;
import com.squareup.otto.Subscribe;
import java.io.UnsupportedEncodingException;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class DolphinSettingActivity extends BaseActivity implements View.OnClickListener, com.ifengyu.intercom.network.b {
    View A;
    View B;
    LinearLayout C;
    LinearLayout D;
    private Runnable F;
    private z G;
    private UserChannel H;
    private UserChannel I;
    private Typeface K;
    private LinearLayout L;
    private View M;
    private View N;
    private TextView O;
    private TextView P;
    private TextView Q;
    private TextView R;
    private TextView S;
    private TextView T;
    private View U;
    private TextView V;
    private TextView W;
    private TextView X;
    private com.ifengyu.intercom.ui.widget.dialog.e Y;
    private TextView q;
    private TextView r;
    private CheckBox s;
    private CheckBox t;
    private m u;
    View v;
    View w;
    View x;
    View y;
    View z;
    private int E = -1;
    private int J = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            d0.f(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            d0.e(z);
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.j();
        }
    }

    /* loaded from: classes2.dex */
    class e implements BaseActivity.e {
        e() {
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void a() {
            DolphinSettingActivity.this.D.setVisibility(8);
            String h = d0.h();
            String N = d0.N();
            if (!TextUtils.isEmpty(h) && !TextUtils.isEmpty(N)) {
                com.ifengyu.intercom.g.a.a(N, h, (com.ifengyu.intercom.g.d.b) null);
            }
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void b() {
        }

        @Override // com.ifengyu.intercom.ui.baseui.BaseActivity.e
        public void c() {
        }
    }

    /* loaded from: classes2.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.E = -1;
            DolphinSettingActivity.this.j();
        }
    }

    /* loaded from: classes2.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.E = -1;
            DolphinSettingActivity.this.j();
        }
    }

    /* loaded from: classes2.dex */
    class h implements z.a {

        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: com.ifengyu.intercom.ui.setting.dolphin.DolphinSettingActivity$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class RunnableC0172a implements Runnable {
                RunnableC0172a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    DolphinSettingActivity.this.j();
                    DolphinSettingActivity.this.finish();
                }
            }

            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinSettingActivity dolphinSettingActivity = DolphinSettingActivity.this;
                dolphinSettingActivity.b(dolphinSettingActivity.getString(R.string.unbind_success));
                DolphinSettingActivity.this.b(R.drawable.mine_icon_win);
                if (DolphinSettingActivity.this.F != null) {
                    BaseApp.a().removeCallbacks(DolphinSettingActivity.this.F);
                    DolphinSettingActivity.this.F = null;
                }
                DolphinSettingActivity.this.F = new RunnableC0172a();
                BaseApp.a().postDelayed(DolphinSettingActivity.this.F, 1000L);
            }
        }

        h() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.z.a
        public void a() {
            DolphinSettingActivity dolphinSettingActivity = DolphinSettingActivity.this;
            dolphinSettingActivity.a(false, false, dolphinSettingActivity.getString(R.string.unbind_ing), R.drawable.load_spinner);
            String l = DolphinSettingActivity.this.l();
            if (!TextUtils.isEmpty(l)) {
                com.ifengyu.intercom.node.q.d a2 = com.ifengyu.intercom.service.a.a();
                if (a2 != null) {
                    a2.c(l);
                }
                com.ifengyu.intercom.node.q.d.c().d.b(l);
            }
            d0.b();
            DolphinSettingActivity.this.G.dismiss();
            if (DolphinSettingActivity.this.F != null) {
                BaseApp.a().removeCallbacks(DolphinSettingActivity.this.F);
                DolphinSettingActivity.this.F = null;
            }
            DolphinSettingActivity.this.F = new a();
            BaseApp.a().postDelayed(DolphinSettingActivity.this.F, 500L);
        }
    }

    /* loaded from: classes2.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MitalkProtos.ParamUpdate f6607a;

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinSettingActivity.this.j();
                BaseActivity.e eVar = DolphinSettingActivity.this.m;
                if (eVar != null) {
                    eVar.a();
                }
            }
        }

        i(MitalkProtos.ParamUpdate paramUpdate) {
            this.f6607a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.b(DolphinSettingActivity.this.p);
            if (this.f6607a.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                DolphinSettingActivity.this.b(R.drawable.mine_icon_win);
                DolphinSettingActivity.this.c(R.string.activation_successful);
                k0.a(new a(), 800L);
                MiTalkiApp.b().h = true;
                d0.a(true);
                return;
            }
            DolphinSettingActivity.this.p.run();
        }
    }

    /* loaded from: classes2.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MitalkProtos.ParamUpdate f6610a;

        j(MitalkProtos.ParamUpdate paramUpdate) {
            this.f6610a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity.this.b(this.f6610a);
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
                DolphinSettingActivity.this.j();
            }
        }

        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinSettingActivity dolphinSettingActivity = DolphinSettingActivity.this;
            dolphinSettingActivity.b(dolphinSettingActivity.getString(R.string.request_time_out));
            DolphinSettingActivity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateUpdateEvent f6614a;

        l(StateUpdateEvent stateUpdateEvent) {
            this.f6614a = stateUpdateEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DolphinSettingActivity.this.E == 1) {
                DolphinSettingActivity.this.j();
                DolphinSettingActivity.this.E = -1;
            }
            if (!this.f6614a.f() || !this.f6614a.g()) {
                DolphinSettingActivity.this.s.setChecked(false);
            } else {
                DolphinSettingActivity.this.s.setChecked(true);
            }
            if (d0.f5308a == 1) {
                DolphinSettingActivity.this.a(this.f6614a);
            } else {
                DolphinSettingActivity.this.b(this.f6614a);
            }
        }
    }

    /* loaded from: classes2.dex */
    class m implements com.ifengyu.intercom.node.h {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                com.ifengyu.intercom.node.e.d().c();
                if (DolphinSettingActivity.this.Y != null && DolphinSettingActivity.this.Y.isShowing()) {
                    DolphinSettingActivity.this.Y.dismiss();
                }
            }
        }

        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinSettingActivity.this.Y = new com.ifengyu.intercom.ui.widget.dialog.e(DolphinSettingActivity.this);
                DolphinSettingActivity.this.Y.setCanceledOnTouchOutside(false);
                DolphinSettingActivity.this.Y.show();
            }
        }

        m() {
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
            DolphinSettingActivity.this.runOnUiThread(new a());
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
            DolphinSettingActivity.this.runOnUiThread(new b());
        }
    }

    private void w() {
        UpdateManager.d().a(this);
        if (!c0.b(this)) {
            c0.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else {
            a(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
            UpdateManager d2 = UpdateManager.d();
            UpdateManager d3 = UpdateManager.d();
            d3.getClass();
            d2.a(new UpdateManager.e(this, UpdateManager.CHECK_CONDITION.MCU, false), d0.l());
            k kVar = new k();
            this.F = kVar;
            k0.a(kVar, 8000L);
        }
    }

    private void x() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        this.v = findViewById(R.id.rl_device_activate);
        this.w = findViewById(R.id.device_name_select_talkie);
        this.x = findViewById(R.id.double_frequency_model);
        this.y = findViewById(R.id.public_my_location);
        this.z = findViewById(R.id.auto_send_location);
        this.A = findViewById(R.id.device_update);
        this.B = findViewById(R.id.device_about);
        this.D = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.C = (LinearLayout) findViewById(R.id.device_setting_container);
        this.q = (TextView) findViewById(R.id.current_device_name);
        this.r = (TextView) findViewById(R.id.auto_send_location_time);
        this.s = (CheckBox) findViewById(R.id.double_frequency_model_switch_btn);
        this.t = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.K = p.f5324b;
        this.L = (LinearLayout) findViewById(R.id.top_channel_container);
        this.v.setOnClickListener(this);
        this.w.setOnClickListener(this);
        this.x.setOnClickListener(this);
        this.y.setOnClickListener(this);
        this.z.setOnClickListener(this);
        this.A.setOnClickListener(this);
        this.B.setOnClickListener(this);
        findViewById(R.id.relieve_binding).setOnClickListener(this);
        if (!com.ifengyu.intercom.node.j.b().a()) {
            com.ifengyu.intercom.ui.widget.dialog.e eVar = new com.ifengyu.intercom.ui.widget.dialog.e(this);
            this.Y = eVar;
            eVar.setCanceledOnTouchOutside(false);
            this.Y.show();
        }
        this.D.setVisibility(d0.U() ? 8 : 0);
        this.q.setText(d0.q());
        this.t.setClickable(false);
        this.t.setChecked(d0.Z());
        this.r.setText(k0.a((int) R.string.minute, Long.valueOf(d0.a(l()) / OpenStreetMapTileProviderConstants.ONE_MINUTE)));
        this.t.setOnCheckedChangeListener(new b());
        this.s.setClickable(false);
        this.s.setChecked(d0.Y());
        this.s.setOnCheckedChangeListener(new c());
    }

    private void y() {
        this.E = 1;
        com.ifengyu.intercom.node.e.d().a(this.s.isChecked() ? MitalkProtos.STATEMODE.SINGLE : MitalkProtos.STATEMODE.DOUBLE);
    }

    private void z() {
        this.E = 2;
        com.ifengyu.intercom.node.e.d().b(!this.t.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
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
                if (!com.ifengyu.intercom.node.j.b().a()) {
                    c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                } else if (this.t.isChecked()) {
                    startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
                    return;
                } else {
                    c0.a((CharSequence) getString(R.string.setting_please_open_share_loc_btn), false);
                    return;
                }
            case R.id.device_about /* 2131296527 */:
                UserProtocolActivity.b(this, 1);
                return;
            case R.id.device_name_select_talkie /* 2131296540 */:
                if (com.ifengyu.intercom.node.j.b().a()) {
                    startActivityForResult(new Intent(this, SetDeviceBleNameActivity.class), 6);
                    return;
                } else {
                    c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                }
            case R.id.device_update /* 2131296543 */:
                w();
                return;
            case R.id.double_channel_bottom_item_id /* 2131296578 */:
                a(this.I, false);
                return;
            case R.id.double_channel_top_item_id /* 2131296581 */:
                a(this.H, true);
                return;
            case R.id.double_frequency_model /* 2131296582 */:
                if (com.ifengyu.intercom.node.j.b().a()) {
                    a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.F != null) {
                        BaseApp.a().removeCallbacks(this.F);
                    }
                    this.F = new f();
                    BaseApp.a().postDelayed(this.F, 5000L);
                    y();
                    return;
                }
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.public_my_location /* 2131297045 */:
                if (com.ifengyu.intercom.node.j.b().a()) {
                    a(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
                    if (this.F != null) {
                        BaseApp.a().removeCallbacks(this.F);
                    }
                    this.F = new g();
                    BaseApp.a().postDelayed(this.F, 5000L);
                    z();
                    return;
                } else if (this.t.isChecked()) {
                    this.t.setChecked(false);
                    stopService(new Intent(this, ShareLocationService.class));
                    return;
                } else {
                    c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                }
            case R.id.relieve_binding /* 2131297091 */:
                z zVar = new z(this, true);
                this.G = zVar;
                zVar.a(new h());
                this.G.show();
                return;
            case R.id.rl_device_activate /* 2131297105 */:
                if (!com.ifengyu.intercom.node.j.b().a()) {
                    c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                } else if (d0.U()) {
                    a(false, false, getString(R.string.device_had_actived), R.drawable.load_spinner);
                    b(R.drawable.mine_icon_win);
                    k0.a(new d(), 500L);
                    return;
                } else {
                    a(new e());
                    return;
                }
            case R.id.single_channel_item_enter_btn /* 2131297200 */:
                UserChannel userChannel = this.H;
                if (userChannel != null) {
                    a(userChannel, true);
                    return;
                }
                UserChannel userChannel2 = this.I;
                if (userChannel2 != null) {
                    a(userChannel2, false);
                    return;
                }
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
        setContentView(R.layout.activity_dolphin_setting);
        x();
        StateUpdateEvent h2 = MiTalkiApp.b().h();
        if (h2 != null) {
            receiveStateUpdateResponse(h2);
        }
        this.u = new m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Subscribe
    public void onParamUpdate(MitalkProtos.ParamUpdate paramUpdate) {
        if (this.l) {
            this.l = false;
            k0.a(new i(paramUpdate));
            return;
        }
        k0.a(new j(paramUpdate));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        UpdateManager.d().c();
        com.ifengyu.intercom.node.j.b().b(this.u);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.ifengyu.intercom.node.j.b().a(this.u);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().b(this);
        this.E = -1;
        this.t.setChecked(d0.Z());
        this.s.setChecked(d0.Y());
        q.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().c(this);
        com.ifengyu.intercom.ui.widget.dialog.e eVar = this.Y;
        if (eVar != null) {
            eVar.dismiss();
        }
        z zVar = this.G;
        if (zVar != null) {
            zVar.dismiss();
        }
    }

    @Subscribe
    public void receiveStateUpdateResponse(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent.c() == MitalkProtos.CHOPTION.ST_QUERY) {
            c(stateUpdateEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MitalkProtos.ParamUpdate paramUpdate) {
        MitalkProtos.STATECODE result = paramUpdate.getResult();
        if (result == MitalkProtos.STATECODE.SUCCESS) {
            int i2 = this.E;
            if (i2 == -1) {
                if (paramUpdate.hasShareLoc()) {
                    this.t.setChecked(paramUpdate.getShareLoc() != 0);
                }
                if (paramUpdate.hasStateMode()) {
                    if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.SINGLE) {
                        this.s.setChecked(false);
                    } else if (paramUpdate.getStateMode() == MitalkProtos.STATEMODE.DOUBLE) {
                        this.s.setChecked(true);
                    }
                }
                if (paramUpdate.hasDevNameGBK()) {
                    try {
                        this.q.setText(new String(paramUpdate.getDevNameGBK().toByteArray(), StringUtils.GB2312));
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                    }
                }
            } else if (i2 == 1) {
                q.a();
            } else if (i2 == 2) {
                j();
                this.E = -1;
                CheckBox checkBox = this.t;
                checkBox.setChecked(!checkBox.isChecked());
            }
        } else if (result == MitalkProtos.STATECODE.NOTSUPPORT) {
            this.E = -1;
            b(R.drawable.mine_icon_lose);
            c(R.string.not_support_switch);
            k0.a(new a(), 500L);
        }
    }

    private void c(StateUpdateEvent stateUpdateEvent) {
        runOnUiThread(new l(stateUpdateEvent));
    }

    @Override // com.ifengyu.intercom.network.b
    public void a(UpdateManager.CHECK_CONDITION check_condition, boolean z) {
        j();
        Runnable runnable = this.F;
        if (runnable != null) {
            k0.b(runnable);
            this.F = null;
        }
        int k2 = d0.k();
        if (check_condition == UpdateManager.CHECK_CONDITION.MCU && !z) {
            Intent intent = new Intent(this, UpdateMcuActivity.class);
            intent.putExtra("update_info_message", k2 >= 65542 ? "update_mcu_ble" : "update_mcu");
            if (UpdateManager.d().a() != null) {
                intent.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt(UpdateManager.d().a().get("versionCode")));
            }
            startActivity(intent);
        } else if (check_condition == UpdateManager.CHECK_CONDITION.MCU && z && UpdateManager.d().a() != null && UpdateManager.d().a().containsKey("errno")) {
            int parseInt = Integer.parseInt(UpdateManager.d().a().get("errno"));
            if (parseInt != 0) {
                if (parseInt == 5) {
                    c0.a((CharSequence) getString(R.string.please_update_app_before_update_mcu), false);
                }
            } else if (k2 >= 65542) {
                Intent intent2 = new Intent(this, UpdateMcuActivity.class);
                if (c0.a()) {
                    if (!d0.i().equals("mcu_language_type_english")) {
                        intent2.putExtra("update_info_message", "update_diff_language");
                        if (UpdateManager.d().a() != null) {
                            intent2.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt(UpdateManager.d().a().get("versionCode")));
                        }
                    } else {
                        intent2.putExtra("update_info_message", "update_all_is_newest");
                    }
                } else if (!c0.b()) {
                    intent2.putExtra("update_info_message", "update_all_is_newest");
                } else if (!d0.i().equals("mcu_language_type_chinese")) {
                    intent2.putExtra("update_info_message", "update_diff_language");
                    if (UpdateManager.d().a() != null) {
                        intent2.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt(UpdateManager.d().a().get("versionCode")));
                    }
                } else {
                    intent2.putExtra("update_info_message", "update_all_is_newest");
                }
                startActivity(intent2);
            }
        }
    }

    public void b(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent == null) {
            return;
        }
        if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
            MitalkProtos.ChannelInfo a2 = stateUpdateEvent.a();
            this.H = q.a(a2);
            MitalkProtos.ChannelInfo b2 = stateUpdateEvent.b();
            this.I = q.a(b2);
            a(a2, b2);
            this.O.setText(c0.a(q.a(a2)));
            if (!a2.hasFreq()) {
                this.P.setText("");
            } else if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_M || stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_S) {
                this.P.setText("");
            } else if (a2.getType() == MitalkProtos.CHTYPE.RELAY) {
                this.P.setText(c0.b(a2.getFreq()));
                this.Q.setText(c0.b(a2.getFreq2()));
            } else {
                this.P.setText(c0.b(a2.getFreq()));
            }
            this.R.setText(c0.a(q.a(b2)));
            if (!b2.hasFreq()) {
                this.S.setText("");
            } else if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_M || stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_S) {
                this.S.setText("");
            } else if (b2.getType() == MitalkProtos.CHTYPE.RELAY) {
                this.S.setText(c0.b(b2.getFreq()));
                this.T.setText(c0.b(b2.getFreq2()));
            } else {
                this.S.setText(c0.b(b2.getFreq()));
            }
        } else if (stateUpdateEvent.f()) {
            MitalkProtos.ChannelInfo a3 = stateUpdateEvent.a();
            this.H = q.a(a3);
            this.I = null;
            if ((a3.getType() == MitalkProtos.CHTYPE.TEAM || a3.getType() == MitalkProtos.CHTYPE.SCAN) && !a3.hasFreq()) {
                View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                this.L.removeAllViews();
                this.L.addView(inflate);
                if (a3.getType() == MitalkProtos.CHTYPE.TEAM) {
                    textView.setText(getString(R.string.device_mode_team));
                    textView2.setText(getString(R.string.device_mode_team_ing_describe));
                    return;
                }
                textView.setText(getString(R.string.device_mode_channel_scan));
                textView2.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                return;
            }
            a(a3);
            this.V.setText(c0.a(q.a(a3)));
            if (!a3.hasFreq()) {
                this.W.setText("");
            } else if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_M || stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_S) {
                this.W.setText("");
            } else if (a3.getType() == MitalkProtos.CHTYPE.RELAY) {
                this.W.setText(c0.b(a3.getFreq()));
                this.X.setText(c0.b(a3.getFreq2()));
            } else {
                this.W.setText(c0.b(a3.getFreq()));
            }
        } else if (stateUpdateEvent.g()) {
            MitalkProtos.ChannelInfo b3 = stateUpdateEvent.b();
            this.I = q.a(b3);
            this.H = null;
            a(b3);
            this.V.setText(c0.a(q.a(b3)));
            if (!b3.hasFreq()) {
                this.W.setText("");
            } else if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_M || stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_S) {
                this.W.setText("");
            } else if (b3.getType() == MitalkProtos.CHTYPE.RELAY) {
                this.W.setText(c0.b(b3.getFreq()));
                this.X.setText(c0.b(b3.getFreq2()));
            } else {
                this.W.setText(c0.b(b3.getFreq()));
            }
        }
    }

    private void a(UserChannel userChannel, boolean z) {
        if (!com.ifengyu.intercom.node.j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (userChannel != null) {
            if (userChannel.h() == 4) {
                c0.a((CharSequence) getString(R.string.sos_mode_can_not_setting), false);
            } else if (userChannel.h() == 6) {
                c0.a((CharSequence) getString(R.string.team_mode_can_not_setting), false);
            } else if (userChannel.h() == 7) {
                c0.a((CharSequence) getString(R.string.scan_mode_can_not_setting), false);
            } else if (this.J == 2) {
                com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(this);
                fVar.a(k0.c(R.string.not_support_chapin_mode_please_do_it_on_device));
                fVar.b(R.string.sure, (DialogInterface.OnClickListener) null);
                fVar.a();
                fVar.d();
            } else {
                DolphinCHSettingActivity.a(this, userChannel, z);
            }
        }
    }

    public void a(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent == null) {
            return;
        }
        if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
            MitalkProtos.ChannelInfo a2 = stateUpdateEvent.a();
            this.H = q.a(a2);
            MitalkProtos.ChannelInfo b2 = stateUpdateEvent.b();
            this.I = q.a(b2);
            this.M = null;
            this.O = null;
            this.P = null;
            this.N = null;
            this.R = null;
            this.S = null;
            View inflate = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.M = inflate;
            this.O = (TextView) inflate.findViewById(R.id.normal_channel_name);
            TextView textView = (TextView) this.M.findViewById(R.id.normal_channel_number);
            this.P = textView;
            textView.setTypeface(this.K);
            this.M.setId(R.id.double_channel_top_item_id);
            this.M.setOnClickListener(this);
            View inflate2 = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.N = inflate2;
            inflate2.findViewById(R.id.space_line).setVisibility(0);
            this.R = (TextView) this.N.findViewById(R.id.normal_channel_name);
            TextView textView2 = (TextView) this.N.findViewById(R.id.normal_channel_number);
            this.S = textView2;
            textView2.setTypeface(this.K);
            this.N.setId(R.id.double_channel_bottom_item_id);
            this.N.setOnClickListener(this);
            this.L.removeAllViews();
            this.L.addView(this.M);
            this.L.addView(this.N);
            if (!a2.hasFreq()) {
                this.P.setText("");
            } else if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_M || stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_S) {
                this.P.setText("");
            } else {
                this.P.setText(c0.b(a2.getFreq()));
            }
            if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.DIFFER) {
                this.J = 2;
                this.O.setText(k0.c(R.string.channel_receive));
            } else {
                this.J = -1;
                this.O.setText(c0.a(new ChannelBean(a2)));
            }
            if (!b2.hasFreq()) {
                this.S.setText("");
            } else if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_M || stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_S) {
                this.S.setText("");
            } else {
                this.S.setText(c0.b(b2.getFreq()));
            }
            if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.DIFFER) {
                this.J = 2;
                this.R.setText(k0.c(R.string.channel_launch));
                return;
            }
            this.J = -1;
            this.R.setText(c0.a(new ChannelBean(b2)));
        } else if (stateUpdateEvent.f()) {
            MitalkProtos.ChannelInfo a3 = stateUpdateEvent.a();
            this.H = q.a(a3);
            this.I = null;
            if (a3.getType() == MitalkProtos.CHTYPE.TEAM || a3.getType() == MitalkProtos.CHTYPE.SCAN) {
                View inflate3 = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView3 = (TextView) inflate3.findViewById(R.id.the_mode_of_current);
                TextView textView4 = (TextView) inflate3.findViewById(R.id.bottom_text_ing_describe);
                this.L.removeAllViews();
                this.L.addView(inflate3);
                if (a3.getType() == MitalkProtos.CHTYPE.TEAM) {
                    textView3.setText(getString(R.string.device_mode_team));
                    textView4.setText(getString(R.string.device_mode_team_ing_describe));
                    return;
                }
                textView3.setText(getString(R.string.device_mode_channel_scan));
                textView4.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                return;
            }
            a(stateUpdateEvent, a3);
        } else if (stateUpdateEvent.g()) {
            MitalkProtos.ChannelInfo b3 = stateUpdateEvent.b();
            this.I = q.a(b3);
            this.H = null;
            a(stateUpdateEvent, b3);
        }
    }

    private void a(StateUpdateEvent stateUpdateEvent, MitalkProtos.ChannelInfo channelInfo) {
        this.U = null;
        this.V = null;
        this.W = null;
        this.X = null;
        View inflate = View.inflate(this, R.layout.single_channel_display_normal_layout, null);
        this.U = inflate;
        this.V = (TextView) inflate.findViewById(R.id.normal_channel_name);
        TextView textView = (TextView) this.U.findViewById(R.id.normal_channel_number);
        this.W = textView;
        textView.setTypeface(this.K);
        this.U.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.L.removeAllViews();
        this.L.addView(this.U);
        if (!channelInfo.hasFreq()) {
            this.W.setText("");
        } else if (stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_M || stateUpdateEvent.e() == MitalkProtos.STATEMODE.TEAM_S) {
            this.W.setText("");
        } else {
            this.W.setText(c0.b(channelInfo.getFreq()));
        }
        this.J = -1;
        this.V.setText(c0.a(new ChannelBean(channelInfo)));
    }

    private void a(MitalkProtos.ChannelInfo channelInfo) {
        this.U = null;
        this.V = null;
        this.W = null;
        this.X = null;
        if (channelInfo.getType() == MitalkProtos.CHTYPE.RELAY) {
            View inflate = View.inflate(this, R.layout.single_channel_display_relay_layout, null);
            this.U = inflate;
            this.V = (TextView) inflate.findViewById(R.id.relay_channel_name);
            this.W = (TextView) this.U.findViewById(R.id.relay_channel_receive_number);
            this.X = (TextView) this.U.findViewById(R.id.normal_channel_transmit_number);
            this.W.setTypeface(this.K);
            this.X.setTypeface(this.K);
        } else {
            View inflate2 = View.inflate(this, R.layout.single_channel_display_normal_layout, null);
            this.U = inflate2;
            this.V = (TextView) inflate2.findViewById(R.id.normal_channel_name);
            TextView textView = (TextView) this.U.findViewById(R.id.normal_channel_number);
            this.W = textView;
            textView.setTypeface(this.K);
        }
        this.U.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.L.removeAllViews();
        this.L.addView(this.U);
    }

    private void a(MitalkProtos.ChannelInfo channelInfo, MitalkProtos.ChannelInfo channelInfo2) {
        this.M = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.N = null;
        this.R = null;
        this.S = null;
        this.T = null;
        if (channelInfo.getType() == MitalkProtos.CHTYPE.RELAY) {
            View inflate = View.inflate(this, R.layout.dolphin_double_channel_relay_item, null);
            this.M = inflate;
            this.O = (TextView) inflate.findViewById(R.id.relay_name);
            this.P = (TextView) this.M.findViewById(R.id.relay_receive_number);
            this.Q = (TextView) this.M.findViewById(R.id.relay_transmit_number);
            this.P.setTypeface(this.K);
            this.Q.setTypeface(this.K);
        } else {
            View inflate2 = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.M = inflate2;
            this.O = (TextView) inflate2.findViewById(R.id.normal_channel_name);
            TextView textView = (TextView) this.M.findViewById(R.id.normal_channel_number);
            this.P = textView;
            textView.setTypeface(this.K);
        }
        this.M.setId(R.id.double_channel_top_item_id);
        this.M.setOnClickListener(this);
        if (channelInfo2.getType() == MitalkProtos.CHTYPE.RELAY) {
            View inflate3 = View.inflate(this, R.layout.dolphin_double_channel_relay_item, null);
            this.N = inflate3;
            inflate3.findViewById(R.id.space_line).setVisibility(0);
            this.R = (TextView) this.N.findViewById(R.id.relay_name);
            this.S = (TextView) this.N.findViewById(R.id.relay_receive_number);
            this.T = (TextView) this.N.findViewById(R.id.relay_transmit_number);
            this.S.setTypeface(this.K);
            this.T.setTypeface(this.K);
        } else {
            View inflate4 = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.N = inflate4;
            inflate4.findViewById(R.id.space_line).setVisibility(0);
            this.R = (TextView) this.N.findViewById(R.id.normal_channel_name);
            TextView textView2 = (TextView) this.N.findViewById(R.id.normal_channel_number);
            this.S = textView2;
            textView2.setTypeface(this.K);
        }
        this.N.setId(R.id.double_channel_bottom_item_id);
        this.N.setOnClickListener(this);
        this.L.removeAllViews();
        this.L.addView(this.M);
        this.L.addView(this.N);
    }
}
