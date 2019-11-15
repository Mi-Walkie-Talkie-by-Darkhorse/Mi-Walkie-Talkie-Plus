package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: BasicLBSRestHandler */
public abstract class fi<T, V> extends fh<T, V> {
    /* access modifiers changed from: protected */
    public abstract String f();

    public fi(Context context, T t) {
        super(context, t);
    }

    public byte[] g() {
        boolean z = false;
        try {
            return f().getBytes("utf-8");
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return z;
        }
    }

    public Map<String, String> b() {
        return null;
    }

    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", " application/json");
        hashMap.put("Accept-Encoding", "gzip");
        hashMap.put("User-Agent", "AMAP SDK Android Trace 5.7.0");
        hashMap.put("X-INFO", fr.b(this.f));
        hashMap.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", new Object[]{"5.7.0", "trace"}));
        hashMap.put("logversion", "2.1");
        return hashMap;
    }

    /* access modifiers changed from: protected */
    public V e() {
        return null;
    }

    public String c() {
        String str = "key=" + fo.f(this.f);
        String a = fr.a();
        String str2 = "&ts=" + a;
        return "http://restapi.amap.com/v3/grasproad?" + str + str2 + ("&scode=" + fr.a(this.f, a, str));
    }
}
