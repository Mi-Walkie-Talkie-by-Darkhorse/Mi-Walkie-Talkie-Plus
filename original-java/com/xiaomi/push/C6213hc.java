package com.xiaomi.push;

import android.os.Bundle;
import java.util.Objects;

/* renamed from: com.xiaomi.push.hc */
/* loaded from: classes2.dex */
public class C6213hc extends AbstractC6211ha {

    /* renamed from: a */
    private int f21827a;

    /* renamed from: a */
    private EnumC6214a f21828a;

    /* renamed from: a */
    private EnumC6215b f21829a;

    /* renamed from: b */
    private String f21830b;

    /* renamed from: com.xiaomi.push.hc$a */
    /* loaded from: classes2.dex */
    public enum EnumC6214a {
        chat,
        available,
        away,
        xa,
        dnd
    }

    /* renamed from: com.xiaomi.push.hc$b */
    /* loaded from: classes2.dex */
    public enum EnumC6215b {
        available,
        unavailable,
        subscribe,
        subscribed,
        unsubscribe,
        unsubscribed,
        error,
        probe
    }

    public C6213hc(Bundle bundle) {
        super(bundle);
        this.f21829a = EnumC6215b.available;
        this.f21830b = null;
        this.f21827a = Integer.MIN_VALUE;
        this.f21828a = null;
        if (bundle.containsKey("ext_pres_type")) {
            this.f21829a = EnumC6215b.valueOf(bundle.getString("ext_pres_type"));
        }
        if (bundle.containsKey("ext_pres_status")) {
            this.f21830b = bundle.getString("ext_pres_status");
        }
        if (bundle.containsKey("ext_pres_prio")) {
            this.f21827a = bundle.getInt("ext_pres_prio");
        }
        if (bundle.containsKey("ext_pres_mode")) {
            this.f21828a = EnumC6214a.valueOf(bundle.getString("ext_pres_mode"));
        }
    }

    public C6213hc(EnumC6215b enumC6215b) {
        this.f21829a = EnumC6215b.available;
        this.f21830b = null;
        this.f21827a = Integer.MIN_VALUE;
        this.f21828a = null;
        m2637a(enumC6215b);
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    /* renamed from: a */
    public Bundle mo2641a() {
        Bundle mo2641a = super.mo2641a();
        EnumC6215b enumC6215b = this.f21829a;
        if (enumC6215b != null) {
            mo2641a.putString("ext_pres_type", enumC6215b.toString());
        }
        String str = this.f21830b;
        if (str != null) {
            mo2641a.putString("ext_pres_status", str);
        }
        int i = this.f21827a;
        if (i != Integer.MIN_VALUE) {
            mo2641a.putInt("ext_pres_prio", i);
        }
        EnumC6214a enumC6214a = this.f21828a;
        if (enumC6214a != null && enumC6214a != EnumC6214a.available) {
            mo2641a.putString("ext_pres_mode", enumC6214a.toString());
        }
        return mo2641a;
    }

    @Override // com.xiaomi.push.AbstractC6211ha
    /* renamed from: a */
    public String mo2640a() {
        StringBuilder sb = new StringBuilder();
        sb.append("<presence");
        if (m2644p() != null) {
            sb.append(" xmlns=\"");
            sb.append(m2644p());
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
        if (this.f21829a != null) {
            sb.append(" type=\"");
            sb.append(this.f21829a);
            sb.append("\"");
        }
        sb.append(">");
        if (this.f21830b != null) {
            sb.append("<status>");
            sb.append(C6225hl.m2611a(this.f21830b));
            sb.append("</status>");
        }
        if (this.f21827a != Integer.MIN_VALUE) {
            sb.append("<priority>");
            sb.append(this.f21827a);
            sb.append("</priority>");
        }
        EnumC6214a enumC6214a = this.f21828a;
        if (enumC6214a != null && enumC6214a != EnumC6214a.available) {
            sb.append("<show>");
            sb.append(this.f21828a);
            sb.append("</show>");
        }
        sb.append(m2646o());
        C6217he m2664a = m2664a();
        if (m2664a != null) {
            sb.append(m2664a.m2632a());
        }
        sb.append("</presence>");
        return sb.toString();
    }

    /* renamed from: a */
    public void m2639a(int i) {
        if (i >= -128 && i <= 128) {
            this.f21827a = i;
            return;
        }
        throw new IllegalArgumentException("Priority value " + i + " is not valid. Valid range is -128 through 128.");
    }

    /* renamed from: a */
    public void m2638a(EnumC6214a enumC6214a) {
        this.f21828a = enumC6214a;
    }

    /* renamed from: a */
    public void m2637a(EnumC6215b enumC6215b) {
        Objects.requireNonNull(enumC6215b, "Type cannot be null");
        this.f21829a = enumC6215b;
    }

    /* renamed from: a */
    public void m2636a(String str) {
        this.f21830b = str;
    }
}
