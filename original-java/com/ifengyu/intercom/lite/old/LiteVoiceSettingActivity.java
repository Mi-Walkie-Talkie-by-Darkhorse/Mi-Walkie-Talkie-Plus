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
import com.ifengyu.intercom.protos.LiteProtos;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.b;

/* loaded from: classes2.dex */
public class LiteVoiceSettingActivity extends BaseActivity {
    private static final String[] n = {"中文", "English", m.b((int) R.string.common_off)};
    private h0 m;
    @BindView(R.id.item_key_beep)
    ItemView mItemKeyBeep;
    @BindView(R.id.item_startup_beep)
    ItemView mItemStartupBeep;
    @BindView(R.id.item_voice)
    ItemView mItemVoice;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5752a;

        static {
            int[] iArr = new int[LiteProtos.LANGUAGE_TYPE.values().length];
            f5752a = iArr;
            try {
                iArr[LiteProtos.LANGUAGE_TYPE.CHINESE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5752a[LiteProtos.LANGUAGE_TYPE.ENGLISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5752a[LiteProtos.LANGUAGE_TYPE.CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, LiteVoiceSettingActivity.class));
    }

    private void x() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.old.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteVoiceSettingActivity.this.a(view);
            }
        });
        this.mTopBar.f(R.string.lite_voice_setting_title);
        this.mItemStartupBeep.getSwitch().setChecked(true);
        this.mItemKeyBeep.getSwitch().setChecked(true);
    }

    private void y() {
        h0 h0Var = (h0) x.a(this).a(h0.class);
        this.m = h0Var;
        h0Var.i().observe(this, new q() { // from class: com.ifengyu.intercom.lite.old.u
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteVoiceSettingActivity.this.a((DeviceParamLiveData) obj);
            }
        });
        this.m.j().observe(this, new q() { // from class: com.ifengyu.intercom.lite.old.v
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteVoiceSettingActivity.this.b((String) obj);
            }
        });
        this.m.k().observe(this, s.f5782a);
        this.m.n();
    }

    public /* synthetic */ void a(View view) {
        onBackPressed();
    }

    public /* synthetic */ void b(String str) {
        if (str != null) {
            v();
            m.a(str);
        }
    }

    @OnClick({R.id.item_startup_beep, R.id.item_key_beep, R.id.item_voice})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.item_key_beep) {
            this.m.d(!this.mItemKeyBeep.getSwitch().isChecked());
            w();
        } else if (id == R.id.item_startup_beep) {
            this.m.a(!this.mItemStartupBeep.getSwitch().isChecked());
            w();
        } else if (id == R.id.item_voice) {
            a(n, a(this.m.i().getLangType()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.BaseActivity, com.qmuiteam.qmui.arch.QMUIActivity, com.qmuiteam.qmui.arch.a, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_voice_setting);
        ButterKnife.bind(this);
        x();
        y();
    }

    public /* synthetic */ void a(DeviceParamLiveData deviceParamLiveData) {
        this.mItemStartupBeep.getSwitch().setChecked(deviceParamLiveData.isBootVoice());
        this.mItemKeyBeep.getSwitch().setChecked(deviceParamLiveData.isKeyVoice());
        this.mItemVoice.setValueText(n[a(deviceParamLiveData.getLangType())]);
        v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(Boolean bool) {
        if (!bool.booleanValue()) {
            m.d(R.string.main_ble_have_unconnect);
        }
    }

    private int a(LiteProtos.LANGUAGE_TYPE language_type) {
        if (language_type == null) {
            return 1;
        }
        int i = a.f5752a[language_type.ordinal()];
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

    private LiteProtos.LANGUAGE_TYPE a(int i) {
        LiteProtos.LANGUAGE_TYPE language_type = LiteProtos.LANGUAGE_TYPE.CLOSE;
        if (i != 0) {
            return i != 1 ? language_type : LiteProtos.LANGUAGE_TYPE.ENGLISH;
        }
        return LiteProtos.LANGUAGE_TYPE.CHINESE;
    }

    private void a(String[] strArr, int i) {
        d dVar = new d(this, true);
        dVar.c(R.string.lite_voice_lang_dialog_title);
        dVar.a(new d.c() { // from class: com.ifengyu.intercom.lite.old.r
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i2, String str) {
                LiteVoiceSettingActivity.this.a(bVar, view, i2, str);
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
        this.m.a(a(i));
        w();
    }
}
