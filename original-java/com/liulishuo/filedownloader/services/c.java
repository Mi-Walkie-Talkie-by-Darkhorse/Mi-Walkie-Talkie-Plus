package com.liulishuo.filedownloader.services;

import com.liulishuo.filedownloader.e.c.C0049c;
import com.liulishuo.filedownloader.e.c.b;
import com.liulishuo.filedownloader.e.c.d;
import com.liulishuo.filedownloader.e.c.e;
import com.liulishuo.filedownloader.e.g;

/* compiled from: DownloadMgrInitialParams */
public class c {
    private final a a = null;

    /* compiled from: DownloadMgrInitialParams */
    public static class a {
        C0049c a;
        Integer b;
        e c;
        b d;
        com.liulishuo.filedownloader.e.c.a e;
        d f;

        public String toString() {
            return g.a("component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]", this.a, this.b, this.c, this.d, this.e);
        }
    }

    public int a() {
        if (this.a == null) {
            return h();
        }
        Integer num = this.a.b;
        if (num == null) {
            return h();
        }
        if (com.liulishuo.filedownloader.e.d.a) {
            com.liulishuo.filedownloader.e.d.c(this, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d", num);
        }
        return com.liulishuo.filedownloader.e.e.a(num.intValue());
    }

    public com.liulishuo.filedownloader.b.a b() {
        if (this.a == null || this.a.a == null) {
            return i();
        }
        com.liulishuo.filedownloader.b.a a2 = this.a.a.a();
        if (a2 == null) {
            return i();
        }
        if (!com.liulishuo.filedownloader.e.d.a) {
            return a2;
        }
        com.liulishuo.filedownloader.e.d.c(this, "initial FileDownloader manager with the customize database: %s", a2);
        return a2;
    }

    public e c() {
        if (this.a == null) {
            return j();
        }
        e eVar = this.a.c;
        if (eVar == null) {
            return j();
        }
        if (!com.liulishuo.filedownloader.e.d.a) {
            return eVar;
        }
        com.liulishuo.filedownloader.e.d.c(this, "initial FileDownloader manager with the customize output stream: %s", eVar);
        return eVar;
    }

    public b d() {
        if (this.a == null) {
            return k();
        }
        b bVar = this.a.d;
        if (bVar == null) {
            return k();
        }
        if (!com.liulishuo.filedownloader.e.d.a) {
            return bVar;
        }
        com.liulishuo.filedownloader.e.d.c(this, "initial FileDownloader manager with the customize connection creator: %s", bVar);
        return bVar;
    }

    public com.liulishuo.filedownloader.e.c.a e() {
        if (this.a == null) {
            return l();
        }
        com.liulishuo.filedownloader.e.c.a aVar = this.a.e;
        if (aVar == null) {
            return l();
        }
        if (!com.liulishuo.filedownloader.e.d.a) {
            return aVar;
        }
        com.liulishuo.filedownloader.e.d.c(this, "initial FileDownloader manager with the customize connection count adapter: %s", aVar);
        return aVar;
    }

    public d f() {
        if (this.a == null) {
            return g();
        }
        d dVar = this.a.f;
        if (dVar == null) {
            return g();
        }
        if (!com.liulishuo.filedownloader.e.d.a) {
            return dVar;
        }
        com.liulishuo.filedownloader.e.d.c(this, "initial FileDownloader manager with the customize id generator: %s", dVar);
        return dVar;
    }

    private d g() {
        return new b();
    }

    private int h() {
        return com.liulishuo.filedownloader.e.e.a().e;
    }

    private com.liulishuo.filedownloader.b.a i() {
        return new com.liulishuo.filedownloader.b.c();
    }

    private e j() {
        return new com.liulishuo.filedownloader.d.b.a();
    }

    private b k() {
        return new com.liulishuo.filedownloader.a.c.b();
    }

    private com.liulishuo.filedownloader.e.c.a l() {
        return new com.liulishuo.filedownloader.a.a();
    }
}
