package com.ifengyu.intercom.ui.activity;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.g.d.l;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.lite.dialog.list.d;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.library.a.m;
import com.ifengyu.library.base.BaseApp;
import com.qmuiteam.qmui.widget.dialog.b;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class QuestionFeedbackActivity extends BaseActivity implements View.OnClickListener {
    private TextView q;
    private EditText r;
    private EditText s;
    private View t;
    private TextView u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (QuestionFeedbackActivity.this.s.getText().toString().trim().length() == 0) {
                QuestionFeedbackActivity.this.t.setVisibility(4);
            } else {
                QuestionFeedbackActivity.this.t.setVisibility(0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* loaded from: classes2.dex */
    class b extends l {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                QuestionFeedbackActivity.this.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.ui.activity.QuestionFeedbackActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0158b implements Runnable {
            RunnableC0158b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                QuestionFeedbackActivity.this.j();
                QuestionFeedbackActivity.this.finish();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                QuestionFeedbackActivity.this.j();
            }
        }

        b() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            QuestionFeedbackActivity.this.c(R.string.dialog_send_failed);
            QuestionFeedbackActivity.this.b(R.drawable.mine_icon_lose);
            c0.a((CharSequence) m.b((int) R.string.toast_send_failed_please_check_network), false);
            BaseApp.a().postDelayed(new a(), 500L);
        }

        public void a(String str, int i) {
            if (com.ifengyu.intercom.network.c.a(str)) {
                QuestionFeedbackActivity.this.c(R.string.dialog_send_success);
                QuestionFeedbackActivity.this.b(R.drawable.mine_icon_win);
                BaseApp.a().postDelayed(new RunnableC0158b(), 500L);
                return;
            }
            QuestionFeedbackActivity.this.c(R.string.dialog_send_failed);
            QuestionFeedbackActivity.this.b(R.drawable.mine_icon_lose);
            c0.a((CharSequence) m.b((int) R.string.toast_send_failed_please_check_network), false);
            BaseApp.a().postDelayed(new c(), 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QuestionFeedbackActivity.this.finish();
        }
    }

    private void w() {
        r();
        TextView textView = (TextView) a(R.id.title_bar_title);
        this.q = textView;
        textView.setText(getString(R.string.feedback));
        TextView textView2 = (TextView) findViewById(R.id.title_bar_confirm);
        textView2.setVisibility(0);
        textView2.setText(R.string.history_feedback);
        textView2.setOnClickListener(this);
        this.u = (TextView) findViewById(R.id.feedback_device_type);
        if (j.b().a()) {
            int g = d0.g();
            if (g == 1) {
                this.u.setText(getString(R.string.device_dolphin_name));
                this.u.setTextColor(getResources().getColor(R.color.black));
            } else if (g == 4) {
                this.u.setText(getString(R.string.device_shark_name));
                this.u.setTextColor(getResources().getColor(R.color.black));
            } else if (g == 5) {
                this.u.setText(getString(R.string.device_seal_name));
                this.u.setTextColor(getResources().getColor(R.color.black));
            }
        }
        findViewById(R.id.select_feedback_device).setOnClickListener(this);
        findViewById(R.id.send_feedback).setOnClickListener(this);
        this.r = (EditText) findViewById(R.id.question_describe_content);
        this.s = (EditText) findViewById(R.id.call_mail_content);
        View findViewById = findViewById(R.id.delete_text_btn);
        this.t = findViewById;
        findViewById.setOnClickListener(this);
        if (this.s.getText().toString().trim().length() == 0) {
            this.t.setVisibility(4);
        } else {
            this.t.setVisibility(0);
        }
        this.s.addTextChangedListener(new a());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        switch (view.getId()) {
            case R.id.delete_text_btn /* 2131296520 */:
                this.s.setText("");
                return;
            case R.id.select_feedback_device /* 2131297160 */:
                String[] c2 = m.c(R.array.feedback_items);
                d dVar = new d(this, false);
                dVar.c(true);
                dVar.a(new d.c() { // from class: com.ifengyu.intercom.ui.activity.o
                    @Override // com.ifengyu.intercom.lite.dialog.list.d.c
                    public final void a(b bVar, View view2, int i, String str2) {
                        QuestionFeedbackActivity.this.a(bVar, view2, i, str2);
                    }
                });
                for (String str2 : c2) {
                    dVar.b(str2);
                }
                dVar.a(R.style.DialogTheme2).show();
                return;
            case R.id.send_feedback /* 2131297165 */:
                String charSequence = this.u.getText().toString();
                if (charSequence.equals(getString(R.string.please_select_your_device))) {
                    c0.a((CharSequence) getString(R.string.please_select_your_device), false);
                    return;
                }
                String obj = this.r.getText().toString();
                if (c0.a(obj)) {
                    c0.a((CharSequence) getString(R.string.setting_feedback_detail_can_not_null), false);
                    return;
                }
                String obj2 = this.s.getText().toString();
                if (obj.length() > 512) {
                    c0.a((CharSequence) getString(R.string.setting_feedback_input_content_too_much), false);
                    return;
                } else if (obj2.length() > 0 && !c0.a(obj2)) {
                    c0.a((CharSequence) getString(R.string.setting_feedback_email_format_not_right), false);
                    return;
                } else if (!c0.b(this)) {
                    c0.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                } else {
                    a(false, false, R.string.dialog_sending, R.drawable.load_spinner);
                    if (charSequence.equals(getString(R.string.device_dolphin_name))) {
                        str = "dolphin";
                    } else if (charSequence.equals(getString(R.string.device_seal_name))) {
                        str = "seal";
                    } else if (charSequence.equals(getString(R.string.device_shark_name))) {
                        str = "shark";
                    } else if (charSequence.equals(m.b((int) R.string.device_lite_name))) {
                        str = "lite";
                    } else {
                        str = charSequence.equals(getString(R.string.other_question)) ? "other" : "android";
                    }
                    com.ifengyu.intercom.g.a.a(obj2, obj, str, new b());
                    return;
                }
            case R.id.title_bar_confirm /* 2131297304 */:
                a(MyFeedBackActivity.class);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_question_feedback);
        w();
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected void r() {
        ImageView imageView = (ImageView) a(R.id.title_bar_left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new c());
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, View view, int i, String str) {
        bVar.dismiss();
        this.u.setText(str);
        this.u.setTextColor(getResources().getColor(R.color.black));
    }
}
