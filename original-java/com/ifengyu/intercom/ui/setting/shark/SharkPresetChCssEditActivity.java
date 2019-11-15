package com.ifengyu.intercom.ui.setting.shark;

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
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CHOPTION;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_ChannelInfoOperate.SHARK_CH_UERR;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class SharkPresetChCssEditActivity extends BaseActivity implements OnClickListener {
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
    private int q;
    private int r;

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
                new SharkPickerDialog(this).b(R.string.receive_sub_tone).a(f[0], f[1]).b(R.string.common_select, new SharkPickerDialog.a() {
                    public void a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
                        float f = 16.0f;
                        if (SharkPresetChCssEditActivity.this.d && ((TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvTxCss.getText()) || SharkPresetChCssEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.a[0])) && (TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvRxCss.getText()) || SharkPresetChCssEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.a[0])))) {
                            SharkPresetChCssEditActivity.this.d = false;
                            SharkPresetChCssEditActivity.this.a = v.a(i + 1, i2);
                            SharkPresetChCssEditActivity.this.mTvTxCss.setText(str2);
                            SharkPresetChCssEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                        }
                        SharkPresetChCssEditActivity.this.b = v.a(i + 1, i2);
                        SharkPresetChCssEditActivity.this.mTvRxCss.setText(str2);
                        TextView textView = SharkPresetChCssEditActivity.this.mTvRxCss;
                        if (i2 != 0) {
                            f = 18.0f;
                        }
                        textView.setTextSize(2, f);
                    }
                }).a((int) R.string.common_cancel, (SharkPickerDialog.a) null).show();
                return;
            case R.id.fl_tx_tone /*2131755323*/:
                v.a((View) this.mFlTxCss);
                int[] f2 = v.f(this.a);
                new SharkPickerDialog(this).b(R.string.emissive_sub_tone).a(f2[0], f2[1]).b(R.string.common_select, new SharkPickerDialog.a() {
                    public void a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
                        float f = 16.0f;
                        if (SharkPresetChCssEditActivity.this.d && ((TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvTxCss.getText()) || SharkPresetChCssEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.a[0])) && (TextUtils.isEmpty(SharkPresetChCssEditActivity.this.mTvRxCss.getText()) || SharkPresetChCssEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.a[0])))) {
                            SharkPresetChCssEditActivity.this.d = false;
                            SharkPresetChCssEditActivity.this.b = v.a(i + 1, i2);
                            SharkPresetChCssEditActivity.this.mTvRxCss.setText(str2);
                            SharkPresetChCssEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                        }
                        SharkPresetChCssEditActivity.this.a = v.a(i + 1, i2);
                        SharkPresetChCssEditActivity.this.mTvTxCss.setText(str2);
                        TextView textView = SharkPresetChCssEditActivity.this.mTvTxCss;
                        if (i2 != 0) {
                            f = 18.0f;
                        }
                        textView.setTextSize(2, f);
                    }
                }).a((int) R.string.common_cancel, (SharkPickerDialog.a) null).show();
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
    public void receiveChannelInfoOperateResp(SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        s.b(this.e, "receiveChannelInfoOperateResp");
        if (sHARK_ChannelInfoOperate.getResult() == SHARK_CH_UERR.SHARK_CH_OK && sHARK_ChannelInfoOperate.getOption() == SHARK_CHOPTION.SHARK_CH_QUERY && sHARK_ChannelInfoOperate.hasCh()) {
            final SealSharkChannel a2 = ab.a(sHARK_ChannelInfoOperate.getCh());
            this.b = a2.j();
            this.a = a2.k();
            this.q = this.b;
            this.r = this.a;
            runOnUiThread(new Runnable() {
                public void run() {
                    float f;
                    float f2 = 16.0f;
                    SharkPresetChCssEditActivity.this.channelName.setText(a2.g());
                    SharkPresetChCssEditActivity.this.channelNumber.setText(v.c(a2.e()));
                    SharkPresetChCssEditActivity.this.mTvRxCss.setText(v.e(SharkPresetChCssEditActivity.this.b));
                    TextView textView = SharkPresetChCssEditActivity.this.mTvRxCss;
                    if (SharkPresetChCssEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.a[0])) {
                        f = 16.0f;
                    } else {
                        f = 18.0f;
                    }
                    textView.setTextSize(2, f);
                    SharkPresetChCssEditActivity.this.mTvTxCss.setText(v.e(SharkPresetChCssEditActivity.this.a));
                    TextView textView2 = SharkPresetChCssEditActivity.this.mTvTxCss;
                    if (!SharkPresetChCssEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.a[0])) {
                        f2 = 18.0f;
                    }
                    textView2.setTextSize(2, f2);
                }
            });
        }
    }

    private void c() {
        this.channelNumber.setTypeface(l.c);
        Typeface typeface = l.b;
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
            this.mTvTxCss.setText(v.e(this.a));
            TextView textView = this.mTvTxCss;
            if (this.mTvTxCss.getText().equals(SharkPickerDialog.a[0])) {
                f = 16.0f;
            } else {
                f = 18.0f;
            }
            textView.setTextSize(2, f);
            this.mTvRxCss.setText(v.e(this.b));
            TextView textView2 = this.mTvRxCss;
            if (!this.mTvRxCss.getText().equals(SharkPickerDialog.a[0])) {
                f2 = 18.0f;
            }
            textView2.setTextSize(2, f2);
            ab.e(this.c);
        }
    }
}
