package com.ifengyu.intercom.p216ui.activity;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.activity.QuestionFeedbackActivity;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.tencent.connect.common.Constants;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* renamed from: com.ifengyu.intercom.ui.activity.QuestionFeedbackActivity */
/* loaded from: classes2.dex */
public class QuestionFeedbackActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private TextView f14867j;

    /* renamed from: k */
    private EditText f14868k;

    /* renamed from: l */
    private EditText f14869l;

    /* renamed from: m */
    private View f14870m;

    /* renamed from: n */
    private TextView f14871n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.activity.QuestionFeedbackActivity$a */
    /* loaded from: classes2.dex */
    public class C4369a implements TextWatcher {
        C4369a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (QuestionFeedbackActivity.this.f14869l.getText().toString().trim().length() == 0) {
                QuestionFeedbackActivity.this.f14870m.setVisibility(4);
            } else {
                QuestionFeedbackActivity.this.f14870m.setVisibility(0);
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
    /* renamed from: com.ifengyu.intercom.ui.activity.QuestionFeedbackActivity$b */
    /* loaded from: classes2.dex */
    public class C4370b extends ErrorConsumer {
        C4370b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m10448d() {
            QuestionFeedbackActivity.this.m10283n();
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseActivity1) QuestionFeedbackActivity.this).f15055a, "feedBack fail");
            QuestionFeedbackActivity.this.m10276u(R.string.dialog_send_failed);
            QuestionFeedbackActivity.this.m10277t(R.drawable.load_fail);
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_send_failed_please_check_network), false);
            BaseApp.m8713a().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.n0
                @Override // java.lang.Runnable
                public final void run() {
                    QuestionFeedbackActivity.C4370b.this.m10448d();
                }
            }, 500L);
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: I */
    private void m10459I(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put("content", str2);
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("email", str);
        }
        hashMap.put("feedObject", str3);
        hashMap.put(Constants.PARAM_PLATFORM, "Android");
        AppServiceClient.m11355a().m11392O(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.o0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                QuestionFeedbackActivity.this.m10454N((NewHttpResult) obj);
            }
        }, new C4370b());
    }

    /* renamed from: J */
    private void m10458J() {
        mo10278s();
        TextView textView = (TextView) m10282o(R.id.title_bar_title);
        this.f14867j = textView;
        textView.setText(getString(R.string.feedback));
        TextView textView2 = (TextView) findViewById(R.id.title_bar_confirm);
        textView2.setVisibility(0);
        textView2.setText(R.string.history_feedback);
        textView2.setOnClickListener(this);
        this.f14871n = (TextView) findViewById(R.id.feedback_device_type);
        findViewById(R.id.select_feedback_device).setOnClickListener(this);
        findViewById(R.id.send_feedback).setOnClickListener(this);
        this.f14868k = (EditText) findViewById(R.id.question_describe_content);
        this.f14869l = (EditText) findViewById(R.id.call_mail_content);
        View findViewById = findViewById(R.id.delete_text_btn);
        this.f14870m = findViewById;
        findViewById.setOnClickListener(this);
        if (this.f14869l.getText().toString().trim().length() == 0) {
            this.f14870m.setVisibility(4);
        } else {
            this.f14870m.setVisibility(0);
        }
        this.f14869l.addTextChangedListener(new C4369a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public /* synthetic */ void m10456L() {
        m10283n();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m10454N(NewHttpResult newHttpResult) throws Exception {
        C4161y.m11049f(this.f15055a, "feedBack success");
        m10276u(R.string.dialog_send_success);
        m10277t(R.drawable.load_success);
        BaseApp.m8713a().postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.r0
            @Override // java.lang.Runnable
            public final void run() {
                QuestionFeedbackActivity.this.m10456L();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ void m10452P(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        this.f14871n.setText(str);
        this.f14871n.setTextColor(getResources().getColor(R.color.black));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m10450S(View view) {
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        switch (view.getId()) {
            case R.id.delete_text_btn /* 2131296566 */:
                this.f14869l.setText("");
                return;
            case R.id.select_feedback_device /* 2131297288 */:
                String[] m8601q = UIUtils.m8601q(R.array.feedback_items);
                ItemListBuilder itemListBuilder = new ItemListBuilder(this, false);
                itemListBuilder.m12442I(true);
                itemListBuilder.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.ui.activity.p0
                    @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
                    /* renamed from: a */
                    public final void mo9161a(QMUIDialog qMUIDialog, View view2, int i, String str2, BottomSheetListAdapter bottomSheetListAdapter) {
                        QuestionFeedbackActivity.this.m10452P(qMUIDialog, view2, i, str2, bottomSheetListAdapter);
                    }
                });
                for (String str2 : m8601q) {
                    itemListBuilder.m12445F(str2);
                }
                itemListBuilder.m7296f(R.style.DialogTheme1).show();
                return;
            case R.id.send_feedback /* 2131297292 */:
                String charSequence = this.f14871n.getText().toString();
                if (charSequence.equals(getString(R.string.please_select_your_device))) {
                    MethodsUtils.m11302H(getString(R.string.please_select_your_device), false);
                    return;
                }
                String obj = this.f14868k.getText().toString();
                if (MethodsUtils.m11277w(obj)) {
                    MethodsUtils.m11302H(getString(R.string.setting_feedback_detail_can_not_null), false);
                    return;
                } else if (obj.length() > 512) {
                    MethodsUtils.m11302H(getString(R.string.setting_feedback_input_content_too_much), false);
                    return;
                } else {
                    String obj2 = this.f14869l.getText().toString();
                    if (obj2.length() > 0 && !MethodsUtils.m11299a(obj2)) {
                        MethodsUtils.m11302H(getString(R.string.setting_feedback_email_format_not_right), false);
                        return;
                    } else if (!MethodsUtils.m11274z(this)) {
                        UIUtils.m8593y(R.string.net_work_error_pls_retry);
                        return;
                    } else {
                        if (charSequence.equals(getString(R.string.device_dolphin_name))) {
                            str = "dolphin";
                        } else if (charSequence.equals(getString(R.string.device_seal_name))) {
                            str = "seal";
                        } else if (charSequence.equals(getString(R.string.device_shark_name))) {
                            str = "shark";
                        } else if (charSequence.equals(UIUtils.m8603o(R.string.device_lite_name))) {
                            str = "lite";
                        } else if (charSequence.equals(UIUtils.m8603o(R.string.device_xiaomi3_4g_name))) {
                            str = "mipoc";
                        } else if (charSequence.equals(UIUtils.m8603o(R.string.device_xiaomi3_name))) {
                            str = "mi3";
                        } else {
                            str = charSequence.equals(getString(R.string.other_question)) ? "other" : "android";
                        }
                        m10288C(false, false, R.string.dialog_sending, R.drawable.load_spinner);
                        m10459I(obj2, obj, str);
                        return;
                    }
                }
            case R.id.title_bar_confirm /* 2131297421 */:
                m10286E(MyFeedBackActivity.class);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_question_feedback);
        m10458J();
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1
    /* renamed from: s */
    protected void mo10278s() {
        ImageView imageView = (ImageView) m10282o(R.id.title_bar_left);
        this.f15057c = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                QuestionFeedbackActivity.this.m10450S(view);
            }
        });
    }
}
