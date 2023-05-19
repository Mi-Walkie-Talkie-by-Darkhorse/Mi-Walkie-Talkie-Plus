package com.xiaomi.push;

import com.xiaomi.push.C6164fs;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.fp */
/* loaded from: classes2.dex */
public class C6161fp implements C6381bd.C6383b.InterfaceC6384a {

    /* renamed from: a */
    private int f21642a;

    /* renamed from: a */
    private AbstractC6191gj f21643a;

    /* renamed from: a */
    private XMPushService f21644a;

    /* renamed from: a */
    private C6381bd.C6383b f21645a;

    /* renamed from: a */
    private boolean f21647a = false;

    /* renamed from: a */
    private C6381bd.EnumC6387c f21646a = C6381bd.EnumC6387c.binding;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6161fp(XMPushService xMPushService, C6381bd.C6383b c6383b) {
        this.f21644a = xMPushService;
        this.f21645a = c6383b;
    }

    /* renamed from: b */
    private void m2879b() {
        this.f21645a.m1481b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m2878c() {
        EnumC6158fm enumC6158fm;
        m2879b();
        if (!this.f21647a || this.f21642a == 11) {
            return;
        }
        C6159fn m2868a = C6167fu.m2865a().m2868a();
        int i = C6163fr.f21649a[this.f21646a.ordinal()];
        if (i != 1) {
            if (i == 3) {
                enumC6158fm = EnumC6158fm.BIND_SUCCESS;
            }
            if (m2868a != null) {
                m2868a.m2906b(this.f21643a.mo2721a());
                m2868a.m2898d(this.f21645a.f23036b);
                m2868a.f21628b = 1;
                try {
                    m2868a.m2914a((byte) Integer.parseInt(this.f21645a.f23042g));
                } catch (NumberFormatException unused) {
                }
                C6167fu.m2865a().m2859a(m2868a);
                return;
            }
            return;
        }
        int i2 = this.f21642a;
        if (i2 == 17) {
            enumC6158fm = EnumC6158fm.BIND_TCP_READ_TIMEOUT;
        } else if (i2 == 21) {
            enumC6158fm = EnumC6158fm.BIND_TIMEOUT;
        } else {
            try {
                C6164fs.C6165a m2874c = C6164fs.m2874c(C6167fu.m2866a().m2872a());
                m2868a.f21625a = m2874c.f21650a.m2919a();
                m2868a.m2902c(m2874c.f21651a);
            } catch (NullPointerException unused2) {
                m2868a = null;
            }
            if (m2868a != null) {
            }
        }
        m2868a.f21625a = enumC6158fm.m2919a();
        if (m2868a != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m2881a() {
        this.f21645a.m1489a(this);
        this.f21643a = this.f21644a.m1801a();
    }

    @Override // com.xiaomi.push.service.C6381bd.C6383b.InterfaceC6384a
    /* renamed from: a */
    public void mo1478a(C6381bd.EnumC6387c enumC6387c, C6381bd.EnumC6387c enumC6387c2, int i) {
        if (!this.f21647a && enumC6387c == C6381bd.EnumC6387c.binding) {
            this.f21646a = enumC6387c2;
            this.f21642a = i;
            this.f21647a = true;
        }
        this.f21644a.m1783a(new C6162fq(this, 4));
    }
}
