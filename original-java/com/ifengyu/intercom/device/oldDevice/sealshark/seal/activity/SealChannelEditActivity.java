package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

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
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p170c.SealInsertChannelDialog;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.SealPickerDialog;
import com.ifengyu.intercom.p216ui.widget.view.ClearEditText;
import com.ifengyu.intercom.p216ui.widget.view.MyInputFilter;
import com.ifengyu.library.utils.UIUtils;
import java.util.Locale;

/* loaded from: classes2.dex */
public class SealChannelEditActivity extends BaseActivity1 implements View.OnClickListener {
    @BindView(R.id.channel_index)
    TextView channelIndex;

    /* renamed from: j */
    private int f13249j;

    /* renamed from: k */
    private int f13250k;

    /* renamed from: l */
    private int f13251l;

    /* renamed from: m */
    private int f13252m;
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

    /* renamed from: n */
    private int f13253n;

    /* renamed from: o */
    private SealSharkChannelModel f13254o;

    /* renamed from: p */
    private boolean f13255p = true;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelEditActivity$a */
    /* loaded from: classes2.dex */
    class C3679a implements SealInsertChannelDialog.InterfaceC3649k {
        C3679a() {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p170c.SealInsertChannelDialog.InterfaceC3649k
        /* renamed from: a */
        public void mo12867a(String str) {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p170c.SealInsertChannelDialog.InterfaceC3649k
        /* renamed from: b */
        public void mo12866b(String str) {
            String str2 = ((BaseActivity1) SealChannelEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert down freq:" + str);
            SealChannelEditActivity.this.f13250k = MethodsUtils.m11291i(str);
            SealChannelEditActivity.this.mTvRxFreq.setText(str);
            if (TextUtils.isEmpty(SealChannelEditActivity.this.mTvTxFreq.getText())) {
                SealChannelEditActivity sealChannelEditActivity = SealChannelEditActivity.this;
                sealChannelEditActivity.f13249j = sealChannelEditActivity.f13250k;
                SealChannelEditActivity.this.mTvTxFreq.setText(str);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelEditActivity$b */
    /* loaded from: classes2.dex */
    class C3680b implements SealInsertChannelDialog.InterfaceC3649k {
        C3680b() {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p170c.SealInsertChannelDialog.InterfaceC3649k
        /* renamed from: a */
        public void mo12867a(String str) {
        }

        @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p170c.SealInsertChannelDialog.InterfaceC3649k
        /* renamed from: b */
        public void mo12866b(String str) {
            String str2 = ((BaseActivity1) SealChannelEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert up freq:" + str);
            SealChannelEditActivity.this.f13249j = MethodsUtils.m11291i(str);
            SealChannelEditActivity.this.mTvTxFreq.setText(str);
            if (TextUtils.isEmpty(SealChannelEditActivity.this.mTvRxFreq.getText())) {
                SealChannelEditActivity sealChannelEditActivity = SealChannelEditActivity.this;
                sealChannelEditActivity.f13250k = sealChannelEditActivity.f13249j;
                SealChannelEditActivity.this.mTvRxFreq.setText(str);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelEditActivity$c */
    /* loaded from: classes2.dex */
    class C3681c implements SealPickerDialog.InterfaceC4893b {
        C3681c() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SealPickerDialog.InterfaceC4893b
        /* renamed from: a */
        public void mo9051a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            if (SealChannelEditActivity.this.f13255p && ((TextUtils.isEmpty(SealChannelEditActivity.this.mTvTxCss.getText()) || SealChannelEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.f15850d[0])) && (TextUtils.isEmpty(SealChannelEditActivity.this.mTvRxCss.getText()) || SealChannelEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.f15850d[0])))) {
                SealChannelEditActivity.this.f13255p = false;
                SealChannelEditActivity.this.f13251l = MethodsUtils.m11300J(i + 1, i2);
                SealChannelEditActivity.this.mTvTxCss.setText(str2);
                SealChannelEditActivity.this.mTvTxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealChannelEditActivity.this.f13252m = MethodsUtils.m11300J(i + 1, i2);
            SealChannelEditActivity.this.mTvRxCss.setText(str2);
            SealChannelEditActivity.this.mTvRxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelEditActivity$d */
    /* loaded from: classes2.dex */
    class C3682d implements SealPickerDialog.InterfaceC4893b {
        C3682d() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.SealPickerDialog.InterfaceC4893b
        /* renamed from: a */
        public void mo9051a(SealPickerDialog sealPickerDialog, int i, String str, int i2, String str2) {
            if (SealChannelEditActivity.this.f13255p && ((TextUtils.isEmpty(SealChannelEditActivity.this.mTvTxCss.getText()) || SealChannelEditActivity.this.mTvTxCss.getText().equals(SealPickerDialog.f15850d[0])) && (TextUtils.isEmpty(SealChannelEditActivity.this.mTvRxCss.getText()) || SealChannelEditActivity.this.mTvRxCss.getText().equals(SealPickerDialog.f15850d[0])))) {
                SealChannelEditActivity.this.f13255p = false;
                SealChannelEditActivity.this.f13252m = MethodsUtils.m11300J(i + 1, i2);
                SealChannelEditActivity.this.mTvRxCss.setText(str2);
                SealChannelEditActivity.this.mTvRxCss.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
            }
            SealChannelEditActivity.this.f13251l = MethodsUtils.m11300J(i + 1, i2);
            SealChannelEditActivity.this.mTvTxCss.setText(str2);
            SealChannelEditActivity.this.mTvTxCss.setTextSize(2, i2 != 0 ? 18.0f : 16.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelEditActivity$e */
    /* loaded from: classes2.dex */
    class DialogInterface$OnClickListenerC3683e implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3683e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SealChannelEditActivity.this.setResult(2003, new Intent().putExtra("customChannel", SealChannelEditActivity.this.f13254o));
            SealChannelEditActivity.this.finish();
        }
    }

    /* renamed from: R */
    private void m12870R() {
        Intent intent = getIntent();
        if ("seal_action_modify_channel".equals(intent.getAction())) {
            this.mDeleteBtn.setVisibility(0);
            SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) intent.getParcelableExtra("seal_action_modify_channel_info");
            this.f13254o = sealSharkChannelModel;
            if (sealSharkChannelModel != null) {
                this.f13253n = sealSharkChannelModel.getNo();
                this.f13249j = this.f13254o.getTxFreq();
                this.f13250k = this.f13254o.getRxFreq();
                this.f13251l = this.f13254o.getTxCss();
                this.f13252m = this.f13254o.getRxCss();
                TextView textView = this.channelIndex;
                textView.setText(UIUtils.m8603o(R.string.channel_custom) + String.format(Locale.getDefault(), " C%02d", Integer.valueOf(this.f13254o.getNo() + 1)));
                this.mTitleBarTitle.setText(R.string.modify_channel);
                this.mEtEditName.setText(this.f13254o.getName());
                this.mEtEditName.setSelection(this.f13254o.getName().length());
                this.mTvTxFreq.setText(MethodsUtils.m11290j(this.f13249j));
                this.mTvTxCss.setText(MethodsUtils.m11305E(this.f13251l));
                TextView textView2 = this.mTvTxCss;
                CharSequence text = textView2.getText();
                String[] strArr = SealPickerDialog.f15850d;
                textView2.setTextSize(2, text.equals(strArr[0]) ? 16.0f : 18.0f);
                this.mTvRxFreq.setText(MethodsUtils.m11290j(this.f13250k));
                this.mTvRxCss.setText(MethodsUtils.m11305E(this.f13252m));
                TextView textView3 = this.mTvRxCss;
                textView3.setTextSize(2, textView3.getText().equals(strArr[0]) ? 16.0f : 18.0f);
            }
        } else {
            this.f13253n = intent.getIntExtra("seal_action_insert_channel_index", 0);
            this.mTitleBarTitle.setText(R.string.add_channel);
            TextView textView4 = this.channelIndex;
            textView4.setText(UIUtils.m8603o(R.string.channel_custom) + String.format(Locale.getDefault(), " C%02d", Integer.valueOf(this.f13253n + 1)));
        }
        ClearEditText clearEditText = this.mEtEditName;
        clearEditText.setFilters(new InputFilter[]{new MyInputFilter(clearEditText)});
    }

    /* renamed from: S */
    private void m12869S() {
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
    private void m12868T(String str, int i, SealInsertChannelDialog.InterfaceC3649k interfaceC3649k) {
        SealInsertChannelDialog sealInsertChannelDialog;
        if (!TextUtils.isEmpty(str)) {
            sealInsertChannelDialog = new SealInsertChannelDialog(this, str, i);
        } else {
            sealInsertChannelDialog = new SealInsertChannelDialog(this, null, i);
        }
        sealInsertChannelDialog.m12973v(interfaceC3649k);
        sealInsertChannelDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.btn_delete) {
            switch (id) {
                case R.id.fl_rx_freq /* 2131296721 */:
                    MethodsUtils.m11281s(this.mFlRxFreq);
                    m12868T(null, 2, new C3679a());
                    return;
                case R.id.fl_rx_tone /* 2131296722 */:
                    MethodsUtils.m11281s(this.mFlRXCss);
                    int[] m11293g = MethodsUtils.m11293g(this.f13252m);
                    SealPickerDialog sealPickerDialog = new SealPickerDialog(this);
                    sealPickerDialog.m9055h(R.string.receive_sub_tone);
                    sealPickerDialog.m9052k(m11293g[0], m11293g[1]);
                    sealPickerDialog.m9053j(R.string.common_select, new C3681c());
                    sealPickerDialog.m9054i(R.string.common_cancel, null);
                    sealPickerDialog.show();
                    return;
                case R.id.fl_tx_freq /* 2131296723 */:
                    MethodsUtils.m11281s(this.mFlTxFreq);
                    m12868T(null, 1, new C3680b());
                    return;
                case R.id.fl_tx_tone /* 2131296724 */:
                    MethodsUtils.m11281s(this.mFlTxCss);
                    int[] m11293g2 = MethodsUtils.m11293g(this.f13251l);
                    SealPickerDialog sealPickerDialog2 = new SealPickerDialog(this);
                    sealPickerDialog2.m9055h(R.string.emissive_sub_tone);
                    sealPickerDialog2.m9052k(m11293g2[0], m11293g2[1]);
                    sealPickerDialog2.m9053j(R.string.common_select, new C3682d());
                    sealPickerDialog2.m9054i(R.string.common_cancel, null);
                    sealPickerDialog2.show();
                    return;
                default:
                    switch (id) {
                        case R.id.title_bar_confirm /* 2131297421 */:
                            if (TextUtils.isEmpty(this.mTvTxFreq.getText()) && TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_please_edit_frequency), false);
                                return;
                            }
                            String trim = (TextUtils.isEmpty(this.mEtEditName.getText()) ? "" : this.mEtEditName.getText().toString()).trim();
                            SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
                            if ("seal_action_modify_channel".equals(getIntent().getAction())) {
                                sealSharkChannelModel.setNo(this.f13253n);
                                sealSharkChannelModel.setType(2);
                                sealSharkChannelModel.setName(trim);
                                if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13249j);
                                    sealSharkChannelModel.setTxFreq(this.f13249j);
                                } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13250k);
                                    sealSharkChannelModel.setTxFreq(this.f13250k);
                                } else {
                                    sealSharkChannelModel.setRxFreq(this.f13250k);
                                    sealSharkChannelModel.setTxFreq(this.f13249j);
                                }
                                sealSharkChannelModel.setTxCss(this.f13251l);
                                sealSharkChannelModel.setRxCss(this.f13252m);
                                setResult(2002, new Intent().putExtra("customChannel", sealSharkChannelModel));
                            } else if ("seal_action_insert_channel".equals(getIntent().getAction())) {
                                sealSharkChannelModel.setNo(this.f13253n);
                                sealSharkChannelModel.setType(2);
                                sealSharkChannelModel.setName(trim);
                                if (TextUtils.isEmpty(this.mTvRxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13249j);
                                    sealSharkChannelModel.setTxFreq(this.f13249j);
                                } else if (TextUtils.isEmpty(this.mTvTxFreq.getText())) {
                                    sealSharkChannelModel.setRxFreq(this.f13250k);
                                    sealSharkChannelModel.setTxFreq(this.f13250k);
                                } else {
                                    sealSharkChannelModel.setRxFreq(this.f13250k);
                                    sealSharkChannelModel.setTxFreq(this.f13249j);
                                }
                                sealSharkChannelModel.setTxCss(this.f13251l);
                                sealSharkChannelModel.setRxCss(this.f13252m);
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
        commonDialog.m9020q(R.string.common_select, new DialogInterface$OnClickListenerC3683e());
        commonDialog.m9032e();
        commonDialog.m9016u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_seal_channel_edit);
        ButterKnife.bind(this);
        m12869S();
        m12870R();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
