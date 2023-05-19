package com.ifengyu.intercom.device.oldDevice.dolphin.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.p176v.ConnectionConfiguration;
import com.ifengyu.intercom.device.oldDevice.p176v.OldBleDeviceDbManager;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.view.MyInputFilter;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import java.io.UnsupportedEncodingException;

/* loaded from: classes2.dex */
public class SetDolphinBleNameActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private TextView f12851j;

    /* renamed from: k */
    private TextView f12852k;

    /* renamed from: l */
    private TextView f12853l;

    /* renamed from: m */
    private EditText f12854m;

    /* renamed from: n */
    private String f12855n;

    /* renamed from: o */
    private View f12856o;

    /* renamed from: p */
    private int f12857p = 16;

    /* renamed from: q */
    private boolean f12858q;

    /* renamed from: r */
    private String f12859r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.SetDolphinBleNameActivity$a */
    /* loaded from: classes2.dex */
    public class C3551a implements TextWatcher {

        /* renamed from: a */
        private CharSequence f12860a;

        /* renamed from: b */
        private int f12861b;

        /* renamed from: c */
        private int f12862c;

        C3551a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (SetDolphinBleNameActivity.this.f12854m.getText().toString().trim().length() == 0) {
                    SetDolphinBleNameActivity.this.f12856o.setVisibility(4);
                } else {
                    SetDolphinBleNameActivity.this.f12856o.setVisibility(0);
                }
                TextView textView = SetDolphinBleNameActivity.this.f12853l;
                textView.setText(String.valueOf(SetDolphinBleNameActivity.this.f12854m.getText().toString().getBytes("GB2312").length + "/" + SetDolphinBleNameActivity.this.f12857p));
                this.f12861b = SetDolphinBleNameActivity.this.f12854m.getSelectionStart();
                this.f12862c = SetDolphinBleNameActivity.this.f12854m.getSelectionEnd();
                if (SetDolphinBleNameActivity.this.f12854m.getText().toString().length() <= 0 || this.f12860a.toString().getBytes("GB2312").length <= SetDolphinBleNameActivity.this.f12857p) {
                    return;
                }
                editable.delete(this.f12861b - 1, this.f12862c);
                SetDolphinBleNameActivity.this.f12854m.setText(editable);
                SetDolphinBleNameActivity.this.f12854m.setSelection(editable.length());
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f12860a = charSequence;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.SetDolphinBleNameActivity$b */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3552b implements View.OnClickListener {
        View$OnClickListenerC3552b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SetDolphinBleNameActivity.this.finish();
        }
    }

    /* renamed from: J */
    private void m13255J() {
        MiTalkClientUtil.m11204j0(this.f12855n);
        OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
        ConnectionConfiguration m12498a = m12497b.m12498a(MiTalkClientUtil.m11195o());
        m12498a.m12499h(this.f12855n);
        m12498a.m12500g(true);
        m12497b.m12496c(m12498a);
        Intent intent = new Intent();
        intent.putExtra("setting_walkie_name", this.f12855n);
        setResult(1, intent);
        finish();
    }

    /* renamed from: K */
    private void m13254K() {
        mo10278s();
        this.f12852k = (TextView) m10282o(R.id.title_bar_title);
        this.f12851j = (TextView) m10282o(R.id.title_bar_confirm);
        this.f12854m = (EditText) m10282o(R.id.activity_set_walkie_name_content_et);
        this.f12853l = (TextView) m10282o(R.id.activity_set_walkie_name_length);
        this.f12852k.setText(getText(R.string.common_intercom_name));
        this.f12851j.setVisibility(0);
        this.f12851j.setOnClickListener(this);
        View findViewById = findViewById(R.id.delete_text_btn);
        this.f12856o = findViewById;
        findViewById.setOnClickListener(this);
        this.f12854m.setText(MiTalkClientUtil.m11193p());
        EditText editText = this.f12854m;
        editText.setSelection(editText.getText().length());
        EditText editText2 = this.f12854m;
        editText2.setFilters(new InputFilter[]{new MyInputFilter(editText2)});
        if (this.f12854m.getText().toString().trim().length() == 0) {
            this.f12856o.setVisibility(4);
        } else {
            this.f12856o.setVisibility(0);
        }
        try {
            TextView textView = this.f12853l;
            textView.setText(String.valueOf(this.f12854m.getText().toString().getBytes("GB2312").length + "/" + this.f12857p));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.f12854m.addTextChangedListener(new C3551a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.delete_text_btn) {
            this.f12854m.setText("");
        } else if (id != R.id.title_bar_confirm) {
        } else {
            this.f12855n = this.f12854m.getText().toString().trim();
            if (!BleCoreClient.m12373n().m12372o(this.f12859r)) {
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
            } else if (this.f12855n.length() == 0) {
                MethodsUtils.m11302H(getString(R.string.setting_intercom_name_can_not_empty), false);
            } else if (!MethodsUtils.m11275y(this.f12855n)) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_contains_invalid_characters), false);
            } else {
                this.f12858q = true;
                BleCoreClient.m12373n().m12378i(this.f12859r).m12315q1(this.f12855n);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_set_walkie_talkie_name);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f12859r = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        m13254K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MiBus.getInstance().m6409l(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MiBus.getInstance().m6411j(this);
    }

    @Subscribe
    public void receiveDolphinParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        if (this.f12858q) {
            this.f12858q = false;
            if (paramUpdate.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                m13255J();
            } else {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_setup_failed_please_try_again), false);
            }
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1
    /* renamed from: s */
    protected void mo10278s() {
        ImageView imageView = (ImageView) m10282o(R.id.title_bar_left);
        this.f15057c = imageView;
        imageView.setOnClickListener(new View$OnClickListenerC3552b());
    }
}
