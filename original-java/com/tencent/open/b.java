package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import com.tencent.open.a.f;

/* compiled from: ProGuard */
public abstract class b extends Dialog {
    protected a a;
    @SuppressLint({"NewApi"})
    protected final WebChromeClient b = new WebChromeClient() {
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            if (consoleMessage == null) {
                return false;
            }
            f.c("openSDK_LOG.JsDialog", "WebChromeClient onConsoleMessage" + consoleMessage.message() + " -- From  111 line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            if (VERSION.SDK_INT > 7) {
                b.this.a(consoleMessage == null ? "" : consoleMessage.message());
            }
            return true;
        }

        public void onConsoleMessage(String str, int i, String str2) {
            f.c("openSDK_LOG.JsDialog", "WebChromeClient onConsoleMessage" + str + " -- From 222 line " + i + " of " + str2);
            if (VERSION.SDK_INT == 7) {
                b.this.a(str);
            }
        }
    };

    /* access modifiers changed from: protected */
    public abstract void a(String str);

    public b(Context context, int i) {
        super(context, i);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = new a();
    }
}
