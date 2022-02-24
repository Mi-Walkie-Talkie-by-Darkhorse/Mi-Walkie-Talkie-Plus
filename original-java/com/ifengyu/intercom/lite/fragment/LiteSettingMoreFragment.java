package com.ifengyu.intercom.lite.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.q;
import androidx.lifecycle.x;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.intercom.lite.dialog.list.d;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.DeviceParamLiveData;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;

/* loaded from: classes2.dex */
public class LiteSettingMoreFragment extends e {
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
    private h0 z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteSettingMoreFragment.this.o();
        }
    }

    private void A() {
        this.mTopBar.a().setOnClickListener(new a());
        this.mTopBar.f(R.string.lite_more_setting);
        this.mItemSquelchLevel.setValueText(m.b((int) R.string.normal));
        this.mItemWideNarrowBand.setValueText(m.b((int) R.string.narrow_banc));
        this.mItemKeylessTalk.getSwitch().setChecked(false);
        this.mItemBannedOnBusy.getSwitch().setChecked(true);
    }

    private void B() {
        h0 h0Var = (h0) x.a(getActivity()).a(h0.class);
        this.z = h0Var;
        h0Var.i().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.g1
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteSettingMoreFragment.this.a((DeviceParamLiveData) obj);
            }
        });
        this.z.j().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.i1
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteSettingMoreFragment.this.b((String) obj);
            }
        });
    }

    private void C() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getActivity());
        eVar.c(R.string.sure_open_vox_prompt_title);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.d(R.string.sure_open_vox_prompt_detail);
        eVar2.a(0, R.string.common_cancel, 2, f1.f5511a);
        com.ifengyu.intercom.lite.c.b.e eVar3 = eVar2;
        eVar3.a(0, R.string.action_open, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.e1
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                LiteSettingMoreFragment.this.a(bVar, i);
            }
        });
        eVar3.a(R.style.DialogTheme2).show();
    }

    public static LiteSettingMoreFragment newInstance() {
        return new LiteSettingMoreFragment();
    }

    public /* synthetic */ void b(String str) {
        if (str != null) {
            x();
            y();
        }
    }

    @OnClick({R.id.item_keyless_to_talk, R.id.item_banned_on_busy, R.id.item_squelch_level, R.id.item_wide_narrow_band})
    public void onClick(View view) {
        int i = 1;
        switch (view.getId()) {
            case R.id.item_banned_on_busy /* 2131296742 */:
                this.z.b(true ^ this.mItemBannedOnBusy.getSwitch().isChecked());
                z();
                return;
            case R.id.item_keyless_to_talk /* 2131296751 */:
                if (this.mItemKeylessTalk.getSwitch().isChecked()) {
                    this.z.c(false);
                    z();
                    return;
                }
                C();
                return;
            case R.id.item_squelch_level /* 2131296762 */:
                a(m.c(R.array.squelch_level), this.z.i().getSq());
                return;
            case R.id.item_wide_narrow_band /* 2131296775 */:
                int band = this.z.i().getBand();
                String[] c2 = m.c(R.array.band_width);
                if (band != 0) {
                    i = 0;
                }
                b(c2, i);
                return;
            default:
                return;
        }
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_more_setting, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        A();
        B();
        return inflate;
    }

    public /* synthetic */ void a(DeviceParamLiveData deviceParamLiveData) {
        this.mItemKeylessTalk.getSwitch().setChecked(deviceParamLiveData.isVox());
        this.mItemBannedOnBusy.getSwitch().setChecked(deviceParamLiveData.isPolite());
        this.mItemSquelchLevel.setValueText(m.c(R.array.squelch_level)[deviceParamLiveData.getSq()]);
        int band = deviceParamLiveData.getBand();
        this.mItemWideNarrowBand.setValueText(m.c(R.array.band_width)[band == 0 ? (char) 1 : (char) 0]);
        x();
    }

    private void b(String[] strArr, int i) {
        d dVar = new d(getContext(), true);
        dVar.c(R.string.wide_narrow_band_text);
        d dVar2 = dVar;
        dVar2.c(getString(R.string.lite_item_wide_narrow_title));
        dVar2.d(i);
        dVar2.a(new d.c() { // from class: com.ifengyu.intercom.lite.fragment.j1
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i2, String str) {
                LiteSettingMoreFragment.this.b(bVar, view, i2, str);
            }
        });
        for (String str : strArr) {
            dVar.b(str);
        }
        dVar.a(R.style.DialogTheme2).show();
    }

    private void a(String[] strArr, int i) {
        d dVar = new d(getActivity(), true);
        dVar.c(R.string.noise_level_text);
        d dVar2 = dVar;
        dVar2.c(getString(R.string.noise_level_detail));
        dVar2.d(i);
        dVar2.a(new d.c() { // from class: com.ifengyu.intercom.lite.fragment.h1
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i2, String str) {
                LiteSettingMoreFragment.this.a(bVar, view, i2, str);
            }
        });
        for (String str : strArr) {
            dVar.b(str);
        }
        dVar.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void b(b bVar, View view, int i, String str) {
        this.z.c(i == 0 ? 1 : 0);
        z();
        bVar.dismiss();
    }

    public /* synthetic */ void a(b bVar, View view, int i, String str) {
        this.z.d(i);
        z();
        bVar.dismiss();
    }

    public /* synthetic */ void a(b bVar, int i) {
        bVar.dismiss();
        this.z.c(true);
        z();
    }
}
