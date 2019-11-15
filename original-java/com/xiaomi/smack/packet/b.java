package com.xiaomi.smack.packet;

import android.os.Bundle;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.smack.util.d;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class b extends d {
    private a c = a.a;
    private final Map<String, String> d = new HashMap();

    public static class a {
        public static final a a = new a("get");
        public static final a b = new a("set");
        public static final a c = new a("result");
        public static final a d = new a(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2);
        public static final a e = new a("command");
        private String f;

        private a(String str) {
            this.f = str;
        }

        public static a a(String str) {
            if (str == null) {
                return null;
            }
            String lowerCase = str.toLowerCase();
            if (a.toString().equals(lowerCase)) {
                return a;
            }
            if (b.toString().equals(lowerCase)) {
                return b;
            }
            if (d.toString().equals(lowerCase)) {
                return d;
            }
            if (c.toString().equals(lowerCase)) {
                return c;
            }
            if (e.toString().equals(lowerCase)) {
                return e;
            }
            return null;
        }

        public String toString() {
            return this.f;
        }
    }

    public b() {
    }

    public b(Bundle bundle) {
        super(bundle);
        if (bundle.containsKey("ext_iq_type")) {
            this.c = a.a(bundle.getString("ext_iq_type"));
        }
    }

    public a a() {
        return this.c;
    }

    public void a(a aVar) {
        if (aVar == null) {
            this.c = a.a;
        } else {
            this.c = aVar;
        }
    }

    public synchronized void a(Map<String, String> map) {
        this.d.putAll(map);
    }

    public Bundle b() {
        Bundle b = super.b();
        if (this.c != null) {
            b.putString("ext_iq_type", this.c.toString());
        }
        return b;
    }

    public String c() {
        StringBuilder sb = new StringBuilder();
        sb.append("<iq ");
        if (k() != null) {
            sb.append("id=\"" + k() + "\" ");
        }
        if (m() != null) {
            sb.append("to=\"").append(d.a(m())).append("\" ");
        }
        if (n() != null) {
            sb.append("from=\"").append(d.a(n())).append("\" ");
        }
        if (l() != null) {
            sb.append("chid=\"").append(d.a(l())).append("\" ");
        }
        for (Entry entry : this.d.entrySet()) {
            sb.append(d.a((String) entry.getKey())).append("=\"");
            sb.append(d.a((String) entry.getValue())).append("\" ");
        }
        if (this.c == null) {
            sb.append("type=\"get\">");
        } else {
            sb.append("type=\"").append(a()).append("\">");
        }
        String d2 = d();
        if (d2 != null) {
            sb.append(d2);
        }
        sb.append(s());
        h p = p();
        if (p != null) {
            sb.append(p.b());
        }
        sb.append("</iq>");
        return sb.toString();
    }

    public String d() {
        return null;
    }
}
