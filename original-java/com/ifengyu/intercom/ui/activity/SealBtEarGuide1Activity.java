package com.ifengyu.intercom.ui.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.a;
import com.ifengyu.intercom.a.b.g;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import okhttp3.Call;

public class SealBtEarGuide1Activity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public Runnable a;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_bt_ear_guide1);
        e();
        c();
    }

    public void c() {
        if (w.s() < 851986 && !w.D()) {
            new d(this).b((CharSequence) ad.a((int) R.string.support_use_ji_feng_btear)).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.upgrade_immediately, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    SealBtEarGuide1Activity.this.d();
                }
            }).b().c();
            w.i(true);
        }
    }

    public void d() {
        if (!v.a((Context) this)) {
            v.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!k.a().b()) {
            v.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else {
            a(false, true, getString(R.string.check_ing), (int) R.drawable.load_spinner);
            AnonymousClass2 r0 = new Runnable() {
                public void run() {
                    SealBtEarGuide1Activity.this.b(SealBtEarGuide1Activity.this.getString(R.string.request_time_out));
                    SealBtEarGuide1Activity.this.d(R.drawable.mine_icon_lose);
                    ad.a((Runnable) new Runnable() {
                        public void run() {
                            SealBtEarGuide1Activity.this.k();
                        }
                    }, 1000);
                }
            };
            this.a = r0;
            ad.a((Runnable) r0, 8000);
            f();
        }
    }

    private void f() {
        a.d(new g() {
            public void a(Call call, Exception exc, int i) {
                ThrowableExtension.printStackTrace(exc);
                ad.b(SealBtEarGuide1Activity.this.a);
                SealBtEarGuide1Activity.this.b(SealBtEarGuide1Activity.this.getString(R.string.net_error_please_check));
                SealBtEarGuide1Activity.this.d(R.drawable.mine_icon_lose);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        SealBtEarGuide1Activity.this.k();
                    }
                }, 1000);
            }

            public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
                ad.b(SealBtEarGuide1Activity.this.a);
                SealBtEarGuide1Activity.this.k();
                if (mcuUpdateInfoModel != null) {
                    s.c(SealBtEarGuide1Activity.this.e, "getVersionCode:" + mcuUpdateInfoModel.getVersionCode());
                    int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                    int s = w.s();
                    Intent intent = new Intent(SealBtEarGuide1Activity.this, SealSharkMcuUpdateActivity.class);
                    intent.putExtra("mcu_update_device_type", "seal");
                    if (s > 0 && s < parseInt) {
                        intent.putExtra("mcu_have_update", true);
                        intent.putExtra("mcu_update_info", mcuUpdateInfoModel);
                        intent.setAction("mcu_update_action_from_setting");
                        SealBtEarGuide1Activity.this.startActivity(intent);
                        SealBtEarGuide1Activity.this.finish();
                    }
                }
            }
        });
    }

    public void e() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.conn_btn).setOnClickListener(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.conn_btn /*2131755311*/:
                a(SealBtEarGuide2Activity.class);
                return;
            default:
                return;
        }
    }
}
