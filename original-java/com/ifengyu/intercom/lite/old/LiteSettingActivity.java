package com.ifengyu.intercom.lite.old;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.lifecycle.q;
import androidx.lifecycle.x;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.base.BaseActivity;
import com.ifengyu.intercom.lite.dialog.list.d;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.DeviceParamLiveData;
import com.ifengyu.intercom.lite.utils.h;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.ifengyu.library.widget.view.SwitchButton;
import com.qmuiteam.qmui.alpha.QMUIAlphaButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;

/* loaded from: classes2.dex */
public class LiteSettingActivity extends BaseActivity {
    private static final String q = LiteSettingActivity.class.getSimpleName();
    String[] m = {"1分钟", "3分钟", "5分钟", "10分钟"};
    @BindView(R.id.btn_unbind)
    QMUIAlphaButton mBtnUnbind;
    @BindView(R.id.content_board)
    RelativeLayout mContentBoard;
    @BindView(R.id.empty_board)
    LinearLayout mEmptyBoard;
    @BindView(R.id.item_config)
    ItemView mItemConfig;
    @BindView(R.id.item_deploy)
    ItemView mItemDeploy;
    @BindView(R.id.item_id)
    ItemView mItemId;
    @BindView(R.id.item_location)
    ItemView mItemLocation;
    @BindView(R.id.item_more)
    ItemView mItemMore;
    @BindView(R.id.item_name)
    ItemView mItemName;
    @BindView(R.id.item_time)
    ItemView mItemTime;
    @BindView(R.id.item_update)
    ItemView mItemUpdate;
    @BindView(R.id.item_voice)
    ItemView mItemVoice;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_channel_name)
    TextView mTvChannelName;
    @BindView(R.id.tv_receive_freq)
    TextView mTvReceiveFreq;
    @BindView(R.id.tv_send_freq)
    TextView mTvSendFreq;
    private ChannelModel n;
    private int o;
    private h0 p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements q<ChannelModel> {
        a() {
        }

        /* renamed from: a */
        public void onChanged(ChannelModel channelModel) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements q<DeviceParamLiveData> {
        b() {
        }

        /* renamed from: a */
        public void onChanged(DeviceParamLiveData deviceParamLiveData) {
            String str = LiteSettingActivity.q;
            z.a(str, "onChanged: " + deviceParamLiveData.toString());
            LiteSettingActivity.this.mItemName.setValueText(deviceParamLiveData.getName());
            LiteSettingActivity.this.mItemId.setValueText(String.valueOf(deviceParamLiveData.getDeviceId()));
            LiteSettingActivity.this.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements q<String> {
        c() {
        }

        /* renamed from: a */
        public void onChanged(String str) {
            if (str != null) {
                LiteSettingActivity.this.v();
                m.a(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements q<Boolean> {
        d() {
        }

        /* renamed from: a */
        public void onChanged(Boolean bool) {
            if (!bool.booleanValue()) {
                m.d(R.string.main_ble_have_unconnect);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteSettingActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements QMUIDialogAction.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.lite.c.b.d f5735a;

        f(com.ifengyu.intercom.lite.c.b.d dVar) {
            this.f5735a = dVar;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            Editable text = this.f5735a.e().getText();
            if (text != null && text.length() > 0) {
                bVar.dismiss();
                LiteSettingActivity.this.p.a(text.toString());
                LiteSettingActivity.this.w();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements QMUIDialogAction.b {
        g() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
        }
    }

    private void A() {
        h0 h0Var = (h0) x.a(this).a(h0.class);
        this.p = h0Var;
        h0Var.g().observe(this, new a());
        this.p.i().observe(this, new b());
        this.p.j().observe(this, new c());
        this.p.k().observe(this, new d());
        this.p.n();
    }

    private void B() {
        com.ifengyu.intercom.lite.c.b.d dVar = new com.ifengyu.intercom.lite.c.b.d(this);
        String charSequence = this.mItemName.getValueText().toString();
        dVar.a("对讲机名称");
        com.ifengyu.intercom.lite.c.b.d dVar2 = dVar;
        dVar2.b("在此输入对讲机名称");
        dVar2.a((CharSequence) charSequence);
        dVar2.d(1);
        dVar2.a(0, R.string.common_cancel, 2, new g());
        com.ifengyu.intercom.lite.c.b.d dVar3 = dVar2;
        dVar3.a(0, R.string.common_ok, 0, new f(dVar));
        com.ifengyu.intercom.lite.c.b.d dVar4 = dVar3;
        dVar4.a(1.0f);
        com.qmuiteam.qmui.widget.dialog.b a2 = dVar4.a(R.style.DialogTheme2);
        EditText e2 = dVar.e();
        e2.setFilters(new InputFilter[]{new InputFilter.LengthFilter(18)});
        e2.setSelection(charSequence.length());
        a2.show();
    }

    private void C() {
        SwitchButton switchButton = this.mItemLocation.getSwitch();
        if (switchButton != null) {
            switchButton.toggle();
        }
    }

    @OnClick({R.id.item_config, R.id.item_name, R.id.item_id, R.id.item_location, R.id.item_time, R.id.item_voice, R.id.item_deploy, R.id.item_more, R.id.item_update, R.id.btn_unbind, R.id.ll_channel_board})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_unbind /* 2131296421 */:
                finish();
                return;
            case R.id.item_config /* 2131296743 */:
                LiteConfigFileActivity.start(this);
                return;
            case R.id.item_deploy /* 2131296745 */:
                LiteBatchConfigurationActivity.start(this);
                return;
            case R.id.item_location /* 2131296752 */:
                C();
                return;
            case R.id.item_more /* 2131296753 */:
                LiteMoreSettingActivity.start(this);
                return;
            case R.id.item_name /* 2131296754 */:
                B();
                return;
            case R.id.item_time /* 2131296768 */:
                a(this.m, this.o);
                return;
            case R.id.item_update /* 2131296773 */:
                LiteUpgradeActivity.start(this);
                return;
            case R.id.item_voice /* 2131296774 */:
                LiteVoiceSettingActivity.start(this);
                return;
            case R.id.ll_channel_board /* 2131296812 */:
                LiteChannelSettingActivity.a(this, this.n);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.BaseActivity, com.qmuiteam.qmui.arch.QMUIActivity, com.qmuiteam.qmui.arch.a, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_lite_setting);
        ButterKnife.bind(this);
        x();
        y();
        A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        a(intent);
    }

    public void x() {
        a(getIntent());
        a(this.n);
    }

    public void y() {
        this.mTopBar.a().setOnClickListener(new e());
        this.mTopBar.f(R.string.setting);
        this.mItemLocation.getSwitch().toggle();
        this.mItemTime.setValueText(this.m[this.o]);
    }

    private void a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.n = (ChannelModel) extras.getParcelable("channel");
        }
    }

    private void a(ChannelModel channelModel) {
        if (channelModel.isEmpty()) {
            this.mTvChannelName.setText(m.a((int) R.string.lite_channel_name_placeholder, channelModel.getDisplaySeq()));
            this.mEmptyBoard.setVisibility(0);
            this.mContentBoard.setVisibility(8);
            return;
        }
        this.mTvChannelName.setText(m.a((int) R.string.lite_channel_name_placeholder, channelModel.getDisplaySeq()));
        this.mEmptyBoard.setVisibility(8);
        this.mContentBoard.setVisibility(0);
        this.mTvReceiveFreq.setText(channelModel.getDisplayReceiveFreq());
        this.mTvSendFreq.setText(channelModel.getDisplaySendFreq());
        h.a(p.f5324b, this.mTvReceiveFreq, this.mTvSendFreq);
    }

    private void a(String[] strArr, int i) {
        com.ifengyu.intercom.lite.dialog.list.d dVar = new com.ifengyu.intercom.lite.dialog.list.d(this, true);
        dVar.a("发送位置间隔");
        com.ifengyu.intercom.lite.dialog.list.d dVar2 = dVar;
        dVar2.c("选择时间，在规定的时间内可自动发送位置");
        dVar2.a(new d.c() { // from class: com.ifengyu.intercom.lite.old.q
            @Override // com.ifengyu.intercom.lite.dialog.list.d.c
            public final void a(b bVar, View view, int i2, String str) {
                LiteSettingActivity.this.a(bVar, view, i2, str);
            }
        });
        dVar.d(i);
        for (String str : strArr) {
            dVar.b(str);
        }
        dVar.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, View view, int i, String str) {
        this.o = i;
        this.mItemTime.setValueText(str);
        bVar.dismiss();
    }
}
