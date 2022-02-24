package com.ifengyu.intercom.ui.setting.shark;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.a;
import com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;

/* loaded from: classes2.dex */
public class SharkChannelEditActivity extends BaseActivity implements View.OnClickListener {
    @BindView(R.id.btn_delete)
    Button mDeleteBtn;
    @BindView(R.id.btn_delete_layout)
    LinearLayout mDeleteLayout;
    @BindView(R.id.et_channel_edit_name)
    ClearEditText mEtEditName;
    @BindView(R.id.fl_rx_tone)
    FrameLayout mFlRXCss;
    @BindView(R.id.fl_rx_freq)
    FrameLayout mFlRxFreq;
    @BindView(R.id.fl_tx_tone)
    FrameLayout mFlTxCss;
    @BindView(R.id.fl_tx_freq)
    FrameLayout mFlTxFreq;
    @BindView(R.id.title_bar_confirm)
    TextView mTitleBarConfirm;
    @BindView(R.id.title_bar_left)
    ImageView mTitleBarLeft;
    @BindView(R.id.title_bar_title)
    TextView mTitleBarTitle;
    @BindView(R.id.tv_rx_tone)
    TextView mTvRxCss;
    @BindView(R.id.tv_rx_freq)
    TextView mTvRxFreq;
    @BindView(R.id.tv_tx_tone)
    TextView mTvTxCss;
    @BindView(R.id.tv_tx_freq)
    TextView mTvTxFreq;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private SealSharkChannel v;
    private boolean w = true;

    /* loaded from: classes2.dex */
    class a implements a.k {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.setting.shark.a.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.setting.shark.a.k
        public void b(String str) {
            String str2 = ((BaseActivity) SharkChannelEditActivity.this).f6370a;
            z.a(str2, "insert down freq:" + str);
            SharkChannelEditActivity.this.r = c0.c(str);
            SharkChannelEditActivity.this.mTvRxFreq.setText(str);
            if (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxFreq.getText())) {
                SharkChannelEditActivity sharkChannelEditActivity = SharkChannelEditActivity.this;
                sharkChannelEditActivity.q = sharkChannelEditActivity.r;
                SharkChannelEditActivity.this.mTvTxFreq.setText(str);
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements a.k {
        b() {
        }

        @Override // com.ifengyu.intercom.ui.setting.shark.a.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.setting.shark.a.k
        public void b(String str) {
            String str2 = ((BaseActivity) SharkChannelEditActivity.this).f6370a;
            z.a(str2, "insert up freq:" + str);
            SharkChannelEditActivity.this.q = c0.c(str);
            SharkChannelEditActivity.this.mTvTxFreq.setText(str);
            if (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxFreq.getText())) {
                SharkChannelEditActivity sharkChannelEditActivity = SharkChannelEditActivity.this;
                sharkChannelEditActivity.r = sharkChannelEditActivity.q;
                SharkChannelEditActivity.this.mTvRxFreq.setText(str);
            }
        }
    }

