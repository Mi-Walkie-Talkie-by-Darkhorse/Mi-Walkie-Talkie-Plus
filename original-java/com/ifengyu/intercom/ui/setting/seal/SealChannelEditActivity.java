package com.ifengyu.intercom.ui.setting.seal;

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
import com.ifengyu.intercom.ui.setting.seal.d;
import com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog;
import com.ifengyu.intercom.ui.widget.dialog.f;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;
import java.util.Locale;

/* loaded from: classes2.dex */
public class SealChannelEditActivity extends BaseActivity implements View.OnClickListener {
    @BindView(R.id.channel_index)
    TextView channelIndex;
    @BindView(R.id.btn_delete)
    Button mDeleteBtn;
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
    class a implements d.k {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.setting.seal.d.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.setting.seal.d.k
        public void b(String str) {
            String str2 = ((BaseActivity) SealChannelEditActivity.this).f6370a;
            z.a(str2, "insert down freq:" + str);
            SealChannelEditActivity.this.r = c0.c(str);
            SealChannelEditActivity.this.mTvRxFreq.setText(str);
            if (TextUtils.isEmpty(SealChannelEditActivity.this.mTvTxFreq.getText())) {
                SealChannelEditActivity sealChannelEditActivity = SealChannelEditActivity.this;
                sealChannelEditActivity.q = sealChannelEditActivity.r;
                SealChannelEditActivity.this.mTvTxFreq.setText(str);
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements d.k {
        b() {
        }

        @Override // com.ifengyu.intercom.ui.setting.seal.d.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.setting.seal.d.k
        public void b(String str) {
            String str2 = ((BaseActivity) SealChannelEditActivity.this).f6370a;
            z.a(str2, "insert up freq:" + str);
            SealChannelEditActivity.this.q = c0.c(str);
            SealChannelEditActivity.this.mTvTxFreq.setText(str);
            if (TextUtils.isEmpty(SealChannelEditActivity.this.mTvRxFreq.getText())) {
                SealChannelEditActivity sealChannelEditActivity = SealChannelEditActivity.this;
                sealChannelEditActivity.r = sealChannelEditActivity.q;
                SealChannelEditActivity.this.mTvRxFreq.setText(str);
            }
        }
    }

    /* loaded from: classes2.dex */
    class c implements SealPickerDialog.b {
        c() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog.b
        public void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            float f = 16.0f;
            if (SealChannelEditActivity.this.w && ((TextUtils.isEmpty(SealChannelEditActivity.this.mTvTxCss.getText()) || SealChannelEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.d[0])) && (TextUtils.isEmpty(SealChannelEditActivity.this.mTvRxCss.getText()) || SealChannelEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.d[0])))) {
                SealChannelEditActivity.this.w = false;
                SealChannelEditActivity.this.s = c0.b(i + 1, i2);
                SealChannelEditActivity.this.mTvTxCss.setText(str2);
                SealChannelEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealChannelEditActivity.this.t = c0.b(i + 1, i2);
            SealChannelEditActivity.this.mTvRxCss.setText(str2);
            TextView textView = SealChannelEditActivity.this.mTvRxCss;
            if (i2 != 0) {
                f = 18.0f;
            }
            textView.setTextSize(2, f);
        }
    }

