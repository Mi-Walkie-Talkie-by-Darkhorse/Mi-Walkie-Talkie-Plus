package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class he {

    /* renamed from: a  reason: collision with root package name */
    private int f9031a;

    /* renamed from: a  reason: collision with other field name */
    private String f466a;

    /* renamed from: a  reason: collision with other field name */
    private List<gx> f467a;

    /* renamed from: b  reason: collision with root package name */
    private String f9032b;

    /* renamed from: c  reason: collision with root package name */
    private String f9033c;
    private String d;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f9034a = new a("internal-server-error");

        /* renamed from: b  reason: collision with root package name */
        public static final a f9035b = new a("forbidden");

        /* renamed from: c  reason: collision with root package name */
        public static final a f9036c = new a("bad-request");
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

        /* renamed from: a  reason: collision with other field name */
        private String f468a;

        public a(String str) {
            this.f468a = str;
        }

        public String toString() {
            return this.f468a;
        }
    }

    public he(int i, String str, String str2, String str3, String str4, List<gx> list) {
        this.f467a = null;
        this.f9031a = i;
        this.f466a = str;
        this.f9033c = str2;
        this.f9032b = str3;
        this.d = str4;
        this.f467a = list;
    }

    public he(Bundle bundle) {
        this.f467a = null;
        this.f9031a = bundle.getInt("ext_err_code");
        if (bundle.containsKey("ext_err_type")) {
            this.f466a = bundle.getString("ext_err_type");
        }
        this.f9032b = bundle.getString("ext_err_cond");
        this.f9033c = bundle.getString("ext_err_reason");
        this.d = bundle.getString("ext_err_msg");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.f467a = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                gx a2 = gx.a((Bundle) parcelable);
                if (a2 != null) {
                    this.f467a.add(a2);
                }
            }
        }
    }

    public he(a aVar) {
        this.f467a = null;
        a(aVar);
        this.d = null;
    }

    private void a(a aVar) {
        this.f9032b = aVar.f468a;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        String str = this.f466a;
        if (str != null) {
            bundle.putString("ext_err_type", str);
        }
        bundle.putInt("ext_err_code", this.f9031a);
        String str2 = this.f9033c;
        if (str2 != null) {
            bundle.putString("ext_err_reason", str2);
        }
        String str3 = this.f9032b;
        if (str3 != null) {
            bundle.putString("ext_err_cond", str3);
        }
        String str4 = this.d;
        if (str4 != null) {
            bundle.putString("ext_err_msg", str4);
        }
        List<gx> list = this.f467a;
        if (list != null) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int i = 0;
            for (gx gxVar : this.f467a) {
                Bundle a2 = gxVar.a();
                if (a2 != null) {
                    i++;
                    bundleArr[i] = a2;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m338a() {
        StringBuilder sb = new StringBuilder();
        sb.append("<error code=\"");
        sb.append(this.f9031a);
        sb.append("\"");
        if (this.f466a != null) {
            sb.append(" type=\"");
            sb.append(this.f466a);
            sb.append("\"");
        }
        if (this.f9033c != null) {
            sb.append(" reason=\"");
            sb.append(this.f9033c);
            sb.append("\"");
        }
        sb.append(">");
        if (this.f9032b != null) {
            sb.append("<");
            sb.append(this.f9032b);
            sb.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
        }
        if (this.d != null) {
            sb.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
            sb.append(this.d);
            sb.append("</text>");
        }
        for (gx gxVar : m339a()) {
            sb.append(gxVar.d());
        }
        sb.append("</error>");
        return sb.toString();
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized List<gx> m339a() {
        if (this.f467a == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(this.f467a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.f9032b;
        if (str != null) {
            sb.append(str);
        }
        sb.append("(");
        sb.append(this.f9031a);
        sb.append(")");
        if (this.d != null) {
            sb.append(" ");
            sb.append(this.d);
        }
        return sb.toString();
    }
}
