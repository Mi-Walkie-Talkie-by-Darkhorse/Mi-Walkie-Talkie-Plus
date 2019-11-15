package com.xiaomi.stats;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.push.service.am.b;
import com.xiaomi.push.service.am.c;

class a implements com.xiaomi.push.service.am.b.a {
    private XMPushService a;
    private b b;
    private com.xiaomi.smack.a c;
    private c d;
    private int e;
    private boolean f = false;

    a(XMPushService xMPushService, b bVar) {
        this.a = xMPushService;
        this.d = c.binding;
        this.b = bVar;
    }

    private void b() {
        this.b.b((com.xiaomi.push.service.am.b.a) this);
    }

    /* access modifiers changed from: private */
    public void c() {
        b();
        if (this.f && this.e != 11) {
            com.xiaomi.push.thrift.b f2 = f.a().f();
            switch (c.a[this.d.ordinal()]) {
                case 1:
                    if (this.e != 17) {
                        if (this.e != 21) {
                            try {
                                a c2 = d.c(f.b().a());
                                f2.b = c2.a.a();
                                f2.c(c2.b);
                                break;
                            } catch (NullPointerException e2) {
                                f2 = null;
                                break;
                            }
                        } else {
                            f2.b = com.xiaomi.push.thrift.a.BIND_TIMEOUT.a();
                            break;
                        }
                    } else {
                        f2.b = com.xiaomi.push.thrift.a.BIND_TCP_READ_TIMEOUT.a();
                        break;
                    }
                case 3:
                    f2.b = com.xiaomi.push.thrift.a.BIND_SUCCESS.a();
                    break;
            }
            if (f2 != null) {
                f2.b(this.c.d());
                f2.d(this.b.b);
                f2.c = 1;
                try {
                    f2.a((byte) Integer.parseInt(this.b.h));
                } catch (NumberFormatException e3) {
                }
                f.a().a(f2);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.b.a((com.xiaomi.push.service.am.b.a) this);
        this.c = this.a.h();
    }

    public void a(c cVar, c cVar2, int i) {
        if (!this.f && cVar == c.binding) {
            this.d = cVar2;
            this.e = i;
            this.f = true;
        }
        this.a.a((h) new b(this, 4));
    }
}
