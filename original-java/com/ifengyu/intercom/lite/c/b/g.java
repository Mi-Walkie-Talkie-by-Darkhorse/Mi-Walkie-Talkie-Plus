package com.ifengyu.intercom.lite.c.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.c.e;
import com.qmuiteam.qmui.c.h;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.util.i;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* compiled from: SlideVerifyDialogBuilder.java */
/* loaded from: classes2.dex */
public class g extends com.ifengyu.intercom.lite.c.a.a<g> {
    private QMUIFrameLayout t;
    private WebView u;
    private c v;

    /* compiled from: SlideVerifyDialogBuilder.java */
    /* loaded from: classes2.dex */
    private class b {
        private b() {
        }

        @JavascriptInterface
        public void checkResult(String str, String str2, String str3, String str4) {
            if (g.this.v != null) {
                g.this.v.a(((QMUIDialogBuilder) g.this).f7533b, str, str2, str3, str4);
            }
        }
    }

    /* compiled from: SlideVerifyDialogBuilder.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(com.qmuiteam.qmui.widget.dialog.b bVar, String str, String str2, String str3, String str4);
    }

    public g(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    public View c(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        if (!b()) {
            return null;
        }
        QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
        qMUISpanTouchFixTextView.setId(R.id.qmui_bottom_sheet_title);
        qMUISpanTouchFixTextView.setText(this.f7534c);
        qMUISpanTouchFixTextView.a(0, 0, 1, i.a(context, (int) R.attr.qmui_skin_support_bottom_sheet_separator_color));
        i.a(qMUISpanTouchFixTextView, (int) R.attr.qmui_bottom_sheet_title_style);
        h e = h.e();
        e.d(i.e(context, R.attr.qmui_skin_support_bottom_sheet_title_text_color));
        e.b(i.e(context, R.attr.qmui_skin_support_bottom_sheet_separator_color));
        e.a(qMUISpanTouchFixTextView, e);
        e.d();
        return qMUISpanTouchFixTextView;
    }

    public g a(c cVar) {
        this.v = cVar;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    @SuppressLint({"SetJavaScriptEnabled"})
    protected View a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.slide_verify_dialog_layout, (ViewGroup) qMUIDialogView, false);
        this.t = (QMUIFrameLayout) inflate.findViewById(R.id.container);
        WebView webView = (WebView) inflate.findViewById(R.id.web_view);
        this.u = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.u.getSettings().setUseWideViewPort(true);
        this.u.getSettings().setLoadWithOverviewMode(true);
        this.u.getSettings().setCacheMode(2);
        this.u.addJavascriptInterface(new b(), "androidBridge");
        this.u.loadUrl("https://m.ifengyu.com/resources/codesms.html");
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.c.a.a, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    public void a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        Window window = bVar.getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setWindowAnimations(R.style.dialog_center_anim);
        }
    }
}
