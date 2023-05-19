package com.ifengyu.intercom.p216ui.activity;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.widget.view.MyInputFilter;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.account.UserInfo;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import io.reactivex.functions.Consumer;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.activity.SetMyOtherInfoActivity */
/* loaded from: classes2.dex */
public class SetMyOtherInfoActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private String f14874j;

    /* renamed from: k */
    private EditText f14875k;

    /* renamed from: l */
    private String f14876l;

    /* renamed from: m */
    private View f14877m;

    /* renamed from: n */
    private TextView f14878n;

    /* renamed from: o */
    private int f14879o = 16;

    /* renamed from: p */
    private String f14880p;

    /* renamed from: q */
    private QMUITopBarLayout f14881q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.SetMyOtherInfoActivity$a */
    /* loaded from: classes2.dex */
    public class C4371a implements TextWatcher {
        C4371a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (SetMyOtherInfoActivity.this.f14875k.getText().toString().trim().length() == 0) {
                SetMyOtherInfoActivity.this.f14877m.setVisibility(4);
            } else {
                SetMyOtherInfoActivity.this.f14877m.setVisibility(0);
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
    /* renamed from: com.ifengyu.intercom.ui.activity.SetMyOtherInfoActivity$b */
    /* loaded from: classes2.dex */
    public class C4372b implements TextWatcher {

        /* renamed from: a */
        private CharSequence f14883a;

        /* renamed from: b */
        private int f14884b;

        /* renamed from: c */
        private int f14885c;

        C4372b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (SetMyOtherInfoActivity.this.f14875k.getText().toString().trim().length() == 0) {
                    SetMyOtherInfoActivity.this.f14877m.setVisibility(4);
                } else {
                    SetMyOtherInfoActivity.this.f14877m.setVisibility(0);
                }
                TextView textView = SetMyOtherInfoActivity.this.f14878n;
                textView.setText(String.valueOf(SetMyOtherInfoActivity.this.f14875k.getText().toString().getBytes("GB2312").length + "/" + SetMyOtherInfoActivity.this.f14879o));
                this.f14884b = SetMyOtherInfoActivity.this.f14875k.getSelectionStart();
                this.f14885c = SetMyOtherInfoActivity.this.f14875k.getSelectionEnd();
                if (SetMyOtherInfoActivity.this.f14875k.getText().toString().length() <= 0 || this.f14883a.toString().getBytes("GB2312").length <= SetMyOtherInfoActivity.this.f14879o) {
                    return;
                }
                editable.delete(this.f14884b - 1, this.f14885c);
                SetMyOtherInfoActivity.this.f14875k.setText(editable);
                SetMyOtherInfoActivity.this.f14875k.setSelection(editable.length());
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f14883a = charSequence;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.SetMyOtherInfoActivity$c */
    /* loaded from: classes2.dex */
    public class C4373c extends ErrorConsumer {
        C4373c() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c("SetMyOtherInfoActivity", "updateSelfInfo fail");
            SetMyOtherInfoActivity.this.m10275v(NewHttpHelper.m8714a(newApiException.m8703a()));
            SetMyOtherInfoActivity.this.m10277t(R.drawable.load_fail);
            SetMyOtherInfoActivity.this.m10442K();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public void m10442K() {
        BaseApp.m8713a().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.t0
            @Override // java.lang.Runnable
            public final void run() {
                SetMyOtherInfoActivity.this.m10439N();
            }
        }, 500L);
    }

    /* renamed from: L */
    private void m10441L() {
        QMUITopBarLayout qMUITopBarLayout = (QMUITopBarLayout) findViewById(R.id.topbar);
        this.f14881q = qMUITopBarLayout;
        qMUITopBarLayout.setBottomDividerAlpha(0);
        this.f14881q.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SetMyOtherInfoActivity.this.m10437P(view);
            }
        });
        this.f14881q.m7339o(R.string.common_select, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SetMyOtherInfoActivity.this.m10435S(view);
            }
        });
        this.f14875k = (EditText) findViewById(R.id.set_info_et);
        View findViewById = findViewById(R.id.delete_text_btn);
        this.f14877m = findViewById;
        findViewById.setOnClickListener(this);
        this.f14878n = (TextView) findViewById(R.id.activity_set_user_name_length);
        if (this.f14874j.equals("setting_my_name")) {
            this.f14878n.setVisibility(0);
        }
        if (this.f14875k.getText().toString().trim().length() == 0) {
            this.f14877m.setVisibility(4);
        } else {
            this.f14877m.setVisibility(0);
        }
        this.f14875k.addTextChangedListener(new C4371a());
        String str = this.f14874j;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2003171240:
                if (str.equals("setting_my_email")) {
                    c = 0;
                    break;
                }
                break;
            case -1993147862:
                if (str.equals("setting_my_phone")) {
                    c = 1;
                    break;
                }
                break;
            case -1588382129:
                if (str.equals("setting_my_name")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f14881q.m7337q(getString(R.string.setting_my_info_email));
                this.f14875k.setHint(getString(R.string.setting_user_email_address));
                String m11247N = MiTalkClientUtil.m11247N();
                if (m11247N != null && !m11247N.equals("null") && m11247N.length() > 0) {
                    this.f14875k.setText(m11247N);
                    break;
                }
                break;
            case 1:
                this.f14881q.m7337q(getString(R.string.setting_my_info_phone));
                this.f14875k.setHint(getString(R.string.setting_user_phone_number));
                String m11237S = MiTalkClientUtil.m11237S();
                if (m11237S != null && !m11237S.equals("null") && m11237S.length() > 0) {
                    this.f14875k.setText(m11237S);
                    this.f14880p = m11237S;
                    break;
                }
                break;
            case 2:
                EditText editText = this.f14875k;
                editText.setFilters(new InputFilter[]{new MyInputFilter(editText)});
                this.f14881q.m7337q(getString(R.string.setting_my_info_username));
                this.f14875k.setHint(getString(R.string.setting_user_input_rules));
                String m11239R = MiTalkClientUtil.m11239R();
                if (m11239R != null && !m11239R.equals("null") && m11239R.length() > 0) {
                    this.f14875k.setText(m11239R);
                    try {
                        TextView textView = this.f14878n;
                        textView.setText(String.valueOf(m11239R.getBytes("GB2312").length + "/" + this.f14879o));
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
                this.f14875k.addTextChangedListener(new C4372b());
                break;
        }
        EditText editText2 = this.f14875k;
        editText2.setSelection(editText2.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m10439N() {
        m10283n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ void m10437P(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m10435S(View view) {
        m10430X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T */
    public /* synthetic */ void m10433U() {
        m10283n();
        setResult(-1, null);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public /* synthetic */ void m10431W(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f("SetMyOtherInfoActivity", "updateSelfInfo success");
        m10276u(R.string.set_success);
        m10277t(R.drawable.load_success);
        UserInfo userInfo = UserCache.getUserInfo();
        if (this.f14874j.equals("setting_my_name")) {
            MiTalkClientUtil.m11192p0(this.f14876l);
            if (userInfo != null) {
                userInfo.nickname = this.f14876l;
                UserCache.saveUserInfo(userInfo);
            }
            int m11191q = MiTalkClientUtil.m11191q();
            String m11195o = MiTalkClientUtil.m11195o();
            if (m11191q == 1 && BleCoreClient.m12373n().m12372o(m11195o)) {
                BleCoreClient.m12373n().m12378i(m11195o).m12313r1(Integer.parseInt(MiTalkClientUtil.m11243P()), this.f14876l);
            }
        } else if (this.f14874j.equals("setting_my_phone")) {
            MiTalkClientUtil.m11190q0(this.f14876l);
            if (userInfo != null) {
                userInfo.phone = this.f14876l;
                UserCache.saveUserInfo(userInfo);
            }
        } else if (this.f14874j.equals("setting_my_email")) {
            MiTalkClientUtil.m11196n0(this.f14876l);
            if (userInfo != null) {
                userInfo.email = this.f14876l;
                UserCache.saveUserInfo(userInfo);
            }
        }
        BaseApp.m8713a().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.v0
            @Override // java.lang.Runnable
            public final void run() {
                SetMyOtherInfoActivity.this.m10433U();
            }
        }, 500L);
    }

    /* renamed from: X */
    private void m10430X() {
        if (this.f14874j == null) {
            return;
        }
        if (!MethodsUtils.m11274z(this)) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
            return;
        }
        this.f14876l = this.f14875k.getText().toString().trim();
        if (this.f14874j.equals("setting_my_name")) {
            if (TextUtils.isEmpty(this.f14876l)) {
                MethodsUtils.m11302H(getString(R.string.setting_my_other_info_content_can_not_null), false);
            } else if (!MethodsUtils.m11275y(this.f14876l)) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_contains_invalid_characters), false);
            } else {
                m10287D(false, true, getString(R.string.setting_info_is_setting), R.drawable.load_spinner);
                m10429Y(this.f14876l, null, null);
            }
        } else if (this.f14874j.equals("setting_my_phone")) {
            if (!TextUtils.isEmpty(this.f14876l)) {
                if (!MethodsUtils.m11295e(this.f14876l)) {
                    MethodsUtils.m11302H(getString(R.string.setting_my_other_info_input_right_phone_number), false);
                    return;
                }
            } else {
                this.f14876l = "";
            }
            if (this.f14876l.equals(this.f14880p)) {
                finish();
                return;
            }
            m10287D(false, true, getString(R.string.setting_info_is_setting), R.drawable.load_spinner);
            m10429Y(null, this.f14876l, null);
        } else if (this.f14874j.equals("setting_my_email")) {
            if (!TextUtils.isEmpty(this.f14876l)) {
                if (!MethodsUtils.m11299a(this.f14876l)) {
                    MethodsUtils.m11302H(getString(R.string.setting_feedback_email_format_not_right), false);
                    return;
                }
            } else {
                this.f14876l = "";
            }
            m10287D(false, true, getString(R.string.setting_info_is_setting), R.drawable.load_spinner);
            m10429Y(null, null, this.f14876l);
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: Y */
    private void m10429Y(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("nickname", str);
        }
        if (str2 != null) {
            hashMap.put("phone", str2);
        }
        if (str3 != null) {
            hashMap.put("email", str3);
        }
        AppServiceClient.m11355a().m11383X(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.w0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SetMyOtherInfoActivity.this.m10431W((NewHttpResult) obj);
            }
        }, new C4373c());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.delete_text_btn) {
            return;
        }
        this.f14875k.setText("");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_set_my_other_info);
        this.f14874j = getIntent().getStringExtra("setting_what");
        m10441L();
    }
}
