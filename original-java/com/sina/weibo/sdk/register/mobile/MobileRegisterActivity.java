package com.sina.weibo.sdk.register.mobile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewCompat;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Constants;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.component.view.ResizeableLayout;
import com.sina.weibo.sdk.component.view.TitleBar;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.utils.e;
import com.sina.weibo.sdk.utils.f;
import com.sina.weibo.sdk.utils.h;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.Locale;
import org.json.JSONObject;

public class MobileRegisterActivity extends Activity implements OnClickListener, OnFocusChangeListener, com.sina.weibo.sdk.component.view.ResizeableLayout.a {
    /* access modifiers changed from: private */
    public static final String a = MobileRegisterActivity.class.getName();
    private ProgressDialog b;
    private TitleBar c;
    private ScrollView d;
    private LinearLayout e;
    /* access modifiers changed from: private */
    public TextView f;
    /* access modifiers changed from: private */
    public RelativeLayout g;
    private TextView h;
    private TextView i;
    /* access modifiers changed from: private */
    public EditText j;
    /* access modifiers changed from: private */
    public ImageView k;
    /* access modifiers changed from: private */
    public EditText l;
    /* access modifiers changed from: private */
    public Button m;
    /* access modifiers changed from: private */
    public TextView n;
    private Button o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    /* access modifiers changed from: private */
    public String v;
    private b w = new b(this, null);
    private int x = 0;
    private CountDownTimer y;

    private class a implements TextWatcher {
        private a() {
        }

