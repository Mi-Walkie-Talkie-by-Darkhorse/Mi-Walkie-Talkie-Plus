package com.ifengyu.intercom.lite.fragment;

import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.ifengyu.intercom.lite.LiteChannelActivity;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.dto.UpgradeInfoDTO;
import com.ifengyu.intercom.lite.event.LiteEvent;
import com.ifengyu.intercom.lite.f.e;
import com.ifengyu.intercom.lite.g.s;
import com.ifengyu.intercom.lite.g.t;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.models.DeviceParamLiveData;
import com.ifengyu.intercom.lite.utils.h;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.library.a.m;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.alpha.QMUIAlphaButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public class LiteSettingFragment extends com.ifengyu.intercom.lite.base.e {
    private static final String A = LiteSettingFragment.class.getSimpleName();
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
    @BindView(R.id.item_more)
    ItemView mItemMore;
    @BindView(R.id.item_name)
    ItemView mItemName;
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
    private h0 z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements q<DeviceModel> {
        a() {
        }

        /* renamed from: a */
        public void onChanged(DeviceModel deviceModel) {
            if (deviceModel != null) {
                LiteSettingFragment.this.mItemName.setValueText(deviceModel.getName());
                LiteSettingFragment.this.mItemId.setValueText(deviceModel.getDeviceId());
                s.b().a(deviceModel.getVersionHw());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements q<UpgradeInfoDTO> {
        b() {
        }

        /* renamed from: a */
        public void onChanged(UpgradeInfoDTO upgradeInfoDTO) {
            if (upgradeInfoDTO.h()) {
                LiteSettingFragment.this.mItemUpdate.setImageDrawable(LiteSettingFragment.this.getResources().getDrawable(R.mipmap.set_icon_update));
                return;
            }
            LiteSettingFragment.this.mItemUpdate.setImageDrawable(LiteSettingFragment.this.getResources().getDrawable(R.mipmap.set_icon_update_normal));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Consumer<LiteEvent> {
        c() {
        }

        /* renamed from: a */
        public void accept(LiteEvent liteEvent) throws Exception {
            if (liteEvent == LiteEvent.UPGRADE_SUCCESS) {
                LiteSettingFragment.this.mItemUpdate.setImageDrawable(LiteSettingFragment.this.getResources().getDrawable(R.mipmap.set_icon_update_normal));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements QMUIDialogAction.b {
        d() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
            LiteSettingFragment.this.F();
            LiteSettingFragment.this.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements QMUIDialogAction.b {
        e(LiteSettingFragment liteSettingFragment) {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements QMUIDialogAction.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.lite.c.b.d f5462a;

        f(com.ifengyu.intercom.lite.c.b.d dVar) {
            this.f5462a = dVar;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            String trim = this.f5462a.e().getText().toString().trim();
            if (trim.length() > 0) {
                bVar.dismiss();
                LiteSettingFragment.this.z.a(trim.toString());
                LiteSettingFragment.this.z();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements QMUIDialogAction.b {
        g(LiteSettingFragment liteSettingFragment) {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
        }
    }

    private void C() {
        h0 h0Var = (h0) x.a(getActivity()).a(h0.class);
        this.z = h0Var;
        h0Var.g().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.a1
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.a((ChannelModel) obj);
            }
        });
        this.z.i().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.b1
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.a((DeviceParamLiveData) obj);
            }
        });
        this.z.j().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.c1
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.b((String) obj);
            }
        });
        this.z.h().observe(this, new a());
        this.z.m();
        this.z.n();
        t tVar = (t) x.a(this).a(t.class);
        tVar.e().observe(this, new b());
        tVar.b();
        j.a().a(this, LiteEvent.class, new c());
    }

    private void D() {
        com.ifengyu.intercom.lite.c.b.d dVar = new com.ifengyu.intercom.lite.c.b.d(getContext());
        String charSequence = this.mItemName.getValueText().toString();
        dVar.c(R.string.common_interphonename);
        com.ifengyu.intercom.lite.c.b.d dVar2 = dVar;
        dVar2.e(R.string.please_input_name);
        dVar2.a((CharSequence) charSequence);
        dVar2.d(1);
        dVar2.a(0, R.string.common_cancel, 2, new g(this));
        com.ifengyu.intercom.lite.c.b.d dVar3 = dVar2;
        dVar3.a(0, R.string.common_ok, 0, new f(dVar));
        com.ifengyu.intercom.lite.c.b.d dVar4 = dVar3;
        dVar4.a(1.0f);
        com.qmuiteam.qmui.widget.dialog.b a2 = dVar4.a(R.style.DialogTheme2);
        EditText e2 = dVar.e();
        e2.setFilters(new InputFilter[]{new com.ifengyu.intercom.lite.utils.c(), new com.ifengyu.intercom.lite.utils.b(15)});
        e2.setSelection(charSequence.length());
        a2.show();
    }

    private void E() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.setting_confirm_un_bind);
        eVar.a(0, R.string.common_cancel, 2, new e(this));
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new d());
        eVar2.a(R.style.DialogTheme2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        final BluetoothDevice e2 = com.ifengyu.intercom.lite.e.f.a(getContext().getApplicationContext()).e();
        if (e2 != null) {
            final com.ifengyu.intercom.lite.f.e n = LiteDatabase.a(getContext().getApplicationContext()).n();
            com.ifengyu.intercom.network.d.e.a().execute(new Runnable() { // from class: com.ifengyu.intercom.lite.fragment.z0
                @Override // java.lang.Runnable
                public final void run() {
                    e.this.a(e2.getAddress());
                }
            });
        }
        this.z.b();
    }

    public void A() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.z.g().setValue((ChannelModel) arguments.getParcelable("channel"));
        }
    }

    public void B() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteSettingFragment.this.b(view);
            }
        });
        this.mTopBar.f(R.string.setting);
    }

    @OnClick({R.id.item_config, R.id.item_name, R.id.item_id, R.id.item_voice, R.id.item_deploy, R.id.item_more, R.id.item_update, R.id.btn_unbind, R.id.ll_channel_board, R.id.item_about})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_unbind /* 2131296421 */:
                E();
                return;
            case R.id.item_about /* 2131296739 */:
                UserProtocolActivity.b(getActivity(), 36611);
                return;
            case R.id.item_config /* 2131296743 */:
                a(ConfigFileListFragment.newInstance());
                return;
            case R.id.item_deploy /* 2131296745 */:
                a(BatchConfigurationFragment.newInstance());
                return;
            case R.id.item_more /* 2131296753 */:
                a(LiteSettingMoreFragment.newInstance());
                return;
            case R.id.item_name /* 2131296754 */:
                D();
                return;
            case R.id.item_update /* 2131296773 */:
                a(FirmwareUpgradeFragment.b((UpgradeInfoDTO) null));
                return;
            case R.id.item_voice /* 2131296774 */:
                a(LiteSettingVoiceFragment.newInstance());
                return;
            case R.id.ll_channel_board /* 2131296812 */:
                LiteChannelActivity.a(getActivity(), this.z.g().getValue());
                return;
            default:
                return;
        }
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        j.a().b(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.z.l();
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_setting, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        B();
        C();
        A();
        return inflate;
    }

    public /* synthetic */ void a(DeviceParamLiveData deviceParamLiveData) {
        x();
        this.mItemName.setValueText(deviceParamLiveData.getName());
        this.mItemId.setValueText(String.valueOf(deviceParamLiveData.getDeviceId()));
    }

    public /* synthetic */ void b(String str) {
        if (str != null) {
            x();
            y();
        }
    }

    public /* synthetic */ void b(View view) {
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ChannelModel channelModel) {
        if (channelModel != null) {
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
    }
}
