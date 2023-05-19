package com.xiaomi.push;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.gy */
/* loaded from: classes2.dex */
public class C6207gy extends AbstractC6211ha {

    /* renamed from: a */
    private C6208a f21791a;

    /* renamed from: a */
    private final Map<String, String> f21792a;

    /* renamed from: com.xiaomi.push.gy$a */
    /* loaded from: classes2.dex */
    public static class C6208a {

        /* renamed from: a */
        public static final C6208a f21793a = new C6208a("get");

        /* renamed from: b */
        public static final C6208a f21794b = new C6208a("set");

        /* renamed from: c */
        public static final C6208a f21795c = new C6208a("result");

        /* renamed from: d */
        public static final C6208a f21796d = new C6208a("error");

        /* renamed from: e */
        public static final C6208a f21797e = new C6208a("command");

        /* renamed from: a */
        private String f21798a;

        private C6208a(String str) {
            this.f21798a = str;
        }

        /* renamed from: a */
        public static C6208a m2688a(String str) {
            if (str == null) {
                return null;
            }
            String lowerCase = str.toLowerCase();
            C6208a c6208a = f21793a;
            if (c6208a.toString().equals(lowerCase)) {
                return c6208a;
            }
            C6208a c6208a2 = f21794b;
            if (c6208a2.toString().equals(lowerCase)) {
                return c6208a2;
            }
            C6208a c6208a3 = f21796d;
            if (c6208a3.toString().equals(lowerCase)) {
                return c6208a3;
            }
            C6208a c6208a4 = f21795c;
            if (c6208a4.toString().equals(lowerCase)) {
                return c6208a4;
            }
            C6208a c6208a5 = f21797e;
            if (c6208a5.toString().equals(lowerCase)) {
                return c6208a5;
            }
            return null;
        }

        public String toString() {
            return this.f21798a;
        }
    }

    public C6207gy() {
        this.f21791a = C6208a.f21793a;
        this.f21792a = new HashMap();
    }

    public C6207gy(Bundle bundle) {
        super(bundle);
        this.f21791a = C6208a.f21793a;
        this.f21792a = new HashMap();
        if (bundle.containsKey("ext_iq_type")) {
            this.f21791a = C6208a.m2688a(bundle.getString("ext_iq_type"));
        }
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    /* renamed from: a */
    public Bundle mo2641a() {
        Bundle mo2641a = super.mo2641a();
        C6208a c6208a = this.f21791a;
        if (c6208a != null) {
            mo2641a.putString("ext_iq_type", c6208a.toString());
        }
        return mo2641a;
    }

    /* renamed from: a */
    public C6208a m2691a() {
        return this.f21791a;
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    /* renamed from: a */
    public String mo2640a() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("<iq ");
        if (m2655j() != null) {
            sb.append("id=\"" + m2655j() + "\" ");
        }
        if (m2652l() != null) {
            sb.append("to=\"");
            sb.append(C6225hl.m2611a(m2652l()));
            sb.append("\" ");
        }
        if (m2650m() != null) {
            sb.append("from=\"");
            sb.append(C6225hl.m2611a(m2650m()));
            sb.append("\" ");
        }
        if (m2654k() != null) {
            sb.append("chid=\"");
            sb.append(C6225hl.m2611a(m2654k()));
            sb.append("\" ");
        }
        for (Map.Entry<String, String> entry : this.f21792a.entrySet()) {
            sb.append(C6225hl.m2611a(entry.getKey()));
            sb.append("=\"");
            sb.append(C6225hl.m2611a(entry.getValue()));
            sb.append("\" ");
        }
        if (this.f21791a == null) {
            str = "type=\"get\">";
        } else {
            sb.append("type=\"");
            sb.append(m2691a());
            str = "\">";
        }
        sb.append(str);
        String mo2613b = mo2613b();
        if (mo2613b != null) {
            sb.append(mo2613b);
        }
        sb.append(m2646o());
        C6217he m2664a = m2664a();
        if (m2664a != null) {
            sb.append(m2664a.m2632a());
        }
        sb.append("</iq>");
        return sb.toString();
    }

    /* renamed from: a */
    public void m2690a(C6208a c6208a) {
        if (c6208a == null) {
            c6208a = C6208a.f21793a;
        }
        this.f21791a = c6208a;
    }

    /* renamed from: a */
    public synchronized void m2689a(Map<String, String> map) {
        this.f21792a.putAll(map);
    }

    /* renamed from: b */
    public String mo2613b() {
        return null;
    }
}
