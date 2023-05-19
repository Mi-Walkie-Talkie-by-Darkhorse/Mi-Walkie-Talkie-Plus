package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6018bk;
import com.xiaomi.push.C6298jx;
import com.xiaomi.push.service.C6404bs;
import com.xiaomi.push.service.XMPushService;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.NoSuchElementException;

/* renamed from: com.xiaomi.push.fu */
/* loaded from: classes2.dex */
public class C6167fu {

    /* renamed from: a */
    private int f21663a;

    /* renamed from: a */
    private long f21664a;

    /* renamed from: a */
    private C6166ft f21666a;

    /* renamed from: a */
    private String f21667a;

    /* renamed from: a */
    private boolean f21668a = false;

    /* renamed from: a */
    private C6018bk f21665a = C6018bk.m3638a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.fu$a */
    /* loaded from: classes2.dex */
    public static class C6168a {

        /* renamed from: a */
        static final C6167fu f21669a = new C6167fu();
    }

    /* renamed from: a */
    private C6159fn m2860a(C6018bk.C6019a c6019a) {
        if (c6019a.f21112a == 0) {
            Object obj = c6019a.f21113a;
            if (obj instanceof C6159fn) {
                return (C6159fn) obj;
            }
            return null;
        }
        C6159fn m2868a = m2868a();
        m2868a.m2913a(EnumC6158fm.CHANNEL_STATS_COUNTER.m2919a());
        m2868a.m2903c(c6019a.f21112a);
        m2868a.m2902c(c6019a.f21114a);
        return m2868a;
    }

    /* renamed from: a */
    private C6160fo m2862a(int i) {
        ArrayList arrayList = new ArrayList();
        C6160fo c6160fo = new C6160fo(this.f21667a, arrayList);
        if (!C6013bi.m3659e(this.f21666a.f21655a)) {
            c6160fo.m2884a(C6242i.m2486k(this.f21666a.f21655a));
        }
        C6301jz c6301jz = new C6301jz(i);
        AbstractC6292jr mo1867a = new C6298jx.C6299a().mo1867a(c6301jz);
        try {
            c6160fo.mo1930b(mo1867a);
        } catch (C6285jl unused) {
        }
        LinkedList<C6018bk.C6019a> m3637a = this.f21665a.m3637a();
        while (m3637a.size() > 0) {
            try {
                C6159fn m2860a = m2860a(m3637a.getLast());
                if (m2860a != null) {
                    m2860a.mo1930b(mo1867a);
                }
                if (c6301jz.m1866a_() > i) {
                    break;
                }
                if (m2860a != null) {
                    arrayList.add(m2860a);
                }
                m3637a.removeLast();
            } catch (C6285jl | NoSuchElementException unused2) {
            }
        }
        return c6160fo;
    }

    /* renamed from: a */
    public static C6166ft m2866a() {
        C6166ft c6166ft;
        C6167fu c6167fu = C6168a.f21669a;
        synchronized (c6167fu) {
            c6166ft = c6167fu.f21666a;
        }
        return c6166ft;
    }

    /* renamed from: a */
    public static C6167fu m2865a() {
        return C6168a.f21669a;
    }

    /* renamed from: a */
    private void m2864a() {
        if (!this.f21668a || System.currentTimeMillis() - this.f21664a <= this.f21663a) {
            return;
        }
        this.f21668a = false;
        this.f21664a = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public synchronized C6159fn m2868a() {
        C6159fn c6159fn;
        c6159fn = new C6159fn();
        c6159fn.m2910a(C6013bi.m3675a((Context) this.f21666a.f21655a));
        c6159fn.f21624a = (byte) 0;
        c6159fn.f21628b = 1;
        c6159fn.m2899d((int) (System.currentTimeMillis() / 1000));
        return c6159fn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public synchronized C6160fo m2867a() {
        C6160fo c6160fo;
        c6160fo = null;
        if (m2857b()) {
            c6160fo = m2862a(C6013bi.m3659e(this.f21666a.f21655a) ? 750 : 375);
        }
        return c6160fo;
    }

    /* renamed from: a */
    public void m2861a(int i) {
        if (i > 0) {
            int i2 = i * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
            if (i2 > 604800000) {
                i2 = 604800000;
            }
            if (this.f21663a == i2 && this.f21668a) {
                return;
            }
            this.f21668a = true;
            this.f21664a = System.currentTimeMillis();
            this.f21663a = i2;
            AbstractC5876b.m4139c("enable dot duration = " + i2 + " start = " + this.f21664a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public synchronized void m2859a(C6159fn c6159fn) {
        this.f21665a.m3635a(c6159fn);
    }

    /* renamed from: a */
    public synchronized void m2858a(XMPushService xMPushService) {
        this.f21666a = new C6166ft(xMPushService);
        this.f21667a = "";
        C6404bs.m1447a().m1443a(new C6169fv(this));
    }

    /* renamed from: a */
    public boolean m2863a() {
        return this.f21668a;
    }

    /* renamed from: b */
    boolean m2857b() {
        m2864a();
        return this.f21668a && this.f21665a.m3639a() > 0;
    }
}
