package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.a.b;
import com.tencent.open.SocialConstants;

/* compiled from: GameRequestParam */
public class e extends d {
    private b e;
    private String f;
    private String g;
    private String h;

    public e(Context context) {
        super(context);
        this.c = BrowserLauncher.WIDGET;
    }

    /* access modifiers changed from: protected */
    public void a(Bundle bundle) {
        this.h = bundle.getString(SocialConstants.PARAM_SOURCE);
        this.g = bundle.getString("access_token");
        this.f = bundle.getString("key_listener");
        if (!TextUtils.isEmpty(this.f)) {
            this.e = h.a(this.a).a(this.f);
        }
        this.b = c(this.b);
    }

    public void b(Bundle bundle) {
        bundle.putString("access_token", this.g);
        bundle.putString(SocialConstants.PARAM_SOURCE, this.h);
        h a = h.a(this.a);
        if (this.e != null) {
            this.f = a.a();
            a.a(this.f, this.e);
            bundle.putString("key_listener", this.f);
        }
    }

    private String c(String str) {
        Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("version", "0031405000");
        if (!TextUtils.isEmpty(this.h)) {
            buildUpon.appendQueryParameter(SocialConstants.PARAM_SOURCE, this.h);
        }
        if (!TextUtils.isEmpty(this.g)) {
            buildUpon.appendQueryParameter("access_token", this.g);
        }
        return buildUpon.build().toString();
    }

    public b a() {
        return this.e;
    }

    public String b() {
        return this.f;
    }

    public void a(Activity activity, int i) {
    }
}
