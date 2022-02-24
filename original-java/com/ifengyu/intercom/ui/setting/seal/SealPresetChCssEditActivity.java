package com.ifengyu.intercom.ui.setting.seal;

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
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog;
import com.squareup.otto.Subscribe;

/* loaded from: classes2.dex */
public class SealPresetChCssEditActivity extends BaseActivity implements View.OnClickListener {
    @BindView(R.id.channel_name)
    TextView channelName;
    @BindView(R.id.channel_number)
    TextView channelNumber;
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
    private int q;
    private int r;
    private SealSharkChannel s;
    private boolean t = true;

    /* loaded from: classes2.dex */
    class a implements SealPickerDialog.b {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog.b
        public void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            float f = 16.0f;
            if (SealPresetChCssEditActivity.this.t && ((TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvTxCss.getText()) || SealPresetChCssEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.d[0])) && (TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvRxCss.getText()) || SealPresetChCssEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.d[0])))) {
                SealPresetChCssEditActivity.this.t = false;
                SealPresetChCssEditActivity.this.q = c0.b(i + 1, i2);
                SealPresetChCssEditActivity.this.mTvTxCss.setText(str2);
                SealPresetChCssEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealPresetChCssEditActivity.this.r = c0.b(i + 1, i2);
            SealPresetChCssEditActivity.this.mTvRxCss.setText(str2);
            TextView textView = SealPresetChCssEditActivity.this.mTvRxCss;
            if (i2 != 0) {
                f = 18.0f;
            }
            textView.setTextSize(2, f);
        }
    }

    /* loaded from: classes2.dex */
    class b implements SealPickerDialog.b {
        b() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog.b
        public void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            float f = 16.0f;
            if (SealPresetChCssEditActivity.this.t && ((TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvTxCss.getText()) || SealPresetChCssEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.d[0])) && (TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvRxCss.getText()) || SealPresetChCssEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.d[0])))) {
                SealPresetChCssEditActivity.this.t = false;
                SealPresetChCssEditActivity.this.r = c0.b(i + 1, i2);
                SealPresetChCssEditActivity.this.mTvRxCss.setText(str2);
                SealPresetChCssEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealPresetChCssEditActivity.this.q = c0.b(i + 1, i2);
            SealPresetChCssEditActivity.this.mTvTxCss.setText(str2);
            TextView textView = SealPresetChCssEditActivity.this.mTvTxCss;
            if (i2 != 0) {
                f = 18.0f;
            }
            textView.setTextSize(2, f);
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealSharkChannel f6713a;

        c(SealSharkChannel sealSharkChannel) {
            this.f6713a = sealSharkChannel;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealPresetChCssEditActivity.this.channelName.setText(this.f6713a.e());
            SealPresetChCssEditActivity.this.channelNumber.setText(c0.b(this.f6713a.i()));
            SealPresetChCssEditActivity sealPresetChCssEditActivity = SealPresetChCssEditActivity.this;
            sealPresetChCssEditActivity.mTvRxCss.setText(c0.g(sealPresetChCssEditActivity.r));
            TextView textView = SealPresetChCssEditActivity.this.mTvRxCss;
            float f = 16.0f;
            textView.setTextSize(2, textView.getText().equals(SealPickerDialog.d[0]) ? 16.0f : 18.0f);
            SealPresetChCssEditActivity sealPresetChCssEditActivity2 = SealPresetChCssEditActivity.this;
            sealPresetChCssEditActivity2.mTvTxCss.setText(c0.g(sealPresetChCssEditActivity2.q));
            TextView textView2 = SealPresetChCssEditActivity.this.mTvTxCss;
            if (!textView2.getText().equals(SealPickerDialog.d[0])) {
                f = 18.0f;
            }
            textView2.setTextSize(2, f);
        }
    }

    private void w() {
        SealSharkChannel sealSharkChannel = (SealSharkChannel) getIntent().getParcelableExtra("seal_action_edit_css_channel_info");
        this.s = sealSharkChannel;
        if (sealSharkChannel != null) {
            this.q = sealSharkChannel.k();
            this.r = this.s.h();
            if (this.s.n() == 0) {
                this.channelName.setText(R.string.channel_public);
            } else if (this.s.n() == 1) {
                this.channelName.setText(R.string.channel_remote);
            }
            this.mTvTxCss.setText(c0.g(this.q));
            TextView textView = this.mTvTxCss;
            float f = 16.0f;
            textView.setTextSize(2, textView.getText().equals(SealPickerDialog.d[0]) ? 16.0f : 18.0f);
            this.mTvRxCss.setText(c0.g(this.r));
            TextView textView2 = this.mTvRxCss;
            if (!textView2.getText().equals(SealPickerDialog.d[0])) {
                f = 18.0f;
            }
            textView2.setTextSize(2, f);
            g0.e(this.s);
        }
    }

    private void x() {
        Typeface typeface = p.f5323a;
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
            case R.id.fl_rx_tone /* 2131296653 */:
                c0.b(this.mFlRXCss);
                int[] a2 = c0.a(this.r);
                SealPickerDialog sealPickerDialog = new SealPickerDialog(this);
                sealPickerDialog.b(R.string.receive_sub_tone);
                sealPickerDialog.a(a2[0], a2[1]);
                sealPickerDialog.b(R.string.common_select, new a());
                sealPickerDialog.a(R.string.common_cancel, (SealPickerDialog.b) null);
                sealPickerDialog.show();
                return;
            case R.id.fl_tx_tone /* 2131296655 */:
                c0.b(this.mFlTxCss);
                int[] a3 = c0.a(this.q);
                SealPickerDialog sealPickerDialog2 = new SealPickerDialog(this);
                sealPickerDialog2.b(R.string.emissive_sub_tone);
                sealPickerDialog2.a(a3[0], a3[1]);
                sealPickerDialog2.b(R.string.common_select, new b());
                sealPickerDialog2.a(R.string.common_cancel, (SealPickerDialog.b) null);
                sealPickerDialog2.show();
                return;
            case R.id.title_bar_confirm /* 2131297304 */:
                this.s.f(this.q);
                this.s.c(this.r);
                setResult(1001, new Intent().putExtra("cssCodeModifiedPresetChannel", this.s));
                finish();
                return;
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_shark_preset_ch_css_edit);
        ButterKnife.bind(this);
        x();
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        z.c(this.f6370a, "onStart");
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().c(this);
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        z.a(this.f6370a, "receiveChannelInfoOperateResp");
        if (sEAL_ChannelInfoOperate.getResult() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR.SEAL_CH_OK && sEAL_ChannelInfoOperate.getOption() == SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION.SEAL_CH_QUERY && sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannel a2 = g0.a(sEAL_ChannelInfoOperate.getCh());
            this.r = a2.h();
            this.q = a2.k();
            runOnUiThread(new c(a2));
        }
    }
}