    /* loaded from: classes2.dex */
    class d implements SealPickerDialog.b {
        d() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog.b
        public void a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            float f = 16.0f;
            if (SealChannelEditActivity.this.w && ((TextUtils.isEmpty(SealChannelEditActivity.this.mTvTxCss.getText()) || SealChannelEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.d[0])) && (TextUtils.isEmpty(SealChannelEditActivity.this.mTvRxCss.getText()) || SealChannelEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.d[0])))) {
                SealChannelEditActivity.this.w = false;
                SealChannelEditActivity.this.t = c0.b(i + 1, i2);
                SealChannelEditActivity.this.mTvRxCss.setText(str2);
                SealChannelEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealChannelEditActivity.this.s = c0.b(i + 1, i2);
            SealChannelEditActivity.this.mTvTxCss.setText(str2);
            TextView textView = SealChannelEditActivity.this.mTvTxCss;
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
            SealChannelEditActivity.this.setResult(2003, new Intent().putExtra("customChannel", SealChannelEditActivity.this.v));
            SealChannelEditActivity.this.finish();
        }
    }

    private void w() {
        Intent intent = getIntent();
        if ("seal_action_modify_channel".equals(intent.getAction())) {
            this.mDeleteBtn.setVisibility(0);
            SealSharkChannel sealSharkChannel = (SealSharkChannel) intent.getParcelableExtra("seal_action_modify_channel_info");
            this.v = sealSharkChannel;
            if (sealSharkChannel != null) {
                this.u = sealSharkChannel.f();
                this.q = this.v.l();
                this.r = this.v.i();
                this.s = this.v.k();
                this.t = this.v.h();
                TextView textView = this.channelIndex;
                textView.setText(k0.c(R.string.channel_custom) + String.format(Locale.getDefault(), " C%02d", Integer.valueOf(this.v.f() + 1)));
                this.mTitleBarTitle.setText(R.string.modify_channel);
                this.mEtEditName.setText(this.v.e());
                this.mEtEditName.setSelection(this.v.e().length());
                this.mTvTxFreq.setText(c0.b(this.q));
                this.mTvTxCss.setText(c0.g(this.s));
                TextView textView2 = this.mTvTxCss;
                float f = 16.0f;
                textView2.setTextSize(2, textView2.getText().equals(SealPickerDialog.d[0]) ? 16.0f : 18.0f);
                this.mTvRxFreq.setText(c0.b(this.r));
                this.mTvRxCss.setText(c0.g(this.t));
                TextView textView3 = this.mTvRxCss;
                if (!textView3.getText().equals(SealPickerDialog.d[0])) {
                    f = 18.0f;
                }
                textView3.setTextSize(2, f);
            }
        } else {
            this.u = intent.getIntExtra("seal_action_insert_channel_index", 0);
            this.mTitleBarTitle.setText(R.string.add_channel);
            TextView textView4 = this.channelIndex;
            textView4.setText(k0.c(R.string.channel_custom) + String.format(Locale.getDefault(), " C%02d", Integer.valueOf(this.u + 1)));
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
                    SealPickerDialog sealPickerDialog = new SealPickerDialog(this);
                    sealPickerDialog.b(R.string.receive_sub_tone);
                    sealPickerDialog.a(a2[0], a2[1]);
                    sealPickerDialog.b(R.string.common_select, new c());
                    sealPickerDialog.a(R.string.common_cancel, (SealPickerDialog.b) null);
                    sealPickerDialog.show();
                    return;
                case R.id.fl_tx_freq /* 2131296654 */:
                    c0.b(this.mFlTxFreq);
                    a(null, 1, new b());
                    return;
                case R.id.fl_tx_tone /* 2131296655 */:
                    c0.b(this.mFlTxCss);
                    int[] a3 = c0.a(this.s);
                    SealPickerDialog sealPickerDialog2 = new SealPickerDialog(this);
                    sealPickerDialog2.b(R.string.emissive_sub_tone);
                    sealPickerDialog2.a(a3[0], a3[1]);
                    sealPickerDialog2.b(R.string.common_select, new d());
                    sealPickerDialog2.a(R.string.common_cancel, (SealPickerDialog.b) null);
                    sealPickerDialog2.show();
                    return;
                default:
                    switch (id) {
                        case R.id.title_bar_confirm /* 2131297304 */:
                            if (!TextUtils.isEmpty(this.mTvTxFreq.getText()) || !TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                String trim = (TextUtils.isEmpty(this.mEtEditName.getText()) ? "" : this.mEtEditName.getText().toString()).trim();
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
        setContentView(R.layout.activity_seal_channel_edit);
        ButterKnife.bind(this);
        x();
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    private void a(String str, int i, d.k kVar) {
        d dVar;
        if (!TextUtils.isEmpty(str)) {
            dVar = new d(this, str, i);
        } else {
            dVar = new d(this, null, i);
        }
        dVar.a(kVar);
        dVar.show();
    }
}
