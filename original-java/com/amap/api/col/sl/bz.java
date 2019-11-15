package com.amap.api.col.sl;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;
import java.util.Map;

@cr(a = "a")
/* compiled from: SDKInfo */
public class bz {
    @cs(a = "a1", b = 6)
    private String a;
    @cs(a = "a2", b = 6)
    private String b;
    @cs(a = "a6", b = 2)
    private int c;
    @cs(a = "a3", b = 6)
    private String d;
    @cs(a = "a4", b = 6)
    private String e;
    @cs(a = "a5", b = 6)
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

        public final a a(boolean z) {
            this.e = z;
            return this;
        }

        public final a a(String[] strArr) {
            this.g = (String[]) strArr.clone();
            return this;
        }

        public final a a(String str) {
            this.b = str;
            return this;
        }

        public final bz a() throws bo {
            if (this.g != null) {
                return new bz(this, 0);
            }
            throw new bo("sdk packages is null");
        }
    }

    /* synthetic */ bz(a aVar, byte b2) {
        this(aVar);
    }

    private bz() {
        this.c = 1;
        this.l = null;
    }

    private bz(a aVar) {
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
        this.b = ca.b(this.h);
        this.a = ca.b(this.j);
        this.d = ca.b(this.i);
        this.e = ca.b(a(this.l));
        this.f = ca.b(this.k);
    }

    public final void a(boolean z) {
        this.c = z ? 1 : 0;
    }

    public final String a() {
        if (TextUtils.isEmpty(this.j) && !TextUtils.isEmpty(this.a)) {
            this.j = ca.c(this.a);
        }
        return this.j;
    }

    public final String b() {
        return this.g;
    }

    public final String c() {
        if (TextUtils.isEmpty(this.h) && !TextUtils.isEmpty(this.b)) {
            this.h = ca.c(this.b);
        }
        return this.h;
    }

    public final String d() {
        if (TextUtils.isEmpty(this.k) && !TextUtils.isEmpty(this.f)) {
            this.k = ca.c(this.f);
        }
        if (TextUtils.isEmpty(this.k)) {
            this.k = "standard";
        }
        return this.k;
    }

    public final boolean e() {
        return this.c == 1;
    }

    public final String[] f() {
        if ((this.l == null || this.l.length == 0) && !TextUtils.isEmpty(this.e)) {
            this.l = b(ca.c(this.e));
        }
        return (String[]) this.l.clone();
    }

    private static String[] b(String str) {
        try {
            return str.split(";");
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private static String a(String[] strArr) {
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
        hashMap.put("a1", ca.b(str));
        return cq.a((Map<String, String>) hashMap);
    }

    public static String g() {
        return "a6=1";
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        if (hashCode() == ((bz) obj).hashCode()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        ci ciVar = new ci();
        ciVar.a((Object) this.j).a((Object) this.g).a((Object) this.h).a((Object[]) this.l);
        return ciVar.a();
    }
}
