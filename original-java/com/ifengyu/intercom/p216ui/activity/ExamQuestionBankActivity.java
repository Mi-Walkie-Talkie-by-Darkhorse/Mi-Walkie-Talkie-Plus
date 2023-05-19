package com.ifengyu.intercom.p216ui.activity;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.Variables;
import com.ifengyu.intercom.p214p.APIUtils;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.library.utils.UIUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.ifengyu.intercom.ui.activity.ExamQuestionBankActivity */
/* loaded from: classes2.dex */
public class ExamQuestionBankActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: j */
    private WebView f14776j;

    /* renamed from: k */
    private WebSettings f14777k;

    /* renamed from: l */
    private ImageView f14778l;

    /* renamed from: m */
    private File f14779m;

    /* renamed from: n */
    private PopupWindow f14780n;

    /* renamed from: F */
    private void m10550F(File file) {
        try {
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            InputStream open = getAssets().open("A类业余无线电台操作技术能力验证题库1_0.pdf");
            byte[] bArr = new byte[1024];
            for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.flush();
            open.close();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: G */
    public void m10549G() {
        this.f14776j.setScrollBarSize(0);
        this.f14776j.setHapticFeedbackEnabled(false);
        this.f14776j.setHorizontalScrollBarEnabled(false);
        this.f14776j.setVerticalScrollBarEnabled(false);
        this.f14776j.setScrollContainer(false);
        WebSettings settings = this.f14776j.getSettings();
        this.f14777k = settings;
        settings.setDefaultTextEncodingName("utf-8");
        this.f14777k.setUseWideViewPort(true);
        this.f14777k.setLoadWithOverviewMode(true);
        this.f14777k.setSupportZoom(true);
        this.f14777k.setBuiltInZoomControls(true);
        this.f14777k.setDisplayZoomControls(false);
        this.f14777k.setDomStorageEnabled(true);
        this.f14777k.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        if (MethodsUtils.m11274z(getApplicationContext())) {
            this.f14777k.setCacheMode(-1);
        } else {
            this.f14777k.setCacheMode(1);
        }
        this.f14777k.setAllowFileAccessFromFileURLs(true);
        if (APIUtils.m11095a()) {
            this.f14777k.setMixedContentMode(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.open_pdf /* 2131297109 */:
                if (!this.f14779m.exists()) {
                    m10550F(this.f14779m);
                }
                this.f14780n.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.addFlags(268435456);
                intent.setDataAndType(Uri.fromFile(this.f14779m), "application/pdf");
                startActivity(Intent.createChooser(intent, getString(R.string.open_with_other_app)));
                return;
            case R.id.share_pdf /* 2131297310 */:
                if (!this.f14779m.exists()) {
                    m10550F(this.f14779m);
                }
                this.f14780n.dismiss();
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.SEND");
                intent2.addCategory("android.intent.category.DEFAULT");
                intent2.addFlags(268435456);
                intent2.setType("application/pdf");
                intent2.putExtra("android.intent.extra.STREAM", Uri.fromFile(this.f14779m));
                startActivity(Intent.createChooser(intent2, getString(R.string.share_document)));
                return;
            case R.id.title_bar_left /* 2131297422 */:
                finish();
                return;
            case R.id.title_bar_right /* 2131297423 */:
                View inflate = View.inflate(this, R.layout.exam_question_bank_popwindow, null);
                inflate.findViewById(R.id.share_pdf).setOnClickListener(this);
                inflate.findViewById(R.id.open_pdf).setOnClickListener(this);
                PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
                this.f14780n = popupWindow;
                popupWindow.setAnimationStyle(R.style.Animation_Popup_At_Exam_Bank);
                this.f14780n.setFocusable(true);
                this.f14780n.setOutsideTouchable(true);
                this.f14780n.setBackgroundDrawable(new ColorDrawable(0));
                this.f14778l.getLocationOnScreen(new int[2]);
                inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                Variables.m12426c(this);
                this.f14780n.showAsDropDown(this.f14778l, 0, 0);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_exam_question_bank);
        this.f14776j = (WebView) findViewById(R.id.webView);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.title_bar_right);
        this.f14778l = imageView;
        imageView.setVisibility(0);
        this.f14778l.setImageResource(R.drawable.icon_more);
        int m11292h = (int) MethodsUtils.m11292h(21.0f);
        this.f14778l.setPadding(m11292h, m11292h, m11292h, m11292h);
        this.f14778l.setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.radio_question_bank));
        m10549G();
        this.f14776j.loadUrl("file:///android_asset/A类业余无线电台操作技术能力验证题库1_0.html");
        this.f14779m = new File(UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/A类业余无线电台操作技术能力验证题库1_0.pdf");
    }
}
