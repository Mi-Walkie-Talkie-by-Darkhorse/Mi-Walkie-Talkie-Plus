package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

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
import com.ifengyu.intercom.p216ui.widget.dialog.SealPickerDialog;
import com.ifengyu.intercom.protos.SealProtos;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class SealPresetChCssEditActivity extends BaseActivity1 implements View.OnClickListener {
    @BindView(R.id.channel_name)
    TextView channelName;
    @BindView(R.id.channel_number)
    TextView channelNumber;

    /* renamed from: j */
    private int f13303j;

    /* renamed from: k */
    private int f13304k;

    /* renamed from: l */
    private SealSharkChannelModel f13305l;

    /* renamed from: m */
    private boolean f13306m = true;
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
    private String f13307n;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealPresetChCssEditActivity$a */
    /* loaded from: classes2.dex */
    class C3705a implements SealPickerDialog.InterfaceC4893b {
        C3705a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SealPickerDialog.InterfaceC4893b
        /* renamed from: a */
        public void mo9051a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            if (SealPresetChCssEditActivity.this.f13306m && ((TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvTxCss.getText()) || SealPresetChCssEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.f15850d[0])) && (TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvRxCss.getText()) || SealPresetChCssEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.f15850d[0])))) {
                SealPresetChCssEditActivity.this.f13306m = false;
                SealPresetChCssEditActivity.this.f13303j = MethodsUtils.m11300J(i + 1, i2);
                SealPresetChCssEditActivity.this.mTvTxCss.setText(str2);
                SealPresetChCssEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealPresetChCssEditActivity.this.f13304k = MethodsUtils.m11300J(i + 1, i2);
            SealPresetChCssEditActivity.this.mTvRxCss.setText(str2);
            SealPresetChCssEditActivity.this.mTvRxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealPresetChCssEditActivity$b */
    /* loaded from: classes2.dex */
    class C3706b implements SealPickerDialog.InterfaceC4893b {
        C3706b() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SealPickerDialog.InterfaceC4893b
        /* renamed from: a */
        public void mo9051a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            if (SealPresetChCssEditActivity.this.f13306m && ((TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvTxCss.getText()) || SealPresetChCssEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.f15850d[0])) && (TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvRxCss.getText()) || SealPresetChCssEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.f15850d[0])))) {
                SealPresetChCssEditActivity.this.f13306m = false;
                SealPresetChCssEditActivity.this.f13304k = MethodsUtils.m11300J(i + 1, i2);
                SealPresetChCssEditActivity.this.mTvRxCss.setText(str2);
                SealPresetChCssEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealPresetChCssEditActivity.this.f13303j = MethodsUtils.m11300J(i + 1, i2);
            SealPresetChCssEditActivity.this.mTvTxCss.setText(str2);
            SealPresetChCssEditActivity.this.mTvTxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealPresetChCssEditActivity$c */
    /* loaded from: classes2.dex */
    class RunnableC3707c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13310a;

        RunnableC3707c(SealSharkChannelModel sealSharkChannelModel) {
            this.f13310a = sealSharkChannelModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealPresetChCssEditActivity.this.channelName.setText(this.f13310a.getName());
            SealPresetChCssEditActivity.this.channelNumber.setText(MethodsUtils.m11290j(this.f13310a.getRxFreq()));
            SealPresetChCssEditActivity sealPresetChCssEditActivity = SealPresetChCssEditActivity.this;
            sealPresetChCssEditActivity.mTvRxCss.setText(MethodsUtils.m11305E(sealPresetChCssEditActivity.f13304k));
            TextView textView = SealPresetChCssEditActivity.this.mTvRxCss;
            CharSequence text = textView.getText();
            String[] strArr = SealPickerDialog.f15850d;
            textView.setTextSize(2, text.equals(strArr[0]) ? 16.0f : 18.0f);
            SealPresetChCssEditActivity sealPresetChCssEditActivity2 = SealPresetChCssEditActivity.this;
            sealPresetChCssEditActivity2.mTvTxCss.setText(MethodsUtils.m11305E(sealPresetChCssEditActivity2.f13303j));
            TextView textView2 = SealPresetChCssEditActivity.this.mTvTxCss;
            textView2.setTextSize(2, textView2.getText().equals(strArr[0]) ? 16.0f : 18.0f);
        }
    }

    /* renamed from: L */
    private void m12834L() {
        SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) getIntent().getParcelableExtra("seal_action_edit_css_channel_info");
        this.f13305l = sealSharkChannelModel;
        if (sealSharkChannelModel != null) {
            this.f13303j = sealSharkChannelModel.getTxCss();
            this.f13304k = this.f13305l.getRxCss();
            if (this.f13305l.getType() == 0) {
                this.channelName.setText(R.string.channel_public);
            } else if (this.f13305l.getType() == 1) {
                this.channelName.setText(R.string.channel_remote);
            }
            this.mTvTxCss.setText(MethodsUtils.m11305E(this.f13303j));
            TextView textView = this.mTvTxCss;
            CharSequence text = textView.getText();
            String[] strArr = SealPickerDialog.f15850d;
            textView.setTextSize(2, text.equals(strArr[0]) ? 16.0f : 18.0f);
            this.mTvRxCss.setText(MethodsUtils.m11305E(this.f13304k));
            TextView textView2 = this.mTvRxCss;
            textView2.setTextSize(2, textView2.getText().equals(strArr[0]) ? 16.0f : 18.0f);
            BleCoreClient.m12373n().m12375l(this.f13307n).m12107f1(this.f13305l);
        }
    }

    /* renamed from: M */
    private void m12833M() {
        Typeface typeface = AppConstants.f13908b;
        this.channelNumber.setTypeface(typeface);
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
                int[] m11293g = MethodsUtils.m11293g(this.f13304k);
                SealPickerDialog sealPickerDialog = new SealPickerDialog(this);
                sealPickerDialog.m9055h(R.string.receive_sub_tone);
                sealPickerDialog.m9052k(m11293g[0], m11293g[1]);
                sealPickerDialog.m9053j(R.string.common_select, new C3705a());
                sealPickerDialog.m9054i(R.string.common_cancel, null);
                sealPickerDialog.show();
                return;
            case R.id.fl_tx_tone /* 2131296724 */:
                MethodsUtils.m11281s(this.mFlTxCss);
                int[] m11293g2 = MethodsUtils.m11293g(this.f13303j);
                SealPickerDialog sealPickerDialog2 = new SealPickerDialog(this);
                sealPickerDialog2.m9055h(R.string.emissive_sub_tone);
                sealPickerDialog2.m9052k(m11293g2[0], m11293g2[1]);
                sealPickerDialog2.m9053j(R.string.common_select, new C3706b());
                sealPickerDialog2.m9054i(R.string.common_cancel, null);
                sealPickerDialog2.show();
                return;
            case R.id.title_bar_confirm /* 2131297421 */:
                this.f13305l.setTxCss(this.f13303j);
                this.f13305l.setRxCss(this.f13304k);
                setResult(1001, new Intent().putExtra("cssCodeModifiedPresetChannel", this.f13305l));
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
        this.f13307n = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        ButterKnife.bind(this);
        m12833M();
        m12834L();
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
    public void receiveChannelInfoOperateResp(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        C4161y.m11054a(this.f15055a, "receiveChannelInfoOperateResp");
        if (sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK && sEAL_ChannelInfoOperate.getOption() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY && sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelInfoOperate.getCh());
            this.f13304k = m11815f.getRxCss();
            this.f13303j = m11815f.getTxCss();
            runOnUiThread(new RunnableC3707c(m11815f));
        }
    }
}
