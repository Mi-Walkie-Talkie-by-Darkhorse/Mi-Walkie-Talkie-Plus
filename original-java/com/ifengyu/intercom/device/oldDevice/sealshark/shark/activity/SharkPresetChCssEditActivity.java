package com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity;

import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.SharkPickerDialog;
import com.ifengyu.intercom.protos.SharkProtos;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class SharkPresetChCssEditActivity extends BaseActivity1 implements View.OnClickListener {
    @BindView(R.id.channel_name)
    TextView channelName;
    @BindView(R.id.channel_number)
    TextView channelNumber;

    /* renamed from: j */
    private int f13458j;

    /* renamed from: k */
    private int f13459k;

    /* renamed from: l */
    private SealSharkChannelModel f13460l;

    /* renamed from: m */
    private boolean f13461m = true;
    @BindView(R.id.fl_rx_tone)
    FrameLayout mFlRXCss;
    @BindView(R.id.fl_tx_tone)
    FrameLayout mFlTxCss;
    @BindView(R.id.title_bar_confirm)
    TextView mTitleBarConfirm;
    @BindView(R.id.title_bar_left)
    ImageView mTitleBarLeft;
    @BindView(R.id.title_bar_title)
    TextView mTitleBarTitle;
    @BindView(R.id.tv_rx_tone)
    TextView mTvRxCss;
    @BindView(R.id.tv_tx_tone)
    TextView mTvTxCss;

    /* renamed from: n */
    private String f13462n;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkPresetChCssEditActivity$a */
    /* loaded from: classes2.dex */
    class C3768a implements SharkPickerDialog.InterfaceC4895b {
        C3768a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SharkPickerDialog.InterfaceC4895b
        /* renamed from: a */
        public void mo9046a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
            if (SharkPresetChCssEditActivity.this.f13461m && ((TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvTxCss.getText()) || SharkPresetChCssEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.f15858d[0])) && (TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvRxCss.getText()) || SharkPresetChCssEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.f15858d[0])))) {
                SharkPresetChCssEditActivity.this.f13461m = false;
                SharkPresetChCssEditActivity.this.f13458j = MethodsUtils.m11300J(i + 1, i2);
                SharkPresetChCssEditActivity.this.mTvTxCss.setText(str2);
                SharkPresetChCssEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SharkPresetChCssEditActivity.this.f13459k = MethodsUtils.m11300J(i + 1, i2);
            SharkPresetChCssEditActivity.this.mTvRxCss.setText(str2);
            SharkPresetChCssEditActivity.this.mTvRxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkPresetChCssEditActivity$b */
    /* loaded from: classes2.dex */
    class C3769b implements SharkPickerDialog.InterfaceC4895b {
        C3769b() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SharkPickerDialog.InterfaceC4895b
        /* renamed from: a */
        public void mo9046a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
            if (SharkPresetChCssEditActivity.this.f13461m && ((TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvTxCss.getText()) || SharkPresetChCssEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.f15858d[0])) && (TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvRxCss.getText()) || SharkPresetChCssEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.f15858d[0])))) {
                SharkPresetChCssEditActivity.this.f13461m = false;
                SharkPresetChCssEditActivity.this.f13459k = MethodsUtils.m11300J(i + 1, i2);
                SharkPresetChCssEditActivity.this.mTvRxCss.setText(str2);
                SharkPresetChCssEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SharkPresetChCssEditActivity.this.f13458j = MethodsUtils.m11300J(i + 1, i2);
            SharkPresetChCssEditActivity.this.mTvTxCss.setText(str2);
            SharkPresetChCssEditActivity.this.mTvTxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkPresetChCssEditActivity$c */
    /* loaded from: classes2.dex */
    class RunnableC3770c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13465a;

        RunnableC3770c(SealSharkChannelModel sealSharkChannelModel) {
            this.f13465a = sealSharkChannelModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkPresetChCssEditActivity.this.channelName.setText(this.f13465a.getName());
            SharkPresetChCssEditActivity.this.channelNumber.setText(MethodsUtils.m11290j(this.f13465a.getRxFreq()));
            SharkPresetChCssEditActivity sharkPresetChCssEditActivity = SharkPresetChCssEditActivity.this;
            sharkPresetChCssEditActivity.mTvRxCss.setText(MethodsUtils.m11304F(sharkPresetChCssEditActivity.f13459k));
            TextView textView = SharkPresetChCssEditActivity.this.mTvRxCss;
            CharSequence text = textView.getText();
            String[] strArr = SharkPickerDialog.f15858d;
            textView.setTextSize(2, text.equals(strArr[0]) ? 16.0f : 18.0f);
            SharkPresetChCssEditActivity sharkPresetChCssEditActivity2 = SharkPresetChCssEditActivity.this;
            sharkPresetChCssEditActivity2.mTvTxCss.setText(MethodsUtils.m11304F(sharkPresetChCssEditActivity2.f13458j));
            TextView textView2 = SharkPresetChCssEditActivity.this.mTvTxCss;
            textView2.setTextSize(2, textView2.getText().equals(strArr[0]) ? 16.0f : 18.0f);
        }
    }

    /* renamed from: L */
    private void m12683L() {
        SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) getIntent().getParcelableExtra("seal_action_edit_css_channel_info");
        this.f13460l = sealSharkChannelModel;
        if (sealSharkChannelModel != null) {
            this.f13458j = sealSharkChannelModel.getTxCss();
            this.f13459k = this.f13460l.getRxCss();
            if (this.f13460l.getType() == 0) {
                this.channelName.setText(R.string.channel_public);
            } else if (this.f13460l.getType() == 1) {
                this.channelName.setText(R.string.channel_remote);
            }
            this.mTvTxCss.setText(MethodsUtils.m11304F(this.f13458j));
            TextView textView = this.mTvTxCss;
            CharSequence text = textView.getText();
            String[] strArr = SharkPickerDialog.f15858d;
            textView.setTextSize(2, text.equals(strArr[0]) ? 16.0f : 18.0f);
            this.mTvRxCss.setText(MethodsUtils.m11304F(this.f13459k));
            TextView textView2 = this.mTvRxCss;
            textView2.setTextSize(2, textView2.getText().equals(strArr[0]) ? 16.0f : 18.0f);
            BleCoreClient.m12373n().m12374m(this.f13462n).m12043c1(this.f13460l);
        }
    }

    /* renamed from: M */
    private void m12682M() {
        this.channelNumber.setTypeface(AppConstants.f13909c);
        Typeface typeface = AppConstants.f13908b;
        this.mTvTxCss.setTypeface(typeface);
        this.mTvRxCss.setTypeface(typeface);
        this.mTitleBarLeft.setOnClickListener(this);
        this.mTitleBarConfirm.setOnClickListener(this);
        this.mFlTxCss.setOnClickListener(this);
        this.mFlRXCss.setOnClickListener(this);
        this.mTitleBarConfirm.setVisibility(0);
        this.mTitleBarConfirm.setText(R.string.completed);
        this.mTitleBarTitle.setText(R.string.modify_css_code);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.fl_rx_tone /* 2131296722 */:
                MethodsUtils.m11281s(this.mFlRXCss);
                int[] m11293g = MethodsUtils.m11293g(this.f13459k);
                SharkPickerDialog sharkPickerDialog = new SharkPickerDialog(this);
                sharkPickerDialog.m9050h(R.string.receive_sub_tone);
                sharkPickerDialog.m9047k(m11293g[0], m11293g[1]);
                sharkPickerDialog.m9048j(R.string.common_select, new C3768a());
                sharkPickerDialog.m9049i(R.string.common_cancel, null);
                sharkPickerDialog.show();
                return;
            case R.id.fl_tx_tone /* 2131296724 */:
                MethodsUtils.m11281s(this.mFlTxCss);
                int[] m11293g2 = MethodsUtils.m11293g(this.f13458j);
                SharkPickerDialog sharkPickerDialog2 = new SharkPickerDialog(this);
                sharkPickerDialog2.m9050h(R.string.emissive_sub_tone);
                sharkPickerDialog2.m9047k(m11293g2[0], m11293g2[1]);
                sharkPickerDialog2.m9048j(R.string.common_select, new C3769b());
                sharkPickerDialog2.m9049i(R.string.common_cancel, null);
                sharkPickerDialog2.show();
                return;
            case R.id.title_bar_confirm /* 2131297421 */:
                this.f13460l.setTxCss(this.f13458j);
                this.f13460l.setRxCss(this.f13459k);
                setResult(1001, new Intent().putExtra("cssCodeModifiedPresetChannel", this.f13460l));
                finish();
                return;
            case R.id.title_bar_left /* 2131297422 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_shark_preset_ch_css_edit);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13462n = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        ButterKnife.bind(this);
        m12682M();
        m12683L();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        C4161y.m11049f(this.f15055a, "onStart");
        super.onStart();
        MiBus.getInstance().m6411j(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MiBus.getInstance().m6409l(this);
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        C4161y.m11054a(this.f15055a, "receiveChannelInfoOperateResp");
        if (sHARK_ChannelInfoOperate.getResult() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR.SHARK_CH_OK && sHARK_ChannelInfoOperate.getOption() == SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION.SHARK_CH_QUERY && sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelInfoOperate.getCh());
            this.f13459k = m11814g.getRxCss();
            this.f13458j = m11814g.getTxCss();
            runOnUiThread(new RunnableC3770c(m11814g));
        }
    }
}
