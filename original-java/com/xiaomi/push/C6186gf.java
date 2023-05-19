package com.xiaomi.push;

import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.AbstractC6191gj;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.C6398bm;
import com.xiaomi.push.service.C6404bs;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.gf */
/* loaded from: classes2.dex */
public class C6186gf extends AbstractC6199gq {

    /* renamed from: a */
    private C6177ga f21712a;

    /* renamed from: a */
    private C6178gb f21713a;

    /* renamed from: a */
    private Thread f21714a;

    /* renamed from: a */
    private byte[] f21715a;

    public C6186gf(XMPushService xMPushService, C6193gk c6193gk) {
        super(xMPushService, c6193gk);
    }

    /* renamed from: a */
    private C6173fy m2773a(boolean z) {
        C6185ge c6185ge = new C6185ge();
        if (z) {
            c6185ge.m2835a("1");
        }
        byte[] m2855a = C6170fw.m2855a();
        if (m2855a != null) {
            C6099dw.C6109j c6109j = new C6099dw.C6109j();
            c6109j.m3179a(C5967a.m3812a(m2855a));
            c6185ge.m2830a(c6109j.m3144a(), (String) null);
        }
        return c6185ge;
    }

    /* renamed from: i */
    private void m2770i() {
        try {
            this.f21712a = new C6177ga(((AbstractC6199gq) this).f21765a.getInputStream(), this);
            this.f21713a = new C6178gb(((AbstractC6199gq) this).f21765a.getOutputStream(), this);
            C6187gg c6187gg = new C6187gg(this, "Blob Reader (" + ((AbstractC6191gj) this).f21739b + ")");
            this.f21714a = c6187gg;
            c6187gg.start();
        } catch (Exception e) {
            throw new C6203gu("Error to init reader and writer", e);
        }
    }

    @Override // com.xiaomi.push.AbstractC6199gq
    /* renamed from: a */
    protected synchronized void mo2719a() {
        m2770i();
        this.f21713a.m2794a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.AbstractC6199gq
    /* renamed from: a */
    public synchronized void mo2718a(int i, Exception exc) {
        C6177ga c6177ga = this.f21712a;
        if (c6177ga != null) {
            c6177ga.m2796b();
            this.f21712a = null;
        }
        C6178gb c6178gb = this.f21713a;
        if (c6178gb != null) {
            try {
                c6178gb.m2792b();
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
            }
            this.f21713a = null;
        }
        this.f21715a = null;
        super.mo2718a(i, exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m2775a(C6173fy c6173fy) {
        if (c6173fy == null) {
            return;
        }
        if (c6173fy.m2840a()) {
            AbstractC5876b.m4147a("[Slim] RCV blob chid=" + c6173fy.m2843a() + "; id=" + c6173fy.m2823e() + "; errCode=" + c6173fy.m2829b() + "; err=" + c6173fy.m2826c());
        }
        if (c6173fy.m2843a() == 0) {
            if ("PING".equals(c6173fy.m2842a())) {
                AbstractC5876b.m4147a("[Slim] RCV ping id=" + c6173fy.m2823e());
                m2704h();
            } else if ("CLOSE".equals(c6173fy.m2842a())) {
                m2707c(13, null);
            }
        }
        for (AbstractC6191gj.C6192a c6192a : ((AbstractC6191gj) this).f21738a.values()) {
            c6192a.m2740a(c6173fy);
        }
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    @Deprecated
    /* renamed from: a */
    public void mo2754a(AbstractC6211ha abstractC6211ha) {
        mo2747b(C6173fy.m2836a(abstractC6211ha, (String) null));
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: a */
    public synchronized void mo2753a(C6381bd.C6383b c6383b) {
        C6172fx.m2845a(c6383b, m2708c(), this);
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: a */
    public synchronized void mo2751a(String str, String str2) {
        C6172fx.m2844a(str, str2, this);
    }

    @Override // com.xiaomi.push.AbstractC6199gq
    /* renamed from: a */
    protected void mo2712a(boolean z) {
        if (this.f21713a == null) {
            throw new C6203gu("The BlobWriter is null.");
        }
        C6173fy m2773a = m2773a(z);
        AbstractC5876b.m4147a("[Slim] SND ping id=" + m2773a.m2823e());
        mo2747b(m2773a);
        m2705g();
    }

    @Override // com.xiaomi.push.AbstractC6199gq, com.xiaomi.push.AbstractC6191gj
    /* renamed from: a */
    public void mo2711a(C6173fy[] c6173fyArr) {
        for (C6173fy c6173fy : c6173fyArr) {
            mo2747b(c6173fy);
        }
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: a */
    public boolean mo2761a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public synchronized byte[] m2776a() {
        if (this.f21715a == null && !TextUtils.isEmpty(((AbstractC6191gj) this).f21735a)) {
            String m1446a = C6404bs.m1446a();
            StringBuilder sb = new StringBuilder();
            String str = ((AbstractC6191gj) this).f21735a;
            sb.append(str.substring(str.length() / 2));
            sb.append(m1446a.substring(m1446a.length() / 2));
            this.f21715a = C6398bm.m1457a(((AbstractC6191gj) this).f21735a.getBytes(), sb.toString().getBytes());
        }
        return this.f21715a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m2772b() {
        C6135et.m3055a(((AbstractC6191gj) this).f21734a.getApplicationContext()).m3056a(SystemClock.elapsedRealtime());
    }

    @Override // com.xiaomi.push.AbstractC6191gj
    /* renamed from: b */
    public void mo2747b(C6173fy c6173fy) {
        C6178gb c6178gb = this.f21713a;
        if (c6178gb == null) {
            throw new C6203gu("the writer is null.");
        }
        try {
            int m2793a = c6178gb.m2793a(c6173fy);
            ((AbstractC6191gj) this).f21745d = SystemClock.elapsedRealtime();
            String m2822f = c6173fy.m2822f();
            if (!TextUtils.isEmpty(m2822f)) {
                C6228ho.m2596a(((AbstractC6191gj) this).f21734a, m2822f, m2793a, false, true, System.currentTimeMillis());
            }
            for (AbstractC6191gj.C6192a c6192a : ((AbstractC6191gj) this).f21742b.values()) {
                c6192a.m2740a(c6173fy);
            }
            if ("PING".equals(c6173fy.m2842a())) {
                return;
            }
            C6135et.m3055a(((AbstractC6199gq) this).f21766b.getApplicationContext()).m3056a(SystemClock.elapsedRealtime());
        } catch (Exception e) {
            throw new C6203gu(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m2771b(AbstractC6211ha abstractC6211ha) {
        if (abstractC6211ha == null) {
            return;
        }
        for (AbstractC6191gj.C6192a c6192a : ((AbstractC6191gj) this).f21738a.values()) {
            c6192a.m2739a(abstractC6211ha);
        }
    }
}
