package com.ifengyu.intercom.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.node.q.d;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.squareup.otto.Subscribe;
import java.io.UnsupportedEncodingException;

/* loaded from: classes2.dex */
public class SetDeviceBleNameActivity extends BaseActivity implements View.OnClickListener {
    private TextView q;
    private TextView r;
    private TextView s;
    private EditText t;
    private String u;
    private View v;
    private int w = 16;
    private boolean x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f6165a;

        /* renamed from: b  reason: collision with root package name */
        private int f6166b;

        /* renamed from: c  reason: collision with root package name */
        private int f6167c;

        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (SetDeviceBleNameActivity.this.t.getText().toString().trim().length() == 0) {
                    SetDeviceBleNameActivity.this.v.setVisibility(4);
                } else {
                    SetDeviceBleNameActivity.this.v.setVisibility(0);
                }
                TextView textView = SetDeviceBleNameActivity.this.s;
                textView.setText(String.valueOf(SetDeviceBleNameActivity.this.t.getText().toString().getBytes(StringUtils.GB2312).length + "/" + SetDeviceBleNameActivity.this.w));
                this.f6166b = SetDeviceBleNameActivity.this.t.getSelectionStart();
                this.f6167c = SetDeviceBleNameActivity.this.t.getSelectionEnd();
                if (SetDeviceBleNameActivity.this.t.getText().toString().length() > 0 && this.f6165a.toString().getBytes(StringUtils.GB2312).length > SetDeviceBleNameActivity.this.w) {
                    editable.delete(this.f6166b - 1, this.f6167c);
                    SetDeviceBleNameActivity.this.t.setText(editable);
                    SetDeviceBleNameActivity.this.t.setSelection(editable.length());
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f6165a = charSequence;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SetDeviceBleNameActivity.this.finish();
        }
    }

    private void w() {
        d0.f(this.u);
        d c2 = d.c();
        ConnectionConfiguration a2 = c2.a(d0.p());
        a2.b(this.u);
        a2.a(true);
        c2.b(a2);
        Intent intent = new Intent();
        intent.putExtra("setting_walkie_name", this.u);
        setResult(1, intent);
        finish();
    }

    private void x() {
        r();
        this.r = (TextView) a(R.id.title_bar_title);
        this.q = (TextView) a(R.id.title_bar_confirm);
        this.t = (EditText) a(R.id.activity_set_walkie_name_content_et);
        this.s = (TextView) a(R.id.activity_set_walkie_name_length);
        this.r.setText(getText(R.string.common_interphonename));
        this.q.setVisibility(0);
        this.q.setOnClickListener(this);
        View findViewById = findViewById(R.id.delete_text_btn);
        this.v = findViewById;
        findViewById.setOnClickListener(this);
        this.t.setText(d0.q());
        EditText editText = this.t;
        editText.setSelection(editText.getText().length());
        EditText editText2 = this.t;
        editText2.setFilters(new InputFilter[]{new com.ifengyu.intercom.ui.widget.view.a(editText2)});
        if (this.t.getText().toString().trim().length() == 0) {
            this.v.setVisibility(4);
        } else {
            this.v.setVisibility(0);
        }
        try {
            TextView textView = this.s;
            textView.setText(String.valueOf(this.t.getText().toString().getBytes(StringUtils.GB2312).length + "/" + this.w));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        this.t.addTextChangedListener(new a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.delete_text_btn) {
            this.t.setText("");
        } else if (id == R.id.title_bar_confirm) {
            this.u = this.t.getText().toString().trim();
            if (!j.b().a()) {
                c0.a((CharSequence) getString(R.string.current_device_not_connected), false);
            } else if (this.u.length() == 0) {
                c0.a((CharSequence) getString(R.string.setting_intercom_name_can_not_empty), false);
            } else if (!c0.f(this.u)) {
                c0.a((CharSequence) k0.c(R.string.toast_contains_invalid_characters), false);
            } else {
                this.x = true;
                e.d().c(this.u);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_set_walkie_talkie_name);
        x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.ifengyu.intercom.eventbus.a.a().c(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected void r() {
        ImageView imageView = (ImageView) a(R.id.title_bar_left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new b());
    }

    @Subscribe
    public void receiveDolphinParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        if (this.x) {
            this.x = false;
            if (paramUpdate.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                w();
            } else {
                c0.a((CharSequence) k0.c(R.string.toast_setup_failed_please_try_again), false);
            }
        }
    }
}
