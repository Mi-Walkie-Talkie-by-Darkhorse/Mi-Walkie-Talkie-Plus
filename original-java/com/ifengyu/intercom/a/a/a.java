package com.ifengyu.intercom.a.a;

import android.net.Uri;
import android.net.Uri.Builder;
import com.ifengyu.intercom.a.c.b;
import com.ifengyu.intercom.a.c.e;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: GetBuilder */
public class a extends b<a> {
    public e a() {
        if (this.d != null) {
            this.a = a(this.a, this.d);
        }
        return new b(this.a, this.b, this.d, this.c, this.e).b();
    }

    /* access modifiers changed from: protected */
    public String a(String str, Map<String, String> map) {
        if (str == null || map == null || map.isEmpty()) {
            return str;
        }
        Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : map.keySet()) {
            buildUpon.appendQueryParameter(str2, (String) map.get(str2));
        }
        return buildUpon.build().toString();
    }

    public a a(String str, String str2) {
        if (this.d == null) {
            this.d = new LinkedHashMap();
        }
        this.d.put(str, str2);
        return this;
    }
}
