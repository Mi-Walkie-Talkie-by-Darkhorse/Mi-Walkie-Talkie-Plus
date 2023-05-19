package com.ifengyu.intercom.device.oldDevice.sealshark;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
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
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import java.io.UnsupportedEncodingException;

/* loaded from: classes2.dex */
public class SetSealSharkBleNameActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private TextView f13088j;

    /* renamed from: k */
    private TextView f13089k;

    /* renamed from: l */
    private TextView f13090l;

    /* renamed from: m */
    private EditText f13091m;

    /* renamed from: n */
    private String f13092n;

    /* renamed from: o */
    private View f13093o;

    /* renamed from: p */
    private int f13094p = 18;

    /* renamed from: q */
    private boolean f13095q;

    /* renamed from: r */
    private String f13096r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.SetSealSharkBleNameActivity$a */
    /* loaded from: classes2.dex */
    public class C3629a implements TextWatcher {

        /* renamed from: a */
        private CharSequence f13097a;

        /* renamed from: b */
        private int f13098b;

        /* renamed from: c */
        private int f13099c;

        C3629a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (SetSealSharkBleNameActivity.this.f13091m.getText().toString().trim().length() == 0) {
                    SetSealSharkBleNameActivity.this.f13093o.setVisibility(4);
                } else {
                    SetSealSharkBleNameActivity.this.f13093o.setVisibility(0);
                }
                TextView textView = SetSealSharkBleNameActivity.this.f13090l;
                textView.setText(String.valueOf(SetSealSharkBleNameActivity.this.f13091m.getText().toString().getBytes("UTF-8").length + "/" + SetSealSharkBleNameActivity.this.f13094p));
                this.f13098b = SetSealSharkBleNameActivity.this.f13091m.getSelectionStart();
                this.f13099c = SetSealSharkBleNameActivity.this.f13091m.getSelectionEnd();
                if (SetSealSharkBleNameActivity.this.f13091m.getText().toString().length() <= 0 || this.f13097a.toString().getBytes("UTF-8").length <= SetSealSharkBleNameActivity.this.f13094p) {
                    return;
                }
                editable.delete(this.f13098b - 1, this.f13099c);
                SetSealSharkBleNameActivity.this.f13091m.setText(editable);
                SetSealSharkBleNameActivity.this.f13091m.setSelection(editable.length());
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f13097a = charSequence;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.SetSealSharkBleNameActivity$b */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3630b implements View.OnClickListener {
        View$OnClickListenerC3630b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SetSealSharkBleNameActivity.this.finish();
        }
    }

    /* renamed from: J */
    private void m13040J() {
        MiTalkClientUtil.m11204j0(this.f13092n);
        OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
        ConnectionConfiguration m12498a = m12497b.m12498a(MiTalkClientUtil.m11195o());
        m12498a.m12499h(this.f13092n);
        m12498a.m12500g(true);
        m12497b.m12496c(m12498a);
        Intent intent = new Intent();
        intent.putExtra("setting_walkie_name", this.f13092n);
        setResult(1, intent);
        finish();
    }

    /* renamed from: K */
    private void m13039K() {
        mo10278s();
        this.f13089k = (TextView) m10282o(R.id.title_bar_title);
        this.f13088j = (TextView) m10282o(R.id.title_bar_confirm);
        this.f13091m = (EditText) m10282o(R.id.activity_set_walkie_name_content_et);
        this.f13090l = (TextView) m10282o(R.id.activity_set_walkie_name_length);
        this.f13089k.setText(getText(R.string.common_intercom_name));
        this.f13088j.setVisibility(0);
        this.f13088j.setOnClickListener(this);
        View findViewById = findViewById(R.id.delete_text_btn);
        this.f13093o = findViewById;
        findViewById.setOnClickListener(this);
        this.f13091m.setText(MiTalkClientUtil.m11193p());
        EditText editText = this.f13091m;
        editText.setSelection(editText.getText().length());
        if (this.f13091m.getText().toString().trim().length() == 0) {
            this.f13093o.setVisibility(4);
        } else {
            this.f13093o.setVisibility(0);
        }
        try {
            byte[] bytes = this.f13091m.getText().toString().getBytes("UTF-8");
            TextView textView = this.f13090l;
            textView.setText(String.valueOf(bytes.length + "/" + this.f13094p));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.f13091m.addTextChangedListener(new C3629a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.delete_text_btn) {
            this.f13091m.setText("");
        } else if (id != R.id.title_bar_confirm) {
        } else {
            this.f13092n = this.f13091m.getText().toString().trim();
            if (!BleCoreClient.m12373n().m12372o(this.f13096r)) {
                MethodsUtils.m11302H(getString(R.string.current_device_not_connected), false);
            } else if (this.f13092n.length() == 0) {
                MethodsUtils.m11302H(getString(R.string.setting_intercom_name_can_not_empty), false);
            } else if (this.f13092n.equals(MiTalkClientUtil.m11193p())) {
                finish();
            } else if (!MethodsUtils.m11275y(this.f13092n)) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_contains_invalid_characters), false);
            } else {
                this.f13095q = true;
                int m11191q = MiTalkClientUtil.m11191q();
                if (m11191q == 4) {
                    BleCoreClient.m12373n().m12374m(this.f13096r).m12031m1(this.f13092n);
                } else if (m11191q != 5) {
                } else {
                    BleCoreClient.m12373n().m12375l(this.f13096r).m12080v1(this.f13092n);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_set_walkie_talkie_name);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13096r = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        m13039K();
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
    public void receiveSealParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        if (this.f13095q) {
            this.f13095q = false;
            if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                m13040J();
            } else {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_setup_failed_please_try_again), false);
            }
        }
    }

    @Subscribe
    public void receiveSharkParamResponse(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        if (this.f13095q) {
            this.f13095q = false;
            if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                m13040J();
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
        imageView.setOnClickListener(new View$OnClickListenerC3630b());
    }
}
