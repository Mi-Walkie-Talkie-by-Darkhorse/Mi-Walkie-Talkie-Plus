package com.xiaomi.push;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.ft */
/* loaded from: classes2.dex */
public class C6166ft implements InterfaceC6195gm {

    /* renamed from: a */
    private int f21652a;

    /* renamed from: a */
    AbstractC6191gj f21654a;

    /* renamed from: a */
    XMPushService f21655a;

    /* renamed from: a */
    private Exception f21656a;

    /* renamed from: e */
    private long f21661e;

    /* renamed from: f */
    private long f21662f;

    /* renamed from: a */
    private long f21653a = 0;

    /* renamed from: b */
    private long f21658b = 0;

    /* renamed from: c */
    private long f21659c = 0;

    /* renamed from: d */
    private long f21660d = 0;

    /* renamed from: a */
    private String f21657a = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6166ft(XMPushService xMPushService) {
        this.f21661e = 0L;
        this.f21662f = 0L;
        this.f21655a = xMPushService;
        m2870b();
        int myUid = Process.myUid();
        try {
            this.f21662f = TrafficStats.getUidRxBytes(myUid);
            this.f21661e = TrafficStats.getUidTxBytes(myUid);
        } catch (Exception e) {
            AbstractC5876b.m4147a("Failed to obtain traffic data during initialization: " + e);
            this.f21662f = -1L;
            this.f21661e = -1L;
        }
    }

    /* renamed from: b */
    private void m2870b() {
        this.f21658b = 0L;
        this.f21660d = 0L;
        this.f21653a = 0L;
        this.f21659c = 0L;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (C6013bi.m3662b(this.f21655a)) {
            this.f21653a = elapsedRealtime;
        }
        if (this.f21655a.m1747c()) {
            this.f21659c = elapsedRealtime;
        }
    }

    /* renamed from: c */
    private synchronized void m2869c() {
        AbstractC5876b.m4139c("stat connpt = " + this.f21657a + " netDuration = " + this.f21658b + " ChannelDuration = " + this.f21660d + " channelConnectedTime = " + this.f21659c);
        C6159fn c6159fn = new C6159fn();
        c6159fn.f21624a = (byte) 0;
        c6159fn.m2913a(EnumC6158fm.CHANNEL_ONLINE_RATE.m2919a());
        c6159fn.m2910a(this.f21657a);
        c6159fn.m2899d((int) (System.currentTimeMillis() / 1000));
        c6159fn.m2907b((int) (this.f21658b / 1000));
        c6159fn.m2903c((int) (this.f21660d / 1000));
        C6167fu.m2865a().m2859a(c6159fn);
        m2870b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public Exception m2872a() {
        return this.f21656a;
    }

    /* renamed from: a */
    public synchronized void m2871a() {
        XMPushService xMPushService = this.f21655a;
        if (xMPushService == null) {
            return;
        }
        String m3675a = C6013bi.m3675a((Context) xMPushService);
        boolean m3661c = C6013bi.m3661c(this.f21655a);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.f21653a;
        if (j > 0) {
            this.f21658b += elapsedRealtime - j;
            this.f21653a = 0L;
        }
        long j2 = this.f21659c;
        if (j2 != 0) {
            this.f21660d += elapsedRealtime - j2;
            this.f21659c = 0L;
        }
        if (m3661c) {
            if ((!TextUtils.equals(this.f21657a, m3675a) && this.f21658b > 30000) || this.f21658b > 5400000) {
                m2869c();
            }
            this.f21657a = m3675a;
            if (this.f21653a == 0) {
                this.f21653a = elapsedRealtime;
            }
            if (this.f21655a.m1747c()) {
                this.f21659c = elapsedRealtime;
            }
        }
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1787a(AbstractC6191gj abstractC6191gj) {
        this.f21652a = 0;
        this.f21656a = null;
        this.f21654a = abstractC6191gj;
        this.f21657a = C6013bi.m3675a((Context) this.f21655a);
        C6170fw.m2853a(0, EnumC6158fm.CONN_SUCCESS.m2919a());
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1786a(AbstractC6191gj abstractC6191gj, int i, Exception exc) {
        long j;
        if (this.f21652a == 0 && this.f21656a == null) {
            this.f21652a = i;
            this.f21656a = exc;
            C6170fw.m2846b(abstractC6191gj.mo2721a(), exc);
        }
        if (i == 22 && this.f21659c != 0) {
            long m2764a = abstractC6191gj.m2764a() - this.f21659c;
            if (m2764a < 0) {
                m2764a = 0;
            }
            this.f21660d += m2764a + (C6198gp.m2722b() / 2);
            this.f21659c = 0L;
        }
        m2871a();
        int myUid = Process.myUid();
        long j2 = -1;
        try {
            j2 = TrafficStats.getUidRxBytes(myUid);
            j = TrafficStats.getUidTxBytes(myUid);
        } catch (Exception e) {
            AbstractC5876b.m4147a("Failed to obtain traffic data: " + e);
            j = -1L;
        }
        AbstractC5876b.m4139c("Stats rx=" + (j2 - this.f21662f) + ", tx=" + (j - this.f21661e));
        this.f21662f = j2;
        this.f21661e = j;
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1785a(AbstractC6191gj abstractC6191gj, Exception exc) {
        C6170fw.m2852a(0, EnumC6158fm.CHANNEL_CON_FAIL.m2919a(), 1, abstractC6191gj.mo2721a(), C6013bi.m3661c(this.f21655a) ? 1 : 0);
        m2871a();
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: b */
    public void mo1753b(AbstractC6191gj abstractC6191gj) {
        m2871a();
        this.f21659c = SystemClock.elapsedRealtime();
        C6170fw.m2851a(0, EnumC6158fm.CONN_SUCCESS.m2919a(), abstractC6191gj.mo2721a(), abstractC6191gj.m2765a());
    }
}