        /* synthetic */ a(MobileRegisterActivity mobileRegisterActivity, a aVar) {
            this();
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(MobileRegisterActivity.this.j.getText().toString()) || TextUtils.isEmpty(MobileRegisterActivity.this.l.getText().toString())) {
                MobileRegisterActivity.this.i();
            } else {
                MobileRegisterActivity.this.j();
            }
        }
    }

    private class b extends Handler {
        private b() {
        }

        /* synthetic */ b(MobileRegisterActivity mobileRegisterActivity, b bVar) {
            this();
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    MobileRegisterActivity.this.f.setVisibility(0);
                    MobileRegisterActivity.this.g.setVisibility(0);
                    return;
                case 1:
                    MobileRegisterActivity.this.f.setVisibility(8);
                    MobileRegisterActivity.this.g.setVisibility(8);
                    return;
                default:
                    return;
            }
        }
    }

    private class c implements TextWatcher {
        private c() {
        }

        /* synthetic */ c(MobileRegisterActivity mobileRegisterActivity, c cVar) {
            this();
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (TextUtils.isEmpty(MobileRegisterActivity.this.j.getText().toString())) {
                MobileRegisterActivity.this.k.setVisibility(4);
            } else {
                MobileRegisterActivity.this.k.setVisibility(0);
            }
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(MobileRegisterActivity.this.j.getText().toString()) || TextUtils.isEmpty(MobileRegisterActivity.this.l.getText().toString())) {
                MobileRegisterActivity.this.i();
            } else {
                MobileRegisterActivity.this.j();
            }
        }
    }

    private class d extends ClickableSpan {
        private Context b;
        private String c;

        public d(Context context, String str) {
            this.b = context;
            this.c = str;
        }

        public void onClick(View view) {
            Intent intent = new Intent(this.b, WeiboSdkBrowser.class);
            Bundle bundle = new Bundle();
            bundle.putString("key_url", this.c);
            intent.putExtras(bundle);
            MobileRegisterActivity.this.startActivity(intent);
        }

        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(-11502161);
            textPaint.setUnderlineText(false);
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            h.a(getApplicationContext(), "Pass wrong params!!", 0);
            finish();
        }
        this.p = extras.getString("appKey");
        this.q = extras.getString("packagename");
        this.r = extras.getString("key_hash");
        if (TextUtils.isEmpty(this.p)) {
            h.a(getApplicationContext(), f.a(this, "your appkey not set", "您的app_key没有设置", "您的app_key沒有設置"), 0);
            finish();
        }
        String string = extras.getString("register_title");
        if (TextUtils.isEmpty(string)) {
            string = f.a(this, "Login", "验证码登录", "驗證碼登錄");
        }
        this.s = string;
        this.t = "0086";
        this.u = f.a(this, "China", Constants.DEFAULT_COUNTRY_NAME, "中國");
        c();
        this.y = new CountDownTimer(60000, 1000) {
            public void onTick(long j) {
                MobileRegisterActivity.this.m.setText(new StringBuilder(String.valueOf(f.a(MobileRegisterActivity.this.getApplicationContext(), "Get code", "获取验证码", "獲取驗證碼"))).append("(").append(j / 1000).append("s)").toString());
            }

            public void onFinish() {
                MobileRegisterActivity.this.m.setText(f.a(MobileRegisterActivity.this.getApplicationContext(), "Get code", "获取验证码", "獲取驗證碼"));
                MobileRegisterActivity.this.h();
            }
        };
    }

    private void c() {
        ResizeableLayout resizeableLayout = new ResizeableLayout(this);
        resizeableLayout.setLayoutParams(new LayoutParams(-1, -1));
        resizeableLayout.setBackgroundColor(-855310);
        this.c = new TitleBar(this);
        this.c.setId(1);
        this.c.setLeftBtnText(f.a(this, "Cancel", "取消", "取消"));
        this.c.setTitleBarText(this.s);
        this.c.setTitleBarClickListener(new com.sina.weibo.sdk.component.view.TitleBar.a() {
            public void a() {
                MobileRegisterActivity.this.setResult(0);
                MobileRegisterActivity.this.finish();
            }
        });
        resizeableLayout.addView(this.c);
        View view = new View(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, f.a((Context) this, 2));
        view.setBackgroundDrawable(f.b(this, "weibosdk_common_shadow_top.9.png"));
        layoutParams.addRule(3, 1);
        view.setLayoutParams(layoutParams);
        resizeableLayout.addView(view);
        this.d = new ScrollView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.topMargin = f.a((Context) this, 47);
        this.d.setBackgroundColor(-855310);
        this.d.setLayoutParams(layoutParams2);
        this.e = new LinearLayout(this);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        this.e.setOrientation(1);
        this.e.setLayoutParams(layoutParams3);
        this.f = new TextView(this);
        this.f.setTextSize(2, 13.0f);
        this.f.setHeight(f.a((Context) this, 44));
        this.f.setGravity(17);
        this.f.setTextColor(-8224126);
        this.f.setText(f.a(this, "Confirm your country/region and enter your mobile number", "请确认国家和地区并填写手机号码", "請確認國家和地區并填寫手機號"));
        this.f.setFocusable(true);
        this.f.setFocusableInTouchMode(true);
        this.e.addView(this.f);
        this.g = new RelativeLayout(this);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, f.a((Context) this, 48));
        this.g.setBackgroundDrawable(f.a((Context) this, "login_country_background.9.png", "login_country_background_highlighted.9.png"));
        this.g.setLayoutParams(layoutParams4);
        this.h = new TextView(this);
        this.h.setTextSize(2, 17.0f);
        this.h.setText("0086");
        this.h.setTextColor(-11382190);
        this.h.setGravity(3);
        this.h.setGravity(16);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, f.a((Context) this, 48));
        layoutParams5.leftMargin = f.a((Context) this, 15);
        layoutParams5.addRule(9);
        this.h.setLayoutParams(layoutParams5);
        ImageView imageView = new ImageView(this);
        imageView.setId(2);
        imageView.setImageDrawable(f.a((Context) this, "triangle.png"));
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(f.a((Context) this, 13), f.a((Context) this, 13));
        layoutParams6.rightMargin = f.a((Context) this, 15);
        layoutParams6.addRule(11);
        layoutParams6.addRule(15);
        imageView.setLayoutParams(layoutParams6);
        this.i = new TextView(this);
        this.i.setTextSize(2, 17.0f);
        this.i.setTextColor(-11382190);
        this.i.setText(this.u);
        this.i.setGravity(16);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, f.a((Context) this, 48));
        layoutParams7.rightMargin = f.a((Context) this, 118);
        layoutParams7.addRule(0, 2);
        layoutParams7.addRule(15);
        this.i.setLayoutParams(layoutParams7);
        this.g.addView(this.h);
        this.g.addView(this.i);
        this.g.addView(imageView);
        this.e.addView(this.g);
        LinearLayout linearLayout = new LinearLayout(this);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams8.topMargin = f.a((Context) this, 10);
        linearLayout.setLayoutParams(layoutParams8);
        linearLayout.setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, f.a((Context) this, 50));
        layoutParams9.gravity = 16;
        relativeLayout.setBackgroundDrawable(f.b(this, "login_top_background.9.png"));
        relativeLayout.setLayoutParams(layoutParams9);
        this.k = new ImageView(this);
        this.k.setId(4);
        this.k.setImageDrawable(f.a((Context) this, "search_clear_btn_normal.png", "search_clear_btn_down.png"));
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(f.a((Context) this, 22), f.a((Context) this, 22));
        layoutParams10.rightMargin = f.a((Context) this, 15);
        layoutParams10.addRule(11);
        layoutParams10.addRule(15);
        this.k.setVisibility(4);
        this.k.setLayoutParams(layoutParams10);
        relativeLayout.addView(this.k);
        this.j = new EditText(this);
        this.j.setTextSize(2, 16.0f);
        this.j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.j.setHint(f.a(this, "Your mobile number", "请输入手机号码", "請輸入手機號"));
        this.j.setHintTextColor(-4342339);
        this.j.setBackgroundDrawable(null);
        this.j.setSelected(false);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, f.a((Context) this, 50));
        layoutParams11.topMargin = f.a((Context) this, 0);
        layoutParams11.bottomMargin = f.a((Context) this, 0);
        layoutParams11.leftMargin = f.a((Context) this, 0);
        layoutParams11.rightMargin = f.a((Context) this, 0);
        layoutParams11.addRule(0, 4);
        this.j.setLayoutParams(layoutParams11);
        relativeLayout.addView(this.j);
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-1, f.a((Context) this, 50));
        relativeLayout2.setBackgroundDrawable(f.b(this, "login_bottom_background.9.png"));
        relativeLayout2.setLayoutParams(layoutParams12);
        this.m = new Button(this);
        this.m.setId(3);
        this.m.setBackgroundDrawable(f.a((Context) this, "get_code_button.9.png", "get_code_button_highlighted.9.png"));
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-2, f.a((Context) this, 29));
        layoutParams13.rightMargin = f.a((Context) this, 12);
        layoutParams13.addRule(11);
        layoutParams13.addRule(15);
        this.m.setPadding(18, 0, 18, 0);
        this.m.setLayoutParams(layoutParams13);
        this.m.setText(f.a(this, "Get code", "获取验证码", "獲取驗證碼"));
        this.m.setTextSize(15.0f);
        h();
        relativeLayout2.addView(this.m);
        this.l = new EditText(this);
        this.l.setTextSize(2, 16.0f);
        this.l.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.l.setHintTextColor(-4342339);
        this.l.setHint(f.a(this, "Verification code", "请输入验证码", "請輸入驗證碼"));
        this.l.setBackgroundDrawable(null);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-1, f.a((Context) this, 48));
        layoutParams14.addRule(0, 3);
        this.l.setLayoutParams(layoutParams14);
        relativeLayout2.addView(this.l);
        linearLayout.addView(relativeLayout);
        linearLayout.addView(relativeLayout2);
        this.e.addView(linearLayout);
        this.m.setOnClickListener(this);
        this.n = new TextView(this);
        this.n.setTextSize(2, 13.0f);
        this.n.setTextColor(-2014941);
        this.n.setText("");
        this.n.setVisibility(4);
        LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(-1, f.a((Context) this, 36));
        layoutParams15.leftMargin = f.a((Context) this, 12);
        this.n.setGravity(16);
        this.n.setLayoutParams(layoutParams15);
        this.e.addView(this.n);
        this.o = d();
        i();
        this.e.addView(this.o);
        TextView e2 = e();
        TextView f2 = f();
        this.e.addView(e2);
        this.e.addView(f2);
        this.d.addView(this.e);
        resizeableLayout.addView(this.d);
        l();
        this.j.setInputType(2);
        this.j.addTextChangedListener(new c(this, null));
        this.l.setInputType(2);
        this.l.addTextChangedListener(new a(this, null));
        this.k.setOnClickListener(this);
        this.j.setOnFocusChangeListener(this);
        this.o.setOnClickListener(this);
        this.g.setOnClickListener(this);
        resizeableLayout.setSizeChangeListener(this);
        setContentView(resizeableLayout);
    }

    private Button d() {
        Button button = new Button(this);
        button.setBackgroundDrawable(f.b(this, "common_button_big_blue.9.png", "common_button_big_blue_highlighted.9.png", "common_button_big_blue_disable.9.png"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, f.a((Context) this, 46));
        int a2 = f.a((Context) this, 12);
        layoutParams.rightMargin = a2;
        layoutParams.leftMargin = a2;
        button.setText(f.a(this, "OK", "确定", "確定"));
        button.setTextSize(17.0f);
        button.setLayoutParams(layoutParams);
        return button;
    }

    private TextView e() {
        TextView textView = new TextView(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = f.a((Context) this, 12);
        layoutParams.leftMargin = f.a((Context) this, 12);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(13.0f);
        textView.setGravity(3);
        textView.setTextColor(-8224126);
        textView.setText(f.a(this, "Service By Sina WeiBo", "此服务由微博提供", "此服務由微博提供"));
        return textView;
    }

    private TextView f() {
        String str;
        int indexOf;
        int length;
        int indexOf2;
        int length2;
        TextView textView = new TextView(this);
        textView.setTextSize(2, 13.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = f.a((Context) this, 8);
        layoutParams.leftMargin = f.a((Context) this, 12);
        layoutParams.rightMargin = f.a((Context) this, 12);
        textView.setLayoutParams(layoutParams);
        textView.setTextSize(13.0f);
        textView.setGravity(3);
        textView.setTextColor(-8224126);
        Locale a2 = f.a();
        String str2 = "点击“确定”表示你同意服务使用协议和隐私条款。";
        String str3 = "zh_CN";
        if (Locale.SIMPLIFIED_CHINESE.equals(a2)) {
            str = "点击“确定”表示你同意服务使用协议和隐私条款。";
            String str4 = "服务使用协议";
            String str5 = "隐私条款";
            indexOf = "点击“确定”表示你同意服务使用协议和隐私条款。".indexOf(str4);
            length = indexOf + str4.length();
            indexOf2 = "点击“确定”表示你同意服务使用协议和隐私条款。".indexOf(str5);
            length2 = str5.length() + indexOf2;
        } else if (Locale.TRADITIONAL_CHINESE.equals(a2)) {
            str = "點擊“確定”標示你同意服務使用協議和隱私條款。";
            str3 = "zh_HK";
            String str6 = "服務使用協議";
            String str7 = "隱私條款";
            indexOf = "點擊“確定”標示你同意服務使用協議和隱私條款。".indexOf(str6);
            length = indexOf + str6.length();
            indexOf2 = "點擊“確定”標示你同意服務使用協議和隱私條款。".indexOf(str7);
            length2 = str7.length() + indexOf2;
        } else {
            str = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy";
            str3 = "en_US";
            String str8 = "Service Agreement";
            String str9 = "Privacy Policy";
            indexOf = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy".indexOf(str8);
            length = indexOf + str8.length();
            indexOf2 = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy".indexOf(str9);
            length2 = str9.length() + indexOf2;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (!(indexOf == -1 || length == -1)) {
            spannableStringBuilder.setSpan(new d(this, "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5&lang=" + str3), indexOf, length, 33);
        }
        if (!(indexOf2 == -1 || length2 == -1)) {
            spannableStringBuilder.setSpan(new d(this, "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349&lang=" + str3), indexOf2, length2, 33);
        }
        textView.setText(spannableStringBuilder);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setFocusable(false);
        return textView;
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        switch (i2) {
            case 0:
                if (intent != null) {
                    this.t = intent.getStringExtra("code");
                    this.u = intent.getStringExtra(HttpPostBodyUtil.NAME);
                    this.h.setText(this.t);
                    this.i.setText(this.u);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void onFocusChange(View view, boolean z) {
        if (view == this.j && !z) {
            if (b(this.j.getText().toString())) {
                this.n.setVisibility(4);
                return;
            }
            this.n.setText(f.a(this, "Your phone number isn’t 11-digit long", "您的手机号不是11位数", "您的手機號不是11位數"));
            this.n.setVisibility(0);
        }
    }

    private boolean a(String str) {
        if (!e.a(this)) {
            k();
            return false;
        } else if (!b(str)) {
            this.n.setVisibility(0);
            this.n.setText(f.a(getApplicationContext(), "Your phone number isn’t 11-digit long", "您的手机号不是11位数", "您的手機號不是11位數"));
            return false;
        } else {
            this.n.setVisibility(4);
            return true;
        }
    }

    private boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!"0086".equals(this.t)) {
            return true;
        }
        if (str.trim().length() == 11) {
            return true;
        }
        return false;
    }

    private boolean c(String str) {
        if (!e.a(this)) {
            k();
            return false;
        } else if (d(str)) {
            this.n.setVisibility(4);
            return true;
        } else {
            this.n.setVisibility(0);
            this.n.setText(f.a(getApplicationContext(), "Your code isn’t 6-digit long", "你的验证码不是6位数", "你的驗證碼不是6位數"));
            h.a(getApplicationContext(), f.a(getApplicationContext(), "Your code isn’t 6-digit long", "你的验证码不是6位数", "你的驗證碼不是6位數"), 0);
            return false;
        }
    }

    private boolean d(String str) {
        if (TextUtils.isEmpty(str) || str.length() != 6) {
            return false;
        }
        return true;
    }

    private void g() {
        this.m.setEnabled(false);
        this.m.setTextColor(-4342339);
    }

    /* access modifiers changed from: private */
    public void h() {
        this.m.setEnabled(true);
        this.m.setTextColor(-11502161);
    }

    /* access modifiers changed from: private */
    public void i() {
        this.o.setTextColor(1308622847);
        this.o.setEnabled(false);
    }

    /* access modifiers changed from: private */
    public void j() {
        this.o.setEnabled(true);
        this.o.setTextColor(-1);
    }

    private void k() {
        h.a(getApplicationContext(), f.a(getApplicationContext(), "your network is  disabled  try again later", "您的网络不可用，请稍后", "您的網絡不可用，請稍後"), 0);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        setResult(0);
        finish();
        return true;
    }

    public void a() {
        if (this.b != null && this.b.isShowing()) {
            this.b.dismiss();
        }
    }

    private void l() {
        this.b = new ProgressDialog(this);
        this.b.setCanceledOnTouchOutside(false);
        this.b.requestWindowFeature(1);
        this.b.setMessage(f.a(this, "please wait .... ", "正在处理中.....", "正在處理中....."));
    }

    public void a(String str, String str2) {
        com.sina.weibo.sdk.net.f fVar = new com.sina.weibo.sdk.net.f(this.p);
        fVar.a("appkey", this.p);
        fVar.a("packagename", this.q);
        fVar.a("key_hash", this.r);
        String str3 = UserInfo.TYPE_PHONE;
        if (!"0086".equals(str2)) {
            str = new StringBuilder(String.valueOf(str2)).append(str).toString();
        }
        fVar.a(str3, str);
        fVar.a("version", "0031405000");
        com.sina.weibo.sdk.net.c.a(this, "http://api.weibo.com/oauth2/sms_authorize/send", fVar, "GET", new com.sina.weibo.sdk.net.d() {
            public void a(WeiboException weiboException) {
                com.sina.weibo.sdk.utils.c.a(MobileRegisterActivity.a, "get onWeiboException " + weiboException.getMessage());
                String a2 = f.a(MobileRegisterActivity.this.getApplicationContext(), "the server is busy, please  wait", "服务器忙,请稍后再试", "服務器忙,請稍後再試");
                try {
                    JSONObject jSONObject = new JSONObject(weiboException.getMessage());
                    if (!TextUtils.isEmpty(jSONObject.optString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2))) {
                        a2 = jSONObject.optString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2);
                    }
                } catch (Exception e) {
                    ThrowableExtension.printStackTrace(e);
                }
                h.a(MobileRegisterActivity.this.getApplicationContext(), a2, 1);
            }

            public void a(String str) {
                com.sina.weibo.sdk.utils.c.a(MobileRegisterActivity.a, "get onComplete : " + str);
                if (str != null) {
                    try {
                        MobileRegisterActivity.this.v = (String) new JSONObject(str).get("cfrom");
                    } catch (Exception e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            }
        });
    }

    public void b(final String str, String str2) {
        com.sina.weibo.sdk.net.f fVar = new com.sina.weibo.sdk.net.f(this.p);
        fVar.a("appkey", this.p);
        fVar.a("packagename", this.q);
        fVar.a("key_hash", this.r);
        fVar.a(UserInfo.TYPE_PHONE, str);
        fVar.a("version", "0031405000");
        fVar.a("code", str2);
        fVar.a("cfrom", this.v);
        this.b.show();
        com.sina.weibo.sdk.net.c.a(this, "http://api.weibo.com/oauth2/sms_authorize/submit", fVar, "GET", new com.sina.weibo.sdk.net.d() {
            public void a(WeiboException weiboException) {
                com.sina.weibo.sdk.utils.c.a(MobileRegisterActivity.a, "get onWeiboException " + weiboException.getMessage());
                String a2 = f.a(MobileRegisterActivity.this.getApplicationContext(), "the server is busy, please  wait", "服务器忙,请稍后再试", "服務器忙,請稍後再試");
                try {
                    JSONObject jSONObject = new JSONObject(weiboException.getMessage());
                    if (!TextUtils.isEmpty(jSONObject.optString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2))) {
                        a2 = jSONObject.optString(XiaomiOAuthConstants.EXTRA_ERROR_DESCRIPTION_2);
                    }
                } catch (Exception e) {
                    ThrowableExtension.printStackTrace(e);
                }
                MobileRegisterActivity.this.n.setVisibility(0);
                MobileRegisterActivity.this.n.setText(a2);
                MobileRegisterActivity.this.a();
            }

            public void a(String str) {
                MobileRegisterActivity.this.a();
                com.sina.weibo.sdk.utils.c.a(MobileRegisterActivity.a, "get onComplete : " + str);
                if (str != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putString(Key.UID, jSONObject.optString(Key.UID));
                        bundle.putString("phone_num", str);
                        bundle.putString("access_token", jSONObject.optString("oauth_token"));
                        bundle.putString("expires_in", jSONObject.optString("expires"));
                        intent.putExtras(bundle);
                        MobileRegisterActivity.this.setResult(-1, intent);
                        MobileRegisterActivity.this.finish();
                    } catch (Exception e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            }
        });
    }

    public void onClick(View view) {
        if (view == this.m) {
            String editable = this.j.getText().toString();
            String charSequence = this.h.getText().toString();
            if (a(editable)) {
                this.y.start();
                g();
                a(editable, charSequence);
            }
        } else if (view == this.k) {
            this.j.setText("");
        } else if (view == this.o) {
            String editable2 = this.j.getText().toString();
            String editable3 = this.l.getText().toString();
            if (c(editable3)) {
                b(editable2, editable3);
            }
        } else if (view == this.g) {
            this.n.setVisibility(4);
            Intent intent = new Intent();
            intent.setClass(this, SelectCountryActivity.class);
            startActivityForResult(intent, 0);
        }
    }

    public void a(int i2, int i3, int i4, int i5) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        if (displayMetrics.widthPixels <= displayMetrics.heightPixels) {
            this.x = this.x < i3 ? i3 : this.x;
            int i6 = 0;
            if (i3 < i5) {
                i6 = 1;
            } else if (i3 > i5 && i3 < this.x) {
                i6 = 1;
            } else if (i3 == i5 && i3 != this.x) {
                i6 = 1;
            }
            this.w.sendEmptyMessage(i6);
        }
    }
}
