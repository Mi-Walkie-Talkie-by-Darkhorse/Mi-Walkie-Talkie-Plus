package com.ifengyu.intercom.ui.setting.dolphin;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.m;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.ChannelBean;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.network.b;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.MitalkProtos.CHOPTION;
import com.ifengyu.intercom.protos.MitalkProtos.CHTYPE;
import com.ifengyu.intercom.protos.MitalkProtos.ChannelInfo;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.MitalkProtos.STATEMODE;
import com.ifengyu.intercom.ui.activity.AutoSendLocationActivity;
import com.ifengyu.intercom.ui.activity.SetDeviceBleNameActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.ab;
import com.ifengyu.intercom.ui.widget.dialog.c;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.UpdateManager.CHECK_CONDITION;
import com.ifengyu.intercom.update.dolphin.UpdateMcuActivity;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.UnsupportedEncodingException;

public class DolphinSettingActivity extends BaseActivity implements OnClickListener, b {
    /* access modifiers changed from: private */
    public Runnable A;
    /* access modifiers changed from: private */
    public ab B;
    private UserChannel C;
    private UserChannel D;
    private int E = -1;
    private Typeface F;
    private LinearLayout G;
    private View H;
    private View I;
    private TextView J;
    private TextView K;
    private TextView L;
    private TextView M;
    private TextView N;
    private TextView O;
    private View P;
    private TextView Q;
    private TextView R;
    private TextView S;
    /* access modifiers changed from: private */
    public c T;
    View a;
    View b;
    View c;
    View d;
    View q;
    View r;
    LinearLayout s;
    LinearLayout t;
    private TextView u;
    private TextView v;
    /* access modifiers changed from: private */
    public CheckBox w;
    private CheckBox x;
    private a y;
    /* access modifiers changed from: private */
    public int z = -1;

    class a implements com.ifengyu.intercom.node.i.a {
        a() {
        }

        public void b(String str) {
            DolphinSettingActivity.this.runOnUiThread(new Runnable() {
                public void run() {
                    f.a().b();
                    if (DolphinSettingActivity.this.T != null && DolphinSettingActivity.this.T.isShowing()) {
                        DolphinSettingActivity.this.T.dismiss();
                    }
                }
            });
        }

        public void c(String str) {
            DolphinSettingActivity.this.runOnUiThread(new Runnable() {
                public void run() {
                    DolphinSettingActivity.this.T = new c(DolphinSettingActivity.this);
                    DolphinSettingActivity.this.T.setCanceledOnTouchOutside(false);
                    DolphinSettingActivity.this.T.show();
                }
            });
        }

        public void a(String str) {
        }

        public void d(String str) {
        }

        public void e(String str) {
        }

