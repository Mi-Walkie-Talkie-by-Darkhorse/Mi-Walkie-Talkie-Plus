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
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.b;

/* loaded from: classes2.dex */
public class LiteSettingVoiceFragment extends e {
    private static final String[] A = {"中文", "English", m.b((int) R.string.common_off)};
    @BindView(R.id.item_key_beep)
    ItemView mItemKeyBeep;
    @BindView(R.id.item_startup_beep)
    ItemView mItemStartupBeep;
    @BindView(R.id.item_voice)
    ItemView mItemVoice;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    private h0 z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5485a;

        static {
            int[] iArr = new int[LiteProtos.LANGUAGE_TYPE.values().length];
            f5485a = iArr;
            try {
                iArr[LiteProtos.LANGUAGE_TYPE.CHINESE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5485a[LiteProtos.LANGUAGE_TYPE.ENGLISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5485a[LiteProtos.LANGUAGE_TYPE.CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void A() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.m1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteSettingVoiceFragment.this.b(view);
            }
        });
        this.mTopBar.f(R.string.lite_voice_setting_title);
        this.mItemStartupBeep.getSwitch().setChecked(true);
        this.mItemKeyBeep.getSwitch().setChecked(true);
    }

    private void B() {
        h0 h0Var = (h0) x.a(getActivity()).a(h0.class);
        this.z = h0Var;
        h0Var.i().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.n1
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteSettingVoiceFragment.this.a((DeviceParamLiveData) obj);
            }
        });
        this.z.j().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.l1
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteSettingVoiceFragment.this.b((String) obj);
            }
        });
        this.mItemStartupBeep.getSwitch().setChecked(this.z.i().isBootVoice());
        this.mItemKeyBeep.getSwitch().setChecked(this.z.i().isKeyVoice());
        this.mItemVoice.setValueText(A[a(this.z.i().getLangType())]);
    }

    private LiteProtos.LANGUAGE_TYPE c(int i) {
        LiteProtos.LANGUAGE_TYPE language_type = LiteProtos.LANGUAGE_TYPE.CLOSE;
        if (i != 0) {
            return i != 1 ? language_type : LiteProtos.LANGUAGE_TYPE.ENGLISH;
        }
        return LiteProtos.LANGUAGE_TYPE.CHINESE;
    }

    public static LiteSettingVoiceFragment newInstance() {
        return new LiteSettingVoiceFragment();
    }

    public /* synthetic */ void a(DeviceParamLiveData deviceParamLiveData) {
        this.mItemStartupBeep.getSwitch().setChecked(deviceParamLiveData.isBootVoice());
        this.mItemKeyBeep.getSwitch().setChecked(deviceParamLiveData.isKeyVoice());
        this.mItemVoice.setValueText(A[a(deviceParamLiveData.getLangType())]);
        x();
    }

    public /* synthetic */ void b(View view) {
        o();
    }

    @OnClick({R.id.item_startup_beep, R.id.item_key_beep, R.id.item_voice})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.item_key_beep) {
            this.z.d(!this.mItemKeyBeep.getSwitch().isChecked());
            z();
        } else if (id == R.id.item_startup_beep) {
            this.z.a(!this.mItemStartupBeep.getSwitch().isChecked());
            z();
        } else if (id == R.id.item_voice) {
            a(A, a(this.z.i().getLangType()));
        }
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_voice_setting, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        A();
        B();
        return inflate;
    }

    public /* synthetic */ void b(String str) {
        if (str != null) {
            x();
            y();
        }
    }

    private int a(LiteProtos.LANGUAGE_TYPE language_type) {
        if (language_type == null) {
            return 1;
        }
        int i = a.f5485a[language_type.ordinal()];
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

    private void a(String[] strArr, int i) {
        d dVar = new d(getContext(), true);
        dVar.c(R.string.lite_voice_lang_dialog_title);
        dVar.a(new d.c() { // from class: com.ifengyu.intercom.lite.fragment.k1
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i2, String str) {
                LiteSettingVoiceFragment.this.a(bVar, view, i2, str);
            }
        });
        dVar.d(i);
        for (String str : strArr) {
            dVar.b(str);
        }
        dVar.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(b bVar, View view, int i, String str) {
        bVar.dismiss();
        this.z.a(c(i));
        z();
    }
}
