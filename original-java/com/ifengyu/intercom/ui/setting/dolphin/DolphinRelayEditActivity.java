package com.ifengyu.intercom.ui.setting.dolphin;

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
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.PickerDialog;
import com.ifengyu.intercom.ui.widget.dialog.o;
import com.ifengyu.intercom.ui.widget.dialog.p;
import com.ifengyu.intercom.ui.widget.view.ClearEditText;

/* loaded from: classes2.dex */
public class DolphinRelayEditActivity extends BaseActivity implements View.OnClickListener {
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
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private UserChannel v;

    /* loaded from: classes2.dex */
    class a implements p.k {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.p.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.p.k
        public void b(String str) {
            String str2 = ((BaseActivity) DolphinRelayEditActivity.this).f6370a;
            z.a(str2, "insert up freq:" + str);
            DolphinRelayEditActivity.this.q = c0.c(str);
            DolphinRelayEditActivity.this.mTvRelayEditUpFreq.setText(str);
        }
    }

    /* loaded from: classes2.dex */
    class b implements o.k {
        b() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.o.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.o.k
        public void b(String str) {
            String str2 = ((BaseActivity) DolphinRelayEditActivity.this).f6370a;
            z.a(str2, "insert up freq:" + str);
            DolphinRelayEditActivity.this.q = c0.c(str);
            DolphinRelayEditActivity.this.mTvRelayEditUpFreq.setText(str);
        }
    }

    /* loaded from: classes2.dex */
    class c implements p.k {
        c() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.p.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.p.k
        public void b(String str) {
            String str2 = ((BaseActivity) DolphinRelayEditActivity.this).f6370a;
            z.a(str2, "insert down freq:" + str);
            DolphinRelayEditActivity.this.r = c0.c(str);
            DolphinRelayEditActivity.this.mTvRelayEditDownFreq.setText(str);
        }
    }

    /* loaded from: classes2.dex */
    class d implements o.k {
        d() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.o.k
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.o.k
        public void b(String str) {
            String str2 = ((BaseActivity) DolphinRelayEditActivity.this).f6370a;
            z.a(str2, "insert down freq:" + str);
            DolphinRelayEditActivity.this.r = c0.c(str);
            DolphinRelayEditActivity.this.mTvRelayEditDownFreq.setText(str);
        }
    }

    /* loaded from: classes2.dex */
    class e implements PickerDialog.b {
        e() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.PickerDialog.b
        public void a(PickerDialog pickerDialog, int i, String str, int i2, String str2) {
            DolphinRelayEditActivity.this.b(i, i2);
            DolphinRelayEditActivity.this.mTvRelayEditUpTone.setText(str2);
            DolphinRelayEditActivity.this.mTvRelayEditUpTone.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
        }
    }

    /* loaded from: classes2.dex */
    class f implements PickerDialog.b {
        f() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.PickerDialog.b
        public void a(PickerDialog pickerDialog, int i, String str, int i2, String str2) {
            DolphinRelayEditActivity.this.a(i, i2);
            DolphinRelayEditActivity.this.mTvRelayEditDownTone.setText(str2);
            DolphinRelayEditActivity.this.mTvRelayEditDownTone.setTextSize(2, i2 == 0 ? 16.0f : 18.0f);
        }
    }

