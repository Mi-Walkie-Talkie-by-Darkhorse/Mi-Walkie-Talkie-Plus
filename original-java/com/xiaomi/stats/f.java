package com.xiaomi.stats;

import com.xiaomi.channel.commonutils.android.e;
import com.xiaomi.channel.commonutils.network.d;
import com.xiaomi.channel.commonutils.stats.a.C0060a;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.av;
import com.xiaomi.push.thrift.b;
import com.xiaomi.push.thrift.c;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.NoSuchElementException;

public class f {
    private String a;
    private boolean b = false;
    private int c;
    private long d;
    private e e;
    private com.xiaomi.channel.commonutils.stats.a f = com.xiaomi.channel.commonutils.stats.a.a();

    static class a {
        static final f a = new f();
    }

    private b a(C0060a aVar) {
        if (aVar.a != 0) {
            b f2 = f();
            f2.a(com.xiaomi.push.thrift.a.CHANNEL_STATS_COUNTER.a());
            f2.c(aVar.a);
            f2.c(aVar.b);
            return f2;
        } else if (aVar.c instanceof b) {
            return (b) aVar.c;
        } else {
            return null;
        }
    }

    public static f a() {
        return a.a;
    }

    private c b(int i) {
        ArrayList arrayList = new ArrayList();
        c cVar = new c(this.a, arrayList);
        if (!d.f(this.e.a)) {
            cVar.a(e.i(this.e.a));
        }
        org.apache.thrift.transport.b bVar = new org.apache.thrift.transport.b(i);
        org.apache.thrift.protocol.e a2 = new org.apache.thrift.protocol.k.a().a(bVar);
        try {
            cVar.b(a2);
        } catch (org.apache.thrift.f e2) {
        }
        LinkedList c2 = this.f.c();
        while (c2.size() > 0) {
            try {
                b a3 = a((C0060a) c2.getLast());
                if (a3 != null) {
                    a3.b(a2);
                }
                if (bVar.g_() > i) {
                    break;
                }
                if (a3 != null) {
                    arrayList.add(a3);
                }
                c2.removeLast();
            } catch (NoSuchElementException | org.apache.thrift.f e3) {
            }
        }
        return cVar;
    }

    public static e b() {
        e eVar;
        synchronized (a.a) {
            eVar = a.a.e;
        }
        return eVar;
    }

    private void g() {
        if (this.b && System.currentTimeMillis() - this.d > ((long) this.c)) {
            this.b = false;
            this.d = 0;
        }
    }

    public void a(int i) {
        int i2 = 604800000;
        if (i > 0) {
            int i3 = i * 1000;
            if (i3 <= 604800000) {
                i2 = i3;
            }
            if (this.c != i2 || !this.b) {
                this.b = true;
                this.d = System.currentTimeMillis();
                this.c = i2;
                com.xiaomi.channel.commonutils.logger.b.c("enable dot duration = " + i2 + " start = " + this.d);
            }
        }
    }

    public synchronized void a(XMPushService xMPushService) {
        this.e = new e(xMPushService);
        this.a = "";
        av.a().a((com.xiaomi.push.service.av.a) new g(this));
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a(b bVar) {
        this.f.a(bVar);
    }

    public boolean c() {
        return this.b;
    }

    /* access modifiers changed from: 0000 */
    public boolean d() {
        g();
        return this.b && this.f.b() > 0;
    }

    /* access modifiers changed from: 0000 */
    public synchronized c e() {
        c cVar;
        cVar = null;
        if (d()) {
            int i = 750;
            if (!d.f(this.e.a)) {
                i = 375;
            }
            cVar = b(i);
        }
        return cVar;
    }

    /* access modifiers changed from: 0000 */
    public synchronized b f() {
        b bVar;
        bVar = new b();
        bVar.a(d.l(this.e.a));
        bVar.a = 0;
        bVar.c = 1;
        bVar.d((int) (System.currentTimeMillis() / 1000));
        if (this.e.b != null) {
            bVar.e(this.e.b.f());
        }
        return bVar;
    }
}
