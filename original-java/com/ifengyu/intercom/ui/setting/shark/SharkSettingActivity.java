package com.ifengyu.intercom.ui.setting.shark;

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
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.a.b.h;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfo;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_MODE;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelStateOperate.SHARK_ST_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR;
import com.ifengyu.intercom.ui.activity.AutoSendLocationActivity;
import com.ifengyu.intercom.ui.activity.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.ui.activity.SetSealSharkBleNameActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.ab;
import com.ifengyu.intercom.ui.widget.dialog.c;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.y;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import okhttp3.Call;

public class SharkSettingActivity extends BaseActivity implements OnClickListener {
    private View A;
    TextView a;
    TextView b;
    CheckBox c;
    LinearLayout d;
    LinearLayout q;
    TextView r;
    /* access modifiers changed from: private */
    public c s;
    /* access modifiers changed from: private */
    public ab t;
    private a u;
    /* access modifiers changed from: private */
    public int v = -1;
    /* access modifiers changed from: private */
    public Runnable w;
    private Typeface x;
    /* access modifiers changed from: private */
    public int y = -1;
    private CheckBox z;

    private class a implements com.ifengyu.intercom.node.i.a {
        private a() {
        }

        public void b(String str) {
            SharkSettingActivity.this.runOnUiThread(new Runnable() {
                public void run() {
                    if (SharkSettingActivity.this.s != null && SharkSettingActivity.this.s.isShowing()) {
                        SharkSettingActivity.this.s.dismiss();
                    }
                    com.ifengyu.intercom.b.ab.d();
                }
            });
        }

