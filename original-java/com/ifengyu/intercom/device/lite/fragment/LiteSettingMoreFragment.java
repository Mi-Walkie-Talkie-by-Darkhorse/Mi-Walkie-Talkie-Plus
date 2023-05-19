package com.ifengyu.intercom.device.lite.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.models.LiteDeviceParamLiveData;
import com.ifengyu.intercom.device.lite.p161e.LiteViewModel;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;

/* loaded from: classes2.dex */
public class LiteSettingMoreFragment extends BaseFragment {
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

    /* renamed from: z */
    private LiteViewModel f12318z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingMoreFragment$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3255a implements View.OnClickListener {
        View$OnClickListenerC3255a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteSettingMoreFragment.this.mo8057d2();
        }
    }

    /* renamed from: h3 */
    private void m13890h3() {
        this.mTopBar.m7344h().setOnClickListener(new View$OnClickListenerC3255a());
        this.mTopBar.m7338p(R.string.lite_more_setting);
        this.mItemSquelchLevel.setValueText(UIUtils.m8603o(R.string.normal));
        this.mItemWideNarrowBand.setValueText(UIUtils.m8603o(R.string.narrow_banc));
        this.mItemKeylessTalk.getSwitch().setChecked(false);
        this.mItemBannedOnBusy.getSwitch().setChecked(true);
    }

    /* renamed from: i3 */
    private void m13889i3() {
        LiteViewModel liteViewModel = (LiteViewModel) ViewModelProviders.m22684b(getActivity()).m22691a(LiteViewModel.class);
        this.f12318z = liteViewModel;
        liteViewModel.m14034q().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.x0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingMoreFragment.this.m13887k3((LiteDeviceParamLiveData) obj);
            }
        });
        this.f12318z.m14033r().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.w0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingMoreFragment.this.m13885m3((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m13887k3(LiteDeviceParamLiveData liteDeviceParamLiveData) {
        this.mItemKeylessTalk.getSwitch().setChecked(liteDeviceParamLiveData.isVox());
        this.mItemBannedOnBusy.getSwitch().setChecked(liteDeviceParamLiveData.isPolite());
        this.mItemSquelchLevel.setValueText(UIUtils.m8601q(R.array.squelch_level)[liteDeviceParamLiveData.getSq()]);
        int band = liteDeviceParamLiveData.getBand();
        this.mItemWideNarrowBand.setValueText(UIUtils.m8601q(R.array.band_width)[band == 0 ? (char) 1 : (char) 0]);
        m10329C2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m13885m3(String str) {
        if (str != null) {
            m10313W2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m13882p3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        this.f12318z.m14051T(true);
        m10308b3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m13880r3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        this.f12318z.m14052S(i);
        m10308b3();
        qMUIDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m13878t3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        this.f12318z.m14057N(i == 0 ? 1 : 0);
        m10308b3();
        qMUIDialog.dismiss();
    }

    /* renamed from: u3 */
    public static LiteSettingMoreFragment m13877u3() {
        return new LiteSettingMoreFragment();
    }

    /* renamed from: v3 */
    private void m13876v3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7282x(R.string.sure_open_vox_prompt_title);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7248E(R.string.sure_open_vox_prompt_detail);
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3323y0.f12408a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.action_open, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.b1
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                LiteSettingMoreFragment.this.m13882p3(qMUIDialog, i);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: w3 */
    private void m13875w3(String[] strArr, int i) {
        ItemListBuilder itemListBuilder = new ItemListBuilder(getActivity(), true);
        itemListBuilder.m7282x(R.string.noise_level_text);
        ItemListBuilder itemListBuilder2 = itemListBuilder;
        itemListBuilder2.m12439L(getString(R.string.noise_level_detail));
        itemListBuilder2.m12443H(i);
        itemListBuilder2.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.device.lite.fragment.z0
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i2, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                LiteSettingMoreFragment.this.m13880r3(qMUIDialog, view, i2, str, bottomSheetListAdapter);
            }
        });
        for (String str : strArr) {
            itemListBuilder.m12445F(str);
        }
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: x3 */
    private void m13874x3(String[] strArr, int i) {
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext(), true);
        itemListBuilder.m7282x(R.string.wide_narrow_band_text);
        ItemListBuilder itemListBuilder2 = itemListBuilder;
        itemListBuilder2.m12439L(getString(R.string.lite_item_wide_narrow_title));
        itemListBuilder2.m12443H(i);
        itemListBuilder2.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.device.lite.fragment.a1
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i2, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                LiteSettingMoreFragment.this.m13878t3(qMUIDialog, view, i2, str, bottomSheetListAdapter);
            }
        });
        for (String str : strArr) {
            itemListBuilder.m12445F(str);
        }
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_more_setting, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13890h3();
        m13889i3();
        return inflate;
    }

    @OnClick({R.id.item_keyless_to_talk, R.id.item_banned_on_busy, R.id.item_squelch_level, R.id.item_wide_narrow_band})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.item_banned_on_busy /* 2131296831 */:
                this.f12318z.m14054Q(true ^ this.mItemBannedOnBusy.getSwitch().isChecked());
                m10308b3();
                return;
            case R.id.item_keyless_to_talk /* 2131296843 */:
                if (this.mItemKeylessTalk.getSwitch().isChecked()) {
                    this.f12318z.m14051T(false);
                    m10308b3();
                    return;
                }
                m13876v3();
                return;
            case R.id.item_squelch_level /* 2131296857 */:
                m13875w3(UIUtils.m8601q(R.array.squelch_level), this.f12318z.m14034q().getSq());
                return;
            case R.id.item_wide_narrow_band /* 2131296867 */:
                m13874x3(UIUtils.m8601q(R.array.band_width), this.f12318z.m14034q().getBand() != 0 ? 0 : 1);
                return;
            default:
                return;
        }
    }
}
