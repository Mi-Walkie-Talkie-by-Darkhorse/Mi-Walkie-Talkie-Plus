package com.ifengyu.intercom.lite.old;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.q;
import androidx.lifecycle.x;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseActivity;
import com.ifengyu.intercom.lite.dialog.list.d;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.DeviceParamLiveData;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.b;

/* loaded from: classes2.dex */
public class LiteMoreSettingActivity extends BaseActivity {
    @BindView(R.id.item_banned_on_busy)
    ItemView mItemBannedOnBusy;
    @BindView(R.id.item_keyless_to_talk)
    ItemView mItemKeylessTalk;
    @BindView(R.id.item_squelch_level)
    ItemView mItemSquelchLevel;
    @BindView(R.id.item_wide_narrow_band)
    ItemView mItemWideNarrowBand;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    private h0 o;
    String[] m = {m.b((int) R.string.normal), m.b((int) R.string.sensitive)};
    String[] n = {m.b((int) R.string.wide_band), m.b((int) R.string.narrow_banc)};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteMoreSettingActivity.this.onBackPressed();
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, LiteMoreSettingActivity.class));
    }

    private void x() {
        this.mTopBar.a().setOnClickListener(new a());
        this.mTopBar.f(R.string.lite_more_setting);
        this.mItemSquelchLevel.setValueText(m.b((int) R.string.normal));
        this.mItemWideNarrowBand.setValueText(m.b((int) R.string.narrow_banc));
        this.mItemKeylessTalk.getSwitch().setChecked(false);
        this.mItemBannedOnBusy.getSwitch().setChecked(true);
    }

    private void y() {
        h0 h0Var = (h0) x.a(this).a(h0.class);
        this.o = h0Var;
        h0Var.i().observe(this, new q() { // from class: com.ifengyu.intercom.lite.old.p
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteMoreSettingActivity.this.a((DeviceParamLiveData) obj);
            }
        });
        this.o.j().observe(this, new q() { // from class: com.ifengyu.intercom.lite.old.n
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteMoreSettingActivity.this.b((String) obj);
            }
        });
        this.o.k().observe(this, l.f5775a);
        this.o.n();
    }

    public /* synthetic */ void a(DeviceParamLiveData deviceParamLiveData) {
        this.mItemKeylessTalk.getSwitch().setChecked(deviceParamLiveData.isVox());
        this.mItemBannedOnBusy.getSwitch().setChecked(deviceParamLiveData.isPolite());
        this.mItemSquelchLevel.setValueText(this.m[deviceParamLiveData.getSq()]);
        this.mItemWideNarrowBand.setValueText(this.n[deviceParamLiveData.getBand() == 0 ? (char) 1 : (char) 0]);
        v();
    }

    public /* synthetic */ void b(String str) {
        if (str != null) {
            v();
            m.a(str);
        }
    }

    @OnClick({R.id.item_keyless_to_talk, R.id.item_banned_on_busy, R.id.item_squelch_level, R.id.item_wide_narrow_band})
    public void onClick(View view) {
        int i = 1;
        switch (view.getId()) {
            case R.id.item_banned_on_busy /* 2131296742 */:
                this.o.b(true ^ this.mItemBannedOnBusy.getSwitch().isChecked());
                w();
                return;
            case R.id.item_keyless_to_talk /* 2131296751 */:
                this.o.c(true ^ this.mItemKeylessTalk.getSwitch().isChecked());
                w();
                return;
            case R.id.item_squelch_level /* 2131296762 */:
                a(this.m, this.o.i().getSq());
                return;
            case R.id.item_wide_narrow_band /* 2131296775 */:
                int band = this.o.i().getBand();
                String[] strArr = this.n;
                if (band != 0) {
                    i = 0;
                }
                b(strArr, i);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.BaseActivity, com.qmuiteam.qmui.arch.QMUIActivity, com.qmuiteam.qmui.arch.a, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_lite_more_setting);
        ButterKnife.bind(this);
        x();
        y();
    }

    private void b(String[] strArr, int i) {
        d dVar = new d(this, true);
        dVar.c(R.string.wide_narrow_band_text);
        d dVar2 = dVar;
        dVar2.d(i);
        dVar2.a(new d.c() { // from class: com.ifengyu.intercom.lite.old.o
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i2, String str) {
                LiteMoreSettingActivity.this.b(bVar, view, i2, str);
            }
        });
        for (String str : strArr) {
            dVar.b(str);
        }
        dVar.a(R.style.DialogTheme2).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(Boolean bool) {
        if (!bool.booleanValue()) {
            m.d(R.string.main_ble_have_unconnect);
        }
    }

    private void a(String[] strArr, int i) {
        d dVar = new d(this, true);
        dVar.c(R.string.noise_level_text);
        d dVar2 = dVar;
        dVar2.d(i);
        dVar2.a(new d.c() { // from class: com.ifengyu.intercom.lite.old.m
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i2, String str) {
                LiteMoreSettingActivity.this.a(bVar, view, i2, str);
            }
        });
        for (String str : strArr) {
            dVar.b(str);
        }
        dVar.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void b(b bVar, View view, int i, String str) {
        this.o.c(i == 0 ? 1 : 0);
        w();
        bVar.dismiss();
    }

    public /* synthetic */ void a(b bVar, View view, int i, String str) {
        this.o.d(i);
        w();
        bVar.dismiss();
    }
}
