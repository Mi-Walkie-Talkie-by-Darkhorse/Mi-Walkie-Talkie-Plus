package com.ifengyu.intercom.ui.setting.seal;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CHOPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_ChannelInfoOperate.SEAL_CH_UERR;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class SealPresetChCssEditActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public int a;
    /* access modifiers changed from: private */
    public int b;
    private SealSharkChannel c;
    @BindView(2131755204)
    TextView channelName;
    @BindView(2131755363)
    TextView channelNumber;
    /* access modifiers changed from: private */
    public boolean d = true;
    @BindView(2131755321)
    FrameLayout mFlRXCss;
    @BindView(2131755323)
    FrameLayout mFlTxCss;
    @BindView(2131755836)
    TextView mTitleBarConfirm;
    @BindView(2131755203)
    ImageView mTitleBarLeft;
    @BindView(2131755588)
    TextView mTitleBarTitle;
    @BindView(2131755322)
    TextView mTvRxCss;
    @BindView(2131755324)
    TextView mTvTxCss;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_shark_preset_ch_css_edit);
        ButterKnife.bind((Activity) this);
        c();
        d();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        s.c(this.e, "onStart");
        super.onStart();
        a.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        a.a().b((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.fl_rx_tone /*2131755321*/:
                v.a((View) this.mFlRXCss);
                int[] f = v.f(this.b);
                new SealPickerDialog(this).b(R.string.receive_sub_tone).a(f[0], f[1]).b(R.string.common_select, new SealPickerDialog.a() {
                    public void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
                        float f = 16.0f;
                        if (SealPresetChCssEditActivity.this.d && ((TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvTxCss.getText()) || SealPresetChCssEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.a[0])) && (TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvRxCss.getText()) || SealPresetChCssEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.a[0])))) {
                            SealPresetChCssEditActivity.this.d = false;
                            SealPresetChCssEditActivity.this.a = v.a(i + 1, i2);
                            SealPresetChCssEditActivity.this.mTvTxCss.setText(str2);
                            SealPresetChCssEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                        }
                        SealPresetChCssEditActivity.this.b = v.a(i + 1, i2);
                        SealPresetChCssEditActivity.this.mTvRxCss.setText(str2);
                        TextView textView = SealPresetChCssEditActivity.this.mTvRxCss;
                        if (i2 != 0) {
                            f = 18.0f;
                        }
                        textView.setTextSize(2, f);
                    }
                }).a((int) R.string.common_cancel, (SealPickerDialog.a) null).show();
                return;
            case R.id.fl_tx_tone /*2131755323*/:
                v.a((View) this.mFlTxCss);
                int[] f2 = v.f(this.a);
                new SealPickerDialog(this).b(R.string.emissive_sub_tone).a(f2[0], f2[1]).b(R.string.common_select, new SealPickerDialog.a() {
                    public void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
                        float f = 16.0f;
                        if (SealPresetChCssEditActivity.this.d && ((TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvTxCss.getText()) || SealPresetChCssEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.a[0])) && (TextUtils.isEmpty(SealPresetChCssEditActivity.this.mTvRxCss.getText()) || SealPresetChCssEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.a[0])))) {
                            SealPresetChCssEditActivity.this.d = false;
                            SealPresetChCssEditActivity.this.b = v.a(i + 1, i2);
                            SealPresetChCssEditActivity.this.mTvRxCss.setText(str2);
                            SealPresetChCssEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                        }
                        SealPresetChCssEditActivity.this.a = v.a(i + 1, i2);
                        SealPresetChCssEditActivity.this.mTvTxCss.setText(str2);
                        TextView textView = SealPresetChCssEditActivity.this.mTvTxCss;
                        if (i2 != 0) {
                            f = 18.0f;
                        }
                        textView.setTextSize(2, f);
                    }
                }).a((int) R.string.common_cancel, (SealPickerDialog.a) null).show();
                return;
            case R.id.title_bar_confirm /*2131755836*/:
                this.c.i(this.a);
                this.c.h(this.b);
                setResult(1001, new Intent().putExtra("cssCodeModifiedPresetChannel", this.c));
                finish();
                return;
            default:
                return;
        }
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        s.b(this.e, "receiveChannelInfoOperateResp");
        if (sEAL_ChannelInfoOperate.getResult() == SEAL_CH_UERR.SEAL_CH_OK && sEAL_ChannelInfoOperate.getOption() == SEAL_CHOPTION.SEAL_CH_QUERY && sEAL_ChannelInfoOperate.hasCh()) {
            final SealSharkChannel a2 = aa.a(sEAL_ChannelInfoOperate.getCh());
            this.b = a2.j();
            this.a = a2.k();
            runOnUiThread(new Runnable() {
                public void run() {
                    float f;
                    float f2 = 16.0f;
                    SealPresetChCssEditActivity.this.channelName.setText(a2.g());
                    SealPresetChCssEditActivity.this.channelNumber.setText(v.c(a2.e()));
                    SealPresetChCssEditActivity.this.mTvRxCss.setText(v.d(SealPresetChCssEditActivity.this.b));
                    TextView textView = SealPresetChCssEditActivity.this.mTvRxCss;
                    if (SealPresetChCssEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.a[0])) {
                        f = 16.0f;
                    } else {
                        f = 18.0f;
                    }
                    textView.setTextSize(2, f);
                    SealPresetChCssEditActivity.this.mTvTxCss.setText(v.d(SealPresetChCssEditActivity.this.a));
                    TextView textView2 = SealPresetChCssEditActivity.this.mTvTxCss;
                    if (!SealPresetChCssEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.a[0])) {
                        f2 = 18.0f;
                    }
                    textView2.setTextSize(2, f2);
                }
            });
        }
    }

    private void c() {
        Typeface typeface = l.b;
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

    private void d() {
        float f;
        float f2 = 16.0f;
        this.c = (SealSharkChannel) getIntent().getParcelableExtra("seal_action_edit_css_channel_info");
        if (this.c != null) {
            this.a = this.c.k();
            this.b = this.c.j();
            if (this.c.c() == 0) {
                this.channelName.setText(R.string.channel_public);
            } else if (this.c.c() == 1) {
                this.channelName.setText(R.string.channel_remote);
            }
            this.mTvTxCss.setText(v.d(this.a));
            TextView textView = this.mTvTxCss;
            if (this.mTvTxCss.getText().equals(SealPickerDialog.a[0])) {
                f = 16.0f;
            } else {
                f = 18.0f;
            }
            textView.setTextSize(2, f);
            this.mTvRxCss.setText(v.d(this.b));
            TextView textView2 = this.mTvRxCss;
            if (!this.mTvRxCss.getText().equals(SealPickerDialog.a[0])) {
                f2 = 18.0f;
            }
            textView2.setTextSize(2, f2);
            aa.f(this.c);
        }
    }
}
