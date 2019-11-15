package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;

/* compiled from: BrowserRequestParamBase */
public abstract class d {
    protected Context a;
    protected String b;
    protected BrowserLauncher c;
    protected String d;

    public abstract void a(Activity activity, int i);

    /* access modifiers changed from: protected */
    public abstract void a(Bundle bundle);

    /* access modifiers changed from: protected */
    public abstract void b(Bundle bundle);

    public d(Context context) {
        this.a = context.getApplicationContext();
    }

    public void c(Bundle bundle) {
        this.b = bundle.getString("key_url");
        this.c = (BrowserLauncher) bundle.getSerializable("key_launcher");
        this.d = bundle.getString("key_specify_title");
        a(bundle);
    }

    public Bundle d() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(this.b)) {
            bundle.putString("key_url", this.b);
        }
        if (this.c != null) {
            bundle.putSerializable("key_launcher", this.c);
        }
        if (!TextUtils.isEmpty(this.d)) {
            bundle.putString("key_specify_title", this.d);
        }
        b(bundle);
        return bundle;
    }

    public void a(String str) {
        this.b = str;
    }

    public String e() {
        return this.b;
    }

    public BrowserLauncher f() {
        return this.c;
    }

    public void b(String str) {
        this.d = str;
    }

    public String g() {
        return this.d;
    }
}
