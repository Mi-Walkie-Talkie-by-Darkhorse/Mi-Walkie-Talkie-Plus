package com.ifengyu.intercom.device.oldDevice.dolphin.activity;

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
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470;
import com.ifengyu.intercom.p216ui.widget.dialog.PickerDialog;
import com.ifengyu.intercom.p216ui.widget.view.ClearEditText;
import com.ifengyu.intercom.p216ui.widget.view.MyInputFilter;
import com.ifengyu.library.utils.UIUtils;

/* loaded from: classes2.dex */
public class DolphinRelayEditActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private int f12787j;

    /* renamed from: k */
    private int f12788k;

    /* renamed from: l */
    private int f12789l;

    /* renamed from: m */
    private int f12790m;
    @BindView(R.id.btn_relay_edit_delete)
    Button mBtnRelayEditDelete;
    @BindView(R.id.et_relay_edit_name)
    ClearEditText mEtRelayEditName;
    @BindView(R.id.fl_relay_edit_down_freq)
    FrameLayout mFlRelayEditDownFreq;
    @BindView(R.id.fl_relay_edit_down_tone)
    FrameLayout mFlRelayEditDownTone;
    @BindView(R.id.fl_relay_edit_up_freq)
    FrameLayout mFlRelayEditUpFreq;
    @BindView(R.id.fl_relay_edit_up_tone)
    FrameLayout mFlRelayEditUpTone;
    @BindView(R.id.title_bar_confirm)
    TextView mTitleBarConfirm;
    @BindView(R.id.title_bar_left)
    ImageView mTitleBarLeft;
    @BindView(R.id.title_bar_title)
    TextView mTitleBarTitle;
    @BindView(R.id.tv_relay_edit_down_freq)
    TextView mTvRelayEditDownFreq;
    @BindView(R.id.tv_relay_edit_down_tone)
    TextView mTvRelayEditDownTone;
    @BindView(R.id.tv_relay_edit_up_freq)
    TextView mTvRelayEditUpFreq;
    @BindView(R.id.tv_relay_edit_up_tone)
    TextView mTvRelayEditUpTone;

    /* renamed from: n */
    private int f12791n;

    /* renamed from: o */
    private DolphinChannelModel f12792o;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity$a */
    /* loaded from: classes2.dex */
    class C3529a implements InsertChannelDialog400To470.InterfaceC4924k {
        C3529a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470.InterfaceC4924k
        /* renamed from: a */
        public void mo8942a(String str) {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470.InterfaceC4924k
        /* renamed from: b */
        public void mo8941b(String str) {
            String str2 = ((BaseActivity1) DolphinRelayEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert up freq:" + str);
            DolphinRelayEditActivity.this.f12787j = MethodsUtils.m11291i(str);
            DolphinRelayEditActivity.this.mTvRelayEditUpFreq.setText(str);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity$b */
    /* loaded from: classes2.dex */
    class C3530b implements InsertChannelDialog.InterfaceC4913k {
        C3530b() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog.InterfaceC4913k
        /* renamed from: a */
        public void mo8959a(String str) {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog.InterfaceC4913k
        /* renamed from: b */
        public void mo8958b(String str) {
            String str2 = ((BaseActivity1) DolphinRelayEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert up freq:" + str);
            DolphinRelayEditActivity.this.f12787j = MethodsUtils.m11291i(str);
            DolphinRelayEditActivity.this.mTvRelayEditUpFreq.setText(str);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity$c */
    /* loaded from: classes2.dex */
    class C3531c implements InsertChannelDialog400To470.InterfaceC4924k {
        C3531c() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470.InterfaceC4924k
        /* renamed from: a */
        public void mo8942a(String str) {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470.InterfaceC4924k
        /* renamed from: b */
        public void mo8941b(String str) {
            String str2 = ((BaseActivity1) DolphinRelayEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert down freq:" + str);
            DolphinRelayEditActivity.this.f12788k = MethodsUtils.m11291i(str);
            DolphinRelayEditActivity.this.mTvRelayEditDownFreq.setText(str);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity$d */
    /* loaded from: classes2.dex */
    class C3532d implements InsertChannelDialog.InterfaceC4913k {
        C3532d() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog.InterfaceC4913k
        /* renamed from: a */
        public void mo8959a(String str) {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog.InterfaceC4913k
        /* renamed from: b */
        public void mo8958b(String str) {
            String str2 = ((BaseActivity1) DolphinRelayEditActivity.this).f15055a;
            C4161y.m11054a(str2, "insert down freq:" + str);
            DolphinRelayEditActivity.this.f12788k = MethodsUtils.m11291i(str);
            DolphinRelayEditActivity.this.mTvRelayEditDownFreq.setText(str);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity$e */
    /* loaded from: classes2.dex */
    class C3533e implements PickerDialog.InterfaceC4891b {
        C3533e() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.PickerDialog.InterfaceC4891b
        /* renamed from: a */
        public void mo9056a(PickerDialog pickerDialog, int i, String str, int i2, String str2) {
            DolphinRelayEditActivity.this.m13290S(i, i2);
            DolphinRelayEditActivity.this.mTvRelayEditUpTone.setText(str2);
            DolphinRelayEditActivity.this.mTvRelayEditUpTone.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity$f */
    /* loaded from: classes2.dex */
    class C3534f implements PickerDialog.InterfaceC4891b {
        C3534f() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.PickerDialog.InterfaceC4891b
        /* renamed from: a */
        public void mo9056a(PickerDialog pickerDialog, int i, String str, int i2, String str2) {
            DolphinRelayEditActivity.this.m13291R(i, i2);
            DolphinRelayEditActivity.this.mTvRelayEditDownTone.setText(str2);
            DolphinRelayEditActivity.this.mTvRelayEditDownTone.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity$g */
    /* loaded from: classes2.dex */
    class DialogInterface$OnClickListenerC3535g implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC3535g() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DolphinRelayEditActivity.this.setResult(2, new Intent().putExtra("relayInfo", DolphinRelayEditActivity.this.f12792o));
            DolphinRelayEditActivity.this.finish();
        }
    }

    /* renamed from: O */
    private void m13293O() {
        Intent intent = getIntent();
        if ("com.ifengyu.action.RELAY_MODIFY_CHANNEL".equals(intent.getAction())) {
            this.mBtnRelayEditDelete.setVisibility(0);
            DolphinChannelModel dolphinChannelModel = (DolphinChannelModel) intent.getParcelableExtra("relayInfo");
            this.f12792o = dolphinChannelModel;
            if (dolphinChannelModel != null) {
                this.f12791n = dolphinChannelModel.getNo();
                this.f12787j = this.f12792o.getFreq();
                int tone = this.f12792o.getTone();
                String[] strArr = AppConstants.f13912f;
                this.f12789l = tone < strArr.length ? this.f12792o.getTone() : 0;
                this.f12788k = this.f12792o.getFreq2();
                this.f12790m = this.f12792o.getTone2() < strArr.length ? this.f12792o.getTone2() : 0;
                this.mTitleBarTitle.setText(R.string.edit_relay);
                this.mEtRelayEditName.setText(this.f12792o.getName());
                this.mEtRelayEditName.setSelection(this.f12792o.getName().length());
                this.mEtRelayEditName.setHint(UIUtils.m8602p(R.string.default_relay, Integer.valueOf(this.f12791n + 1)));
                this.mTvRelayEditUpFreq.setText(MethodsUtils.m11290j(this.f12787j));
                this.mTvRelayEditUpTone.setText(strArr[this.f12789l]);
                this.mTvRelayEditUpTone.setTextSize(2, this.f12789l == 0 ? 16.0f : 18.0f);
                this.mTvRelayEditDownFreq.setText(MethodsUtils.m11290j(this.f12788k));
                this.mTvRelayEditDownTone.setText(strArr[this.f12790m]);
                this.mTvRelayEditDownTone.setTextSize(2, this.f12790m != 0 ? 18.0f : 16.0f);
            }
        } else {
            this.f12791n = intent.getIntExtra("channelNum", 0);
            this.mTitleBarTitle.setText(R.string.add_relay);
            this.mEtRelayEditName.setHint(UIUtils.m8602p(R.string.default_relay, Integer.valueOf(this.f12791n + 1)));
        }
        ClearEditText clearEditText = this.mEtRelayEditName;
        clearEditText.setFilters(new InputFilter[]{new MyInputFilter(clearEditText)});
    }

    /* renamed from: P */
    private void m13292P() {
        Typeface typeface = AppConstants.f13908b;
        this.mTvRelayEditUpFreq.setTypeface(typeface);
        this.mTvRelayEditDownFreq.setTypeface(typeface);
        this.mTvRelayEditUpTone.setTypeface(typeface);
        this.mTvRelayEditDownTone.setTypeface(typeface);
        this.mTitleBarLeft.setOnClickListener(this);
        this.mTitleBarConfirm.setOnClickListener(this);
        this.mFlRelayEditUpFreq.setOnClickListener(this);
        this.mFlRelayEditDownFreq.setOnClickListener(this);
        this.mFlRelayEditUpTone.setOnClickListener(this);
        this.mFlRelayEditDownTone.setOnClickListener(this);
        this.mBtnRelayEditDelete.setOnClickListener(this);
        this.mTitleBarConfirm.setVisibility(0);
        this.mTitleBarConfirm.setText(R.string.completed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public void m13291R(int i, int i2) {
        if (i2 == 0) {
            this.f12790m = 0;
        } else if (i == 0) {
            this.f12790m = i2;
        } else if (i == 1) {
            this.f12790m = i2 + 40;
        } else if (i != 2) {
        } else {
            this.f12790m = i2 + 124;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public void m13290S(int i, int i2) {
        if (i2 == 0) {
            this.f12789l = 0;
        } else if (i == 0) {
            this.f12789l = i2;
        } else if (i == 1) {
            this.f12789l = i2 + 40;
        } else if (i != 2) {
        } else {
            this.f12789l = i2 + 124;
        }
    }

    /* renamed from: T */
    private void m13289T(String str, int i, InsertChannelDialog400To470.InterfaceC4924k interfaceC4924k) {
        InsertChannelDialog400To470 insertChannelDialog400To470;
        if (!TextUtils.isEmpty(str)) {
            insertChannelDialog400To470 = new InsertChannelDialog400To470(this, str, i);
        } else {
            insertChannelDialog400To470 = new InsertChannelDialog400To470(this, null, i);
        }
        insertChannelDialog400To470.m8943v(interfaceC4924k);
        insertChannelDialog400To470.show();
    }

    /* renamed from: U */
    private void m13288U(String str, int i, InsertChannelDialog.InterfaceC4913k interfaceC4913k) {
        InsertChannelDialog insertChannelDialog;
        if (!TextUtils.isEmpty(str)) {
            insertChannelDialog = new InsertChannelDialog(this, str, i);
        } else {
            insertChannelDialog = new InsertChannelDialog(this, null, i);
        }
        insertChannelDialog.m8960v(interfaceC4913k);
        insertChannelDialog.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        int i = 1;
        if (id != R.id.btn_relay_edit_delete) {
            int i2 = 0;
            switch (id) {
                case R.id.fl_relay_edit_down_freq /* 2131296717 */:
                    MethodsUtils.m11281s(this.mFlRelayEditDownFreq);
                    if (MethodsUtils.m11297c()) {
                        m13289T(null, 1, new C3531c());
                        return;
                    } else {
                        m13288U(null, 2, new C3532d());
                        return;
                    }
                case R.id.fl_relay_edit_down_tone /* 2131296718 */:
                    MethodsUtils.m11281s(this.mFlRelayEditDownTone);
                    int i3 = this.f12790m;
                    if (i3 != 0) {
                        if (i3 > 0 && i3 <= 39) {
                            i2 = i3;
                        } else if (i3 > 39 && i3 <= 123) {
                            i2 = i3 - 40;
                        } else if (i3 > 123) {
                            i2 = i3 - 124;
                            i = 2;
                        }
                        i = 0;
                    }
                    PickerDialog pickerDialog = new PickerDialog(this);
                    pickerDialog.m9060h(R.string.emissive_sub_tone);
                    pickerDialog.m9057k(i, i2);
                    pickerDialog.m9058j(R.string.common_select, new C3534f());
                    pickerDialog.m9059i(R.string.common_cancel, null);
                    pickerDialog.show();
                    return;
                case R.id.fl_relay_edit_up_freq /* 2131296719 */:
                    MethodsUtils.m11281s(this.mFlRelayEditUpFreq);
                    if (MethodsUtils.m11297c()) {
                        m13289T(null, 1, new C3529a());
                        return;
                    } else {
                        m13288U(null, 1, new C3530b());
                        return;
                    }
                case R.id.fl_relay_edit_up_tone /* 2131296720 */:
                    MethodsUtils.m11281s(this.mFlRelayEditUpTone);
                    int i4 = this.f12789l;
                    if (i4 != 0) {
                        if (i4 > 0 && i4 <= 39) {
                            i2 = i4;
                        } else if (i4 > 39 && i4 <= 123) {
                            i2 = i4 - 40;
                        } else if (i4 > 123) {
                            i2 = i4 - 124;
                            i = 2;
                        }
                        i = 0;
                    }
                    PickerDialog pickerDialog2 = new PickerDialog(this);
                    pickerDialog2.m9060h(R.string.receive_sub_tone);
                    pickerDialog2.m9057k(i, i2);
                    pickerDialog2.m9058j(R.string.common_select, new C3533e());
                    pickerDialog2.m9059i(R.string.common_cancel, null);
                    pickerDialog2.show();
                    return;
                default:
                    switch (id) {
                        case R.id.title_bar_confirm /* 2131297421 */:
                            if (!TextUtils.isEmpty(this.mTvRelayEditUpFreq.getText()) && !TextUtils.isEmpty(this.mTvRelayEditDownFreq.getText())) {
                                String trim = (TextUtils.isEmpty(this.mEtRelayEditName.getText()) ? UIUtils.m8602p(R.string.relay_d, Integer.valueOf(this.f12791n + 1)) : this.mEtRelayEditName.getText().toString()).trim();
                                DolphinChannelModel dolphinChannelModel = new DolphinChannelModel();
                                if ("com.ifengyu.action.RELAY_MODIFY_CHANNEL".equals(getIntent().getAction())) {
                                    dolphinChannelModel.setNo(this.f12791n);
                                    dolphinChannelModel.setType(8);
                                    dolphinChannelModel.setName(trim);
                                    dolphinChannelModel.setFreq(this.f12787j);
                                    dolphinChannelModel.setTone(this.f12789l);
                                    dolphinChannelModel.setFreq2(this.f12788k);
                                    dolphinChannelModel.setTone2(this.f12790m);
                                    setResult(1, new Intent().putExtra("relayInfo", dolphinChannelModel));
                                } else if ("com.ifengyu.action.RELAY_INSERT_CHANNEL".equals(getIntent().getAction())) {
                                    dolphinChannelModel.setNo(this.f12791n);
                                    dolphinChannelModel.setType(8);
                                    dolphinChannelModel.setName(trim);
                                    dolphinChannelModel.setFreq(this.f12787j);
                                    dolphinChannelModel.setTone(this.f12789l);
                                    dolphinChannelModel.setFreq2(this.f12788k);
                                    dolphinChannelModel.setTone2(this.f12790m);
                                    setResult(0, new Intent().putExtra("relayInfo", dolphinChannelModel));
                                }
                                finish();
                                return;
                            }
                            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_please_edit_frequency), false);
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
        commonDialog.m9020q(R.string.common_select, new DialogInterface$OnClickListenerC3535g());
        commonDialog.m9032e();
        commonDialog.m9016u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_relay_edit);
        ButterKnife.bind(this);
        m13292P();
        m13293O();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