    /* loaded from: classes2.dex */
    class g implements DialogInterface.OnClickListener {
        g() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DolphinRelayEditActivity.this.setResult(2, new Intent().putExtra("relayInfo", DolphinRelayEditActivity.this.v));
            DolphinRelayEditActivity.this.finish();
        }
    }

    private void w() {
        Intent intent = getIntent();
        if ("com.ifengyu.action.RELAY_MODIFY_CHANNEL".equals(intent.getAction())) {
            this.mBtnRelayEditDelete.setVisibility(0);
            UserChannel userChannel = (UserChannel) intent.getParcelableExtra("relayInfo");
            this.v = userChannel;
            if (userChannel != null) {
                this.u = userChannel.e();
                this.q = this.v.a();
                this.s = this.v.f() < com.ifengyu.intercom.i.p.d.length ? this.v.f() : 0;
                this.r = this.v.b();
                this.t = this.v.g() < com.ifengyu.intercom.i.p.d.length ? this.v.g() : 0;
                this.mTitleBarTitle.setText(R.string.edit_relay);
                this.mEtRelayEditName.setText(this.v.d());
                this.mEtRelayEditName.setSelection(this.v.d().length());
                this.mEtRelayEditName.setHint(k0.a((int) R.string.default_relay, Integer.valueOf(this.u + 1)));
                this.mTvRelayEditUpFreq.setText(c0.b(this.q));
                this.mTvRelayEditUpTone.setText(com.ifengyu.intercom.i.p.d[this.s]);
                float f2 = 16.0f;
                this.mTvRelayEditUpTone.setTextSize(2, this.s == 0 ? 16.0f : 18.0f);
                this.mTvRelayEditDownFreq.setText(c0.b(this.r));
                this.mTvRelayEditDownTone.setText(com.ifengyu.intercom.i.p.d[this.t]);
                TextView textView = this.mTvRelayEditDownTone;
                if (this.t != 0) {
                    f2 = 18.0f;
                }
                textView.setTextSize(2, f2);
            }
        } else {
            this.u = intent.getIntExtra("channelNum", 0);
            this.mTitleBarTitle.setText(R.string.add_relay);
            this.mEtRelayEditName.setHint(k0.a((int) R.string.default_relay, Integer.valueOf(this.u + 1)));
        }
        ClearEditText clearEditText = this.mEtRelayEditName;
        clearEditText.setFilters(new InputFilter[]{new com.ifengyu.intercom.ui.widget.view.a(clearEditText)});
    }

    private void x() {
        Typeface typeface = com.ifengyu.intercom.i.p.f5323a;
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        int i = 1;
        if (id != R.id.btn_relay_edit_delete) {
            int i2 = 0;
            switch (id) {
                case R.id.fl_relay_edit_down_freq /* 2131296648 */:
                    c0.b(this.mFlRelayEditDownFreq);
                    if (c0.a()) {
                        a((String) null, 1, new c());
                        return;
                    } else {
                        a((String) null, 2, new d());
                        return;
                    }
                case R.id.fl_relay_edit_down_tone /* 2131296649 */:
                    c0.b(this.mFlRelayEditDownTone);
                    int i3 = this.t;
                    if (i3 != 0) {
                        if (i3 <= 0 || i3 > 39) {
                            int i4 = this.t;
                            if (i4 <= 39 || i4 > 123) {
                                int i5 = this.t;
                                if (i5 > 123) {
                                    i2 = i5 - 124;
                                    i = 2;
                                }
                            } else {
                                i2 = i4 - 40;
                            }
                        } else {
                            i2 = i3;
                        }
                        i = 0;
                    }
                    PickerDialog pickerDialog = new PickerDialog(this);
                    pickerDialog.b(R.string.emissive_sub_tone);
                    pickerDialog.a(i, i2);
                    pickerDialog.b(R.string.common_select, new f());
                    pickerDialog.a(R.string.common_cancel, (PickerDialog.b) null);
                    pickerDialog.show();
                    return;
                case R.id.fl_relay_edit_up_freq /* 2131296650 */:
                    c0.b(this.mFlRelayEditUpFreq);
                    if (c0.a()) {
                        a((String) null, 1, new a());
                        return;
                    } else {
                        a((String) null, 1, new b());
                        return;
                    }
                case R.id.fl_relay_edit_up_tone /* 2131296651 */:
                    c0.b(this.mFlRelayEditUpTone);
                    int i6 = this.s;
                    if (i6 != 0) {
                        if (i6 <= 0 || i6 > 39) {
                            int i7 = this.s;
                            if (i7 <= 39 || i7 > 123) {
                                int i8 = this.s;
                                if (i8 > 123) {
                                    i2 = i8 - 124;
                                    i = 2;
                                }
                            } else {
                                i2 = i7 - 40;
                            }
                        } else {
                            i2 = i6;
                        }
                        i = 0;
                    }
                    PickerDialog pickerDialog2 = new PickerDialog(this);
                    pickerDialog2.b(R.string.receive_sub_tone);
                    pickerDialog2.a(i, i2);
                    pickerDialog2.b(R.string.common_select, new e());
                    pickerDialog2.a(R.string.common_cancel, (PickerDialog.b) null);
                    pickerDialog2.show();
                    return;
                default:
                    switch (id) {
                        case R.id.title_bar_confirm /* 2131297304 */:
                            if (TextUtils.isEmpty(this.mTvRelayEditUpFreq.getText()) || TextUtils.isEmpty(this.mTvRelayEditDownFreq.getText())) {
                                c0.a((CharSequence) k0.c(R.string.toast_please_edit_frequency), false);
                                return;
                            }
                            String trim = (TextUtils.isEmpty(this.mEtRelayEditName.getText()) ? k0.a((int) R.string.relay_d, Integer.valueOf(this.u + 1)) : this.mEtRelayEditName.getText().toString()).trim();
                            UserChannel userChannel = new UserChannel();
                            if ("com.ifengyu.action.RELAY_MODIFY_CHANNEL".equals(getIntent().getAction())) {
                                userChannel.a(Long.valueOf(this.u + 100));
                                userChannel.c(this.u);
                                userChannel.f(8);
                                userChannel.a(trim);
                                userChannel.a(this.q);
                                userChannel.d(this.s);
                                userChannel.b(this.r);
                                userChannel.e(this.t);
                                setResult(1, new Intent().putExtra("relayInfo", userChannel));
                            } else if ("com.ifengyu.action.RELAY_INSERT_CHANNEL".equals(getIntent().getAction())) {
                                userChannel.a(Long.valueOf(this.u + 100));
                                userChannel.c(this.u);
                                userChannel.f(8);
                                userChannel.a(trim);
                                userChannel.a(this.q);
                                userChannel.d(this.s);
                                userChannel.b(this.r);
                                userChannel.e(this.t);
                                setResult(0, new Intent().putExtra("relayInfo", userChannel));
                            }
                            finish();
                            return;
                        case R.id.title_bar_left /* 2131297305 */:
                            finish();
                            return;
                        default:
                            return;
                    }
            }
        } else {
            com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(this);
            fVar.c(R.string.common_delete);
            fVar.b(R.string.dialog_message_are_you_sure_delete_selected_relay_channel);
            fVar.a(true);
            fVar.a(R.string.common_cancel, (DialogInterface.OnClickListener) null);
            fVar.c(R.string.common_select, new g());
            fVar.a();
            fVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_relay_edit);
        ButterKnife.bind(this);
        x();
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        if (i2 == 0) {
            this.t = 0;
        } else if (i == 0) {
            this.t = i2;
        } else if (i == 1) {
            this.t = i2 + 40;
        } else if (i == 2) {
            this.t = i2 + 124;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, int i2) {
        if (i2 == 0) {
            this.s = 0;
        } else if (i == 0) {
            this.s = i2;
        } else if (i == 1) {
            this.s = i2 + 40;
        } else if (i == 2) {
            this.s = i2 + 124;
        }
    }

    private void a(String str, int i, o.k kVar) {
        o oVar;
        if (!TextUtils.isEmpty(str)) {
            oVar = new o(this, str, i);
        } else {
            oVar = new o(this, null, i);
        }
        oVar.a(kVar);
        oVar.show();
    }

    private void a(String str, int i, p.k kVar) {
        p pVar;
        if (!TextUtils.isEmpty(str)) {
            pVar = new p(this, str, i);
        } else {
            pVar = new p(this, null, i);
        }
        pVar.a(kVar);
        pVar.show();
    }
}
