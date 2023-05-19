package com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity;

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
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p174c.SharkInsertChannelDialog;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.SharkPickerDialog;
import com.ifengyu.intercom.p216ui.widget.view.ClearEditText;
import com.ifengyu.intercom.p216ui.widget.view.MyInputFilter;
import com.ifengyu.library.utils.UIUtils;

/* loaded from: classes2.dex */
public class SharkChannelEditActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private int f13434j;

    /* renamed from: k */
    private int f13435k;

    /* renamed from: l */
    private int f13436l;

    /* renamed from: m */
    private int f13437m;
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

    /* renamed from: n */
    private int f13438n;

    /* renamed from: o */
    private SealSharkChannelModel f13439o;

    /* renamed from: p */
    private boolean f13440p = true;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelEditActivity$a */
    /* loaded from: classes2.dex */
    class C3760a implements SharkInsertChannelDialog.InterfaceC3666k {
        C3760a() {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p174c.SharkInsertChannelDialog.InterfaceC3666k
        /* renamed from: a */
        public void mo12704a(String str) {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p174c.SharkInsertChannelDialog.InterfaceC3666k
        /* renamed from: b */
        public void mo12703b(String str) {
            String str2 = ((BaseActivity1) SharkChannelEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert down freq:" + str);
            SharkChannelEditActivity.this.f13435k = MethodsUtils.m11291i(str);
            SharkChannelEditActivity.this.mTvRxFreq.setText(str);
            if (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxFreq.getText())) {
                SharkChannelEditActivity sharkChannelEditActivity = SharkChannelEditActivity.this;
                sharkChannelEditActivity.f13434j = sharkChannelEditActivity.f13435k;
                SharkChannelEditActivity.this.mTvTxFreq.setText(str);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelEditActivity$b */
    /* loaded from: classes2.dex */
    class C3761b implements SharkInsertChannelDialog.InterfaceC3666k {
        C3761b() {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p174c.SharkInsertChannelDialog.InterfaceC3666k
        /* renamed from: a */
        public void mo12704a(String str) {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p174c.SharkInsertChannelDialog.InterfaceC3666k
        /* renamed from: b */
        public void mo12703b(String str) {
            String str2 = ((BaseActivity1) SharkChannelEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert up freq:" + str);
            SharkChannelEditActivity.this.f13434j = MethodsUtils.m11291i(str);
            SharkChannelEditActivity.this.mTvTxFreq.setText(str);
            if (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxFreq.getText())) {
                SharkChannelEditActivity sharkChannelEditActivity = SharkChannelEditActivity.this;
                sharkChannelEditActivity.f13435k = sharkChannelEditActivity.f13434j;
                SharkChannelEditActivity.this.mTvRxFreq.setText(str);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelEditActivity$c */
    /* loaded from: classes2.dex */
    class C3762c implements SharkPickerDialog.InterfaceC4895b {
        C3762c() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SharkPickerDialog.InterfaceC4895b
        /* renamed from: a */
        public void mo9046a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
            if (SharkChannelEditActivity.this.f13440p && ((TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxCss.getText()) || SharkChannelEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.f15858d[0])) && (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxCss.getText()) || SharkChannelEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.f15858d[0])))) {
                SharkChannelEditActivity.this.f13440p = false;
                SharkChannelEditActivity.this.f13436l = MethodsUtils.m11300J(i + 1, i2);
                SharkChannelEditActivity.this.mTvTxCss.setText(str2);
                SharkChannelEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SharkChannelEditActivity.this.f13437m = MethodsUtils.m11300J(i + 1, i2);
            SharkChannelEditActivity.this.mTvRxCss.setText(str2);
            SharkChannelEditActivity.this.mTvRxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelEditActivity$d */
    /* loaded from: classes2.dex */
    class C3763d implements SharkPickerDialog.InterfaceC4895b {
        C3763d() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SharkPickerDialog.InterfaceC4895b
        /* renamed from: a */
        public void mo9046a(SharkPickerDialog sharkPickerDialog, int i, String str, int i2, String str2) {
            if (SharkChannelEditActivity.this.f13440p && ((TextUtils.isEmpty(SharkChannelEditActivity.this.mTvTxCss.getText()) || SharkChannelEditActivity.this.mTvTxCss.getText().equals(SharkPickerDialog.f15858d[0])) && (TextUtils.isEmpty(SharkChannelEditActivity.this.mTvRxCss.getText()) || SharkChannelEditActivity.this.mTvRxCss.getText().equals(SharkPickerDialog.f15858d[0])))) {
                SharkChannelEditActivity.this.f13440p = false;
                SharkChannelEditActivity.this.f13437m = MethodsUtils.m11300J(i + 1, i2);
                SharkChannelEditActivity.this.mTvRxCss.setText(str2);
                SharkChannelEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SharkChannelEditActivity.this.f13436l = MethodsUtils.m11300J(i + 1, i2);
            SharkChannelEditActivity.this.mTvTxCss.setText(str2);
            SharkChannelEditActivity.this.mTvTxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelEditActivity$e */
    /* loaded from: classes2.dex */
    class DialogInterface$OnClickListenerC3764e implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3764e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SharkChannelEditActivity.this.setResult(2003, new Intent().putExtra("customChannel", SharkChannelEditActivity.this.f13439o));
            SharkChannelEditActivity.this.finish();
        }
    }

    /* renamed from: R */
    private void m12707R() {
        Intent intent = getIntent();
        if ("seal_action_modify_channel".equals(intent.getAction())) {
            this.mDeleteLayout.setVisibility(0);
            SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) intent.getParcelableExtra("seal_action_modify_channel_info");
            this.f13439o = sealSharkChannelModel;
            if (sealSharkChannelModel != null) {
                this.f13438n = sealSharkChannelModel.getNo();
                this.f13434j = this.f13439o.getTxFreq();
                this.f13435k = this.f13439o.getRxFreq();
                this.f13436l = this.f13439o.getTxCss();
                this.f13437m = this.f13439o.getRxCss();
                this.mTitleBarTitle.setText(R.string.modify_channel);
                this.mEtEditName.setText(this.f13439o.getName());
                this.mEtEditName.setSelection(this.f13439o.getName().length());
                this.mEtEditName.setHint(UIUtils.m8602p(R.string.channel_custom_all_d, Integer.valueOf(this.f13438n + 1)));
                this.mTvTxFreq.setText(MethodsUtils.m11290j(this.f13434j));
                this.mTvTxCss.setText(MethodsUtils.m11304F(this.f13436l));
                TextView textView = this.mTvTxCss;
                CharSequence text = textView.getText();
                String[] strArr = SharkPickerDialog.f15858d;
                textView.setTextSize(2, text.equals(strArr[0]) ? 16.0f : 18.0f);
                this.mTvRxFreq.setText(MethodsUtils.m11290j(this.f13435k));
                this.mTvRxCss.setText(MethodsUtils.m11304F(this.f13437m));
                TextView textView2 = this.mTvRxCss;
                textView2.setTextSize(2, textView2.getText().equals(strArr[0]) ? 16.0f : 18.0f);
            }
        } else {
            this.f13438n = intent.getIntExtra("seal_action_insert_channel_index", 0);
            this.mTitleBarTitle.setText(R.string.add_channel);
            this.mEtEditName.setHint(UIUtils.m8602p(R.string.channel_custom_all_d, Integer.valueOf(this.f13438n + 1)));
        }
        ClearEditText clearEditText = this.mEtEditName;
        clearEditText.setFilters(new InputFilter[]{new MyInputFilter(clearEditText)});
    }

    /* renamed from: S */
    private void m12706S() {
        Typeface typeface = AppConstants.f13908b;
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

    /* renamed from: T */
    private void m12705T(String str, int i, SharkInsertChannelDialog.InterfaceC3666k interfaceC3666k) {
        SharkInsertChannelDialog sharkInsertChannelDialog;
        if (!TextUtils.isEmpty(str)) {
            sharkInsertChannelDialog = new SharkInsertChannelDialog(this, str, i);
        } else {
            sharkInsertChannelDialog = new SharkInsertChannelDialog(this, null, i);
        }
        sharkInsertChannelDialog.m12922v(interfaceC3666k);
        sharkInsertChannelDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.btn_delete) {
            switch (id) {
                case R.id.fl_rx_freq /* 2131296721 */:
                    MethodsUtils.m11281s(this.mFlRxFreq);
                    m12705T(null, 2, new C3760a());
                    return;
                case R.id.fl_rx_tone /* 2131296722 */:
                    MethodsUtils.m11281s(this.mFlRXCss);
                    int[] m11293g = MethodsUtils.m11293g(this.f13437m);
                    SharkPickerDialog sharkPickerDialog = new SharkPickerDialog(this);
                    sharkPickerDialog.m9050h(R.string.receive_sub_tone);
                    sharkPickerDialog.m9047k(m11293g[0], m11293g[1]);
                    sharkPickerDialog.m9048j(R.string.common_select, new C3762c());
                    sharkPickerDialog.m9049i(R.string.common_cancel, null);
                    sharkPickerDialog.show();
                    return;
                case R.id.fl_tx_freq /* 2131296723 */:
                    MethodsUtils.m11281s(this.mFlTxFreq);
                    m12705T(null, 1, new C3761b());
                    return;
                case R.id.fl_tx_tone /* 2131296724 */:
                    MethodsUtils.m11281s(this.mFlTxCss);
                    int[] m11293g2 = MethodsUtils.m11293g(this.f13436l);
                    SharkPickerDialog sharkPickerDialog2 = new SharkPickerDialog(this);
                    sharkPickerDialog2.m9050h(R.string.emissive_sub_tone);
                    sharkPickerDialog2.m9047k(m11293g2[0], m11293g2[1]);
                    sharkPickerDialog2.m9048j(R.string.common_select, new C3763d());
                    sharkPickerDialog2.m9049i(R.string.common_cancel, null);
                    sharkPickerDialog2.show();
                    return;
                default:
                    switch (id) {
                        case R.id.title_bar_confirm /* 2131297421 */:
                            if (TextUtils.isEmpty(this.mTvTxFreq.getText()) && TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_please_edit_frequency), false);
                                return;
                            }
                            String trim = (TextUtils.isEmpty(this.mEtEditName.getText()) ? UIUtils.m8602p(R.string.channel_custom_all_d, Integer.valueOf(this.f13438n + 1)) : this.mEtEditName.getText().toString()).trim();
                            SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
                            if ("seal_action_modify_channel".equals(getIntent().getAction())) {
                                sealSharkChannelModel.setNo(this.f13438n);
                                sealSharkChannelModel.setType(2);
                                sealSharkChannelModel.setName(trim);
                                if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13434j);
                                    sealSharkChannelModel.setTxFreq(this.f13434j);
                                } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13435k);
                                    sealSharkChannelModel.setTxFreq(this.f13435k);
                                } else {
                                    sealSharkChannelModel.setRxFreq(this.f13435k);
                                    sealSharkChannelModel.setTxFreq(this.f13434j);
                                }
                                sealSharkChannelModel.setTxCss(this.f13436l);
                                sealSharkChannelModel.setRxCss(this.f13437m);
                                setResult(2002, new Intent().putExtra("customChannel", sealSharkChannelModel));
                            } else if ("seal_action_insert_channel".equals(getIntent().getAction())) {
                                sealSharkChannelModel.setNo(this.f13438n);
                                sealSharkChannelModel.setType(2);
                                sealSharkChannelModel.setName(trim);
                                if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13434j);
                                    sealSharkChannelModel.setTxFreq(this.f13434j);
                                } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13435k);
                                    sealSharkChannelModel.setTxFreq(this.f13435k);
                                } else {
                                    sealSharkChannelModel.setRxFreq(this.f13435k);
                                    sealSharkChannelModel.setTxFreq(this.f13434j);
                                }
                                sealSharkChannelModel.setTxCss(this.f13436l);
                                sealSharkChannelModel.setRxCss(this.f13437m);
                                setResult(2001, new Intent().putExtra("customChannel", sealSharkChannelModel));
                            }
                            finish();
                            return;
                        case R.id.title_bar_left /* 2131297422 */:
                            finish();
                            return;
                        default:
                            return;
                    }
            }
        }
        CommonDialog commonDialog = new CommonDialog(this);
        commonDialog.m9018s(R.string.common_delete);
        commonDialog.m9026k(R.string.dialog_message_are_you_sure_delete_selected_relay_channel);
        commonDialog.m9029h(true);
        commonDialog.m9024m(R.string.common_cancel, null);
        commonDialog.m9020q(R.string.common_select, new DialogInterface$OnClickListenerC3764e());
        commonDialog.m9032e();
        commonDialog.m9016u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_shark_channel_edit);
        ButterKnife.bind(this);
        m12706S();
        m12707R();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
