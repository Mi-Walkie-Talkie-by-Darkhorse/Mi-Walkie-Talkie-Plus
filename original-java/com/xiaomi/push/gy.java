package com.xiaomi.push;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class gy extends ha {

    /* renamed from: a  reason: collision with root package name */
    private a f9011a;

    /* renamed from: a  reason: collision with other field name */
    private final Map<String, String> f454a;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f9012a = new a("get");

        /* renamed from: b  reason: collision with root package name */
        public static final a f9013b = new a("set");

        /* renamed from: c  reason: collision with root package name */
        public static final a f9014c = new a("result");
        public static final a d = new a("error");
        public static final a e = new a("command");

        /* renamed from: a  reason: collision with other field name */
        private String f455a;

        private a(String str) {
            this.f455a = str;
        }

        public static a a(String str) {
            if (str == null) {
                return null;
            }
            String lowerCase = str.toLowerCase();
            if (f9012a.toString().equals(lowerCase)) {
                return f9012a;
            }
            if (f9013b.toString().equals(lowerCase)) {
                return f9013b;
            }
            if (d.toString().equals(lowerCase)) {
                return d;
            }
            if (f9014c.toString().equals(lowerCase)) {
                return f9014c;
            }
            if (e.toString().equals(lowerCase)) {
                return e;
            }
            return null;
        }

        public String toString() {
            return this.f455a;
        }
    }

    public gy() {
        this.f9011a = a.f9012a;
        this.f454a = new HashMap();
    }

    public gy(Bundle bundle) {
        super(bundle);
        this.f9011a = a.f9012a;
        this.f454a = new HashMap();
        if (bundle.containsKey("ext_iq_type")) {
            this.f9011a = a.a(bundle.getString("ext_iq_type"));
        }
    }

    @Override // com.xiaomi.push.ha
    /* renamed from: a */
    public Bundle mo337a() {
        Bundle a2 = super.mo337a();
        a aVar = this.f9011a;
        if (aVar != null) {
            a2.putString("ext_iq_type", aVar.toString());
        }
        return a2;
    }

    @Override // com.xiaomi.push.ha
    /* renamed from: a  reason: collision with other method in class */
    public a mo337a() {
        return this.f9011a;
    }

    @Override // com.xiaomi.push.ha
    /* renamed from: a */
    public String mo337a() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("<iq ");
        if (j() != null) {
            sb.append("id=\"" + j() + "\" ");
        }
        if (l() != null) {
            sb.append("to=\"");
            sb.append(hl.a(l()));
            sb.append("\" ");
        }
        if (m() != null) {
            sb.append("from=\"");
            sb.append(hl.a(m()));
            sb.append("\" ");
        }
        if (k() != null) {
            sb.append("chid=\"");
            sb.append(hl.a(k()));
            sb.append("\" ");
        }
        for (Map.Entry<String, String> entry : this.f454a.entrySet()) {
            sb.append(hl.a(entry.getKey()));
            sb.append("=\"");
            sb.append(hl.a(entry.getValue()));
            sb.append("\" ");
        }
        if (this.f9011a == null) {
            str = "type=\"get\">";
        } else {
            sb.append("type=\"");
            sb.append(mo337a());
            str = "\">";
        }
        sb.append(str);
        String b2 = b();
        if (b2 != null) {
            sb.append(b2);
        }
        sb.append(o());
        he a2 = a();
        if (a2 != null) {
            sb.append(a2.m338a());
        }
        sb.append("</iq>");
        return sb.toString();
    }

    public void a(a aVar) {
        if (aVar == null) {
            aVar = a.f9012a;
        }
        this.f9011a = aVar;
    }

    public synchronized void a(Map<String, String> map) {
        this.f454a.putAll(map);
    }

    @Override // com.xiaomi.push.ha
    public String b() {
        return null;
    }
}
