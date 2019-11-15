package com.ifengyu.intercom.ui.setting.seal;

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
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.a.b.g;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfo;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_MODE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.ui.activity.AutoSendLocationActivity;
import com.ifengyu.intercom.ui.activity.SealBtEarDisConnActivity;
import com.ifengyu.intercom.ui.activity.SealBtEarGuide1Activity;
import com.ifengyu.intercom.ui.activity.SealSharkMcuUpdateActivity;
import com.ifengyu.intercom.ui.activity.SetSealSharkBleNameActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.service.ShareLocationService;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.ab;
import com.ifengyu.intercom.ui.widget.dialog.c;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import okhttp3.Call;

public class SealSettingActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public int A = -1;
    /* access modifiers changed from: private */
    public Runnable B;
    private SealSharkChannel C;
    private Typeface D;
    /* access modifiers changed from: private */
    public int E = -1;
    private LinearLayout F;
    private LinearLayout G;
    private TextView H;
    private TextView I;
    private View J;
    TextView a;
    TextView b;
    CheckBox c;
    LinearLayout d;
    LinearLayout q;
    TextView r;
    TextView s;
    TextView t;
    TextView u;
    /* access modifiers changed from: private */
    public LinearLayout v;
    /* access modifiers changed from: private */
    public TextView w;
    /* access modifiers changed from: private */
    public c x;
    /* access modifiers changed from: private */
    public ab y;
    private a z;

    private class a implements com.ifengyu.intercom.node.i.a {
        private a() {
        }

        public void b(String str) {
            SealSettingActivity.this.runOnUiThread(new Runnable() {
                public void run() {
                    if (SealSettingActivity.this.x != null && SealSettingActivity.this.x.isShowing()) {
                        SealSettingActivity.this.x.dismiss();
                    }
                    aa.c();
                }
            });
        }

        public void c(String str) {
            SealSettingActivity.this.runOnUiThread(new Runnable() {
                public void run() {
                    SealSettingActivity.this.v.setVisibility(8);
                    SealSettingActivity.this.x = new c(SealSettingActivity.this);
                    SealSettingActivity.this.x.setCanceledOnTouchOutside(false);
                    SealSettingActivity.this.x.show();
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
        setContentView((int) R.layout.activity_seal_setting);
        u();
        this.z = new a();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        s.c("SealSettingActivity", "onStart");
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
        this.A = -1;
        this.c.setChecked(w.t());
        aa.c();
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        s.c("SealSettingActivity", "onNewIntent");
        super.onNewIntent(intent);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "SealSettingActivity");
        k.a().a((com.ifengyu.intercom.node.i.a) this.z);
        this.J.setVisibility(w.C() ? 0 : 8);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        UpdateManager.a().d();
        k.a().b((com.ifengyu.intercom.node.i.a) this.z);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        if (this.x != null) {
            this.x.dismiss();
        }
        if (this.y != null) {
            this.y.dismiss();
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
                f();
                MiStatInterface.recordCountEvent("map_tab_page", "shareLocationBtnClick");
                return;
            case R.id.auto_send_location /*2131755224*/:
                q();
                return;
            case R.id.device_update /*2131755226*/:
                r();
                MiStatInterface.recordCountEvent("device_setting_page", "mcuUpdateBtnClick");
                return;
            case R.id.relieve_binding /*2131755227*/:
                t();
                return;
            case R.id.have_conn_bt_ear_layout /*2131755346*/:
                if (k.a().b()) {
                    Intent intent = new Intent(this, SealBtEarDisConnActivity.class);
                    intent.putExtra("bt_ear_had_conn_to", this.w.getText());
                    startActivity(intent);
                    return;
                }
                v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                return;
            case R.id.button_free_call /*2131755348*/:
                e();
                MiStatInterface.recordCountEvent("device_setting_page", "sealFreeTalkBtnClick");
                return;
            case R.id.help_device_connect_ble_ear /*2131755353*/:
                a(SealBtEarGuide1Activity.class);
                MiStatInterface.recordCountEvent("device_setting_page", "sealBleConnHelperBtnClick");
                return;
            case R.id.more_setting /*2131755354*/:
                a(SealMoreSettingActivity.class);
                return;
            case R.id.single_channel_item_enter_btn /*2131755822*/:
                a(this.C, true);
                return;
            default:
                return;
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(final SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        s.c("SealSettingActivity", "receiveChannelStateOperateResp");
        runOnUiThread(new Runnable() {
            public void run() {
                if (!sEAL_ChannelStateOperate.hasResult()) {
                    SealSettingActivity.this.E = -1;
                } else if (sEAL_ChannelStateOperate.getResult() == SEAL_ST_UERR.SEAL_ST_OK) {
                    SealSettingActivity.this.a(sEAL_ChannelStateOperate);
                } else {
                    SealSettingActivity.this.E = -1;
                }
                aa.e();
            }
        });
    }

    @Subscribe
    public void receiveBtEarConnectStateResp(final SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        s.c("SealSettingActivity", "receiveBtEarConnectStateResp");
        runOnUiThread(new Runnable() {
            public void run() {
                if ((sEAL_BtEarConnectState.getOption() == SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY || sEAL_BtEarConnectState.getOption() == SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT) && sEAL_BtEarConnectState.getResult() == SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                    if (sEAL_BtEarConnectState.hasBtEar()) {
                        SEAL_BtEarInfo btEar = sEAL_BtEarConnectState.getBtEar();
                        try {
                            SealSettingActivity.this.v.setVisibility(0);
                            SealSettingActivity.this.w.setText(ad.a((int) R.string.have_conn_bt_ear_name_s, new String(btEar.getName().toByteArray(), "UTF-8")));
                        } catch (UnsupportedEncodingException e) {
                            ThrowableExtension.printStackTrace(e);
                        }
                    } else {
                        SealSettingActivity.this.v.setVisibility(8);
                    }
                } else if (sEAL_BtEarConnectState.getOption() == SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT) {
                    SealSettingActivity.this.v.setVisibility(8);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode()) {
            this.E = sEAL_ChannelStateOperate.getDeviceMode().getNumber();
            if (this.E != SEAL_MODE.SEAL_MODE_NORMAL.getNumber()) {
                View inflate = View.inflate(this, R.layout.team_or_channel_scan_ing_layout, null);
                TextView textView = (TextView) inflate.findViewById(R.id.the_mode_of_current);
                TextView textView2 = (TextView) inflate.findViewById(R.id.bottom_text_ing_describe);
                this.q.removeAllViews();
                this.q.addView(inflate);
                switch (this.E) {
                }
            } else if (sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
                SEAL_ChannelInfo ch1 = sEAL_ChannelStateOperate.getCh1();
                if (ch1.hasChNo() && ch1.hasChName() && ch1.hasChType() && ch1.hasChRxFreq()) {
                    this.C = aa.a(ch1);
                    if (this.C != null) {
                        a(this.C);
                        if (this.C.o()) {
                            this.t.setText(v.c(this.C.e()));
                            this.s.setText(this.C.g());
                            if (this.C.j() % 256 == 0 && this.C.k() % 256 == 0) {
                                this.F.setVisibility(4);
                                return;
                            }
                            this.H.setText(ad.a((int) R.string.receive_css_code_s, v.d(this.C.j())));
                            this.I.setText(ad.a((int) R.string.translate_css_code_s, v.d(this.C.k())));
                            return;
                        }
                        this.t.setText(v.c(this.C.e()));
                        this.u.setText(v.c(this.C.f()));
                        String format = String.format(Locale.getDefault(), "C%02d", new Object[]{Integer.valueOf(this.C.b() + 1)});
                        if (this.C.g().trim().length() == 0) {
                            this.s.setText(format);
                        } else {
                            this.s.setText(format + Token.SEPARATOR + this.C.g().trim());
                        }
                        if (this.C.j() % 256 == 0 && this.C.k() % 256 == 0) {
                            this.G.setVisibility(4);
                            return;
                        }
                        this.H.setText(ad.a((int) R.string.receive_css_code_s, v.d(this.C.j())));
                        this.I.setText(ad.a((int) R.string.translate_css_code_s, v.d(this.C.k())));
                    }
                }
            }
        } else {
            this.E = -1;
        }
    }

    @Subscribe
    public void receiveParamResponse(final SEAL_DeviceParam sEAL_DeviceParam) {
        s.c("SealSettingActivity", "receiveParamResponse");
        if (this.m) {
            this.m = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    ad.b(SealSettingActivity.this.p);
                    if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                        SealSettingActivity.this.d(R.drawable.mine_icon_win);
                        SealSettingActivity.this.e(R.string.activation_successful);
                        ad.a((Runnable) new Runnable() {
                            public void run() {
                                SealSettingActivity.this.k();
                                if (SealSettingActivity.this.n != null) {
                                    SealSettingActivity.this.n.a();
                                }
                            }
                        }, 800);
                        MiTalkiApp.a().a = true;
                        w.p(true);
                        return;
                    }
                    SealSettingActivity.this.p.run();
                }
            });
            return;
        }
        ad.a((Runnable) new Runnable() {
            public void run() {
                if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                    switch (SealSettingActivity.this.A) {
                        case -1:
                            if (sEAL_DeviceParam.getCh().hasChVox()) {
                                SealSettingActivity.this.v();
                                return;
                            }
                            return;
                        case 0:
                            SealSettingActivity.this.k();
                            SealSettingActivity.this.A = -1;
                            SealSettingActivity.this.v();
                            return;
                        case 1:
                            SealSettingActivity.this.k();
                            SealSettingActivity.this.A = -1;
                            SealSettingActivity.this.c.setChecked(!SealSettingActivity.this.c.isChecked());
                            return;
                        default:
                            return;
                    }
                } else {
                    SealSettingActivity.this.A = -1;
                    SealSettingActivity.this.d(R.drawable.mine_icon_lose);
                    SealSettingActivity.this.e(R.string.not_support_switch);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            SealSettingActivity.this.k();
                        }
                    }, 500);
                }
            }
        });
    }

    private void a(SealSharkChannel sealSharkChannel, boolean z2) {
        if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (sealSharkChannel != null) {
            if (this.E > 0) {
                switch (this.E) {
                    case 1:
                    case 2:
                        v.a((CharSequence) getString(R.string.sos_mode_can_not_setting), false);
                        return;
                    case 3:
                    case 4:
                        v.a((CharSequence) getString(R.string.scan_mode_can_not_setting), false);
                        return;
                    case 5:
                    case 6:
                        v.a((CharSequence) getString(R.string.team_mode_can_not_setting), false);
                        return;
                }
            } else if (sealSharkChannel.g() != null && sealSharkChannel.e() > 0 && sealSharkChannel.f() > 0) {
                SealChannelSettingActivity.a(this, sealSharkChannel, true);
            } else {
                return;
            }
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
                    SealSettingActivity.this.k();
                }
            }, 500);
        } else {
            a((com.ifengyu.intercom.ui.baseui.BaseActivity.a) new com.ifengyu.intercom.ui.baseui.BaseActivity.a() {
                public void a() {
                    SealSettingActivity.this.d.setVisibility(8);
                    String q = w.q();
                    String K = w.K();
                    if (!TextUtils.isEmpty(q) && !TextUtils.isEmpty(K)) {
                        com.ifengyu.intercom.a.a.a(K, q, (b) null);
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
        if (k.a().b()) {
            String[] strArr = {getString(R.string.common_off), getString(R.string.free_call_level_low), getString(R.string.free_call_level_middle), getString(R.string.free_call_level_high), getString(R.string.common_cancel)};
            q qVar = new q(this);
            qVar.a(true);
            qVar.b((int) R.string.button_free_call_text).a(strArr, new q.b() {
                public void a(DialogInterface dialogInterface, int i) {
                    if (i <= 3) {
                        SealSettingActivity.this.a(false, true, SealSettingActivity.this.getString(R.string.please_wait), (int) R.drawable.load_spinner);
                        if (SealSettingActivity.this.B != null) {
                            MiTalkiApp.n().removeCallbacks(SealSettingActivity.this.B);
                        }
                        SealSettingActivity.this.B = new Runnable() {
                            public void run() {
                                SealSettingActivity.this.A = -1;
                                SealSettingActivity.this.k();
                            }
                        };
                        MiTalkiApp.n().postDelayed(SealSettingActivity.this.B, 5000);
                        SealSettingActivity.this.A = 0;
                        aa.a(i);
                    }
                }
            }).show();
            return;
        }
        v.a((CharSequence) getString(R.string.current_device_not_connected), false);
    }

    private void f() {
        boolean z2 = true;
        if (k.a().b()) {
            a(false, true, getString(R.string.please_wait), (int) R.drawable.load_spinner);
            if (this.B != null) {
                MiTalkiApp.n().removeCallbacks(this.B);
            }
            this.B = new Runnable() {
                public void run() {
                    SealSettingActivity.this.A = -1;
                    SealSettingActivity.this.k();
                }
            };
            MiTalkiApp.n().postDelayed(this.B, 5000);
            this.A = 1;
            if (this.c.isChecked()) {
                z2 = false;
            }
            aa.a(z2);
        } else if (this.c.isChecked()) {
            this.c.setChecked(false);
            stopService(new Intent(this, ShareLocationService.class));
        } else {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        }
    }

    private void q() {
        if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else if (this.c.isChecked()) {
            startActivityForResult(new Intent(this, AutoSendLocationActivity.class), 7);
        } else {
            v.a((CharSequence) getString(R.string.setting_please_open_share_loc_btn), false);
        }
    }

    private void r() {
        if (!v.a((Context) this)) {
            v.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else {
            a(false, true, getString(R.string.check_ing), (int) R.drawable.load_spinner);
            AnonymousClass11 r0 = new Runnable() {
                public void run() {
                    SealSettingActivity.this.b(SealSettingActivity.this.getString(R.string.request_time_out));
                    SealSettingActivity.this.d(R.drawable.mine_icon_lose);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            SealSettingActivity.this.k();
                        }
                    }, 1000);
                }
            };
            this.B = r0;
            ad.a((Runnable) r0, 8000);
            s();
        }
    }

    private void s() {
        com.ifengyu.intercom.a.a.d(new g() {
            public void a(Call call, Exception exc, int i) {
                ThrowableExtension.printStackTrace(exc);
                ad.b(SealSettingActivity.this.B);
                SealSettingActivity.this.b(SealSettingActivity.this.getString(R.string.net_error_please_check));
                SealSettingActivity.this.d(R.drawable.mine_icon_lose);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        SealSettingActivity.this.k();
                    }
                }, 1000);
            }

            public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
                ad.b(SealSettingActivity.this.B);
                SealSettingActivity.this.k();
                if (mcuUpdateInfoModel != null) {
                    s.c("SealSettingActivity", "updateInfoModel:" + mcuUpdateInfoModel.toString());
                    s.c("SealSettingActivity", "getVersionCode:" + mcuUpdateInfoModel.getVersionCode());
                    int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                    int s = w.s();
                    Intent intent = new Intent(SealSettingActivity.this, SealSharkMcuUpdateActivity.class);
                    intent.putExtra("mcu_update_device_type", "seal");
                    if (s <= 0 || s >= parseInt) {
                        intent.putExtra("mcu_have_update", false);
                    } else {
                        intent.putExtra("mcu_have_update", true);
                    }
                    intent.putExtra("mcu_update_info", mcuUpdateInfoModel);
                    intent.setAction("mcu_update_action_from_setting");
                    SealSettingActivity.this.startActivity(intent);
                }
            }
        });
    }

    private void t() {
        this.y = new ab(this, true);
        this.y.a((com.ifengyu.intercom.ui.widget.dialog.ab.a) new com.ifengyu.intercom.ui.widget.dialog.ab.a() {
            public void a() {
                SealSettingActivity.this.a(false, false, SealSettingActivity.this.getString(R.string.unbind_ing), (int) R.drawable.load_spinner);
                String p = SealSettingActivity.this.p();
                if (!TextUtils.isEmpty(p)) {
                    com.ifengyu.intercom.node.a.d b = com.ifengyu.intercom.service.a.b();
                    if (b != null) {
                        b.a(p);
                    }
                    com.ifengyu.intercom.node.a.d.a().d.b(p);
                }
                w.g();
                SealSettingActivity.this.y.dismiss();
                if (SealSettingActivity.this.B != null) {
                    MiTalkiApp.n().removeCallbacks(SealSettingActivity.this.B);
                    SealSettingActivity.this.B = null;
                }
                SealSettingActivity.this.B = new Runnable() {
                    public void run() {
                        SealSettingActivity.this.b(SealSettingActivity.this.getString(R.string.unbind_success));
                        SealSettingActivity.this.d(R.drawable.mine_icon_win);
                        if (SealSettingActivity.this.B != null) {
                            MiTalkiApp.n().removeCallbacks(SealSettingActivity.this.B);
                            SealSettingActivity.this.B = null;
                        }
                        SealSettingActivity.this.B = new Runnable() {
                            public void run() {
                                SealSettingActivity.this.k();
                                SealSettingActivity.this.finish();
                            }
                        };
                        MiTalkiApp.n().postDelayed(SealSettingActivity.this.B, 1000);
                    }
                };
                MiTalkiApp.n().postDelayed(SealSettingActivity.this.B, 500);
            }
        });
        this.y.show();
    }

    private void u() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.device_setting);
        this.v = (LinearLayout) findViewById(R.id.have_conn_bt_ear_layout);
        this.v.setVisibility(8);
        this.w = (TextView) findViewById(R.id.have_conn_bt_ear_tv);
        this.q = (LinearLayout) findViewById(R.id.top_channel_container);
        this.d = (LinearLayout) findViewById(R.id.ll_device_activate_item);
        this.a = (TextView) findViewById(R.id.current_device_name);
        this.b = (TextView) findViewById(R.id.auto_send_location_time);
        this.r = (TextView) findViewById(R.id.free_call_level);
        this.c = (CheckBox) findViewById(R.id.public_my_location_switch_btn);
        this.D = l.c;
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
        this.J = findViewById(R.id.have_mcu_update_red_point);
        if (!k.a().b()) {
            this.x = new c(this);
            this.x.setCanceledOnTouchOutside(false);
            this.x.show();
        }
        this.d.setVisibility(w.ag() ? 8 : 0);
        this.a.setText(w.ae());
        v();
        this.c.setClickable(false);
        this.c.setChecked(w.t());
        this.b.setText(ad.a((int) R.string.minute, Long.valueOf(w.k(p()) / 60000)));
    }

    /* access modifiers changed from: private */
    public void v() {
        switch (w.y()) {
            case 0:
                this.r.setText(getString(R.string.common_off));
                return;
            case 1:
                if (v.a()) {
                    this.r.setText("Low");
                    return;
                } else {
                    this.r.setText(getString(R.string.free_call_level_low));
                    return;
                }
            case 2:
                if (v.a()) {
                    this.r.setText("Medium");
                    return;
                } else {
                    this.r.setText(getString(R.string.free_call_level_middle));
                    return;
                }
            case 3:
                if (v.a()) {
                    this.r.setText("High");
                    return;
                } else {
                    this.r.setText(getString(R.string.free_call_level_high));
                    return;
                }
            default:
                return;
        }
    }

    private void a(SealSharkChannel sealSharkChannel) {
        View view;
        this.s = null;
        this.t = null;
        this.u = null;
        if (sealSharkChannel.o()) {
            View inflate = View.inflate(this, R.layout.seal_shark_single_channel_normal_layout, null);
            this.s = (TextView) inflate.findViewById(R.id.normal_channel_name);
            this.t = (TextView) inflate.findViewById(R.id.normal_channel_number);
            this.F = (LinearLayout) inflate.findViewById(R.id.normal_css_channel_layout);
            this.H = (TextView) inflate.findViewById(R.id.normal_rx_css_value);
            this.I = (TextView) inflate.findViewById(R.id.normal_tx_css_value);
            this.t.setTypeface(this.D);
            view = inflate;
        } else {
            View inflate2 = View.inflate(this, R.layout.seal_shark_single_channel_custom_layout, null);
            this.s = (TextView) inflate2.findViewById(R.id.relay_channel_name);
            this.t = (TextView) inflate2.findViewById(R.id.relay_channel_receive_number);
            this.u = (TextView) inflate2.findViewById(R.id.relay_channel_transmit_number);
            this.G = (LinearLayout) inflate2.findViewById(R.id.custom_css_layout);
            this.H = (TextView) inflate2.findViewById(R.id.relay_rx_css_value);
            this.I = (TextView) inflate2.findViewById(R.id.relay_tx_css_value);
            this.t.setTypeface(this.D);
            this.u.setTypeface(this.D);
            view = inflate2;
        }
        view.findViewById(R.id.single_channel_item_enter_btn).setOnClickListener(this);
        this.q.removeAllViews();
        this.q.addView(view);
    }
}
