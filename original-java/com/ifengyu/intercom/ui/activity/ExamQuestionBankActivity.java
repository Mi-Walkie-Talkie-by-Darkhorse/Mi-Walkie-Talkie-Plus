package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
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
import com.ifengyu.intercom.d;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.i;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class ExamQuestionBankActivity extends BaseActivity implements View.OnClickListener {
    private WebView q;
    private WebSettings r;
    private final String s = "A类业余无线电台操作技术能力验证题库1_0.pdf";
    private final String t = "A类业余无线电台操作技术能力验证题库1_0.html";
    private ImageView u;
    private File v;
    private PopupWindow w;

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
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.open_pdf /* 2131297015 */:
                if (!this.v.exists()) {
                    a(this.v);
                }
                this.w.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.addCategory("android.intent.category.DEFAULT");
                intent.addFlags(268435456);
                intent.setDataAndType(Uri.fromFile(this.v), "application/pdf");
                startActivity(Intent.createChooser(intent, getString(R.string.open_with_other_app)));
                return;
            case R.id.share_pdf /* 2131297188 */:
                if (!this.v.exists()) {
                    a(this.v);
                }
                this.w.dismiss();
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.SEND");
                intent2.addCategory("android.intent.category.DEFAULT");
                intent2.addFlags(268435456);
                intent2.setType("application/pdf");
                intent2.putExtra("android.intent.extra.STREAM", Uri.fromFile(this.v));
                startActivity(Intent.createChooser(intent2, getString(R.string.share_document)));
                return;
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            case R.id.title_bar_right /* 2131297306 */:
                View inflate = View.inflate(this, R.layout.exam_question_bank_popwindow, null);
                inflate.findViewById(R.id.share_pdf).setOnClickListener(this);
                inflate.findViewById(R.id.open_pdf).setOnClickListener(this);
                PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
                this.w = popupWindow;
                popupWindow.setAnimationStyle(R.style.Animation_Popup_At_Exam_Bank);
                this.w.setFocusable(true);
                this.w.setOutsideTouchable(true);
                this.w.setBackgroundDrawable(new ColorDrawable(0));
                this.u.getLocationOnScreen(new int[2]);
                inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                d.a((Activity) this);
                this.w.showAsDropDown(this.u, 0, 0);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_exam_question_bank);
        this.q = (WebView) findViewById(R.id.webView);
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.title_bar_right);
        this.u = imageView;
        imageView.setVisibility(0);
        this.u.setImageResource(R.drawable.icon_more);
        int a2 = (int) c0.a(21.0f);
        this.u.setPadding(a2, a2, a2, a2);
        this.u.setOnClickListener(this);
        ((TextView) findViewById(R.id.title_bar_title)).setText(getString(R.string.radio_question_bank));
        w();
        this.q.loadUrl("file:///android_asset/A类业余无线电台操作技术能力验证题库1_0.html");
        this.v = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/A类业余无线电台操作技术能力验证题库1_0.pdf");
    }

    public void w() {
        this.q.setScrollBarSize(0);
        this.q.setHapticFeedbackEnabled(false);
        this.q.setHorizontalScrollBarEnabled(false);
        this.q.setVerticalScrollBarEnabled(false);
        this.q.setScrollContainer(false);
        WebSettings settings = this.q.getSettings();
        this.r = settings;
        settings.setDefaultTextEncodingName("utf-8");
        this.r.setUseWideViewPort(true);
        this.r.setLoadWithOverviewMode(true);
        this.r.setSupportZoom(true);
        this.r.setBuiltInZoomControls(true);
        this.r.setDisplayZoomControls(false);
        this.r.setDomStorageEnabled(true);
        this.r.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        if (c0.b(getApplicationContext())) {
            this.r.setCacheMode(-1);
        } else {
            this.r.setCacheMode(1);
        }
        this.r.setAllowFileAccessFromFileURLs(true);
        if (i.a()) {
            this.r.setMixedContentMode(0);
        }
    }
}
