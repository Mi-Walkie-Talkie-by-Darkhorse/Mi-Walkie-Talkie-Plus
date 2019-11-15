package com.xiaomi.stats;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.smack.a;
import com.xiaomi.smack.d;
import com.xiaomi.smack.g;

public class e implements d {
    XMPushService a;
    a b;
    private int c;
    private Exception d;
    private String e;
    private long f = 0;
    private long g = 0;
    private long h = 0;
    private long i = 0;
    private long j = 0;
    private long k = 0;

    e(XMPushService xMPushService) {
        this.a = xMPushService;
        this.e = com.xiaomi.channel.commonutils.network.d.l(xMPushService);
        c();
        int myUid = Process.myUid();
        this.k = TrafficStats.getUidRxBytes(myUid);
        this.j = TrafficStats.getUidTxBytes(myUid);
    }

    private void c() {
        this.g = 0;
        this.i = 0;
        this.f = 0;
        this.h = 0;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (com.xiaomi.channel.commonutils.network.d.d(this.a)) {
            this.f = elapsedRealtime;
        }
        if (this.a.f()) {
            this.h = elapsedRealtime;
        }
    }

    private synchronized void d() {
        b.c("stat connpt = " + this.e + " netDuration = " + this.g + " ChannelDuration = " + this.i + " channelConnectedTime = " + this.h);
        com.xiaomi.push.thrift.b bVar = new com.xiaomi.push.thrift.b();
        bVar.a = 0;
        bVar.a(com.xiaomi.push.thrift.a.CHANNEL_ONLINE_RATE.a());
        bVar.a(this.e);
        bVar.d((int) (System.currentTimeMillis() / 1000));
        bVar.b((int) (this.g / 1000));
        bVar.c((int) (this.i / 1000));
        f.a().a(bVar);
        c();
    }

    /* access modifiers changed from: 0000 */
    public Exception a() {
        return this.d;
    }

    public void a(a aVar) {
        b();
        this.h = SystemClock.elapsedRealtime();
        h.a(0, com.xiaomi.push.thrift.a.CONN_SUCCESS.a(), aVar.d(), aVar.l());
    }

    public void a(a aVar, int i2, Exception exc) {
        if (this.c == 0 && this.d == null) {
            this.c = i2;
            this.d = exc;
            h.b(aVar.d(), exc);
        }
        if (i2 == 22 && this.h != 0) {
            long g2 = aVar.g() - this.h;
            if (g2 < 0) {
                g2 = 0;
            }
            this.i = g2 + ((long) (g.c() / 2)) + this.i;
            this.h = 0;
        }
        b();
        int myUid = Process.myUid();
        long uidRxBytes = TrafficStats.getUidRxBytes(myUid);
        long uidTxBytes = TrafficStats.getUidTxBytes(myUid);
        b.c("Stats rx=" + (uidRxBytes - this.k) + ", tx=" + (uidTxBytes - this.j));
        this.k = uidRxBytes;
        this.j = uidTxBytes;
    }

    public void a(a aVar, Exception exc) {
        h.a(0, com.xiaomi.push.thrift.a.CHANNEL_CON_FAIL.a(), 1, aVar.d(), com.xiaomi.channel.commonutils.network.d.d(this.a) ? 1 : 0);
        b();
    }

    public synchronized void b() {
        if (this.a != null) {
            String l = com.xiaomi.channel.commonutils.network.d.l(this.a);
            boolean d2 = com.xiaomi.channel.commonutils.network.d.d(this.a);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f > 0) {
                this.g += elapsedRealtime - this.f;
                this.f = 0;
            }
            if (this.h != 0) {
                this.i += elapsedRealtime - this.h;
                this.h = 0;
            }
            if (d2) {
                if ((!TextUtils.equals(this.e, l) && this.g > 30000) || this.g > 5400000) {
                    d();
                }
                this.e = l;
                if (this.f == 0) {
                    this.f = elapsedRealtime;
                }
                if (this.a.f()) {
                    this.h = elapsedRealtime;
                }
            }
        }
    }

    public void b(a aVar) {
        this.c = 0;
        this.d = null;
        this.b = aVar;
        h.a(0, com.xiaomi.push.thrift.a.CONN_SUCCESS.a());
    }
}
