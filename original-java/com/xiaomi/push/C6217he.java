package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.xiaomi.push.he */
/* loaded from: classes2.dex */
public class C6217he {

    /* renamed from: a */
    private int f21847a;

    /* renamed from: a */
    private String f21848a;

    /* renamed from: a */
    private List<C6206gx> f21849a;

    /* renamed from: b */
    private String f21850b;

    /* renamed from: c */
    private String f21851c;

    /* renamed from: d */
    private String f21852d;

    /* renamed from: com.xiaomi.push.he$a */
    /* loaded from: classes2.dex */
    public static class C6218a {

        /* renamed from: a */
        public static final C6218a f21853a = new C6218a("internal-server-error");

        /* renamed from: b */
        public static final C6218a f21854b = new C6218a("forbidden");

        /* renamed from: c */
        public static final C6218a f21855c = new C6218a("bad-request");

        /* renamed from: d */
        public static final C6218a f21856d = new C6218a("conflict");

        /* renamed from: e */
        public static final C6218a f21857e = new C6218a("feature-not-implemented");

        /* renamed from: f */
        public static final C6218a f21858f = new C6218a("gone");

        /* renamed from: g */
        public static final C6218a f21859g = new C6218a("item-not-found");

        /* renamed from: h */
        public static final C6218a f21860h = new C6218a("jid-malformed");

        /* renamed from: i */
        public static final C6218a f21861i = new C6218a("not-acceptable");

        /* renamed from: j */
        public static final C6218a f21862j = new C6218a("not-allowed");

        /* renamed from: k */
        public static final C6218a f21863k = new C6218a("not-authorized");

        /* renamed from: l */
        public static final C6218a f21864l = new C6218a("payment-required");

        /* renamed from: m */
        public static final C6218a f21865m = new C6218a("recipient-unavailable");

        /* renamed from: n */
        public static final C6218a f21866n = new C6218a("redirect");

        /* renamed from: o */
        public static final C6218a f21867o = new C6218a("registration-required");

        /* renamed from: p */
        public static final C6218a f21868p = new C6218a("remote-server-error");

        /* renamed from: q */
        public static final C6218a f21869q = new C6218a("remote-server-not-found");

        /* renamed from: r */
        public static final C6218a f21870r = new C6218a("remote-server-timeout");

        /* renamed from: s */
        public static final C6218a f21871s = new C6218a("resource-constraint");

        /* renamed from: t */
        public static final C6218a f21872t = new C6218a("service-unavailable");

        /* renamed from: u */
        public static final C6218a f21873u = new C6218a("subscription-required");

        /* renamed from: v */
        public static final C6218a f21874v = new C6218a("undefined-condition");

        /* renamed from: w */
        public static final C6218a f21875w = new C6218a("unexpected-request");

        /* renamed from: x */
        public static final C6218a f21876x = new C6218a("request-timeout");

        /* renamed from: a */
        private String f21877a;

        public C6218a(String str) {
            this.f21877a = str;
        }

        public String toString() {
            return this.f21877a;
        }
    }

    public C6217he(int i, String str, String str2, String str3, String str4, List<C6206gx> list) {
        this.f21849a = null;
        this.f21847a = i;
        this.f21848a = str;
        this.f21851c = str2;
        this.f21850b = str3;
        this.f21852d = str4;
        this.f21849a = list;
    }

    public C6217he(Bundle bundle) {
        this.f21849a = null;
        this.f21847a = bundle.getInt("ext_err_code");
        if (bundle.containsKey("ext_err_type")) {
            this.f21848a = bundle.getString("ext_err_type");
        }
        this.f21850b = bundle.getString("ext_err_cond");
        this.f21851c = bundle.getString("ext_err_reason");
        this.f21852d = bundle.getString("ext_err_msg");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.f21849a = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                C6206gx m2699a = C6206gx.m2699a((Bundle) parcelable);
                if (m2699a != null) {
                    this.f21849a.add(m2699a);
                }
            }
        }
    }

    public C6217he(C6218a c6218a) {
        this.f21849a = null;
        m2630a(c6218a);
        this.f21852d = null;
    }

    /* renamed from: a */
    private void m2630a(C6218a c6218a) {
        this.f21850b = c6218a.f21877a;
    }

    /* renamed from: a */
    public Bundle m2633a() {
        Bundle bundle = new Bundle();
        String str = this.f21848a;
        if (str != null) {
            bundle.putString("ext_err_type", str);
        }
        bundle.putInt("ext_err_code", this.f21847a);
        String str2 = this.f21851c;
        if (str2 != null) {
            bundle.putString("ext_err_reason", str2);
        }
        String str3 = this.f21850b;
        if (str3 != null) {
            bundle.putString("ext_err_cond", str3);
        }
        String str4 = this.f21852d;
        if (str4 != null) {
            bundle.putString("ext_err_msg", str4);
        }
        List<C6206gx> list = this.f21849a;
        if (list != null) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int i = 0;
            for (C6206gx c6206gx : this.f21849a) {
                Bundle m2702a = c6206gx.m2702a();
                if (m2702a != null) {
                    bundleArr[i] = m2702a;
                    i++;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    /* renamed from: a */
    public String m2632a() {
        StringBuilder sb = new StringBuilder();
        sb.append("<error code=\"");
        sb.append(this.f21847a);
        sb.append("\"");
        if (this.f21848a != null) {
            sb.append(" type=\"");
            sb.append(this.f21848a);
            sb.append("\"");
        }
        if (this.f21851c != null) {
            sb.append(" reason=\"");
            sb.append(this.f21851c);
            sb.append("\"");
        }
        sb.append(">");
        if (this.f21850b != null) {
            sb.append("<");
            sb.append(this.f21850b);
            sb.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
        }
        if (this.f21852d != null) {
            sb.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
            sb.append(this.f21852d);
            sb.append("</text>");
        }
        for (C6206gx c6206gx : m2631a()) {
            sb.append(c6206gx.mo2642d());
        }
        sb.append("</error>");
        return sb.toString();
    }

    /* renamed from: a */
    public synchronized List<C6206gx> m2631a() {
        List<C6206gx> list = this.f21849a;
        if (list == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(list);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.f21850b;
        if (str != null) {
            sb.append(str);
        }
        sb.append("(");
        sb.append(this.f21847a);
        sb.append(")");
        if (this.f21852d != null) {
            sb.append(" ");
            sb.append(this.f21852d);
        }
        return sb.toString();
    }
}
