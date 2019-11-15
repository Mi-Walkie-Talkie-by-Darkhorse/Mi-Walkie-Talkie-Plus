package com.sina.weibo.sdk.net;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.sina.weibo.sdk.utils.c;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Set;

/* compiled from: WeiboParameters */
public class f {
    private LinkedHashMap<String, Object> a = new LinkedHashMap<>();
    private String b;

    public f(String str) {
        this.b = str;
    }

    public String a() {
        return this.b;
    }

    public void a(String str, String str2) {
        this.a.put(str, str2);
    }

    public Object a(String str) {
        return this.a.get(str);
    }

    public void b(String str) {
        if (this.a.containsKey(str)) {
            this.a.remove(str);
            this.a.remove(this.a.get(str));
        }
    }

    public Set<String> b() {
        return this.a.keySet();
    }

    public String c() {
        boolean z;
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (String str : this.a.keySet()) {
            if (z2) {
                z = false;
            } else {
                sb.append("&");
                z = z2;
            }
            Object obj = this.a.get(str);
            if (obj instanceof String) {
                String str2 = (String) obj;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        sb.append(URLEncoder.encode(str, "UTF-8") + "=" + URLEncoder.encode(str2, "UTF-8"));
                    } catch (UnsupportedEncodingException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
                c.b("encodeUrl", sb.toString());
            }
            z2 = z;
        }
        return sb.toString();
    }

    public boolean d() {
        for (String str : this.a.keySet()) {
            Object obj = this.a.get(str);
            if (!(obj instanceof ByteArrayOutputStream)) {
                if (obj instanceof Bitmap) {
                }
            }
            return true;
        }
        return false;
    }
}
