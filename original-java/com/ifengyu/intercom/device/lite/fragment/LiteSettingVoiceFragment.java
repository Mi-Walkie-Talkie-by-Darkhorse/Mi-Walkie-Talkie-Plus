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
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;

/* loaded from: classes2.dex */
public class LiteSettingVoiceFragment extends BaseFragment {

    /* renamed from: A */
    private static final String[] f12329A = {"中文", "English", UIUtils.m8603o(R.string.common_off)};
    @BindView(R.id.item_key_beep)
    ItemView mItemKeyBeep;
    @BindView(R.id.item_startup_beep)
    ItemView mItemStartupBeep;
    @BindView(R.id.item_voice)
    ItemView mItemVoice;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* renamed from: z */
    private LiteViewModel f12330z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingVoiceFragment$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C3260a {

        /* renamed from: a */
        static final /* synthetic */ int[] f12331a;

        static {
            int[] iArr = new int[LiteProtos.LANGUAGE_TYPE.values().length];
            f12331a = iArr;
            try {
                iArr[LiteProtos.LANGUAGE_TYPE.CHINESE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12331a[LiteProtos.LANGUAGE_TYPE.ENGLISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12331a[LiteProtos.LANGUAGE_TYPE.CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: g3 */
    private LiteProtos.LANGUAGE_TYPE m13873g3(int i) {
        LiteProtos.LANGUAGE_TYPE language_type = LiteProtos.LANGUAGE_TYPE.CLOSE;
        if (i != 0) {
            return i != 1 ? language_type : LiteProtos.LANGUAGE_TYPE.ENGLISH;
        }
        return LiteProtos.LANGUAGE_TYPE.CHINESE;
    }

    /* renamed from: h3 */
    private void m13872h3() {
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteSettingVoiceFragment.this.m13869k3(view);
            }
        });
        this.mTopBar.m7338p(R.string.lite_voice_setting_title);
        this.mItemStartupBeep.getSwitch().setChecked(true);
        this.mItemKeyBeep.getSwitch().setChecked(true);
    }

    /* renamed from: i3 */
    private void m13871i3() {
        LiteViewModel liteViewModel = (LiteViewModel) ViewModelProviders.m22684b(getActivity()).m22691a(LiteViewModel.class);
        this.f12330z = liteViewModel;
        liteViewModel.m14034q().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.c1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingVoiceFragment.this.m13867m3((LiteDeviceParamLiveData) obj);
            }
        });
        this.f12330z.m14033r().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.f1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingVoiceFragment.this.m13865o3((String) obj);
            }
        });
        this.mItemStartupBeep.getSwitch().setChecked(this.f12330z.m14034q().isBootVoice());
        this.mItemKeyBeep.getSwitch().setChecked(this.f12330z.m14034q().isKeyVoice());
        this.mItemVoice.setValueText(f12329A[m13862r3(this.f12330z.m14034q().getLangType())]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m13869k3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m13867m3(LiteDeviceParamLiveData liteDeviceParamLiveData) {
        this.mItemStartupBeep.getSwitch().setChecked(liteDeviceParamLiveData.isBootVoice());
        this.mItemKeyBeep.getSwitch().setChecked(liteDeviceParamLiveData.isKeyVoice());
        this.mItemVoice.setValueText(f12329A[m13862r3(liteDeviceParamLiveData.getLangType())]);
        m10329C2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m13865o3(String str) {
        if (str != null) {
            m10313W2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m13863q3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        this.f12330z.m14049V(m13873g3(i));
        m10308b3();
    }

    /* renamed from: r3 */
    private int m13862r3(LiteProtos.LANGUAGE_TYPE language_type) {
        if (language_type == null) {
            return 1;
        }
        int i = C3260a.f12331a[language_type.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
        }
        return 0;
    }

    /* renamed from: s3 */
    public static LiteSettingVoiceFragment m13861s3() {
        return new LiteSettingVoiceFragment();
    }

    /* renamed from: t3 */
    private void m13860t3(String[] strArr, int i) {
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext(), true);
        itemListBuilder.m7282x(R.string.lite_voice_lang_dialog_title);
        itemListBuilder.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.device.lite.fragment.d1
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i2, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                LiteSettingVoiceFragment.this.m13863q3(qMUIDialog, view, i2, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder.m12443H(i);
        for (String str : strArr) {
            itemListBuilder.m12445F(str);
        }
        itemListBuilder.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_voice_setting, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13872h3();
        m13871i3();
        return inflate;
    }

    @OnClick({R.id.item_startup_beep, R.id.item_key_beep, R.id.item_voice})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.item_key_beep) {
            this.f12330z.m14050U(!this.mItemKeyBeep.getSwitch().isChecked());
            m10308b3();
        } else if (id == R.id.item_startup_beep) {
            this.f12330z.m14059L(!this.mItemStartupBeep.getSwitch().isChecked());
            m10308b3();
        } else if (id != R.id.item_voice) {
        } else {
            m13860t3(f12329A, m13862r3(this.f12330z.m14034q().getLangType()));
        }
    }
}
