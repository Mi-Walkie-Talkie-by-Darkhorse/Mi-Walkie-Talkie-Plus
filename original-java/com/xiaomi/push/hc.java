package com.xiaomi.push;

import android.os.Bundle;

/* loaded from: classes2.dex */
public class hc extends ha {

    /* renamed from: a  reason: collision with root package name */
    private int f9022a;

    /* renamed from: a  reason: collision with other field name */
    private a f462a;

    /* renamed from: a  reason: collision with other field name */
    private b f463a;

    /* renamed from: b  reason: collision with root package name */
    private String f9023b;

    /* loaded from: classes2.dex */
    public enum a {
        chat,
        available,
        away,
        xa,
        dnd
    }

    /* loaded from: classes2.dex */
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

    public hc(Bundle bundle) {
        super(bundle);
        this.f463a = b.available;
        this.f9023b = null;
        this.f9022a = Integer.MIN_VALUE;
        this.f462a = null;
        if (bundle.containsKey("ext_pres_type")) {
            this.f463a = b.valueOf(bundle.getString("ext_pres_type"));
        }
        if (bundle.containsKey("ext_pres_status")) {
            this.f9023b = bundle.getString("ext_pres_status");
        }
        if (bundle.containsKey("ext_pres_prio")) {
            this.f9022a = bundle.getInt("ext_pres_prio");
        }
        if (bundle.containsKey("ext_pres_mode")) {
            this.f462a = a.valueOf(bundle.getString("ext_pres_mode"));
        }
    }

    public hc(b bVar) {
        this.f463a = b.available;
        this.f9023b = null;
        this.f9022a = Integer.MIN_VALUE;
        this.f462a = null;
        a(bVar);
    }

    @Override // com.xiaomi.push.ha
    /* renamed from: a */
    public Bundle mo337a() {
        Bundle a2 = super.mo337a();
        b bVar = this.f463a;
        if (bVar != null) {
            a2.putString("ext_pres_type", bVar.toString());
        }
        String str = this.f9023b;
        if (str != null) {
            a2.putString("ext_pres_status", str);
        }
        int i = this.f9022a;
        if (i != Integer.MIN_VALUE) {
            a2.putInt("ext_pres_prio", i);
        }
        a aVar = this.f462a;
        if (!(aVar == null || aVar == a.available)) {
            a2.putString("ext_pres_mode", aVar.toString());
        }
        return a2;
    }

    @Override // com.xiaomi.push.ha
    /* renamed from: a  reason: collision with other method in class */
    public String mo337a() {
        StringBuilder sb = new StringBuilder();
        sb.append("<presence");
        if (p() != null) {
            sb.append(" xmlns=\"");
            sb.append(p());
            sb.append("\"");
        }
        if (j() != null) {
            sb.append(" id=\"");
            sb.append(j());
            sb.append("\"");
        }
        if (l() != null) {
            sb.append(" to=\"");
            sb.append(hl.a(l()));
            sb.append("\"");
        }
        if (m() != null) {
            sb.append(" from=\"");
            sb.append(hl.a(m()));
            sb.append("\"");
        }
        if (k() != null) {
            sb.append(" chid=\"");
            sb.append(hl.a(k()));
            sb.append("\"");
        }
        if (this.f463a != null) {
            sb.append(" type=\"");
            sb.append(this.f463a);
            sb.append("\"");
        }
        sb.append(">");
        if (this.f9023b != null) {
            sb.append("<status>");
            sb.append(hl.a(this.f9023b));
            sb.append("</status>");
        }
        if (this.f9022a != Integer.MIN_VALUE) {
            sb.append("<priority>");
            sb.append(this.f9022a);
            sb.append("</priority>");
        }
        a aVar = this.f462a;
        if (!(aVar == null || aVar == a.available)) {
            sb.append("<show>");
            sb.append(this.f462a);
            sb.append("</show>");
        }
        sb.append(o());
        he a2 = a();
        if (a2 != null) {
            sb.append(a2.m338a());
        }
        sb.append("</presence>");
        return sb.toString();
    }

    public void a(int i) {
        if (i < -128 || i > 128) {
            throw new IllegalArgumentException("Priority value " + i + " is not valid. Valid range is -128 through 128.");
        }
        this.f9022a = i;
    }

    public void a(a aVar) {
        this.f462a = aVar;
    }

    public void a(b bVar) {
        if (bVar != null) {
            this.f463a = bVar;
            return;
        }
        throw new NullPointerException("Type cannot be null");
    }

    @Override // com.xiaomi.push.ha
    public void a(String str) {
        this.f9023b = str;
    }
}