        public void c(String str) {
            SharkSettingActivity.this.runOnUiThread(new Runnable() {
                public void run() {
                    SharkSettingActivity.this.s = new c(SharkSettingActivity.this);
                    SharkSettingActivity.this.s.setCanceledOnTouchOutside(false);
                    SharkSettingActivity.this.s.show();
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
        setContentView((int) R.layout.activity_shark_setting);
        w();
        this.u = new a();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        s.c("SharkSettingActivity", "onStart");
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
        this.v = -1;
        this.c.setChecked(w.H());
        com.ifengyu.intercom.b.ab.d();
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        s.c("SharkSettingActivity", "onNewIntent");
        super.onNewIntent(intent);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "SharkSettingActivity");
        k.a().a((com.ifengyu.intercom.node.i.a) this.u);
        this.A.setVisibility(w.J() ? 0 : 8);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        UpdateManager.a().d();
        k.a().b((com.ifengyu.intercom.node.i.a) this.u);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        if (this.s != null) {
            this.s.dismiss();
        }
        if (this.t != null) {
            this.t.dismiss();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 6) {
            if (i2 == 1) {
                this.a.setText(intent.getStringExtra("setting_walkie_name"));
                new d(this).b((CharSequence) getString(R.string.setting_success_please_restart)).c((int) R.string.user_guide_i_know, (DialogInterface.OnClickListener) null).b().c();
            }
        } else if (i == 7 && i2 == 1) {
            int intExtra = intent.getIntExtra("setting_auto_send_location_space_time", 3);
            this.b.setText(ad.a((int) R.string.minute, Integer.valueOf(intExtra)));
            w.a(p(), (long) (intExtra * 60000));
            if (ShareLocationService.a() != null) {
                ShareLocationService.a().a((long) (intExtra * 60000));
            }
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.rl_device_activate /*2131755216*/:
                c();
                return;
            case R.id.device_name_select_talkie /*2131755218*/:
                d();
                return;
            case R.id.public_my_location /*2131755222*/:
                q();
                MiStatInterface.recordCountEvent("map_tab_page", "shareLocationBtnClick");
                return;
            case R.id.auto_send_location /*2131755224*/:
                r();
                return;
            case R.id.device_update /*2131755226*/:
                t();
                MiStatInterface.recordCountEvent("device_setting_page", "mcuUpdateBtnClick");
                return;
            case R.id.relieve_binding /*2131755227*/:
                v();
                return;
            case R.id.double_channel_model /*2131755380*/:
                f();
                return;
            case R.id.power_level_layout /*2131755382*/:
                e();
                return;
            case R.id.time_update_layout /*2131755384*/:
                s();
                MiStatInterface.recordCountEvent("device_setting_page", "sharkTimeSyncBtnClick");
                return;
            default:
                return;
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(final SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        s.c("SharkSettingActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new Runnable() {
            public void run() {
                if (!sHARK_ChannelStateOperate.hasResult()) {
                    SharkSettingActivity.this.y = -1;
                } else if (sHARK_ChannelStateOperate.getResult() == SHARK_ST_UERR.SHARK_ST_OK) {
                    SharkSettingActivity.this.a(sHARK_ChannelStateOperate);
                } else {
                    SharkSettingActivity.this.y = -1;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            this.y = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            if (this.y == SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
                if (sHARK_ChannelStateOperate.hasStateMode()) {
                    int stateMode = sHARK_ChannelStateOperate.getStateMode();
                    if (this.v == 0) {
                        k();
                        this.v = -1;
                    }
                    this.z.setChecked(stateMode == 2);
                    if (stateMode == 1) {
                        if (sHARK_ChannelStateOperate.hasCh1()) {
                            b(com.ifengyu.intercom.b.ab.a(sHARK_ChannelStateOperate.getCh1()), true);
                        } else if (sHARK_ChannelStateOperate.hasCh2()) {
                            b(com.ifengyu.intercom.b.ab.a(sHARK_ChannelStateOperate.getCh2()), false);
                        }
                    } else if (stateMode == 2 && sHARK_ChannelStateOperate.hasCh1() && sHARK_ChannelStateOperate.hasCh2()) {
                        SHARK_ChannelInfo ch1 = sHARK_ChannelStateOperate.getCh1();
                        SHARK_ChannelInfo ch2 = sHARK_ChannelStateOperate.getCh2();
                        SealSharkChannel a2 = com.ifengyu.intercom.b.ab.a(ch1);
                        SealSharkChannel a3 = com.ifengyu.intercom.b.ab.a(ch2);
                        if (a2 != null && a3 != null) {
                            a(a2, a3);
                        }
                    }
                }
            } else if (this.y != 1 && this.y != 2) {
                View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                this.q.removeAllViews();
                this.q.addView(inflate);
                inflate.setId(R.id.scan_and_team_mode_item_id);
                switch (this.y) {
                    case 3:
                    case 4:
                        textView.setText(getString(R.string.device_mode_channel_scan));
                        textView2.setText(getString(R.string.device_mode_channel_scan_ing_describe));
                        inflate.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                v.a((CharSequence) SharkSettingActivity.this.getString(R.string.scan_mode_can_not_setting), false);
                            }
                        });
                        return;
                    case 5:
                    case 6:
                        textView.setText(getString(R.string.device_mode_team));
                        textView2.setText(getString(R.string.device_mode_team_ing_describe));
                        inflate.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                v.a((CharSequence) SharkSettingActivity.this.getString(R.string.team_mode_can_not_setting), false);
                            }
                        });
                        return;
                    default:
                        return;
                }
            } else if (sHARK_ChannelStateOperate.hasCh1() && sHARK_ChannelStateOperate.hasCh2()) {
                SHARK_ChannelInfo ch12 = sHARK_ChannelStateOperate.getCh1();
                SHARK_ChannelInfo ch22 = sHARK_ChannelStateOperate.getCh2();
                SealSharkChannel a4 = com.ifengyu.intercom.b.ab.a(ch12);
                SealSharkChannel a5 = com.ifengyu.intercom.b.ab.a(ch22);
                if (a4 != null && a5 != null) {
                    b(a4, a5);
                }
            }
        } else {
            this.y = -1;
        }
    }

