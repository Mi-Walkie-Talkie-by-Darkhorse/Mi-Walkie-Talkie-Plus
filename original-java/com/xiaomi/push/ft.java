package com.xiaomi.push;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
public class ft implements gm {

    /* renamed from: a  reason: collision with root package name */
    private int f8961a;

    /* renamed from: a  reason: collision with other field name */
    gj f380a;

    /* renamed from: a  reason: collision with other field name */
    XMPushService f381a;

    /* renamed from: a  reason: collision with other field name */
    private Exception f382a;
    private long e;
    private long f;

    /* renamed from: a  reason: collision with other field name */
    private long f379a = 0;

    /* renamed from: b  reason: collision with root package name */
    private long f8962b = 0;

    /* renamed from: c  reason: collision with root package name */
    private long f8963c = 0;
    private long d = 0;

    /* renamed from: a  reason: collision with other field name */
    private String f383a = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    public ft(XMPushService xMPushService) {
        this.e = 0L;
        this.f = 0L;
        this.f381a = xMPushService;
        b();
        int myUid = Process.myUid();
        try {
            this.f = TrafficStats.getUidRxBytes(myUid);
            this.e = TrafficStats.getUidTxBytes(myUid);
        } catch (Exception e) {
            b.m1a("Failed to obtain traffic data during initialization: " + e);
            this.f = -1L;
            this.e = -1L;
        }
    }

    private void b() {
        this.f8962b = 0L;
        this.d = 0L;
        this.f379a = 0L;
        this.f8963c = 0L;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (bi.b(this.f381a)) {
            this.f379a = elapsedRealtime;
        }
        if (this.f381a.m557c()) {
            this.f8963c = elapsedRealtime;
        }
    }

    private synchronized void c() {
        b.c("stat connpt = " + this.f383a + " netDuration = " + this.f8962b + " ChannelDuration = " + this.d + " channelConnectedTime = " + this.f8963c);
        fn fnVar = new fn();
        fnVar.f358a = (byte) 0;
        fnVar.a(fm.CHANNEL_ONLINE_RATE.a());
        fnVar.a(this.f383a);
        fnVar.d((int) (System.currentTimeMillis() / 1000));
        fnVar.b((int) (this.f8962b / 1000));
        fnVar.c((int) (this.d / 1000));
        fu.m284a().a(fnVar);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Exception a() {
        return this.f382a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m283a() {
        if (this.f381a != null) {
            String a2 = bi.m94a((Context) this.f381a);
            boolean c2 = bi.c(this.f381a);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f379a > 0) {
                this.f8962b += elapsedRealtime - this.f379a;
                this.f379a = 0L;
            }
            if (this.f8963c != 0) {
                this.d += elapsedRealtime - this.f8963c;
                this.f8963c = 0L;
            }
            if (c2) {
                if ((!TextUtils.equals(this.f383a, a2) && this.f8962b > 30000) || this.f8962b > 5400000) {
                    c();
                }
                this.f383a = a2;
                if (this.f379a == 0) {
                    this.f379a = elapsedRealtime;
                }
                if (this.f381a.m557c()) {
                    this.f8963c = elapsedRealtime;
                }
            }
        }
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar) {
        this.f8961a = 0;
        this.f382a = null;
        this.f380a = gjVar;
        this.f383a = bi.m94a((Context) this.f381a);
        fw.a(0, fm.CONN_SUCCESS.a());
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar, int i, Exception exc) {
        long j;
        if (this.f8961a == 0 && this.f382a == null) {
            this.f8961a = i;
            this.f382a = exc;
            fw.b(gjVar.m315a(), exc);
        }
        if (i == 22 && this.f8963c != 0) {
            long a2 = gjVar.a() - this.f8963c;
            if (a2 < 0) {
                a2 = 0;
            }
            this.d += a2 + (gp.b() / 2);
            this.f8963c = 0L;
        }
        m283a();
        int myUid = Process.myUid();
        long j2 = -1;
        try {
            j2 = TrafficStats.getUidRxBytes(myUid);
            j = TrafficStats.getUidTxBytes(myUid);
        } catch (Exception e) {
            b.m1a("Failed to obtain traffic data: " + e);
            j = -1L;
        }
        b.c("Stats rx=" + (j2 - this.f) + ", tx=" + (j - this.e));
        this.f = j2;
        this.e = j;
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar, Exception exc) {
        fw.a(0, fm.CHANNEL_CON_FAIL.a(), 1, gjVar.m315a(), bi.c(this.f381a) ? 1 : 0);
        m283a();
    }

    @Override // com.xiaomi.push.gm
    public void b(gj gjVar) {
        m283a();
        this.f8963c = SystemClock.elapsedRealtime();
        fw.a(0, fm.CONN_SUCCESS.a(), gjVar.m315a(), gjVar.mo326a());
    }
}
