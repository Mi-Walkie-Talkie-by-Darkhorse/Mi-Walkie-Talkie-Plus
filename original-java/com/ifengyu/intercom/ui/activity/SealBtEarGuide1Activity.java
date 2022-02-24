package com.ifengyu.intercom.ui.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.g.d.i;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.f;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class SealBtEarGuide1Activity extends BaseActivity implements View.OnClickListener {
    private Runnable q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SealBtEarGuide1Activity.this.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealBtEarGuide1Activity.this.j();
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealBtEarGuide1Activity sealBtEarGuide1Activity = SealBtEarGuide1Activity.this;
            sealBtEarGuide1Activity.b(sealBtEarGuide1Activity.getString(R.string.request_time_out));
            SealBtEarGuide1Activity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends i {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealBtEarGuide1Activity.this.j();
            }
        }

        c() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            exc.printStackTrace();
            k0.b(SealBtEarGuide1Activity.this.q);
            SealBtEarGuide1Activity sealBtEarGuide1Activity = SealBtEarGuide1Activity.this;
            sealBtEarGuide1Activity.b(sealBtEarGuide1Activity.getString(R.string.net_error_please_check));
            SealBtEarGuide1Activity.this.b(R.drawable.mine_icon_lose);
            k0.a(new a(), 1000L);
        }

        public void a(McuUpdateInfoModel mcuUpdateInfoModel, int i) {
            k0.b(SealBtEarGuide1Activity.this.q);
            SealBtEarGuide1Activity.this.j();
            if (mcuUpdateInfoModel != null) {
                String str = ((BaseActivity) SealBtEarGuide1Activity.this).f6370a;
                z.c(str, "getVersionCode:" + mcuUpdateInfoModel.getVersionCode());
                int parseInt = Integer.parseInt(mcuUpdateInfoModel.getVersionCode());
                int D = d0.D();
                Intent intent = new Intent(SealBtEarGuide1Activity.this, SealSharkMcuUpdateActivity.class);
                intent.putExtra("mcu_update_device_type", "seal");
                if (D > 0 && D < parseInt) {
                    intent.putExtra("mcu_have_update", true);
                    intent.putExtra("mcu_update_info", mcuUpdateInfoModel);
                    intent.setAction("mcu_update_action_from_setting");
                    SealBtEarGuide1Activity.this.startActivity(intent);
                    SealBtEarGuide1Activity.this.finish();
                }
            }
        }
    }

    private void z() {
        com.ifengyu.intercom.g.a.c(new c());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.conn_btn) {
            a(SealBtEarGuide2Activity.class);
        } else if (id == R.id.title_bar_left) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_bt_ear_guide1);
        x();
        w();
    }

    public void w() {
        if (d0.D() < 851986 && !d0.T()) {
            f fVar = new f(this);
            fVar.a(k0.c(R.string.support_use_ji_feng_btear));
            fVar.a(R.string.common_cancel, (DialogInterface.OnClickListener) null);
            fVar.c(R.string.upgrade_immediately, new a());
            fVar.a();
            fVar.d();
            d0.g(true);
        }
    }

    public void x() {
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.conn_btn).setOnClickListener(this);
    }

    public void y() {
        if (!c0.b(this)) {
            c0.a((CharSequence) getString(R.string.net_error_please_check), false);
        } else if (!j.b().a()) {
            c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
        } else {
            a(false, true, getString(R.string.check_ing), R.drawable.load_spinner);
            b bVar = new b();
            this.q = bVar;
            k0.a(bVar, 8000L);
            z();
        }
    }
}
