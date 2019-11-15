package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a;
import com.ifengyu.intercom.b.c;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ExamQuestionBankActivity extends BaseActivity implements OnClickListener {
    private WebView a;
    private WebSettings b;
    private final String c = "A类业余无线电台操作技术能力验证题库1_0.pdf";
    private final String d = "A类业余无线电台操作技术能力验证题库1_0.html";
    private ImageView q;
    private File r;
    private PopupWindow s;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_exam_question_bank);
        this.a = (WebView) findViewById(R.id.webView);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        this.q = (ImageView) findViewById(R.id.title_bar_right);
        this.q.setVisibility(0);
        this.q.setImageResource(R.drawable.icon_more);
        int a2 = (int) v.a(21.0f);
        this.q.setPadding(a2, a2, a2, a2);
        this.q.setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.radio_question_bank));
        c();
        this.a.loadUrl("file:///android_asset/A类业余无线电台操作技术能力验证题库1_0.html");
        this.r = new File(Environment.getExternalStorageDirectory() + "/" + "mitalki" + "/" + "A类业余无线电台操作技术能力验证题库1_0.pdf");
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.title_bar_right /*2131755355*/:
                View inflate = View.inflate(this, R.layout.exam_question_bank_popwindow, null);
                inflate.findViewById(R.id.share_pdf).setOnClickListener(this);
                inflate.findViewById(R.id.open_pdf).setOnClickListener(this);
                this.s = new PopupWindow(inflate, -2, -2);
                this.s.setAnimationStyle(R.style.Animation_Popup_At_Exam_Bank);
                this.s.setFocusable(true);
                this.s.setOutsideTouchable(true);
                this.s.setBackgroundDrawable(new ColorDrawable(0));
                this.q.getLocationOnScreen(new int[2]);
                inflate.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
                a.a((Activity) this);
                this.s.showAsDropDown(this.q, 0, 0);
                return;
            case R.id.share_pdf /*2131755559*/:
                if (!this.r.exists()) {
                    a(this.r);
                }
                this.s.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.addFlags(268435456);
                intent.setType("application/pdf");
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(this.r));
                startActivity(Intent.createChooser(intent, getString(R.string.share_document)));
                return;
            case R.id.open_pdf /*2131755560*/:
                if (!this.r.exists()) {
                    a(this.r);
                }
                this.s.dismiss();
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.VIEW");
                intent2.addCategory("android.intent.category.DEFAULT");
                intent2.addFlags(268435456);
                intent2.setDataAndType(Uri.fromFile(this.r), "application/pdf");
                startActivity(Intent.createChooser(intent2, getString(R.string.open_with_other_app)));
                return;
            default:
                return;
        }
    }

    private void a(File file) {
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
            ThrowableExtension.printStackTrace(e);
        }
    }

    public void c() {
        this.a.setScrollBarSize(0);
        this.a.setHapticFeedbackEnabled(false);
        this.a.setHorizontalScrollBarEnabled(false);
        this.a.setVerticalScrollBarEnabled(false);
        this.a.setScrollContainer(false);
        this.b = this.a.getSettings();
        this.b.setDefaultTextEncodingName("utf-8");
        this.b.setUseWideViewPort(true);
        this.b.setLoadWithOverviewMode(true);
        this.b.setSupportZoom(true);
        this.b.setBuiltInZoomControls(true);
        this.b.setDisplayZoomControls(false);
        this.b.setDomStorageEnabled(true);
        this.b.setLayoutAlgorithm(LayoutAlgorithm.SINGLE_COLUMN);
        if (v.a(getApplicationContext())) {
            this.b.setCacheMode(-1);
        } else {
            this.b.setCacheMode(1);
        }
        this.b.setAllowFileAccessFromFileURLs(true);
        if (c.a()) {
            this.b.setMixedContentMode(0);
        }
    }
}
