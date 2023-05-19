package com.ifengyu.intercom.p205m.p207b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.p242c.QMUISkinHelper;
import com.qmuiteam.qmui.p242c.QMUISkinValueBuilder;
import com.qmuiteam.qmui.util.QMUIResHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* renamed from: com.ifengyu.intercom.m.b.k */
/* loaded from: classes2.dex */
public class SlideVerifyDialogBuilder extends BaseQMUIDialogBuilder<SlideVerifyDialogBuilder> {

    /* renamed from: u */
    private WebView f14383u;

    /* renamed from: v */
    private InterfaceC4124c f14384v;

    /* compiled from: SlideVerifyDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.k$b */
    /* loaded from: classes2.dex */
    private class C4123b {
        private C4123b() {
        }

        @JavascriptInterface
        public void checkResult(String str, String str2, String str3, String str4) {
            if (SlideVerifyDialogBuilder.this.f14384v != null) {
                SlideVerifyDialogBuilder.this.f14384v.mo9692a(((QMUIDialogBuilder) SlideVerifyDialogBuilder.this).f17717b, str, str2, str3, str4);
            }
        }
    }

    /* compiled from: SlideVerifyDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.k$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC4124c {
        /* renamed from: a */
        void mo9692a(QMUIDialog qMUIDialog, String str, String str2, String str3, String str4);
    }

    public SlideVerifyDialogBuilder(Context context) {
        super(context);
    }

    /* renamed from: G */
    public SlideVerifyDialogBuilder m11407G(InterfaceC4124c interfaceC4124c) {
        this.f14384v = interfaceC4124c;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: j */
    public void mo7257j(QMUIDialog qMUIDialog, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        Window window = qMUIDialog.getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setWindowAnimations(R.style.dialog_center_anim);
        }
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: k */
    protected View mo7246k(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.slide_verify_dialog_layout, (ViewGroup) qMUIDialogView, false);
        QMUIFrameLayout qMUIFrameLayout = (QMUIFrameLayout) inflate.findViewById(R.id.container);
        WebView webView = (WebView) inflate.findViewById(R.id.web_view);
        this.f14383u = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f14383u.getSettings().setUseWideViewPort(true);
        this.f14383u.getSettings().setLoadWithOverviewMode(true);
        this.f14383u.getSettings().setCacheMode(2);
        this.f14383u.addJavascriptInterface(new C4123b(), "androidBridge");
        this.f14383u.loadUrl("https://m.ifengyu.com/resourcesDev/resources/codesms.html");
        return inflate;
    }

    @Override // com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @NonNull
    /* renamed from: n */
    protected QMUIDialogView mo7291n(@NonNull Context context) {
        QMUIDialogView qMUIDialogView = new QMUIDialogView(context);
        qMUIDialogView.setBackground(QMUIResHelper.m7502f(context, R.attr.qmui_skin_support_dialog_bg));
        qMUIDialogView.setRadius(QMUIResHelper.m7503e(context, R.attr.qmui_dialog_radius));
        m7304A(qMUIDialogView);
        return qMUIDialogView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: q */
    public View mo7245q(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        if (m7293i()) {
            QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
            qMUISpanTouchFixTextView.setId(R.id.qmui_bottom_sheet_title);
            qMUISpanTouchFixTextView.setText(this.f17718c);
            qMUISpanTouchFixTextView.m6960c(0, 0, 1, QMUIResHelper.m7506b(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
            QMUIResHelper.m7507a(qMUISpanTouchFixTextView, R.attr.qmui_bottom_sheet_title_style);
            QMUISkinValueBuilder m7907a = QMUISkinValueBuilder.m7907a();
            m7907a.m7884x(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_title_text_color));
            m7907a.m7900h(QMUIResHelper.m7497k(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
            QMUISkinHelper.m7943g(qMUISpanTouchFixTextView, m7907a);
            m7907a.m7891q();
            return qMUISpanTouchFixTextView;
        }
        return null;
    }
}