    /* loaded from: classes2.dex */
    class c implements SharkPickerDialog.b {
        c() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog.b
        public void a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
            float f = 16.0f;
            if (SharkChannelEditActivity.this.w && ((TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxCss.getText()) || SharkChannelEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.d[0])) && (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxCss.getText()) || SharkChannelEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.d[0])))) {
                SharkChannelEditActivity.this.w = false;
                SharkChannelEditActivity.this.s = c0.b(i + 1, i2);
                SharkChannelEditActivity.this.mTvTxCss.setText(str2);
                SharkChannelEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SharkChannelEditActivity.this.t = c0.b(i + 1, i2);
            SharkChannelEditActivity.this.mTvRxCss.setText(str2);
            TextView textView = SharkChannelEditActivity.this.mTvRxCss;
            if (i2 != 0) {
                f = 18.0f;
            }
            textView.setTextSize(2, f);
        }
    }

    /* loaded from: classes2.dex */
    class d implements SharkPickerDialog.b {
        d() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog.b
        public void a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
            float f = 16.0f;
            if (SharkChannelEditActivity.this.w && ((TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxCss.getText()) || SharkChannelEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.d[0])) && (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxCss.getText()) || SharkChannelEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.d[0])))) {
                SharkChannelEditActivity.this.w = false;
                SharkChannelEditActivity.this.t = c0.b(i + 1, i2);
                SharkChannelEditActivity.this.mTvRxCss.setText(str2);
                SharkChannelEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SharkChannelEditActivity.this.s = c0.b(i + 1, i2);
            SharkChannelEditActivity.this.mTvTxCss.setText(str2);
            TextView textView = SharkChannelEditActivity.this.mTvTxCss;
            if (i2 != 0) {
                f = 18.0f;
            }
            textView.setTextSize(2, f);
        }
    }

    /* loaded from: classes2.dex */
    class e implements DialogInterface.OnClickListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SharkChannelEditActivity.this.setResult(2003, new Intent().putExtra("customChannel", SharkChannelEditActivity.this.v));
            SharkChannelEditActivity.this.finish();
        }
    }

    private void w() {
        Intent intent = getIntent();
        if ("seal_action_modify_channel".equals(intent.getAction())) {
            this.mDeleteLayout.setVisibility(0);
            SealSharkChannel sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("seal_action_modify_channel_info");
            this.v = sealSharkChannel;
            if (sealSharkChannel != null) {
                this.u = sealSharkChannel.f();
                this.q = this.v.l();
                this.r = this.v.i();
                this.s = this.v.k();
                this.t = this.v.h();
                this.mTitleBarTitle.setText(R.string.modify_channel);
                this.mEtEditName.setText(this.v.e());
                this.mEtEditName.setSelection(this.v.e().length());
                this.mEtEditName.setHint(k0.a((int) R.string.channel_custom_all_d, Integer.valueOf(this.u + 1)));
                this.mTvTxFreq.setText(c0.b(this.q));
                this.mTvTxCss.setText(c0.h(this.s));
                TextView textView = this.mTvTxCss;
                float f = 16.0f;
                textView.setTextSize(2, textView.getText().equals(SharkPickerDialog.d[0]) ? 16.0f : 18.0f);
                this.mTvRxFreq.setText(c0.b(this.r));
                this.mTvRxCss.setText(c0.h(this.t));
                TextView textView2 = this.mTvRxCss;
                if (!textView2.getText().equals(SharkPickerDialog.d[0])) {
                    f = 18.0f;
                }
                textView2.setTextSize(2, f);
            }
        } else {
            this.u = intent.getIntExtra("seal_action_insert_channel_index", 0);
            this.mTitleBarTitle.setText(R.string.add_channel);
            this.mEtEditName.setHint(k0.a((int) R.string.channel_custom_all_d, Integer.valueOf(this.u + 1)));
        }
        ClearEditText clearEditText = this.mEtEditName;
        clearEditText.setFilters(new InputFilter[]{new com.ifengyu.intercom.ui.widget.view.a(clearEditText)});
    }

    private void x() {
        Typeface typeface = p.f5323a;
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.btn_delete) {
            switch (id) {
                case R.id.fl_rx_freq /* 2131296652 */:
                    c0.b(this.mFlRxFreq);
                    a(null, 2, new a());
                    return;
                case R.id.fl_rx_tone /* 2131296653 */:
                    c0.b(this.mFlRXCss);
                    int[] a2 = c0.a(this.t);
                    SharkPickerDialog sharkPickerDialog = new SharkPickerDialog(this);
                    sharkPickerDialog.b(R.string.receive_sub_tone);
                    sharkPickerDialog.a(a2[0], a2[1]);
                    sharkPickerDialog.b(R.string.common_select, new c());
                    sharkPickerDialog.a(R.string.common_cancel, (SharkPickerDialog.b) null);
                    sharkPickerDialog.show();
                    return;
                case R.id.fl_tx_freq /* 2131296654 */:
                    c0.b(this.mFlTxFreq);
                    a(null, 1, new b());
                    return;
                case R.id.fl_tx_tone /* 2131296655 */:
                    c0.b(this.mFlTxCss);
                    int[] a3 = c0.a(this.s);
                    SharkPickerDialog sharkPickerDialog2 = new SharkPickerDialog(this);
                    sharkPickerDialog2.b(R.string.emissive_sub_tone);
                    sharkPickerDialog2.a(a3[0], a3[1]);
                    sharkPickerDialog2.b(R.string.common_select, new d());
                    sharkPickerDialog2.a(R.string.common_cancel, (SharkPickerDialog.b) null);
                    sharkPickerDialog2.show();
                    return;
                default:
                    switch (id) {
                        case R.id.title_bar_confirm /* 2131297304 */:
                            if (!TextUtils.isEmpty(this.mTvTxFreq.getText()) || !TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                String trim = (TextUtils.isEmpty(this.mEtEditName.getText()) ? k0.a((int) R.string.channel_custom_all_d, Integer.valueOf(this.u + 1)) : this.mEtEditName.getText().toString()).trim();
                                SealSharkChannel sealSharkChannel = new SealSharkChannel();
                                if ("seal_action_modify_channel".equals(getIntent().getAction())) {
                                    sealSharkChannel.a(Long.valueOf(c0.a(2, this.u)));
                                    sealSharkChannel.b(this.u);
                                    sealSharkChannel.i(2);
                                    sealSharkChannel.a(trim);
                                    if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                        sealSharkChannel.d(this.q);
                                        sealSharkChannel.g(this.q);
                                    } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                                        sealSharkChannel.d(this.r);
                                        sealSharkChannel.g(this.r);
                                    } else {
                                        sealSharkChannel.d(this.r);
                                        sealSharkChannel.g(this.q);
                                    }
                                    sealSharkChannel.f(this.s);
                                    sealSharkChannel.c(this.t);
                                    setResult(2002, new Intent().putExtra("customChannel", sealSharkChannel));
                                } else if ("seal_action_insert_channel".equals(getIntent().getAction())) {
                                    sealSharkChannel.a(Long.valueOf(c0.a(2, this.u)));
                                    sealSharkChannel.b(this.u);
                                    sealSharkChannel.i(2);
                                    sealSharkChannel.a(trim);
                                    if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                        sealSharkChannel.d(this.q);
                                        sealSharkChannel.g(this.q);
                                    } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                                        sealSharkChannel.d(this.r);
                                        sealSharkChannel.g(this.r);
                                    } else {
                                        sealSharkChannel.d(this.r);
                                        sealSharkChannel.g(this.q);
                                    }
                                    sealSharkChannel.f(this.s);
                                    sealSharkChannel.c(this.t);
                                    setResult(2001, new Intent().putExtra("customChannel", sealSharkChannel));
                                }
                                finish();
                                return;
                            }
                            c0.a((CharSequence) k0.c(R.string.toast_please_edit_frequency), false);
                            return;
                        case R.id.title_bar_left /* 2131297305 */:
                            finish();
                            return;
                        default:
                            return;
                    }
            }
        } else {
            f fVar = new f(this);
            fVar.c(R.string.common_delete);
            fVar.b(R.string.dialog_message_are_you_sure_delete_selected_relay_channel);
            fVar.a(true);
            fVar.a(R.string.common_cancel, (DialogInterface.OnClickListener) null);
            fVar.c(R.string.common_select, new e());
            fVar.a();
            fVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_shark_channel_edit);
        ButterKnife.bind(this);
        x();
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    private void a(String str, int i, a.k kVar) {
        a aVar;
        if (!TextUtils.isEmpty(str)) {
            aVar = new a(this, str, i);
        } else {
            aVar = new a(this, null, i);
        }
        aVar.a(kVar);
        aVar.show();
    }
}
