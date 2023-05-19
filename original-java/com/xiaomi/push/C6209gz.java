package com.xiaomi.push;

import android.os.Bundle;
import android.text.TextUtils;

/* renamed from: com.xiaomi.push.gz */
/* loaded from: classes2.dex */
public class C6209gz extends AbstractC6211ha {

    /* renamed from: a */
    private boolean f21799a;

    /* renamed from: b */
    private String f21800b;

    /* renamed from: b */
    private boolean f21801b;

    /* renamed from: c */
    private String f21802c;

    /* renamed from: d */
    private String f21803d;

    /* renamed from: e */
    private String f21804e;

    /* renamed from: f */
    private String f21805f;

    /* renamed from: g */
    private String f21806g;

    /* renamed from: h */
    private String f21807h;

    /* renamed from: i */
    private String f21808i;

    /* renamed from: j */
    private String f21809j;

    /* renamed from: k */
    private String f21810k;

    /* renamed from: l */
    private String f21811l;

    public C6209gz() {
        this.f21800b = null;
        this.f21802c = null;
        this.f21799a = false;
        this.f21808i = "";
        this.f21809j = "";
        this.f21810k = "";
        this.f21811l = "";
        this.f21801b = false;
    }

    public C6209gz(Bundle bundle) {
        super(bundle);
        this.f21800b = null;
        this.f21802c = null;
        this.f21799a = false;
        this.f21808i = "";
        this.f21809j = "";
        this.f21810k = "";
        this.f21811l = "";
        this.f21801b = false;
        this.f21800b = bundle.getString("ext_msg_type");
        this.f21803d = bundle.getString("ext_msg_lang");
        this.f21802c = bundle.getString("ext_msg_thread");
        this.f21804e = bundle.getString("ext_msg_sub");
        this.f21805f = bundle.getString("ext_msg_body");
        this.f21806g = bundle.getString("ext_body_encode");
        this.f21807h = bundle.getString("ext_msg_appid");
        this.f21799a = bundle.getBoolean("ext_msg_trans", false);
        this.f21801b = bundle.getBoolean("ext_msg_encrypt", false);
        this.f21808i = bundle.getString("ext_msg_seq");
        this.f21809j = bundle.getString("ext_msg_mseq");
        this.f21810k = bundle.getString("ext_msg_fseq");
        this.f21811l = bundle.getString("ext_msg_status");
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    /* renamed from: a */
    public Bundle mo2641a() {
        Bundle mo2641a = super.mo2641a();
        if (!TextUtils.isEmpty(this.f21800b)) {
            mo2641a.putString("ext_msg_type", this.f21800b);
        }
        String str = this.f21803d;
        if (str != null) {
            mo2641a.putString("ext_msg_lang", str);
        }
        String str2 = this.f21804e;
        if (str2 != null) {
            mo2641a.putString("ext_msg_sub", str2);
        }
        String str3 = this.f21805f;
        if (str3 != null) {
            mo2641a.putString("ext_msg_body", str3);
        }
        if (!TextUtils.isEmpty(this.f21806g)) {
            mo2641a.putString("ext_body_encode", this.f21806g);
        }
        String str4 = this.f21802c;
        if (str4 != null) {
            mo2641a.putString("ext_msg_thread", str4);
        }
        String str5 = this.f21807h;
        if (str5 != null) {
            mo2641a.putString("ext_msg_appid", str5);
        }
        if (this.f21799a) {
            mo2641a.putBoolean("ext_msg_trans", true);
        }
        if (!TextUtils.isEmpty(this.f21808i)) {
            mo2641a.putString("ext_msg_seq", this.f21808i);
        }
        if (!TextUtils.isEmpty(this.f21809j)) {
            mo2641a.putString("ext_msg_mseq", this.f21809j);
        }
        if (!TextUtils.isEmpty(this.f21810k)) {
            mo2641a.putString("ext_msg_fseq", this.f21810k);
        }
        if (this.f21801b) {
            mo2641a.putBoolean("ext_msg_encrypt", true);
        }
        if (!TextUtils.isEmpty(this.f21811l)) {
            mo2641a.putString("ext_msg_status", this.f21811l);
        }
        return mo2641a;
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    /* renamed from: a */
    public String mo2640a() {
        C6217he m2664a;
        StringBuilder sb = new StringBuilder();
        sb.append("<message");
        if (m2644p() != null) {
            sb.append(" xmlns=\"");
            sb.append(m2644p());
            sb.append("\"");
        }
        if (this.f21803d != null) {
            sb.append(" xml:lang=\"");
            sb.append(m2671h());
            sb.append("\"");
        }
        if (m2655j() != null) {
            sb.append(" id=\"");
            sb.append(m2655j());
            sb.append("\"");
        }
        if (m2652l() != null) {
            sb.append(" to=\"");
            sb.append(C6225hl.m2611a(m2652l()));
            sb.append("\"");
        }
        if (!TextUtils.isEmpty(m2679d())) {
            sb.append(" seq=\"");
            sb.append(m2679d());
            sb.append("\"");
        }
        if (!TextUtils.isEmpty(m2677e())) {
            sb.append(" mseq=\"");
            sb.append(m2677e());
            sb.append("\"");
        }
        if (!TextUtils.isEmpty(m2675f())) {
            sb.append(" fseq=\"");
            sb.append(m2675f());
            sb.append("\"");
        }
        if (!TextUtils.isEmpty(m2673g())) {
            sb.append(" status=\"");
            sb.append(m2673g());
            sb.append("\"");
        }
        if (m2650m() != null) {
            sb.append(" from=\"");
            sb.append(C6225hl.m2611a(m2650m()));
            sb.append("\"");
        }
        if (m2654k() != null) {
            sb.append(" chid=\"");
            sb.append(C6225hl.m2611a(m2654k()));
            sb.append("\"");
        }
        if (this.f21799a) {
            sb.append(" transient=\"true\"");
        }
        if (!TextUtils.isEmpty(this.f21807h)) {
            sb.append(" appid=\"");
            sb.append(m2681c());
            sb.append("\"");
        }
        if (!TextUtils.isEmpty(this.f21800b)) {
            sb.append(" type=\"");
            sb.append(this.f21800b);
            sb.append("\"");
        }
        if (this.f21801b) {
            sb.append(" s=\"1\"");
        }
        sb.append(">");
        if (this.f21804e != null) {
            sb.append("<subject>");
            sb.append(C6225hl.m2611a(this.f21804e));
            sb.append("</subject>");
        }
        if (this.f21805f != null) {
            sb.append("<body");
            if (!TextUtils.isEmpty(this.f21806g)) {
                sb.append(" encode=\"");
                sb.append(this.f21806g);
                sb.append("\"");
            }
            sb.append(">");
            sb.append(C6225hl.m2611a(this.f21805f));
            sb.append("</body>");
        }
        if (this.f21802c != null) {
            sb.append("<thread>");
            sb.append(this.f21802c);
            sb.append("</thread>");
        }
        if ("error".equalsIgnoreCase(this.f21800b) && (m2664a = m2664a()) != null) {
            sb.append(m2664a.m2632a());
        }
        sb.append(m2646o());
        sb.append("</message>");
        return sb.toString();
    }

    /* renamed from: a */
    public void m2687a(String str) {
        this.f21807h = str;
    }

    /* renamed from: a */
    public void m2686a(String str, String str2) {
        this.f21805f = str;
        this.f21806g = str2;
    }

    /* renamed from: a */
    public void m2685a(boolean z) {
        this.f21799a = z;
    }

    /* renamed from: b */
    public String m2684b() {
        return this.f21800b;
    }

    /* renamed from: b */
    public void m2683b(String str) {
        this.f21808i = str;
    }

    /* renamed from: b */
    public void m2682b(boolean z) {
        this.f21801b = z;
    }

    /* renamed from: c */
    public String m2681c() {
        return this.f21807h;
    }

    /* renamed from: c */
    public void m2680c(String str) {
        this.f21809j = str;
    }

    /* renamed from: d */
    public String m2679d() {
        return this.f21808i;
    }

    /* renamed from: d */
    public void m2678d(String str) {
        this.f21810k = str;
    }

    /* renamed from: e */
    public String m2677e() {
        return this.f21809j;
    }

    /* renamed from: e */
    public void m2676e(String str) {
        this.f21811l = str;
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C6209gz c6209gz = (C6209gz) obj;
        if (super.equals(c6209gz)) {
            String str = this.f21805f;
            if (str == null ? c6209gz.f21805f == null : str.equals(c6209gz.f21805f)) {
                String str2 = this.f21803d;
                if (str2 == null ? c6209gz.f21803d == null : str2.equals(c6209gz.f21803d)) {
                    String str3 = this.f21804e;
                    if (str3 == null ? c6209gz.f21804e == null : str3.equals(c6209gz.f21804e)) {
                        String str4 = this.f21802c;
                        if (str4 == null ? c6209gz.f21802c == null : str4.equals(c6209gz.f21802c)) {
                            return this.f21800b == c6209gz.f21800b;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: f */
    public String m2675f() {
        return this.f21810k;
    }

    /* renamed from: f */
    public void m2674f(String str) {
        this.f21800b = str;
    }

    /* renamed from: g */
    public String m2673g() {
        return this.f21811l;
    }

    /* renamed from: g */
    public void m2672g(String str) {
        this.f21804e = str;
    }

    /* renamed from: h */
    public String m2671h() {
        return this.f21803d;
    }

    /* renamed from: h */
    public void m2670h(String str) {
        this.f21805f = str;
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    public int hashCode() {
        String str = this.f21800b;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f21805f;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f21802c;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f21803d;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f21804e;
        return hashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    /* renamed from: i */
    public void m2669i(String str) {
        this.f21802c = str;
    }

    /* renamed from: j */
    public void m2668j(String str) {
        this.f21803d = str;
    }
}
