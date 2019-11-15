package com.xiaomi.smack.packet;

import android.os.Bundle;
import com.xiaomi.smack.util.d;

public class f extends d {
    private b c = b.available;
    private String d = null;
    private int e = Integer.MIN_VALUE;
    private a f = null;

    public enum a {
        chat,
        available,
        away,
        xa,
        dnd
    }

    public enum b {
        available,
        unavailable,
        subscribe,
        subscribed,
        unsubscribe,
        unsubscribed,
        error,
        probe
    }

    public f(Bundle bundle) {
        super(bundle);
        if (bundle.containsKey("ext_pres_type")) {
            this.c = b.valueOf(bundle.getString("ext_pres_type"));
        }
        if (bundle.containsKey("ext_pres_status")) {
            this.d = bundle.getString("ext_pres_status");
        }
        if (bundle.containsKey("ext_pres_prio")) {
            this.e = bundle.getInt("ext_pres_prio");
        }
        if (bundle.containsKey("ext_pres_mode")) {
            this.f = a.valueOf(bundle.getString("ext_pres_mode"));
        }
    }

    public f(b bVar) {
        a(bVar);
    }

    public void a(int i) {
        if (i < -128 || i > 128) {
            throw new IllegalArgumentException("Priority value " + i + " is not valid. Valid range is -128 through 128.");
        }
        this.e = i;
    }

    public void a(a aVar) {
        this.f = aVar;
    }

    public void a(b bVar) {
        if (bVar == null) {
            throw new NullPointerException("Type cannot be null");
        }
        this.c = bVar;
    }

    public void a(String str) {
        this.d = str;
    }

    public Bundle b() {
        Bundle b2 = super.b();
        if (this.c != null) {
            b2.putString("ext_pres_type", this.c.toString());
        }
        if (this.d != null) {
            b2.putString("ext_pres_status", this.d);
        }
        if (this.e != Integer.MIN_VALUE) {
            b2.putInt("ext_pres_prio", this.e);
        }
        if (!(this.f == null || this.f == a.available)) {
            b2.putString("ext_pres_mode", this.f.toString());
        }
        return b2;
    }

    public String c() {
        StringBuilder sb = new StringBuilder();
        sb.append("<presence");
        if (t() != null) {
            sb.append(" xmlns=\"").append(t()).append("\"");
        }
        if (k() != null) {
            sb.append(" id=\"").append(k()).append("\"");
        }
        if (m() != null) {
            sb.append(" to=\"").append(d.a(m())).append("\"");
        }
        if (n() != null) {
            sb.append(" from=\"").append(d.a(n())).append("\"");
        }
        if (l() != null) {
            sb.append(" chid=\"").append(d.a(l())).append("\"");
        }
        if (this.c != null) {
            sb.append(" type=\"").append(this.c).append("\"");
        }
        sb.append(">");
        if (this.d != null) {
            sb.append("<status>").append(d.a(this.d)).append("</status>");
        }
        if (this.e != Integer.MIN_VALUE) {
            sb.append("<priority>").append(this.e).append("</priority>");
        }
        if (!(this.f == null || this.f == a.available)) {
            sb.append("<show>").append(this.f).append("</show>");
        }
        sb.append(s());
        h p = p();
        if (p != null) {
            sb.append(p.b());
        }
        sb.append("</presence>");
        return sb.toString();
    }
}
