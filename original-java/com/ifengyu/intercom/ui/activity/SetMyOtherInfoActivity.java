package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.a;
import com.ifengyu.intercom.a.b.j;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.network.c;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.UnsupportedEncodingException;
import okhttp3.Call;

public class SetMyOtherInfoActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public String a;
    /* access modifiers changed from: private */
    public EditText b;
    /* access modifiers changed from: private */
    public String c;
    /* access modifiers changed from: private */
    public View d;
    /* access modifiers changed from: private */
    public TextView q;
    /* access modifiers changed from: private */
    public int r = 16;
    private String s;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_set_my_other_info);
        this.a = getIntent().getStringExtra("setting_what");
        c();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "SetMyOtherInfoActivity");
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    private void c() {
        View findViewById = findViewById(R.id.title_bar_confirm);
        findViewById.setVisibility(0);
        findViewById.setOnClickListener(this);
        this.b = (EditText) findViewById(R.id.set_info_et);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        this.d = findViewById(R.id.delete_text_btn);
        this.d.setOnClickListener(this);
        this.q = (TextView) findViewById(R.id.activity_set_user_name_length);
        if (this.a.equals("setting_my_name")) {
            this.q.setVisibility(0);
        }
        if (this.b.getText().toString().trim().length() == 0) {
            this.d.setVisibility(4);
        } else {
            this.d.setVisibility(0);
        }
        this.b.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void afterTextChanged(Editable editable) {
                if (SetMyOtherInfoActivity.this.b.getText().toString().trim().length() == 0) {
                    SetMyOtherInfoActivity.this.d.setVisibility(4);
                } else {
                    SetMyOtherInfoActivity.this.d.setVisibility(0);
                }
            }
        });
        String str = this.a;
        char c2 = 65535;
        switch (str.hashCode()) {
            case -2003171240:
                if (str.equals("setting_my_email")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1993147862:
                if (str.equals("setting_my_phone")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1588382129:
                if (str.equals("setting_my_name")) {
                    c2 = 0;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.b.setFilters(new InputFilter[]{new b(this.b)});
                ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.setting_my_info_username));
                this.b.setHint(getString(R.string.setting_user_input_rules));
                String M = w.M();
                if (M != null && !M.equals("null") && M.length() > 0) {
                    this.b.setText(M);
                    try {
                        this.q.setText(String.valueOf(M.getBytes(StringUtils.GB2312).length + "/" + this.r));
                    } catch (UnsupportedEncodingException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
                this.b.addTextChangedListener(new TextWatcher() {
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
                            if (SetMyOtherInfoActivity.this.b.getText().toString().trim().length() == 0) {
                                SetMyOtherInfoActivity.this.d.setVisibility(4);
                            } else {
                                SetMyOtherInfoActivity.this.d.setVisibility(0);
                            }
                            SetMyOtherInfoActivity.this.q.setText(String.valueOf(SetMyOtherInfoActivity.this.b.getText().toString().getBytes(StringUtils.GB2312).length + "/" + SetMyOtherInfoActivity.this.r));
                            this.c = SetMyOtherInfoActivity.this.b.getSelectionStart();
                            this.d = SetMyOtherInfoActivity.this.b.getSelectionEnd();
                            if (SetMyOtherInfoActivity.this.b.getText().toString().length() > 0 && this.b.toString().getBytes(StringUtils.GB2312).length > SetMyOtherInfoActivity.this.r) {
                                editable.delete(this.c - 1, this.d);
                                SetMyOtherInfoActivity.this.b.setText(editable);
                                SetMyOtherInfoActivity.this.b.setSelection(editable.length());
                            }
                        } catch (UnsupportedEncodingException e) {
                            ThrowableExtension.printStackTrace(e);
                        }
                    }
                });
                break;
            case 1:
                ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.setting_my_info_phone));
                this.b.setHint(getString(R.string.setting_user_phone_number));
                String O = w.O();
                if (O != null && !O.equals("null") && O.length() > 0) {
                    this.b.setText(O);
                    this.s = O;
                    break;
                }
            case 2:
                ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.setting_my_info_email));
                this.b.setHint(getString(R.string.setting_user_email_address));
                String P = w.P();
                if (P != null && !P.equals("null") && P.length() > 0) {
                    this.b.setText(P);
                    break;
                }
        }
        this.b.setSelection(this.b.getText().length());
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.delete_text_btn /*2131755259*/:
                this.b.setText("");
                return;
            case R.id.title_bar_confirm /*2131755836*/:
                if (this.a == null) {
                    return;
                }
                if (!v.a((Context) this)) {
                    v.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                }
                this.c = this.b.getText().toString().trim();
                if (this.a.equals("setting_my_name")) {
                    if (TextUtils.isEmpty(this.c)) {
                        v.a((CharSequence) getString(R.string.setting_my_other_info_content_can_not_null), false);
                        return;
                    } else if (!v.g(this.c)) {
                        v.a((CharSequence) ad.a((int) R.string.toast_contains_invalid_characters), false);
                        return;
                    } else {
                        a(false, true, getString(R.string.setting_info_is_setting), (int) R.drawable.load_spinner);
                        a(1, this.c, null, null);
                        return;
                    }
                } else if (this.a.equals("setting_my_phone")) {
                    if (TextUtils.isEmpty(this.c)) {
                        this.c = "null";
                    } else if (!v.c(this.c)) {
                        v.a((CharSequence) getString(R.string.setting_my_other_info_input_right_phone_number), false);
                        return;
                    }
                    if (this.c.equals(this.s)) {
                        finish();
                        return;
                    }
                    a(false, true, getString(R.string.setting_info_is_setting), (int) R.drawable.load_spinner);
                    a(2, null, this.c, null);
                    return;
                } else if (this.a.equals("setting_my_email")) {
                    if (TextUtils.isEmpty(this.c)) {
                        this.c = "null";
                    } else if (!v.b(this.c)) {
                        v.a((CharSequence) getString(R.string.setting_feedback_email_format_not_right), false);
                        return;
                    }
                    a(false, true, getString(R.string.setting_info_is_setting), (int) R.drawable.load_spinner);
                    a(3, null, null, this.c);
                    return;
                } else {
                    return;
                }
            default:
                return;
        }
    }

    private void a(int i, String str, String str2, String str3) {
        a.a(i, str, str2, str3, null, new j() {
            public void a(Call call, Exception exc, int i) {
                SetMyOtherInfoActivity.this.e(R.string.net_error_please_check);
                SetMyOtherInfoActivity.this.d(R.drawable.mine_icon_lose);
                SetMyOtherInfoActivity.this.d();
            }

            public void a(String str, int i) {
                if (c.a(str)) {
                    SetMyOtherInfoActivity.this.e(R.string.set_success);
                    SetMyOtherInfoActivity.this.d(R.drawable.mine_icon_win);
                    if (SetMyOtherInfoActivity.this.a.equals("setting_my_name")) {
                        w.g(SetMyOtherInfoActivity.this.c);
                        f.a().a(Integer.parseInt(w.K()), SetMyOtherInfoActivity.this.c);
                    } else if (SetMyOtherInfoActivity.this.a.equals("setting_my_phone")) {
                        w.i(SetMyOtherInfoActivity.this.c);
                    } else if (SetMyOtherInfoActivity.this.a.equals("setting_my_email")) {
                        w.j(SetMyOtherInfoActivity.this.c);
                    }
                    MiTalkiApp.n().postDelayed(new Runnable() {
                        public void run() {
                            SetMyOtherInfoActivity.this.k();
                            SetMyOtherInfoActivity.this.setResult(-1, null);
                            SetMyOtherInfoActivity.this.finish();
                        }
                    }, 500);
                    return;
                }
                SetMyOtherInfoActivity.this.e(R.string.net_error_please_check);
                SetMyOtherInfoActivity.this.d(R.drawable.mine_icon_lose);
                SetMyOtherInfoActivity.this.d();
            }
        });
    }

    /* access modifiers changed from: private */
    public void d() {
        MiTalkiApp.n().postDelayed(new Runnable() {
            public void run() {
                SetMyOtherInfoActivity.this.k();
            }
        }, 500);
    }
}
