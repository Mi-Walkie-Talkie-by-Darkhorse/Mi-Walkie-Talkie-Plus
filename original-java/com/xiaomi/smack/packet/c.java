package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.smack.util.d;

public class c extends d {
    private String c = null;
    private String d = null;
    private String e;
    private String f;
    private String g;
    private String h;
    private boolean i = false;
    private String j;
    private String k = "";
    private String l = "";
    private String m = "";
    private String n = "";
    private boolean o = false;

    public c() {
    }

    public c(Bundle bundle) {
        super(bundle);
        this.c = bundle.getString("ext_msg_type");
        this.e = bundle.getString("ext_msg_lang");
        this.d = bundle.getString("ext_msg_thread");
        this.f = bundle.getString("ext_msg_sub");
        this.g = bundle.getString("ext_msg_body");
        this.h = bundle.getString("ext_body_encode");
        this.j = bundle.getString("ext_msg_appid");
        this.i = bundle.getBoolean("ext_msg_trans", false);
        this.o = bundle.getBoolean("ext_msg_encrypt", false);
        this.k = bundle.getString("ext_msg_seq");
        this.l = bundle.getString("ext_msg_mseq");
        this.m = bundle.getString("ext_msg_fseq");
        this.n = bundle.getString("ext_msg_status");
    }

    public String a() {
        return this.c;
    }

    public void a(String str) {
        this.j = str;
    }

    public void a(String str, String str2) {
        this.g = str;
        this.h = str2;
    }

    public void a(boolean z) {
        this.i = z;
    }

    public Bundle b() {
        Bundle b = super.b();
        if (!TextUtils.isEmpty(this.c)) {
            b.putString("ext_msg_type", this.c);
        }
        if (this.e != null) {
            b.putString("ext_msg_lang", this.e);
        }
        if (this.f != null) {
            b.putString("ext_msg_sub", this.f);
        }
        if (this.g != null) {
            b.putString("ext_msg_body", this.g);
        }
        if (!TextUtils.isEmpty(this.h)) {
            b.putString("ext_body_encode", this.h);
        }
        if (this.d != null) {
            b.putString("ext_msg_thread", this.d);
        }
        if (this.j != null) {
            b.putString("ext_msg_appid", this.j);
        }
        if (this.i) {
            b.putBoolean("ext_msg_trans", true);
        }
        if (!TextUtils.isEmpty(this.k)) {
            b.putString("ext_msg_seq", this.k);
        }
        if (!TextUtils.isEmpty(this.l)) {
            b.putString("ext_msg_mseq", this.l);
        }
        if (!TextUtils.isEmpty(this.m)) {
            b.putString("ext_msg_fseq", this.m);
        }
        if (this.o) {
            b.putBoolean("ext_msg_encrypt", true);
        }
        if (!TextUtils.isEmpty(this.n)) {
            b.putString("ext_msg_status", this.n);
        }
        return b;
    }

    public void b(String str) {
        this.k = str;
    }

    public void b(boolean z) {
        this.o = z;
    }

    public String c() {
        StringBuilder sb = new StringBuilder();
        sb.append("<message");
        if (t() != null) {
            sb.append(" xmlns=\"").append(t()).append("\"");
        }
        if (this.e != null) {
            sb.append(" xml:lang=\"").append(i()).append("\"");
        }
        if (k() != null) {
            sb.append(" id=\"").append(k()).append("\"");
        }
        if (m() != null) {
            sb.append(" to=\"").append(d.a(m())).append("\"");
        }
        if (!TextUtils.isEmpty(e())) {
            sb.append(" seq=\"").append(e()).append("\"");
        }
        if (!TextUtils.isEmpty(f())) {
            sb.append(" mseq=\"").append(f()).append("\"");
        }
        if (!TextUtils.isEmpty(g())) {
            sb.append(" fseq=\"").append(g()).append("\"");
        }
        if (!TextUtils.isEmpty(h())) {
            sb.append(" status=\"").append(h()).append("\"");
        }
        if (n() != null) {
            sb.append(" from=\"").append(d.a(n())).append("\"");
        }
        if (l() != null) {
            sb.append(" chid=\"").append(d.a(l())).append("\"");
        }
        if (this.i) {
            sb.append(" transient=\"true\"");
        }
        if (!TextUtils.isEmpty(this.j)) {
            sb.append(" appid=\"").append(d()).append("\"");
        }
        if (!TextUtils.isEmpty(this.c)) {
            sb.append(" type=\"").append(this.c).append("\"");
        }
        if (this.o) {
            sb.append(" s=\"1\"");
        }
        sb.append(">");
        if (this.f != null) {
            sb.append("<subject>").append(d.a(this.f));
            sb.append("</subject>");
        }
        if (this.g != null) {
            sb.append("<body");
            if (!TextUtils.isEmpty(this.h)) {
                sb.append(" encode=\"").append(this.h).append("\"");
            }
            sb.append(">").append(d.a(this.g)).append("</body>");
        }
        if (this.d != null) {
            sb.append("<thread>").append(this.d).append("</thread>");
        }
        if (XiaomiOAuthConstants.EXTRA_ERROR_CODE_2.equalsIgnoreCase(this.c)) {
            h p = p();
            if (p != null) {
                sb.append(p.b());
            }
        }
        sb.append(s());
        sb.append("</message>");
        return sb.toString();
    }

    public void c(String str) {
        this.l = str;
    }

    public String d() {
        return this.j;
    }

    public void d(String str) {
        this.m = str;
    }

    public String e() {
        return this.k;
    }

    public void e(String str) {
        this.n = str;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (!super.equals(cVar)) {
            return false;
        }
        if (this.g != null) {
            if (!this.g.equals(cVar.g)) {
                return false;
            }
        } else if (cVar.g != null) {
            return false;
        }
        if (this.e != null) {
            if (!this.e.equals(cVar.e)) {
                return false;
            }
        } else if (cVar.e != null) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(cVar.f)) {
                return false;
            }
        } else if (cVar.f != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(cVar.d)) {
                return false;
            }
        } else if (cVar.d != null) {
            return false;
        }
        if (this.c != cVar.c) {
            z = false;
        }
        return z;
    }

    public String f() {
        return this.l;
    }

    public void f(String str) {
        this.c = str;
    }

    public String g() {
        return this.m;
    }

    public void g(String str) {
        this.f = str;
    }

    public String h() {
        return this.n;
    }

    public void h(String str) {
        this.g = str;
    }

    public int hashCode() {
        int i2 = 0;
        int hashCode = ((this.e != null ? this.e.hashCode() : 0) + (((this.d != null ? this.d.hashCode() : 0) + (((this.g != null ? this.g.hashCode() : 0) + ((this.c != null ? this.c.hashCode() : 0) * 31)) * 31)) * 31)) * 31;
        if (this.f != null) {
            i2 = this.f.hashCode();
        }
        return hashCode + i2;
    }

    public String i() {
        return this.e;
    }

    public void i(String str) {
        this.d = str;
    }

    public void j(String str) {
        this.e = str;
    }
}