        public void f(String str) {
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_dolphin_setting);
        f();
        StateUpdateEvent g = MiTalkiApp.a().g();
        if (g != null) {
            receiveStateUpdateResponse(g);
        }
        this.y = new a();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
        this.z = -1;
        this.x.setChecked(w.j());
        this.w.setChecked(w.k());
        m.a();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "DolphinSettingActivity");
        k.a().a((com.ifengyu.intercom.node.i.a) this.y);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        UpdateManager.a().d();
        k.a().b((com.ifengyu.intercom.node.i.a) this.y);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        if (this.T != null) {
            this.T.dismiss();
        }
        if (this.B != null) {
            this.B.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.double_channel_bottom_item_id /*2131755016*/:
                a(this.D, false);
                return;
            case R.id.double_channel_top_item_id /*2131755017*/:
                a(this.C, true);
                return;
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.rl_device_activate /*2131755216*/:
                if (!k.a().b()) {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                } else if (w.ag()) {
                    a(false, false, getString(R.string.device_had_actived), (int) R.drawable.load_spinner);
                    d(R.drawable.mine_icon_win);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            DolphinSettingActivity.this.k();
                        }
                    }, 500);
                    return;
                } else {
                    a((com.ifengyu.intercom.ui.baseui.BaseActivity.a) new com.ifengyu.intercom.ui.baseui.BaseActivity.a() {
                        public void a() {
                            DolphinSettingActivity.this.t.setVisibility(8);
                            String o = w.o();
                            String K = w.K();
                            if (!TextUtils.isEmpty(o) && !TextUtils.isEmpty(K)) {
                                com.ifengyu.intercom.a.a.a(K, o, (com.ifengyu.intercom.a.b.b) null);
                            }
                        }

                        public void b() {
                        }

                        public void c() {
                        }
                    });
                    return;
                }
            case R.id.device_name_select_talkie /*2131755218*/:
                if (k.a().b()) {
                    startActivityForResult(new Intent(this, SetDeviceBleNameActivity.class), 6);
                    return;
                } else {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                }
            case R.id.double_frequency_model /*2131755220*/:
                if (k.a().b()) {
                    a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
                    if (this.A != null) {
                        MiTalkiApp.n().removeCallbacks(this.A);
                    }
                    this.A = new Runnable() {
                        public void run() {
                            DolphinSettingActivity.this.z = -1;
                            DolphinSettingActivity.this.k();
                        }
                    };
                    MiTalkiApp.n().postDelayed(this.A, 5000);
                    d();
                    return;
                }
                v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.public_my_location /*2131755222*/:
                if (k.a().b()) {
                    a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
                    if (this.A != null) {
                        MiTalkiApp.n().removeCallbacks(this.A);
                    }
                    this.A = new Runnable() {
                        public void run() {
                            DolphinSettingActivity.this.z = -1;
                            DolphinSettingActivity.this.k();
                        }
                    };
                    MiTalkiApp.n().postDelayed(this.A, 5000);
                    e();
                } else if (this.x.isChecked()) {
                    this.x.setChecked(false);
                    stopService(new Intent(this, ShareLocationService.class));
                } else {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                }
                MiStatInterface.recordCountEvent("map_tab_page", "shareLocationBtnClick");
                return;
            case R.id.auto_send_location /*2131755224*/:
                if (!k.a().b()) {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                } else if (this.x.isChecked()) {
                    startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
                    return;
                } else {
                    v.a((CharSequence) getString(R.string.setting_please_open_share_loc_btn), false);
                    return;
                }
            case R.id.device_update /*2131755226*/:
                c();
                MiStatInterface.recordCountEvent("device_setting_page", "mcuUpdateBtnClick");
                return;
            case R.id.relieve_binding /*2131755227*/:
                this.B = new ab(this, true);
                this.B.a((com.ifengyu.intercom.ui.widget.dialog.ab.a) new com.ifengyu.intercom.ui.widget.dialog.ab.a() {
                    public void a() {
                        DolphinSettingActivity.this.a(false, false, DolphinSettingActivity.this.getString(R.string.unbind_ing), (int) R.drawable.load_spinner);
                        String p = DolphinSettingActivity.this.p();
                        if (!TextUtils.isEmpty(p)) {
                            d b = com.ifengyu.intercom.service.a.b();
                            if (b != null) {
                                b.a(p);
                            }
                            d.a().d.b(p);
                        }
                        w.g();
                        DolphinSettingActivity.this.B.dismiss();
                        if (DolphinSettingActivity.this.A != null) {
                            MiTalkiApp.n().removeCallbacks(DolphinSettingActivity.this.A);
                            DolphinSettingActivity.this.A = null;
                        }
                        DolphinSettingActivity.this.A = new Runnable() {
                            public void run() {
                                DolphinSettingActivity.this.b(DolphinSettingActivity.this.getString(R.string.unbind_success));
                                DolphinSettingActivity.this.d(R.drawable.mine_icon_win);
                                if (DolphinSettingActivity.this.A != null) {
                                    MiTalkiApp.n().removeCallbacks(DolphinSettingActivity.this.A);
                                    DolphinSettingActivity.this.A = null;
                                }
                                DolphinSettingActivity.this.A = new Runnable() {
                                    public void run() {
                                        DolphinSettingActivity.this.k();
                                        DolphinSettingActivity.this.finish();
                                    }
                                };
                                MiTalkiApp.n().postDelayed(DolphinSettingActivity.this.A, 1000);
                            }
                        };
                        MiTalkiApp.n().postDelayed(DolphinSettingActivity.this.A, 500);
                    }
                });
                this.B.show();
                return;
            case R.id.single_channel_item_enter_btn /*2131755822*/:
                if (this.C != null) {
                    a(this.C, true);
                    return;
                } else if (this.D != null) {
                    a(this.D, false);
                    return;
                } else {
                    return;
                }
            default:
                return;
        }
    }

    public void a(CHECK_CONDITION check_condition, boolean z2) {
        k();
        if (this.A != null) {
            ad.b(this.A);
            this.A = null;
        }
        int m = w.m();
        if (check_condition == CHECK_CONDITION.MCU && !z2) {
            Intent intent = new Intent(this, UpdateMcuActivity.class);
            intent.putExtra("update_info_message", m >= 65542 ? "update_mcu_ble" : "update_mcu");
            if (UpdateManager.a().e() != null) {
                intent.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt((String) UpdateManager.a().e().get("versionCode")));
            }
            startActivity(intent);
        } else if (check_condition == CHECK_CONDITION.MCU && z2 && UpdateManager.a().e() != null && UpdateManager.a().e().containsKey("errno")) {
            switch (Integer.parseInt((String) UpdateManager.a().e().get("errno"))) {
                case 0:
                    if (m >= 65542) {
                        Intent intent2 = new Intent(this, UpdateMcuActivity.class);
                        if (v.a()) {
                            if (!w.p().equals("mcu_language_type_english")) {
                                intent2.putExtra("update_info_message", "update_diff_language");
                                if (UpdateManager.a().e() != null) {
                                    intent2.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt((String) UpdateManager.a().e().get("versionCode")));
                                }
                            } else {
                                intent2.putExtra("update_info_message", "update_all_is_newest");
                            }
                        } else if (!v.b()) {
                            intent2.putExtra("update_info_message", "update_all_is_newest");
                        } else if (!w.p().equals("mcu_language_type_chinese")) {
                            intent2.putExtra("update_info_message", "update_diff_language");
                            if (UpdateManager.a().e() != null) {
                                intent2.putExtra("MCU_SERVER_VERSION_CODE", Integer.parseInt((String) UpdateManager.a().e().get("versionCode")));
                            }
                        } else {
                            intent2.putExtra("update_info_message", "update_all_is_newest");
                        }
                        startActivity(intent2);
                        return;
                    }
                    return;
                case 5:
                    v.a((CharSequence) getString(R.string.please_update_app_before_update_mcu), false);
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 6) {
            if (i2 == 1) {
                this.u.setText(intent.getStringExtra("setting_walkie_name"));
                new com.ifengyu.intercom.ui.widget.dialog.d(this).b((CharSequence) getString(R.string.setting_success_please_restart)).c((int) R.string.user_guide_i_know, (DialogInterface.OnClickListener) null).b().c();
            }
        } else if (i == 7 && i2 == 1) {
            int intExtra = intent.getIntExtra("setting_auto_send_location_space_time", 3);
            this.v.setText(ad.a((int) R.string.minute, Integer.valueOf(intExtra)));
            w.a(p(), (long) (intExtra * 60000));
            if (ShareLocationService.a() != null) {
                ShareLocationService.a().a((long) (intExtra * 60000));
            }
        }
    }

    @Subscribe
    public void receiveStateUpdateResponse(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent.a() == CHOPTION.ST_QUERY) {
            c(stateUpdateEvent);
        }
    }

    @Subscribe
    public void onParamUpdate(final ParamUpdate paramUpdate) {
        if (this.m) {
            this.m = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    ad.b(DolphinSettingActivity.this.p);
                    if (paramUpdate.getResult() == STATECODE.SUCCESS) {
                        DolphinSettingActivity.this.d(R.drawable.mine_icon_win);
                        DolphinSettingActivity.this.e(R.string.activation_successful);
                        ad.a((Runnable) new Runnable() {
                            public void run() {
                                DolphinSettingActivity.this.k();
                                if (DolphinSettingActivity.this.n != null) {
                                    DolphinSettingActivity.this.n.a();
                                }
                            }
                        }, 800);
                        MiTalkiApp.a().a = true;
                        w.p(true);
                        return;
                    }
                    DolphinSettingActivity.this.p.run();
                }
            });
            return;
        }
        ad.a((Runnable) new Runnable() {
            public void run() {
                DolphinSettingActivity.this.a(paramUpdate);
            }
        });
    }

    private void a(UserChannel userChannel, boolean z2) {
        if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (userChannel != null) {
            if (userChannel.c() == 4) {
                v.a((CharSequence) getString(R.string.sos_mode_can_not_setting), false);
                return;
            } else if (userChannel.c() == 6) {
                v.a((CharSequence) getString(R.string.team_mode_can_not_setting), false);
                return;
            } else if (userChannel.c() == 7) {
                v.a((CharSequence) getString(R.string.scan_mode_can_not_setting), false);
                return;
            } else if (this.E == 2) {
                new com.ifengyu.intercom.ui.widget.dialog.d(this).b((CharSequence) ad.a((int) R.string.not_support_chapin_mode_please_do_it_on_device)).c((int) R.string.sure, (DialogInterface.OnClickListener) null).b().c();
                return;
            } else {
                DolphinCHSettingActivity.a(this, userChannel, z2);
            }
        } else {
            return;
        }
        MiStatInterface.recordCountEvent("device_setting_page", "editChannelBtnClick");
    }

    private void c() {
        UpdateManager.a().a((b) this);
        if (!v.a((Context) this)) {
            v.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else {
            a(false, true, getString(R.string.check_ing), (int) R.drawable.load_spinner);
            UpdateManager a2 = UpdateManager.a();
            UpdateManager a3 = UpdateManager.a();
            a3.getClass();
            a2.a(new UpdateManager.b(this, CHECK_CONDITION.MCU, false), w.l());
            AnonymousClass11 r0 = new Runnable() {
                public void run() {
                    DolphinSettingActivity.this.b(DolphinSettingActivity.this.getString(R.string.request_time_out));
                    DolphinSettingActivity.this.d(R.drawable.mine_icon_lose);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            DolphinSettingActivity.this.k();
                        }
                    }, 1000);
                }
            };
            this.A = r0;
            ad.a((Runnable) r0, 8000);
        }
    }

    private void c(final StateUpdateEvent stateUpdateEvent) {
        runOnUiThread(new Runnable() {
            public void run() {
                if (DolphinSettingActivity.this.z == 1) {
                    DolphinSettingActivity.this.k();
                    DolphinSettingActivity.this.z = -1;
                }
                if (!stateUpdateEvent.f() || !stateUpdateEvent.g()) {
                    DolphinSettingActivity.this.w.setChecked(false);
                } else {
                    DolphinSettingActivity.this.w.setChecked(true);
                }
                if (w.a == 1) {
                    DolphinSettingActivity.this.a(stateUpdateEvent);
                } else {
                    DolphinSettingActivity.this.b(stateUpdateEvent);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(ParamUpdate paramUpdate) {
        boolean z2 = true;
        STATECODE result = paramUpdate.getResult();
        if (result == STATECODE.SUCCESS) {
            switch (this.z) {
                case -1:
                    if (paramUpdate.hasShareLoc()) {
                        this.x.setChecked(paramUpdate.getShareLoc() != 0);
                    }
                    if (paramUpdate.hasStateMode()) {
                        if (paramUpdate.getStateMode() == STATEMODE.SINGLE) {
                            this.w.setChecked(false);
                        } else if (paramUpdate.getStateMode() == STATEMODE.DOUBLE) {
                            this.w.setChecked(true);
                        }
                    }
                    if (paramUpdate.hasDevNameGBK()) {
                        try {
                            this.u.setText(new String(paramUpdate.getDevNameGBK().toByteArray(), StringUtils.GB2312));
                            return;
                        } catch (UnsupportedEncodingException e) {
                            ThrowableExtension.printStackTrace(e);
                            return;
                        }
                    } else {
                        return;
                    }
                case 1:
                    m.a();
                    return;
                case 2:
                    k();
                    this.z = -1;
                    CheckBox checkBox = this.x;
                    if (this.x.isChecked()) {
                        z2 = false;
                    }
                    checkBox.setChecked(z2);
                    return;
                default:
                    return;
            }
        } else if (result == STATECODE.NOTSUPPORT) {
            this.z = -1;
            d(R.drawable.mine_icon_lose);
            e(R.string.not_support_switch);
            ad.a((Runnable) new Runnable() {
                public void run() {
                    DolphinSettingActivity.this.k();
                }
            }, 500);
        }
    }

    private void d() {
        this.z = 1;
        f.a().a(this.w.isChecked() ? STATEMODE.SINGLE : STATEMODE.DOUBLE);
    }

    private void e() {
        this.z = 2;
        f.a().a(this.x.isChecked() ? 0 : 1);
    }

    private void f() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        this.a = findViewById(R.id.rl_device_activate);
        this.b = findViewById(R.id.device_name_select_talkie);
        this.c = findViewById(R.id.double_frequency_model);
        this.d = findViewById(R.id.public_my_location);
        this.q = findViewById(R.id.auto_send_location);
        this.r = findViewById(R.id.device_update);
        this.t = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.s = (LinearLayout) findViewById(R.id.device_setting_container);
        this.u = (TextView) findViewById(R.id.current_device_name);
        this.v = (TextView) findViewById(R.id.auto_send_location_time);
        this.w = (CheckBox) findViewById(R.id.double_frequency_model_switch_btn);
        this.x = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.F = l.c;
        this.G = (LinearLayout) findViewById(R.id.top_channel_container);
        this.a.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.q.setOnClickListener(this);
        this.r.setOnClickListener(this);
        findViewById(R.id.relieve_binding).setOnClickListener(this);
        if (!k.a().b()) {
            this.T = new c(this);
            this.T.setCanceledOnTouchOutside(false);
            this.T.show();
        }
        this.t.setVisibility(w.ag() ? 8 : 0);
        this.u.setText(w.ae());
        this.x.setClickable(false);
        this.x.setChecked(w.j());
        this.v.setText(ad.a((int) R.string.minute, Long.valueOf(w.k(p()) / 60000)));
        this.x.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                w.a(z);
            }
        });
        this.w.setClickable(false);
        this.w.setChecked(w.k());
        this.w.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                w.b(z);
            }
        });
    }

    public void a(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent == null) {
            return;
        }
        if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
            ChannelInfo d2 = stateUpdateEvent.d();
            this.C = m.a(d2);
            ChannelInfo e = stateUpdateEvent.e();
            this.D = m.a(e);
            this.H = null;
            this.J = null;
            this.K = null;
            this.I = null;
            this.M = null;
            this.N = null;
            this.H = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.J = (TextView) this.H.findViewById(R.id.normal_channel_name);
            this.K = (TextView) this.H.findViewById(R.id.normal_channel_number);
            this.K.setTypeface(this.F);
            this.H.setId(R.id.double_channel_top_item_id);
            this.H.setOnClickListener(this);
            this.I = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.I.findViewById(R.id.space_line).setVisibility(0);
            this.M = (TextView) this.I.findViewById(R.id.normal_channel_name);
            this.N = (TextView) this.I.findViewById(R.id.normal_channel_number);
            this.N.setTypeface(this.F);
            this.I.setId(R.id.double_channel_bottom_item_id);
            this.I.setOnClickListener(this);
            this.G.removeAllViews();
            this.G.addView(this.H);
            this.G.addView(this.I);
            if (!d2.hasFreq()) {
                this.K.setText("");
            } else if (stateUpdateEvent.c() == STATEMODE.TEAM_M || stateUpdateEvent.c() == STATEMODE.TEAM_S) {
                this.K.setText("");
            } else {
                this.K.setText(v.c(d2.getFreq()));
            }
            if (stateUpdateEvent.c() == STATEMODE.DIFFER) {
                this.E = 2;
                this.J.setText(ad.a((int) R.string.channel_receive));
            } else {
                this.E = -1;
                this.J.setText(v.a(new ChannelBean(d2)));
            }
            if (!e.hasFreq()) {
                this.N.setText("");
            } else if (stateUpdateEvent.c() == STATEMODE.TEAM_M || stateUpdateEvent.c() == STATEMODE.TEAM_S) {
                this.N.setText("");
            } else {
                this.N.setText(v.c(e.getFreq()));
            }
            if (stateUpdateEvent.c() == STATEMODE.DIFFER) {
                this.E = 2;
                this.M.setText(ad.a((int) R.string.channel_launch));
                return;
            }
            this.E = -1;
            this.M.setText(v.a(new ChannelBean(e)));
        } else if (stateUpdateEvent.f()) {
            ChannelInfo d3 = stateUpdateEvent.d();
            this.C = m.a(d3);
            this.D = null;
            if (d3.getType() == CHTYPE.TEAM || d3.getType() == CHTYPE.SCAN) {
                View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                this.G.removeAllViews();
                this.G.addView(inflate);
                if (d3.getType() == CHTYPE.TEAM) {
                    textView.setText(getString(R.string.device_mode_team));
                    textView2.setText(getString(R.string.device_mode_team_ing_describe));
                    return;
                }
                textView.setText(getString(R.string.device_mode_channel_scan));
                textView2.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                return;
            }
            a(stateUpdateEvent, d3);
        } else if (stateUpdateEvent.g()) {
            ChannelInfo e2 = stateUpdateEvent.e();
            this.D = m.a(e2);
            this.C = null;
            a(stateUpdateEvent, e2);
        }
    }

    public void b(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent == null) {
            return;
        }
        if (stateUpdateEvent.f() && stateUpdateEvent.g()) {
            ChannelInfo d2 = stateUpdateEvent.d();
            this.C = m.a(d2);
            ChannelInfo e = stateUpdateEvent.e();
            this.D = m.a(e);
            a(d2, e);
            this.J.setText(v.a(m.a(d2)));
            if (!d2.hasFreq()) {
                this.K.setText("");
            } else if (stateUpdateEvent.c() == STATEMODE.TEAM_M || stateUpdateEvent.c() == STATEMODE.TEAM_S) {
                this.K.setText("");
            } else if (d2.getType() == CHTYPE.RELAY) {
                this.K.setText(v.c(d2.getFreq()));
                this.L.setText(v.c(d2.getFreq2()));
            } else {
                this.K.setText(v.c(d2.getFreq()));
            }
            this.M.setText(v.a(m.a(e)));
            if (!e.hasFreq()) {
                this.N.setText("");
            } else if (stateUpdateEvent.c() == STATEMODE.TEAM_M || stateUpdateEvent.c() == STATEMODE.TEAM_S) {
                this.N.setText("");
            } else if (e.getType() == CHTYPE.RELAY) {
                this.N.setText(v.c(e.getFreq()));
                this.O.setText(v.c(e.getFreq2()));
            } else {
                this.N.setText(v.c(e.getFreq()));
            }
        } else if (stateUpdateEvent.f()) {
            ChannelInfo d3 = stateUpdateEvent.d();
            this.C = m.a(d3);
            this.D = null;
            if ((d3.getType() == CHTYPE.TEAM || d3.getType() == CHTYPE.SCAN) && !d3.hasFreq()) {
                View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                this.G.removeAllViews();
                this.G.addView(inflate);
                if (d3.getType() == CHTYPE.TEAM) {
                    textView.setText(getString(R.string.device_mode_team));
                    textView2.setText(getString(R.string.device_mode_team_ing_describe));
                    return;
                }
                textView.setText(getString(R.string.device_mode_channel_scan));
                textView2.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                return;
            }
            a(d3);
            this.Q.setText(v.a(m.a(d3)));
            if (!d3.hasFreq()) {
                this.R.setText("");
            } else if (stateUpdateEvent.c() == STATEMODE.TEAM_M || stateUpdateEvent.c() == STATEMODE.TEAM_S) {
                this.R.setText("");
            } else if (d3.getType() == CHTYPE.RELAY) {
                this.R.setText(v.c(d3.getFreq()));
                this.S.setText(v.c(d3.getFreq2()));
            } else {
                this.R.setText(v.c(d3.getFreq()));
            }
        } else if (stateUpdateEvent.g()) {
            ChannelInfo e2 = stateUpdateEvent.e();
            this.D = m.a(e2);
            this.C = null;
            a(e2);
            this.Q.setText(v.a(m.a(e2)));
            if (!e2.hasFreq()) {
                this.R.setText("");
            } else if (stateUpdateEvent.c() == STATEMODE.TEAM_M || stateUpdateEvent.c() == STATEMODE.TEAM_S) {
                this.R.setText("");
            } else if (e2.getType() == CHTYPE.RELAY) {
                this.R.setText(v.c(e2.getFreq()));
                this.S.setText(v.c(e2.getFreq2()));
            } else {
                this.R.setText(v.c(e2.getFreq()));
            }
        }
    }

    private void a(StateUpdateEvent stateUpdateEvent, ChannelInfo channelInfo) {
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = null;
        this.P = View.inflate(this, R.layout.single_channel_display_normal_layout, null);
        this.Q = (TextView) this.P.findViewById(R.id.normal_channel_name);
        this.R = (TextView) this.P.findViewById(R.id.normal_channel_number);
        this.R.setTypeface(this.F);
        this.P.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.G.removeAllViews();
        this.G.addView(this.P);
        if (!channelInfo.hasFreq()) {
            this.R.setText("");
        } else if (stateUpdateEvent.c() == STATEMODE.TEAM_M || stateUpdateEvent.c() == STATEMODE.TEAM_S) {
            this.R.setText("");
        } else {
            this.R.setText(v.c(channelInfo.getFreq()));
        }
        this.E = -1;
        this.Q.setText(v.a(new ChannelBean(channelInfo)));
    }

    private void a(ChannelInfo channelInfo) {
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = null;
        if (channelInfo.getType() == CHTYPE.RELAY) {
            this.P = View.inflate(this, R.layout.single_channel_display_relay_layout, null);
            this.Q = (TextView) this.P.findViewById(R.id.relay_channel_name);
            this.R = (TextView) this.P.findViewById(R.id.relay_channel_receive_number);
            this.S = (TextView) this.P.findViewById(R.id.normal_channel_transmit_number);
            this.R.setTypeface(this.F);
            this.S.setTypeface(this.F);
        } else {
            this.P = View.inflate(this, R.layout.single_channel_display_normal_layout, null);
            this.Q = (TextView) this.P.findViewById(R.id.normal_channel_name);
            this.R = (TextView) this.P.findViewById(R.id.normal_channel_number);
            this.R.setTypeface(this.F);
        }
        this.P.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.G.removeAllViews();
        this.G.addView(this.P);
    }

    private void a(ChannelInfo channelInfo, ChannelInfo channelInfo2) {
        this.H = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.I = null;
        this.M = null;
        this.N = null;
        this.O = null;
        if (channelInfo.getType() == CHTYPE.RELAY) {
            this.H = View.inflate(this, R.layout.dolphin_double_channel_relay_item, null);
            this.J = (TextView) this.H.findViewById(R.id.relay_name);
            this.K = (TextView) this.H.findViewById(R.id.relay_receive_number);
            this.L = (TextView) this.H.findViewById(R.id.relay_transmit_number);
            this.K.setTypeface(this.F);
            this.L.setTypeface(this.F);
        } else {
            this.H = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.J = (TextView) this.H.findViewById(R.id.normal_channel_name);
            this.K = (TextView) this.H.findViewById(R.id.normal_channel_number);
            this.K.setTypeface(this.F);
        }
        this.H.setId(R.id.double_channel_top_item_id);
        this.H.setOnClickListener(this);
        if (channelInfo2.getType() == CHTYPE.RELAY) {
            this.I = View.inflate(this, R.layout.dolphin_double_channel_relay_item, null);
            this.I.findViewById(R.id.space_line).setVisibility(0);
            this.M = (TextView) this.I.findViewById(R.id.relay_name);
            this.N = (TextView) this.I.findViewById(R.id.relay_receive_number);
            this.O = (TextView) this.I.findViewById(R.id.relay_transmit_number);
            this.N.setTypeface(this.F);
            this.O.setTypeface(this.F);
        } else {
            this.I = View.inflate(this, R.layout.dolphin_double_channel_normal_item, null);
            this.I.findViewById(R.id.space_line).setVisibility(0);
            this.M = (TextView) this.I.findViewById(R.id.normal_channel_name);
            this.N = (TextView) this.I.findViewById(R.id.normal_channel_number);
            this.N.setTypeface(this.F);
        }
        this.I.setId(R.id.double_channel_bottom_item_id);
        this.I.setOnClickListener(this);
        this.G.removeAllViews();
        this.G.addView(this.H);
        this.G.addView(this.I);
    }
}
