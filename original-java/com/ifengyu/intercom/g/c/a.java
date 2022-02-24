package com.ifengyu.intercom.g.c;

import android.net.Uri;
import com.ifengyu.intercom.g.e.b;
import com.ifengyu.intercom.g.e.f;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: GetBuilder.java */
/* loaded from: classes2.dex */
public class a extends b<a> {
    public f a() {
        Map<String, String> map = this.d;
        if (map != null) {
            this.f5245a = a(this.f5245a, map);
        }
        return new b(this.f5245a, this.f5246b, this.d, this.f5247c, this.e).b();
    }

    protected String a(String str, Map<String, String> map) {
        if (str == null || map == null || map.isEmpty()) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : map.keySet()) {
            buildUpon.appendQueryParameter(str2, map.get(str2));
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
