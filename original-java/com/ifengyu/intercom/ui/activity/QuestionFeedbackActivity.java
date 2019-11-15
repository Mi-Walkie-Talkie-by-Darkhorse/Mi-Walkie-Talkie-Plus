package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.network.c;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.j;
import com.ifengyu.intercom.ui.widget.dialog.j.a;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import okhttp3.Call;

public class QuestionFeedbackActivity extends BaseActivity implements OnClickListener {
    private TextView a;
    private EditText b;
    /* access modifiers changed from: private */
    public EditText c;
    /* access modifiers changed from: private */
    public View d;
    /* access modifiers changed from: private */
    public TextView q;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_question_feedback);
        c();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    private void c() {
        c_();
        this.a = (TextView) c(R.id.title_bar_title);
        this.a.setText(getString(R.string.feedback));
        TextView textView = (TextView) findViewById(R.id.title_bar_confirm);
        textView.setVisibility(0);
        textView.setText(R.string.history_feedback);
        textView.setOnClickListener(this);
        this.q = (TextView) findViewById(R.id.feedback_device_type);
        if (k.a().b()) {
            switch (w.ad()) {
                case 1:
                    this.q.setText(getString(R.string.device_dolphin_name));
                    this.q.setTextColor(getResources().getColor(R.color.black));
                    break;
                case 4:
                    this.q.setText(getString(R.string.device_shark_name));
                    this.q.setTextColor(getResources().getColor(R.color.black));
                    break;
                case 5:
                    this.q.setText(getString(R.string.device_seal_name));
                    this.q.setTextColor(getResources().getColor(R.color.black));
                    break;
            }
        }
        findViewById(R.id.select_feedback_device).setOnClickListener(this);
        findViewById(R.id.send_feedback).setOnClickListener(this);
        this.b = (EditText) findViewById(R.id.question_describe_content);
        this.c = (EditText) findViewById(R.id.call_mail_content);
        this.d = findViewById(R.id.delete_text_btn);
        this.d.setOnClickListener(this);
        if (this.c.getText().toString().trim().length() == 0) {
            this.d.setVisibility(4);
        } else {
            this.d.setVisibility(0);
        }
        this.c.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void afterTextChanged(Editable editable) {
                if (QuestionFeedbackActivity.this.c.getText().toString().trim().length() == 0) {
                    QuestionFeedbackActivity.this.d.setVisibility(4);
                } else {
                    QuestionFeedbackActivity.this.d.setVisibility(0);
                }
            }
        });
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.delete_text_btn /*2131755259*/:
                this.c.setText("");
                return;
            case R.id.select_feedback_device /*2131755294*/:
                j jVar = new j(this);
                jVar.setOnclickListener(new a() {
                    public void a() {
                        QuestionFeedbackActivity.this.q.setText(QuestionFeedbackActivity.this.getString(R.string.device_dolphin_name));
                        QuestionFeedbackActivity.this.q.setTextColor(QuestionFeedbackActivity.this.getResources().getColor(R.color.black));
                    }

                    public void b() {
                        QuestionFeedbackActivity.this.q.setText(QuestionFeedbackActivity.this.getString(R.string.device_seal_name));
                        QuestionFeedbackActivity.this.q.setTextColor(QuestionFeedbackActivity.this.getResources().getColor(R.color.black));
                    }

                    public void c() {
                        QuestionFeedbackActivity.this.q.setText(QuestionFeedbackActivity.this.getString(R.string.device_shark_name));
                        QuestionFeedbackActivity.this.q.setTextColor(QuestionFeedbackActivity.this.getResources().getColor(R.color.black));
                    }

                    public void d() {
                        QuestionFeedbackActivity.this.q.setText(QuestionFeedbackActivity.this.getString(R.string.other_question));
                        QuestionFeedbackActivity.this.q.setTextColor(QuestionFeedbackActivity.this.getResources().getColor(R.color.black));
                    }
                });
                jVar.show();
                return;
            case R.id.send_feedback /*2131755298*/:
                String charSequence = this.q.getText().toString();
                if (charSequence.equals(getString(R.string.please_select_your_device))) {
                    v.a((CharSequence) getString(R.string.please_select_your_device), false);
                    return;
                }
                String obj = this.b.getText().toString();
                if (v.a(obj)) {
                    v.a((CharSequence) getString(R.string.setting_feedback_detail_can_not_null), false);
                    return;
                }
                String obj2 = this.c.getText().toString();
                if (obj.length() > 512) {
                    v.a((CharSequence) getString(R.string.setting_feedback_input_content_too_much), false);
                    return;
                } else if (obj2.length() > 0 && !v.b(obj2)) {
                    v.a((CharSequence) getString(R.string.setting_feedback_email_format_not_right), false);
                    return;
                } else if (!v.a((Context) this)) {
                    v.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                } else {
                    a(false, false, (int) R.string.dialog_sending, (int) R.drawable.load_spinner);
                    String str = "android";
                    if (charSequence.equals(getString(R.string.device_dolphin_name))) {
                        str = "dolphin";
                    } else if (charSequence.equals(getString(R.string.device_seal_name))) {
                        str = "seal";
                    } else if (charSequence.equals(getString(R.string.device_shark_name))) {
                        str = "shark";
                    } else if (charSequence.equals(getString(R.string.other_question))) {
                        str = "other";
                    }
                    com.ifengyu.intercom.a.a.a(obj2, obj, str, (b) new com.ifengyu.intercom.a.b.j() {
                        public void a(Call call, Exception exc, int i) {
                            QuestionFeedbackActivity.this.e(R.string.dialog_send_failed);
                            QuestionFeedbackActivity.this.d(R.drawable.mine_icon_lose);
                            v.a((CharSequence) ad.a((int) R.string.toast_send_failed_please_check_network), false);
                            MiTalkiApp.n().postDelayed(new Runnable() {
                                public void run() {
                                    QuestionFeedbackActivity.this.k();
                                }
                            }, 500);
                        }

                        public void a(String str, int i) {
                            if (c.a(str)) {
                                QuestionFeedbackActivity.this.e(R.string.dialog_send_success);
                                QuestionFeedbackActivity.this.d(R.drawable.mine_icon_win);
                                MiTalkiApp.n().postDelayed(new Runnable() {
                                    public void run() {
                                        QuestionFeedbackActivity.this.k();
                                        QuestionFeedbackActivity.this.finish();
                                    }
                                }, 500);
                                return;
                            }
                            QuestionFeedbackActivity.this.e(R.string.dialog_send_failed);
                            QuestionFeedbackActivity.this.d(R.drawable.mine_icon_lose);
                            v.a((CharSequence) ad.a((int) R.string.toast_send_failed_please_check_network), false);
                            MiTalkiApp.n().postDelayed(new Runnable() {
                                public void run() {
                                    QuestionFeedbackActivity.this.k();
                                }
                            }, 500);
                        }
                    });
                    return;
                }
            case R.id.title_bar_confirm /*2131755836*/:
                a(MyFeedBackActivity.class);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) c(R.id.title_bar_left);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                QuestionFeedbackActivity.this.finish();
            }
        });
    }
}
