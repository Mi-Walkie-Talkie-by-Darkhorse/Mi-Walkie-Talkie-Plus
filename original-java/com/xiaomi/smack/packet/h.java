package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class h {
    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private List<a> f = null;

    public static class a {
        public static final a a = new a("internal-server-error");
        public static final a b = new a("forbidden");
        public static final a c = new a("bad-request");
        public static final a d = new a("conflict");
        public static final a e = new a("feature-not-implemented");
        public static final a f = new a("gone");
        public static final a g = new a("item-not-found");
        public static final a h = new a("jid-malformed");
        public static final a i = new a("not-acceptable");
        public static final a j = new a("not-allowed");
        public static final a k = new a("not-authorized");
        public static final a l = new a("payment-required");
        public static final a m = new a("recipient-unavailable");
        public static final a n = new a("redirect");
        public static final a o = new a("registration-required");
        public static final a p = new a("remote-server-error");
        public static final a q = new a("remote-server-not-found");
        public static final a r = new a("remote-server-timeout");
        public static final a s = new a("resource-constraint");
        public static final a t = new a("service-unavailable");
        public static final a u = new a("subscription-required");
        public static final a v = new a("undefined-condition");
        public static final a w = new a("unexpected-request");
        public static final a x = new a("request-timeout");
        /* access modifiers changed from: private */
        public String y;

        public a(String str) {
            this.y = str;
        }

        public String toString() {
            return this.y;
        }
    }

    public h(int i, String str, String str2, String str3, String str4, List<a> list) {
        this.a = i;
        this.b = str;
        this.d = str2;
        this.c = str3;
        this.e = str4;
        this.f = list;
    }

    public h(Bundle bundle) {
        this.a = bundle.getInt("ext_err_code");
        if (bundle.containsKey("ext_err_type")) {
            this.b = bundle.getString("ext_err_type");
        }
        this.c = bundle.getString("ext_err_cond");
        this.d = bundle.getString("ext_err_reason");
        this.e = bundle.getString("ext_err_msg");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.f = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                a a2 = a.a((Bundle) parcelable);
                if (a2 != null) {
                    this.f.add(a2);
                }
            }
        }
    }

    public h(a aVar) {
        a(aVar);
        this.e = null;
    }

    private void a(a aVar) {
        this.c = aVar.y;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        if (this.b != null) {
            bundle.putString("ext_err_type", this.b);
        }
        bundle.putInt("ext_err_code", this.a);
        if (this.d != null) {
            bundle.putString("ext_err_reason", this.d);
        }
        if (this.c != null) {
            bundle.putString("ext_err_cond", this.c);
        }
        if (this.e != null) {
            bundle.putString("ext_err_msg", this.e);
        }
        if (this.f != null) {
            Bundle[] bundleArr = new Bundle[this.f.size()];
            int i = 0;
            Iterator it = this.f.iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    break;
                }
                Bundle e2 = ((a) it.next()).e();
                if (e2 != null) {
                    i = i2 + 1;
                    bundleArr[i2] = e2;
                } else {
                    i = i2;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    public String b() {
        StringBuilder sb = new StringBuilder();
        sb.append("<error code=\"").append(this.a).append("\"");
        if (this.b != null) {
            sb.append(" type=\"");
            sb.append(this.b);
            sb.append("\"");
        }
        if (this.d != null) {
            sb.append(" reason=\"");
            sb.append(this.d);
            sb.append("\"");
        }
        sb.append(">");
        if (this.c != null) {
            sb.append("<").append(this.c);
            sb.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
        }
        if (this.e != null) {
            sb.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
            sb.append(this.e);
            sb.append("</text>");
        }
        for (e d2 : c()) {
            sb.append(d2.d());
        }
        sb.append("</error>");
        return sb.toString();
    }

    public synchronized List<a> c() {
        return this.f == null ? Collections.emptyList() : Collections.unmodifiableList(this.f);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.c != null) {
            sb.append(this.c);
        }
        sb.append("(").append(this.a).append(")");
        if (this.e != null) {
            sb.append(Token.SEPARATOR).append(this.e);
        }
        return sb.toString();
    }
}
