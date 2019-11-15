package com.xiaomi.slim;

import android.text.TextUtils;
import com.google.protobuf.micro.a;
import com.google.protobuf.micro.d;
import com.xiaomi.push.protobuf.b.C0070b;
import com.xiaomi.push.protobuf.b.j;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.am;
import com.xiaomi.smack.b;
import com.xiaomi.smack.h;
import com.xiaomi.smack.l;
import com.xiaomi.smack.util.g;

public class f extends h {
    private Thread w;
    /* access modifiers changed from: private */
    public c x;
    private d y;

    public f(XMPushService xMPushService, b bVar) {
        super(xMPushService, bVar);
    }

    private b c(boolean z) {
        b bVar = new b();
        bVar.a("PING", (String) null);
        if (z) {
            bVar.a("1");
        } else {
            bVar.a("0");
        }
        j jVar = new j();
        byte[] a = c().a();
        if (a != null) {
            try {
                jVar.a(C0070b.b(a));
            } catch (d e) {
            }
        }
        byte[] c = com.xiaomi.stats.h.c();
        if (c != null) {
            jVar.a(a.a(c));
        }
        bVar.a(jVar.c(), (String) null);
        return bVar;
    }

    private void w() {
        try {
            this.x = new c(this.q.getInputStream(), this);
            this.y = new d(this.q.getOutputStream(), this);
            this.w = new g(this, "Blob Reader (" + this.l + ")");
            this.w.start();
        } catch (Exception e) {
            throw new l("Error to init reader and writer", e);
        }
    }

    /* access modifiers changed from: protected */
    public synchronized void a(int i, Exception exc) {
        if (this.x != null) {
            this.x.b();
            this.x = null;
        }
        if (this.y != null) {
            try {
                this.y.b();
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
            }
            this.y = null;
        }
        super.a(i, exc);
        return;
    }

    public synchronized void a(am.b bVar) {
        a.a(bVar, r(), (com.xiaomi.smack.a) this);
    }

    /* access modifiers changed from: 0000 */
    public void a(b bVar) {
        if (bVar != null) {
            if (bVar.d()) {
                com.xiaomi.channel.commonutils.logger.b.a("[Slim] RCV blob chid=" + bVar.c() + "; id=" + bVar.h() + "; errCode=" + bVar.e() + "; err=" + bVar.f());
            }
            if (bVar.c() == 0) {
                if ("PING".equals(bVar.a())) {
                    com.xiaomi.channel.commonutils.logger.b.a("[Slim] RCV ping id=" + bVar.h());
                    v();
                } else if ("CLOSE".equals(bVar.a())) {
                    c(13, null);
                }
            }
            for (C0073a a : this.g.values()) {
                a.a(bVar);
            }
        }
    }

    @Deprecated
    public void a(com.xiaomi.smack.packet.d dVar) {
        b(b.a(dVar, (String) null));
    }

    public synchronized void a(String str, String str2) {
        a.a(str, str2, (com.xiaomi.smack.a) this);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        if (this.y != null) {
            b c = c(z);
            com.xiaomi.channel.commonutils.logger.b.a("[Slim] SND ping id=" + c.h());
            b(c);
            u();
            return;
        }
        throw new l("The BlobWriter is null.");
    }

    public void a(b[] bVarArr) {
        for (b b : bVarArr) {
            b(b);
        }
    }

    public void a(com.xiaomi.smack.packet.d[] dVarArr) {
        for (com.xiaomi.smack.packet.d a : dVarArr) {
            a(a);
        }
    }

    public boolean a() {
        return true;
    }

    /* access modifiers changed from: protected */
    public synchronized void b() {
        w();
        this.y.a();
    }

    public void b(b bVar) {
        if (this.y != null) {
            try {
                int a = this.y.a(bVar);
                this.o = System.currentTimeMillis();
                String i = bVar.i();
                if (!TextUtils.isEmpty(i)) {
                    g.a(this.n, i, (long) a, false, System.currentTimeMillis());
                }
                for (C0073a a2 : this.h.values()) {
                    a2.a(bVar);
                }
            } catch (Exception e) {
                throw new l((Throwable) e);
            }
        } else {
            throw new l("the writer is null.");
        }
    }

    /* access modifiers changed from: 0000 */
    public void b(com.xiaomi.smack.packet.d dVar) {
        if (dVar != null) {
            for (C0073a a : this.g.values()) {
                a.a(dVar);
            }
        }
    }
}
