package com.amap.api.col.sl;

import java.net.Proxy;

/* compiled from: DownloadManager */
public final class dp {
    private dq a;
    private ds b;

    /* compiled from: DownloadManager */
    public interface a {
        void a(byte[] bArr, long j);

        void b();

        void c();

        void d();
    }

    public dp(ds dsVar) {
        this(dsVar, 0);
    }

    private dp(ds dsVar, byte b2) {
        Proxy proxy;
        this.b = dsVar;
        if (dsVar.h == null) {
            proxy = null;
        } else {
            proxy = dsVar.h;
        }
        this.a = new dq(this.b.f, this.b.g, proxy);
        this.a.b();
        this.a.a();
    }

    public final void a(a aVar) {
        this.a.a(this.b.f(), this.b.c(), this.b.b(), aVar);
    }
}