    @Subscribe
    public void receiveParamResponse(final SHARK_DeviceParam sHARK_DeviceParam) {
        s.c("SharkSettingActivity", "receiveParamResponse");
        if (this.m) {
            this.m = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    ad.b(SharkSettingActivity.this.p);
                    if (sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                        SharkSettingActivity.this.d(R.drawable.mine_icon_win);
                        SharkSettingActivity.this.e(R.string.activation_successful);
                        ad.a((Runnable) new Runnable() {
                            public void run() {
                                SharkSettingActivity.this.k();
                                if (SharkSettingActivity.this.n != null) {
                                    SharkSettingActivity.this.n.a();
                                }
                            }
                        }, 800);
                        MiTalkiApp.a().a = true;
                        w.p(true);
                        return;
                    }
                    SharkSettingActivity.this.p.run();
                }
            });
            return;
        }
        ad.a((Runnable) new Runnable() {
            public void run() {
                if (sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                    switch (SharkSettingActivity.this.v) {
                        case -1:
                            if (sHARK_DeviceParam.hasCh() && sHARK_DeviceParam.getCh().hasChTxPower()) {
                                SharkSettingActivity.this.x();
                                return;
                            } else if (sHARK_DeviceParam.hasShareLoc()) {
                                SharkSettingActivity.this.c.setChecked(w.H());
                                return;
                            } else {
                                return;
                            }
                        case 1:
                            SharkSettingActivity.this.k();
                            SharkSettingActivity.this.v = -1;
                            SharkSettingActivity.this.c.setChecked(w.H());
                            return;
                        case 2:
                            SharkSettingActivity.this.k();
                            SharkSettingActivity.this.v = -1;
                            SharkSettingActivity.this.x();
                            return;
                        case 3:
                            SharkSettingActivity.this.v = -1;
                            SharkSettingActivity.this.d(R.drawable.mine_icon_win);
                            SharkSettingActivity.this.b(SharkSettingActivity.this.getString(R.string.shark_time_update_success));
                            ad.a((Runnable) new Runnable() {
                                public void run() {
                                    SharkSettingActivity.this.k();
                                }
                            }, 500);
                            return;
                        default:
                            return;
                    }
                } else {
                    SharkSettingActivity.this.v = -1;
                    SharkSettingActivity.this.d(R.drawable.mine_icon_lose);
                    SharkSettingActivity.this.e(R.string.not_support_switch);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            SharkSettingActivity.this.k();
                        }
                    }, 500);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(SealSharkChannel sealSharkChannel, boolean z2) {
        if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (sealSharkChannel != null) {
            SharkChannelSettingActivity.a(this, sealSharkChannel, z2);
        } else {
            return;
        }
        MiStatInterface.recordCountEvent("device_setting_page", "editChannelBtnClick");
    }

    private void c() {
        if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (w.ag()) {
            a(false, false, getString(R.string.device_had_actived), (int) R.drawable.load_spinner);
            d(R.drawable.mine_icon_win);
            ad.a((Runnable) new Runnable() {
                public void run() {
                    SharkSettingActivity.this.k();
                }
            }, 500);
        } else {
            a((com.ifengyu.intercom.ui.baseui.BaseActivity.a) new com.ifengyu.intercom.ui.baseui.BaseActivity.a() {
                public void a() {
                    SharkSettingActivity.this.d.setVisibility(8);
                    String E = w.E();
                    String K = w.K();
                    if (!TextUtils.isEmpty(E) && !TextUtils.isEmpty(K)) {
                        com.ifengyu.intercom.a.a.a(K, E, (b) null);
                    }
                }

                public void b() {
                }

                public void c() {
                }
            });
        }
    }

    private void d() {
        if (k.a().b()) {
            startActivityForResult(new Intent(this, SetSealSharkBleNameActivity.class), 6);
        } else {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    private void e() {
        int i;
        if (k.a().b()) {
            if (this.r.getText().equals(getString(R.string.shark_power_level_low))) {
                i = 1;
            } else if (this.r.getText().equals(getString(R.string.shark_power_level_high))) {
                i = 2;
            } else {
                i = 0;
            }
            String[] strArr = {getString(R.string.shark_power_level_low), getString(R.string.shark_power_level_high), getString(R.string.common_cancel)};
            y yVar = new y(this, i);
            yVar.a(true);
            yVar.b((int) R.string.shark_power_level).a(strArr, new y.b() {
                public void a(DialogInterface dialogInterface, int i) {
                    if (i <= 1) {
                        SharkSettingActivity.this.a(false, true, SharkSettingActivity.this.getString(R.string.please_wait), (int) R.drawable.load_spinner);
                        if (SharkSettingActivity.this.w != null) {
                            MiTalkiApp.n().removeCallbacks(SharkSettingActivity.this.w);
                        }
                        SharkSettingActivity.this.w = new Runnable() {
                            public void run() {
                                SharkSettingActivity.this.v = -1;
                                SharkSettingActivity.this.k();
                            }
                        };
                        MiTalkiApp.n().postDelayed(SharkSettingActivity.this.w, 5000);
                        SharkSettingActivity.this.v = 2;
                        com.ifengyu.intercom.b.ab.a(i + 1);
                    }
                }
            }).show();
            return;
        }
        v.a((CharSequence) getString(R.string.current_device_not_connected), false);
    }

    private void f() {
        boolean z2 = true;
        if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (this.y <= 0 || this.y == SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
            a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
            if (this.w != null) {
                MiTalkiApp.n().removeCallbacks(this.w);
            }
            this.w = new Runnable() {
                public void run() {
                    SharkSettingActivity.this.v = -1;
                    SharkSettingActivity.this.k();
                }
            };
            MiTalkiApp.n().postDelayed(this.w, 5000);
            this.v = 0;
            if (this.z.isChecked()) {
                z2 = false;
            }
            com.ifengyu.intercom.b.ab.a(z2);
        } else {
            a(false, true, getString(R.string.current_mode_not_support_this_set), (int) R.drawable.load_spinner);
            d(R.drawable.mine_icon_lose);
            MiTalkiApp.n().postDelayed(new Runnable() {
                public void run() {
                    SharkSettingActivity.this.k();
                }
            }, 1000);
        }
    }

    private void q() {
        boolean z2 = true;
        if (k.a().b()) {
            a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
            if (this.w != null) {
                MiTalkiApp.n().removeCallbacks(this.w);
            }
            this.w = new Runnable() {
                public void run() {
                    SharkSettingActivity.this.v = -1;
                    SharkSettingActivity.this.k();
                }
            };
            MiTalkiApp.n().postDelayed(this.w, 5000);
            this.v = 1;
            if (this.c.isChecked()) {
                z2 = false;
            }
            com.ifengyu.intercom.b.ab.b(z2);
        } else if (this.c.isChecked()) {
            this.c.setChecked(false);
            stopService(new Intent(this, ShareLocationService.class));
        } else {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    private void r() {
        if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (this.c.isChecked()) {
            startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
        } else {
            v.a((CharSequence) getString(R.string.setting_please_open_share_loc_btn), false);
        }
    }

    private void s() {
        if (k.a().b()) {
            a(false, true, getString(R.string.shark_time_update_ing), (int) R.drawable.load_spinner);
            if (this.w != null) {
                MiTalkiApp.n().removeCallbacks(this.w);
            }
            this.w = new Runnable() {
                public void run() {
                    SharkSettingActivity.this.v = -1;
                    SharkSettingActivity.this.b(SharkSettingActivity.this.getString(R.string.shark_time_update_fail));
                    SharkSettingActivity.this.d(R.drawable.mine_icon_lose);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            SharkSettingActivity.this.k();
                        }
                    }, 500);
                }
            };
            MiTalkiApp.n().postDelayed(this.w, 5000);
            this.v = 3;
            com.ifengyu.intercom.b.ab.c();
            return;
        }
        v.a((CharSequence) getString(R.string.current_device_not_connected), false);
    }

    private void t() {
        if (!v.a((Context) this)) {
            v.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (this.y <= 0 || this.y == SHARK_MODE.SHARK_MODE_NORMAL.getNumber()) {
            a(false, true, getString(R.string.check_ing), (int) R.drawable.load_spinner);
            AnonymousClass6 r0 = new Runnable() {
                public void run() {
                    SharkSettingActivity.this.b(SharkSettingActivity.this.getString(R.string.request_time_out));
                    SharkSettingActivity.this.d(R.drawable.mine_icon_lose);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            SharkSettingActivity.this.k();
                        }
                    }, 1000);
                }
            };
            this.w = r0;
            ad.a((Runnable) r0, 8000);
            u();
        } else {
            a(false, true, getString(R.string.current_mode_not_support_this_set), (int) R.drawable.load_spinner);
            d(R.drawable.mine_icon_lose);
            MiTalkiApp.n().postDelayed(new Runnable() {
                public void run() {
                    SharkSettingActivity.this.k();
                }
            }, 1000);
        }
    }

    private void u() {
        com.ifengyu.intercom.a.a.e(new h() {
            public void a(Call call, Exception exc, int i) {
                ThrowableExtension.printStackTrace(exc);
                ad.b(SharkSettingActivity.this.w);
                SharkSettingActivity.this.b(SharkSettingActivity.this.getString(R.string.net_error_please_check));
                SharkSettingActivity.this.d(R.drawable.mine_icon_lose);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        SharkSettingActivity.this.k();
                    }
                }, 1000);
            }

            public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
                ad.b(SharkSettingActivity.this.w);
                SharkSettingActivity.this.k();
                if (mcuUpdateInfoModel != null) {
                    s.c("SharkSettingActivity", "updateInfoModel:" + mcuUpdateInfoModel.toString());
                    s.c("SharkSettingActivity", "getVersionCode:" + mcuUpdateInfoModel.getVersionCode());
                    int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                    int G = w.G();
                    Intent intent = new Intent(SharkSettingActivity.this, SealSharkMcuUpdateActivity.class);
                    intent.putExtra("mcu_update_device_type", "shark");
                    if (G <= 0 || G >= parseInt) {
                        intent.putExtra("mcu_have_update", false);
                    } else {
                        intent.putExtra("mcu_have_update", true);
                    }
                    intent.putExtra("mcu_update_info", mcuUpdateInfoModel);
                    intent.setAction("mcu_update_action_from_setting");
                    SharkSettingActivity.this.startActivity(intent);
                }
            }
        });
    }

    private void v() {
        this.t = new ab(this, true);
        this.t.a((com.ifengyu.intercom.ui.widget.dialog.ab.a) new com.ifengyu.intercom.ui.widget.dialog.ab.a() {
            public void a() {
                SharkSettingActivity.this.a(false, false, SharkSettingActivity.this.getString(R.string.unbind_ing), (int) R.drawable.load_spinner);
                String p = SharkSettingActivity.this.p();
                if (!TextUtils.isEmpty(p)) {
                    com.ifengyu.intercom.node.a.d b = com.ifengyu.intercom.service.a.b();
                    if (b != null) {
                        b.a(p);
                    }
                    com.ifengyu.intercom.node.a.d.a().d.b(p);
                }
                w.g();
                SharkSettingActivity.this.t.dismiss();
                if (SharkSettingActivity.this.w != null) {
                    MiTalkiApp.n().removeCallbacks(SharkSettingActivity.this.w);
                    SharkSettingActivity.this.w = null;
                }
                SharkSettingActivity.this.w = new Runnable() {
                    public void run() {
                        SharkSettingActivity.this.b(SharkSettingActivity.this.getString(R.string.unbind_success));
                        SharkSettingActivity.this.d(R.drawable.mine_icon_win);
                        if (SharkSettingActivity.this.w != null) {
                            MiTalkiApp.n().removeCallbacks(SharkSettingActivity.this.w);
                            SharkSettingActivity.this.w = null;
                        }
                        SharkSettingActivity.this.w = new Runnable() {
                            public void run() {
                                SharkSettingActivity.this.k();
                                SharkSettingActivity.this.finish();
                            }
                        };
                        MiTalkiApp.n().postDelayed(SharkSettingActivity.this.w, 1000);
                    }
                };
                MiTalkiApp.n().postDelayed(SharkSettingActivity.this.w, 500);
            }
        });
        this.t.show();
    }

    private void w() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        this.q = (LinearLayout) findViewById(R.id.top_channel_container);
        this.d = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.a = (TextView) findViewById(R.id.current_device_name);
        this.b = (TextView) findViewById(R.id.auto_send_location_time);
        this.r = (TextView) findViewById(R.id.power_level_value);
        this.z = (CheckBox) findViewById(R.id.double_channel_switch_btn);
        this.c = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.x = l.c;
        findViewById(R.id.rl_device_activate).setOnClickListener(this);
        findViewById(R.id.device_name_select_talkie).setOnClickListener(this);
        findViewById(R.id.power_level_layout).setOnClickListener(this);
        findViewById(R.id.double_channel_model).setOnClickListener(this);
        findViewById(R.id.public_my_location).setOnClickListener(this);
        findViewById(R.id.auto_send_location).setOnClickListener(this);
        findViewById(R.id.time_update_layout).setOnClickListener(this);
        findViewById(R.id.device_update).setOnClickListener(this);
        findViewById(R.id.relieve_binding).setOnClickListener(this);
        this.A = findViewById(R.id.have_mcu_update_red_point);
        if (!k.a().b()) {
            this.s = new c(this);
            this.s.setCanceledOnTouchOutside(false);
            this.s.show();
        }
        this.d.setVisibility(w.ag() ? 8 : 0);
        this.a.setText(w.ae());
        x();
        this.z.setClickable(false);
        this.c.setClickable(false);
        this.c.setChecked(w.H());
        this.b.setText(ad.a((int) R.string.minute, Long.valueOf(w.k(p()) / 60000)));
    }

    /* access modifiers changed from: private */
    public void x() {
        switch (w.I()) {
            case 1:
                this.r.setText(getString(R.string.shark_power_level_low));
                return;
            case 2:
                this.r.setText(getString(R.string.shark_power_level_high));
                return;
            default:
                return;
        }
    }

    private void b(final SealSharkChannel sealSharkChannel, final boolean z2) {
        TextView textView;
        TextView textView2;
        View view;
        TextView textView3;
        if (sealSharkChannel.o()) {
            View inflate = View.inflate(this, R.layout.seal_shark_single_channel_normal_layout, null);
            textView = (TextView) inflate.findViewById(R.id.normal_channel_name);
            TextView textView4 = (TextView) inflate.findViewById(R.id.normal_channel_number);
            ((LinearLayout) inflate.findViewById(R.id.normal_css_channel_layout)).setVisibility(8);
            textView2 = (TextView) inflate.findViewById(R.id.normal_rx_css_value);
            textView3 = (TextView) inflate.findViewById(R.id.normal_tx_css_value);
            textView4.setTypeface(this.x);
            textView4.setText(v.c(sealSharkChannel.e()));
            view = inflate;
        } else {
            View inflate2 = View.inflate(this, R.layout.seal_shark_single_channel_custom_layout, null);
            textView = (TextView) inflate2.findViewById(R.id.relay_channel_name);
            TextView textView5 = (TextView) inflate2.findViewById(R.id.relay_channel_receive_number);
            TextView textView6 = (TextView) inflate2.findViewById(R.id.relay_channel_transmit_number);
            ((LinearLayout) inflate2.findViewById(R.id.custom_css_layout)).setVisibility(8);
            TextView textView7 = (TextView) inflate2.findViewById(R.id.relay_rx_css_value);
            TextView textView8 = (TextView) inflate2.findViewById(R.id.relay_tx_css_value);
            textView5.setTypeface(this.x);
            textView6.setTypeface(this.x);
            textView5.setText(v.c(sealSharkChannel.e()));
            textView6.setText(v.c(sealSharkChannel.f()));
            textView2 = textView7;
            view = inflate2;
            textView3 = textView8;
        }
        textView.setText(sealSharkChannel.g());
        textView2.setText(ad.a((int) R.string.receive_css_code_s, v.e(sealSharkChannel.j())));
        textView3.setText(ad.a((int) R.string.translate_css_code_s, v.e(sealSharkChannel.k())));
        view.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SharkSettingActivity.this.a(sealSharkChannel, z2);
            }
        });
        this.q.removeAllViews();
        this.q.addView(view);
    }

    public void a(final SealSharkChannel sealSharkChannel, final SealSharkChannel sealSharkChannel2) {
        View inflate;
        TextView textView;
        TextView textView2;
        View view;
        if (sealSharkChannel.o()) {
            View inflate2 = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView = (TextView) inflate2.findViewById(R.id.normal_channel_name);
            TextView textView3 = (TextView) inflate2.findViewById(R.id.normal_channel_number);
            textView3.setTypeface(this.x);
            textView3.setText(v.c(sealSharkChannel.e()));
            inflate = inflate2;
        } else {
            inflate = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView = (TextView) inflate.findViewById(R.id.relay_name);
            TextView textView4 = (TextView) inflate.findViewById(R.id.relay_receive_number);
            TextView textView5 = (TextView) inflate.findViewById(R.id.relay_transmit_number);
            textView4.setTypeface(this.x);
            textView5.setTypeface(this.x);
            textView4.setText(v.c(sealSharkChannel.e()));
            textView5.setText(v.c(sealSharkChannel.f()));
        }
        textView.setText(sealSharkChannel.g());
        inflate.setId(R.id.double_channel_top_item_id);
        inflate.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SharkSettingActivity.this.a(sealSharkChannel, true);
            }
        });
        if (sealSharkChannel2.o()) {
            View inflate3 = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView2 = (TextView) inflate3.findViewById(R.id.normal_channel_name);
            TextView textView6 = (TextView) inflate3.findViewById(R.id.normal_channel_number);
            textView6.setTypeface(this.x);
            textView6.setText(v.c(sealSharkChannel2.e()));
            view = inflate3;
        } else {
            View inflate4 = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView2 = (TextView) inflate4.findViewById(R.id.relay_name);
            TextView textView7 = (TextView) inflate4.findViewById(R.id.relay_receive_number);
            TextView textView8 = (TextView) inflate4.findViewById(R.id.relay_transmit_number);
            textView7.setTypeface(this.x);
            textView8.setTypeface(this.x);
            textView7.setText(v.c(sealSharkChannel2.e()));
            textView8.setText(v.c(sealSharkChannel2.f()));
            view = inflate4;
        }
        textView2.setText(sealSharkChannel2.g());
        view.setId(R.id.double_channel_bottom_item_id);
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SharkSettingActivity.this.a(sealSharkChannel2, false);
            }
        });
        this.q.removeAllViews();
        this.q.addView(inflate);
        this.q.addView(view);
    }

    public void b(SealSharkChannel sealSharkChannel, final SealSharkChannel sealSharkChannel2) {
        TextView textView;
        View view;
        View inflate = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
        TextView textView2 = (TextView) inflate.findViewById(R.id.normal_channel_name);
        TextView textView3 = (TextView) inflate.findViewById(R.id.normal_channel_number);
        textView3.setTypeface(this.x);
        textView3.setText(v.c(sealSharkChannel.e()));
        textView2.setText(sealSharkChannel.g());
        inflate.setId(R.id.double_channel_top_item_id);
        inflate.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                v.a((CharSequence) SharkSettingActivity.this.getString(R.string.sos_mode_can_not_setting), false);
            }
        });
        if (sealSharkChannel2.o()) {
            View inflate2 = View.inflate(this, R.layout.seal_shark_double_channel_normal_item, null);
            textView = (TextView) inflate2.findViewById(R.id.normal_channel_name);
            TextView textView4 = (TextView) inflate2.findViewById(R.id.normal_channel_number);
            textView4.setTypeface(this.x);
            textView4.setText(v.c(sealSharkChannel2.e()));
            view = inflate2;
        } else {
            View inflate3 = View.inflate(this, R.layout.seal_shark_double_channel_custom_item, null);
            textView = (TextView) inflate3.findViewById(R.id.relay_name);
            TextView textView5 = (TextView) inflate3.findViewById(R.id.relay_receive_number);
            TextView textView6 = (TextView) inflate3.findViewById(R.id.relay_transmit_number);
            textView5.setTypeface(this.x);
            textView6.setTypeface(this.x);
            textView5.setText(v.c(sealSharkChannel2.e()));
            textView6.setText(v.c(sealSharkChannel2.f()));
            view = inflate3;
        }
        textView.setText(sealSharkChannel2.g());
        view.setId(R.id.double_channel_bottom_item_id);
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SharkSettingActivity.this.a(sealSharkChannel2, false);
            }
        });
        this.q.removeAllViews();
        this.q.addView(inflate);
        this.q.addView(view);
    }
}
