package com.bumptech.glide.load.b;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.c;
import com.bumptech.glide.util.h;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: GlideUrl */
public class g implements c {
    private final h b;
    @Nullable
    private final URL c;
    @Nullable
    private final String d;
    @Nullable
    private String e;
    @Nullable
    private URL f;
    @Nullable
    private volatile byte[] g;
    private int h;

    public g(URL url) {
        this(url, h.b);
    }

    public g(String str) {
        this(str, h.b);
    }

    public g(URL url, h hVar) {
        this.c = (URL) h.a(url);
        this.d = null;
        this.b = (h) h.a(hVar);
    }

    public g(String str, h hVar) {
        this.c = null;
        this.d = h.a(str);
        this.b = (h) h.a(hVar);
    }

    public URL a() throws MalformedURLException {
        return d();
    }

    private URL d() throws MalformedURLException {
        if (this.f == null) {
            this.f = new URL(e());
        }
        return this.f;
    }

    private String e() {
        if (TextUtils.isEmpty(this.e)) {
            String str = this.d;
            if (TextUtils.isEmpty(str)) {
                str = this.c.toString();
            }
            this.e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%");
        }
        return this.e;
    }

    public Map<String, String> b() {
        return this.b.a();
    }

    public String c() {
        return this.d != null ? this.d : this.c.toString();
    }

    public String toString() {
        return c();
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(f());
    }

    private byte[] f() {
        if (this.g == null) {
            this.g = c().getBytes(a);
        }
        return this.g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (!c().equals(gVar.c()) || !this.b.equals(gVar.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (this.h == 0) {
            this.h = c().hashCode();
            this.h = (this.h * 31) + this.b.hashCode();
        }
        return this.h;
    }
}
