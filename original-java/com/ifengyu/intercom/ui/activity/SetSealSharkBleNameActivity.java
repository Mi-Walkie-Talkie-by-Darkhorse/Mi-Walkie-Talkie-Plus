package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.eventbus.a;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.UnsupportedEncodingException;

public class SetSealSharkBleNameActivity extends BaseActivity implements OnClickListener {
    private TextView a;
    private TextView b;
    /* access modifiers changed from: private */
    public TextView c;
    /* access modifiers changed from: private */
    public EditText d;
    private String q;
    /* access modifiers changed from: private */
    public View r;
    /* access modifiers changed from: private */
    public int s = 18;
    private boolean t;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_set_walkie_talkie_name);
        c();
    }

    private void c() {
        c_();
        this.b = (TextView) c(R.id.title_bar_title);
        this.a = (TextView) c(R.id.title_bar_confirm);
        this.d = (EditText) c(R.id.activity_set_walkie_name_content_et);
        this.c = (TextView) c(R.id.activity_set_walkie_name_length);
        this.b.setText(getText(R.string.common_interphonename));
        this.a.setVisibility(0);
        this.a.setOnClickListener(this);
        this.r = findViewById(R.id.delete_text_btn);
        this.r.setOnClickListener(this);
        this.d.setText(w.ae());
        this.d.setSelection(this.d.getText().length());
        if (this.d.getText().toString().trim().length() == 0) {
            this.r.setVisibility(4);
        } else {
            this.r.setVisibility(0);
        }
        try {
            this.c.setText(String.valueOf(this.d.getText().toString().getBytes("UTF-8").length + "/" + this.s));
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
        }
        this.d.addTextChangedListener(new TextWatcher() {
            private CharSequence b;
            private int c;
            private int d;

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                this.b = charSequence;
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void afterTextChanged(Editable editable) {
                try {
                    if (SetSealSharkBleNameActivity.this.d.getText().toString().trim().length() == 0) {
                        SetSealSharkBleNameActivity.this.r.setVisibility(4);
                    } else {
                        SetSealSharkBleNameActivity.this.r.setVisibility(0);
                    }
                    SetSealSharkBleNameActivity.this.c.setText(String.valueOf(SetSealSharkBleNameActivity.this.d.getText().toString().getBytes("UTF-8").length + "/" + SetSealSharkBleNameActivity.this.s));
                    this.c = SetSealSharkBleNameActivity.this.d.getSelectionStart();
                    this.d = SetSealSharkBleNameActivity.this.d.getSelectionEnd();
                    if (SetSealSharkBleNameActivity.this.d.getText().toString().length() > 0 && this.b.toString().getBytes("UTF-8").length > SetSealSharkBleNameActivity.this.s) {
                        editable.delete(this.c - 1, this.d);
                        SetSealSharkBleNameActivity.this.d.setText(editable);
                        SetSealSharkBleNameActivity.this.d.setSelection(editable.length());
                    }
                } catch (UnsupportedEncodingException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.delete_text_btn /*2131755259*/:
                this.d.setText("");
                return;
            case R.id.title_bar_confirm /*2131755836*/:
                this.q = this.d.getText().toString().trim();
                if (!k.a().b()) {
                    v.a((CharSequence) getString(R.string.current_device_not_connected), false);
                    return;
                } else if (this.q.length() == 0) {
                    v.a((CharSequence) getString(R.string.setting_intercom_name_can_not_empty), false);
                    return;
                } else if (this.q.equals(w.ae())) {
                    finish();
                    return;
                } else if (!v.g(this.q)) {
                    v.a((CharSequence) ad.a((int) R.string.toast_contains_invalid_characters), false);
                    return;
                } else {
                    this.t = true;
                    switch (w.ad()) {
                        case 4:
                            ab.a(this.q);
                            return;
                        case 5:
                            aa.a(this.q);
                            return;
                        default:
                            return;
                    }
                }
            default:
                return;
        }
    }

    @Subscribe
    public void receiveSealParamResponse(SEAL_DeviceParam sEAL_DeviceParam) {
        if (this.t) {
            this.t = false;
            if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                d();
            } else {
                v.a((CharSequence) ad.a((int) R.string.toast_setup_failed_please_try_again), false);
            }
        }
    }

    @Subscribe
    public void receiveSharkParamResponse(SHARK_DeviceParam sHARK_DeviceParam) {
        if (this.t) {
            this.t = false;
            if (sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_UPDATE_OK) {
                d();
            } else {
                v.a((CharSequence) ad.a((int) R.string.toast_setup_failed_please_try_again), false);
            }
        }
    }

    private void d() {
        w.m(this.q);
        d a2 = d.a();
        ConnectionConfiguration c2 = a2.c(w.af());
        c2.b(this.q);
        c2.a(true);
        a2.c(c2);
        Intent intent = new Intent();
        intent.putExtra("setting_walkie_name", this.q);
        setResult(1, intent);
        finish();
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) c(R.id.title_bar_left);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                SetSealSharkBleNameActivity.this.finish();
            }
        });
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
        a.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        a.a().b((Object) this);
    }
}
