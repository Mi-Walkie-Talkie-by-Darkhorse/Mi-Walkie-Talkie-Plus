package com.ifengyu.intercom.ui.setting.shark;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.services.core.AMapException;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.a.c;
import com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog;
import com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog.a;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;
import com.ifengyu.intercom.ui.widget.view.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class SharkChannelEditActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public int a;
    /* access modifiers changed from: private */
    public int b;
    /* access modifiers changed from: private */
    public int c;
    /* access modifiers changed from: private */
    public int d;
    @BindView(2131755325)
    Button mDeleteBtn;
    @BindView(2131755379)
    LinearLayout mDeleteLayout;
    @BindView(2131755316)
    ClearEditText mEtEditName;
    @BindView(2131755321)
    FrameLayout mFlRXCss;
    @BindView(2131755317)
    FrameLayout mFlRxFreq;
    @BindView(2131755323)
    FrameLayout mFlTxCss;
    @BindView(2131755319)
    FrameLayout mFlTxFreq;
    @BindView(2131755836)
    TextView mTitleBarConfirm;
    @BindView(2131755203)
    ImageView mTitleBarLeft;
    @BindView(2131755588)
    TextView mTitleBarTitle;
    @BindView(2131755322)
    TextView mTvRxCss;
    @BindView(2131755318)
    TextView mTvRxFreq;
    @BindView(2131755324)
    TextView mTvTxCss;
    @BindView(2131755320)
    TextView mTvTxFreq;
    private int q;
    /* access modifiers changed from: private */
    public SealSharkChannel r;
    /* access modifiers changed from: private */
    public boolean s = true;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_shark_channel_edit);
        ButterKnife.bind((Activity) this);
        c();
        d();
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
    public void onDestroy() {
        super.onDestroy();
    }

    public void onClick(View view) {
        String obj;
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.fl_rx_freq /*2131755317*/:
                v.a((View) this.mFlRxFreq);
                a(null, 2, new c() {
                    public void a(String str) {
                        s.b(SharkChannelEditActivity.this.e, "insert down freq:" + str);
                        SharkChannelEditActivity.this.b = v.a(str);
                        SharkChannelEditActivity.this.mTvRxFreq.setText(str);
                        if (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxFreq.getText())) {
                            SharkChannelEditActivity.this.a = SharkChannelEditActivity.this.b;
                            SharkChannelEditActivity.this.mTvTxFreq.setText(str);
                        }
                    }

                    public void b(String str) {
                    }
                });
                return;
            case R.id.fl_tx_freq /*2131755319*/:
                v.a((View) this.mFlTxFreq);
                a(null, 1, new c() {
                    public void a(String str) {
                        s.b(SharkChannelEditActivity.this.e, "insert up freq:" + str);
                        SharkChannelEditActivity.this.a = v.a(str);
                        SharkChannelEditActivity.this.mTvTxFreq.setText(str);
                        if (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxFreq.getText())) {
                            SharkChannelEditActivity.this.b = SharkChannelEditActivity.this.a;
                            SharkChannelEditActivity.this.mTvRxFreq.setText(str);
                        }
                    }

                    public void b(String str) {
                    }
                });
                return;
            case R.id.fl_rx_tone /*2131755321*/:
                v.a((View) this.mFlRXCss);
                int[] f = v.f(this.d);
                new SharkPickerDialog(this).b(R.string.receive_sub_tone).a(f[0], f[1]).b(R.string.common_select, new a() {
                    public void a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
                        float f = 16.0f;
                        if (SharkChannelEditActivity.this.s && ((TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxCss.getText()) || SharkChannelEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.a[0])) && (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxCss.getText()) || SharkChannelEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.a[0])))) {
                            SharkChannelEditActivity.this.s = false;
                            SharkChannelEditActivity.this.c = v.a(i + 1, i2);
                            SharkChannelEditActivity.this.mTvTxCss.setText(str2);
                            SharkChannelEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                        }
                        SharkChannelEditActivity.this.d = v.a(i + 1, i2);
                        SharkChannelEditActivity.this.mTvRxCss.setText(str2);
                        TextView textView = SharkChannelEditActivity.this.mTvRxCss;
                        if (i2 != 0) {
                            f = 18.0f;
                        }
                        textView.setTextSize(2, f);
                    }
                }).a((int) R.string.common_cancel, (a) null).show();
                return;
            case R.id.fl_tx_tone /*2131755323*/:
                v.a((View) this.mFlTxCss);
                int[] f2 = v.f(this.c);
                new SharkPickerDialog(this).b(R.string.emissive_sub_tone).a(f2[0], f2[1]).b(R.string.common_select, new a() {
                    public void a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
                        float f = 16.0f;
                        if (SharkChannelEditActivity.this.s && ((TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxCss.getText()) || SharkChannelEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.a[0])) && (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxCss.getText()) || SharkChannelEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.a[0])))) {
                            SharkChannelEditActivity.this.s = false;
                            SharkChannelEditActivity.this.d = v.a(i + 1, i2);
                            SharkChannelEditActivity.this.mTvRxCss.setText(str2);
                            SharkChannelEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
                        }
                        SharkChannelEditActivity.this.c = v.a(i + 1, i2);
                        SharkChannelEditActivity.this.mTvTxCss.setText(str2);
                        TextView textView = SharkChannelEditActivity.this.mTvTxCss;
                        if (i2 != 0) {
                            f = 18.0f;
                        }
                        textView.setTextSize(2, f);
                    }
                }).a((int) R.string.common_cancel, (a) null).show();
                return;
            case R.id.btn_delete /*2131755325*/:
                new d(this).a((int) R.string.common_delete).c((int) R.string.dialog_message_are_you_sure_delete_selected_relay_channel).b(true).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        SharkChannelEditActivity.this.setResult(AMapException.CODE_AMAP_ENGINE_TABLEID_NOT_EXIST, new Intent().putExtra("customChannel", SharkChannelEditActivity.this.r));
                        SharkChannelEditActivity.this.finish();
                    }
                }).b().c();
                return;
            case R.id.title_bar_confirm /*2131755836*/:
                if (!TextUtils.isEmpty(this.mTvTxFreq.getText()) || !TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                    if (TextUtils.isEmpty(this.mEtEditName.getText())) {
                        obj = ad.a((int) R.string.channel_custom_all_d, Integer.valueOf(this.q + 1));
                    } else {
                        obj = this.mEtEditName.getText().toString();
                    }
                    String trim = obj.trim();
                    SealSharkChannel sealSharkChannel = new SealSharkChannel();
                    if ("seal_action_modify_channel".equals(getIntent().getAction())) {
                        sealSharkChannel.a(Long.valueOf(v.b(2, this.q)));
                        sealSharkChannel.a(this.q);
                        sealSharkChannel.b(2);
                        sealSharkChannel.a(trim);
                        if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                            sealSharkChannel.d(this.a);
                            sealSharkChannel.e(this.a);
                        } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                            sealSharkChannel.d(this.b);
                            sealSharkChannel.e(this.b);
                        } else {
                            sealSharkChannel.d(this.b);
                            sealSharkChannel.e(this.a);
                        }
                        sealSharkChannel.i(this.c);
                        sealSharkChannel.h(this.d);
                        setResult(2002, new Intent().putExtra("customChannel", sealSharkChannel));
                    } else if ("seal_action_insert_channel".equals(getIntent().getAction())) {
                        sealSharkChannel.a(Long.valueOf(v.b(2, this.q)));
                        sealSharkChannel.a(this.q);
                        sealSharkChannel.b(2);
                        sealSharkChannel.a(trim);
                        if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                            sealSharkChannel.d(this.a);
                            sealSharkChannel.e(this.a);
                        } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                            sealSharkChannel.d(this.b);
                            sealSharkChannel.e(this.b);
                        } else {
                            sealSharkChannel.d(this.b);
                            sealSharkChannel.e(this.a);
                        }
                        sealSharkChannel.i(this.c);
                        sealSharkChannel.h(this.d);
                        setResult(2001, new Intent().putExtra("customChannel", sealSharkChannel));
                    }
                    finish();
                    return;
                }
                v.a((CharSequence) ad.a((int) R.string.toast_please_edit_frequency), false);
                return;
            default:
                return;
        }
    }

    private void c() {
        Typeface typeface = l.b;
        this.mTvTxFreq.setTypeface(typeface);
        this.mTvRxFreq.setTypeface(typeface);
        this.mTvTxCss.setTypeface(typeface);
        this.mTvRxCss.setTypeface(typeface);
        this.mTitleBarLeft.setOnClickListener(this);
        this.mTitleBarConfirm.setOnClickListener(this);
        this.mFlTxFreq.setOnClickListener(this);
        this.mFlRxFreq.setOnClickListener(this);
        this.mFlTxCss.setOnClickListener(this);
        this.mFlRXCss.setOnClickListener(this);
        this.mDeleteBtn.setOnClickListener(this);
        this.mTitleBarConfirm.setVisibility(0);
        this.mTitleBarConfirm.setText(R.string.completed);
    }

    private void d() {
        float f = 16.0f;
        Intent intent = getIntent();
        if ("seal_action_modify_channel".equals(intent.getAction())) {
            this.mDeleteLayout.setVisibility(0);
            this.r = (SealSharkChannel) intent.getParcelableExtra("seal_action_modify_channel_info");
            if (this.r != null) {
                this.q = this.r.b();
                this.a = this.r.f();
                this.b = this.r.e();
                this.c = this.r.k();
                this.d = this.r.j();
                this.mTitleBarTitle.setText(R.string.modify_channel);
                this.mEtEditName.setText(this.r.g());
                this.mEtEditName.setSelection(this.r.g().length());
                this.mEtEditName.setHint(ad.a((int) R.string.channel_custom_all_d, Integer.valueOf(this.q + 1)));
                this.mTvTxFreq.setText(v.c(this.a));
                this.mTvTxCss.setText(v.e(this.c));
                this.mTvTxCss.setTextSize(2, this.mTvTxCss.getText().equals(SharkPickerDialog.a[0]) ? 16.0f : 18.0f);
                this.mTvRxFreq.setText(v.c(this.b));
                this.mTvRxCss.setText(v.e(this.d));
                TextView textView = this.mTvRxCss;
                if (!this.mTvRxCss.getText().equals(SharkPickerDialog.a[0])) {
                    f = 18.0f;
                }
                textView.setTextSize(2, f);
            }
        } else {
            this.q = intent.getIntExtra("seal_action_insert_channel_index", 0);
            this.mTitleBarTitle.setText(R.string.add_channel);
            this.mEtEditName.setHint(ad.a((int) R.string.channel_custom_all_d, Integer.valueOf(this.q + 1)));
        }
        this.mEtEditName.setFilters(new InputFilter[]{new b(this.mEtEditName)});
    }

    private void a(String str, int i, c cVar) {
        a aVar;
        if (!TextUtils.isEmpty(str)) {
            aVar = new a(this, str, i);
        } else {
            aVar = new a(this, null, i);
        }
        aVar.a(cVar);
        aVar.show();
    }
}
