package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.Map;

@gm(a = "a")
/* compiled from: SDKInfo */
public class fx {
    @gn(a = "a1", b = 6)
    private String a;
    @gn(a = "a2", b = 6)
    private String b;
    @gn(a = "a6", b = 2)
    private int c;
    @gn(a = "a3", b = 6)
    private String d;
    @gn(a = "a4", b = 6)
    private String e;
    @gn(a = "a5", b = 6)
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String[] l;

    /* compiled from: SDKInfo */
    public static class a {
        /* access modifiers changed from: private */
        public String a;
        /* access modifiers changed from: private */
        public String b;
        /* access modifiers changed from: private */
        public String c;
        /* access modifiers changed from: private */
        public String d;
        /* access modifiers changed from: private */
        public boolean e = true;
        /* access modifiers changed from: private */
        public String f = "standard";
        /* access modifiers changed from: private */
        public String[] g = null;

        public a(String str, String str2, String str3) {
            this.a = str2;
            this.b = str2;
            this.d = str3;
            this.c = str;
        }

        public a a(String[] strArr) {
            this.g = (String[]) strArr.clone();
            return this;
        }

        public a a(String str) {
            this.b = str;
            return this;
        }

        public fx a() throws fn {
            if (this.g != null) {
                return new fx(this);
            }
            throw new fn("sdk packages is null");
        }
    }

    private fx() {
        this.c = 1;
        this.l = null;
    }

    private fx(a aVar) {
        int i2 = 1;
        this.c = 1;
        this.l = null;
        this.g = aVar.a;
        this.h = aVar.b;
        this.j = aVar.c;
        this.i = aVar.d;
        if (!aVar.e) {
            i2 = 0;
        }
        this.c = i2;
        this.k = aVar.f;
        this.l = aVar.g;
        this.b = fy.b(this.h);
        this.a = fy.b(this.j);
        this.d = fy.b(this.i);
        this.e = fy.b(a(this.l));
        this.f = fy.b(this.k);
    }

    public void a(boolean z) {
        this.c = z ? 1 : 0;
    }

    public String a() {
        if (TextUtils.isEmpty(this.j) && !TextUtils.isEmpty(this.a)) {
            this.j = fy.c(this.a);
        }
        return this.j;
    }

    public String b() {
        return this.g;
    }

    public String c() {
        if (TextUtils.isEmpty(this.h) && !TextUtils.isEmpty(this.b)) {
            this.h = fy.c(this.b);
        }
        return this.h;
    }

    public String d() {
        if (TextUtils.isEmpty(this.i) && !TextUtils.isEmpty(this.d)) {
            this.i = fy.c(this.d);
        }
        return this.i;
    }

    public String e() {
        if (TextUtils.isEmpty(this.k) && !TextUtils.isEmpty(this.f)) {
            this.k = fy.c(this.f);
        }
        if (TextUtils.isEmpty(this.k)) {
            this.k = "standard";
        }
        return this.k;
    }

    public boolean f() {
        return this.c == 1;
    }

    public String[] g() {
        if ((this.l == null || this.l.length == 0) && !TextUtils.isEmpty(this.e)) {
            this.l = b(fy.c(this.e));
        }
        return (String[]) this.l.clone();
    }

    private String[] b(String str) {
        try {
            return str.split(";");
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private String a(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            for (String append : strArr) {
                sb.append(append).append(";");
            }
            return sb.toString();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public static String a(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("a1", fy.b(str));
        return gl.a((Map<String, String>) hashMap);
    }

    public static String h() {
        return "a6=1";
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        if (hashCode() != ((fx) obj).hashCode()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        gb gbVar = new gb();
        gbVar.a((Object) this.j).a((Object) this.g).a((Object) this.h).a((Object[]) this.l);
        return gbVar.a();
    }
}
