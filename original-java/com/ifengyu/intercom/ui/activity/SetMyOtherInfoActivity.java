package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.library.base.BaseApp;
import java.io.UnsupportedEncodingException;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class SetMyOtherInfoActivity extends BaseActivity implements View.OnClickListener {
    private String q;
    private EditText r;
    private String s;
    private View t;
    private TextView u;
    private int v = 16;
    private String w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (SetMyOtherInfoActivity.this.r.getText().toString().trim().length() == 0) {
                SetMyOtherInfoActivity.this.t.setVisibility(4);
            } else {
                SetMyOtherInfoActivity.this.t.setVisibility(0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f6170a;

        /* renamed from: b  reason: collision with root package name */
        private int f6171b;

        /* renamed from: c  reason: collision with root package name */
        private int f6172c;

        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (SetMyOtherInfoActivity.this.r.getText().toString().trim().length() == 0) {
                    SetMyOtherInfoActivity.this.t.setVisibility(4);
                } else {
                    SetMyOtherInfoActivity.this.t.setVisibility(0);
                }
                TextView textView = SetMyOtherInfoActivity.this.u;
                textView.setText(String.valueOf(SetMyOtherInfoActivity.this.r.getText().toString().getBytes(StringUtils.GB2312).length + "/" + SetMyOtherInfoActivity.this.v));
                this.f6171b = SetMyOtherInfoActivity.this.r.getSelectionStart();
                this.f6172c = SetMyOtherInfoActivity.this.r.getSelectionEnd();
                if (SetMyOtherInfoActivity.this.r.getText().toString().length() > 0 && this.f6170a.toString().getBytes(StringUtils.GB2312).length > SetMyOtherInfoActivity.this.v) {
                    editable.delete(this.f6171b - 1, this.f6172c);
                    SetMyOtherInfoActivity.this.r.setText(editable);
                    SetMyOtherInfoActivity.this.r.setSelection(editable.length());
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f6170a = charSequence;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends l {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SetMyOtherInfoActivity.this.j();
                SetMyOtherInfoActivity.this.setResult(-1, null);
                SetMyOtherInfoActivity.this.finish();
            }
        }

        c() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            SetMyOtherInfoActivity.this.c(R.string.net_error_please_check);
            SetMyOtherInfoActivity.this.b(R.drawable.mine_icon_lose);
            SetMyOtherInfoActivity.this.w();
        }

        public void a(String str, int i) {
            if (com.ifengyu.intercom.network.c.a(str)) {
                SetMyOtherInfoActivity.this.c(R.string.set_success);
                SetMyOtherInfoActivity.this.b(R.drawable.mine_icon_win);
                if (SetMyOtherInfoActivity.this.q.equals("setting_my_name")) {
                    d0.i(SetMyOtherInfoActivity.this.s);
                    e.d().a(Integer.parseInt(d0.N()), SetMyOtherInfoActivity.this.s);
                } else if (SetMyOtherInfoActivity.this.q.equals("setting_my_phone")) {
                    d0.j(SetMyOtherInfoActivity.this.s);
                } else if (SetMyOtherInfoActivity.this.q.equals("setting_my_email")) {
                    d0.g(SetMyOtherInfoActivity.this.s);
                }
                BaseApp.a().postDelayed(new a(), 500L);
                return;
            }
            SetMyOtherInfoActivity.this.c(R.string.net_error_please_check);
            SetMyOtherInfoActivity.this.b(R.drawable.mine_icon_lose);
            SetMyOtherInfoActivity.this.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SetMyOtherInfoActivity.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        BaseApp.a().postDelayed(new d(), 500L);
    }

    private void x() {
        View findViewById = findViewById(R.id.title_bar_confirm);
        findViewById.setVisibility(0);
        findViewById.setOnClickListener(this);
        this.r = (EditText) findViewById(R.id.set_info_et);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        View findViewById2 = findViewById(R.id.delete_text_btn);
        this.t = findViewById2;
        findViewById2.setOnClickListener(this);
        this.u = (TextView) findViewById(R.id.activity_set_user_name_length);
        if (this.q.equals("setting_my_name")) {
            this.u.setVisibility(0);
        }
        if (this.r.getText().toString().trim().length() == 0) {
            this.t.setVisibility(4);
        } else {
            this.t.setVisibility(0);
        }
        this.r.addTextChangedListener(new a());
        String str = this.q;
        char c2 = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -2003171240) {
            if (hashCode != -1993147862) {
                if (hashCode == -1588382129 && str.equals("setting_my_name")) {
                    c2 = 0;
                }
            } else if (str.equals("setting_my_phone")) {
                c2 = 1;
            }
        } else if (str.equals("setting_my_email")) {
            c2 = 2;
        }
        if (c2 == 0) {
            EditText editText = this.r;
            editText.setFilters(new InputFilter[]{new com.ifengyu.intercom.ui.widget.view.a(editText)});
            ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.setting_my_info_username));
            this.r.setHint(getString(R.string.setting_user_input_rules));
            String P = d0.P();
            if (P != null && !P.equals("null") && P.length() > 0) {
                this.r.setText(P);
                try {
                    TextView textView = this.u;
                    textView.setText(String.valueOf(P.getBytes(StringUtils.GB2312).length + "/" + this.v));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
            this.r.addTextChangedListener(new b());
        } else if (c2 == 1) {
            ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.setting_my_info_phone));
            this.r.setHint(getString(R.string.setting_user_phone_number));
            String Q = d0.Q();
            if (Q != null && !Q.equals("null") && Q.length() > 0) {
                this.r.setText(Q);
                this.w = Q;
            }
        } else if (c2 == 2) {
            ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.setting_my_info_email));
            this.r.setHint(getString(R.string.setting_user_email_address));
            String L = d0.L();
            if (L != null && !L.equals("null") && L.length() > 0) {
                this.r.setText(L);
            }
        }
        EditText editText2 = this.r;
        editText2.setSelection(editText2.getText().length());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.delete_text_btn /* 2131296520 */:
                this.r.setText("");
                return;
            case R.id.title_bar_confirm /* 2131297304 */:
                if (this.q != null) {
                    if (!c0.b(this)) {
                        c0.a((CharSequence) getString(R.string.net_error_please_check), false);
                        return;
                    }
                    this.s = this.r.getText().toString().trim();
                    if (this.q.equals("setting_my_name")) {
                        if (TextUtils.isEmpty(this.s)) {
                            c0.a((CharSequence) getString(R.string.setting_my_other_info_content_can_not_null), false);
                            return;
                        } else if (!c0.f(this.s)) {
                            c0.a((CharSequence) k0.c(R.string.toast_contains_invalid_characters), false);
                            return;
                        } else {
                            a(false, true, getString(R.string.setting_info_is_setting), R.drawable.load_spinner);
                            a(1, this.s, (String) null, (String) null);
                            return;
                        }
                    } else if (this.q.equals("setting_my_phone")) {
                        if (TextUtils.isEmpty(this.s)) {
                            this.s = "null";
                        } else if (!c0.b(this.s)) {
                            c0.a((CharSequence) getString(R.string.setting_my_other_info_input_right_phone_number), false);
                            return;
                        }
                        if (this.s.equals(this.w)) {
                            finish();
                            return;
                        }
                        a(false, true, getString(R.string.setting_info_is_setting), R.drawable.load_spinner);
                        a(2, (String) null, this.s, (String) null);
                        return;
                    } else if (this.q.equals("setting_my_email")) {
                        if (TextUtils.isEmpty(this.s)) {
                            this.s = "null";
                        } else if (!c0.a(this.s)) {
                            c0.a((CharSequence) getString(R.string.setting_feedback_email_format_not_right), false);
                            return;
                        }
                        a(false, true, getString(R.string.setting_info_is_setting), R.drawable.load_spinner);
                        a(3, (String) null, (String) null, this.s);
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_set_my_other_info);
        this.q = getIntent().getStringExtra("setting_what");
        x();
    }

    private void a(int i, String str, String str2, String str3) {
        com.ifengyu.intercom.g.a.a(i, str, str2, str3, null, new c());
    }
}
