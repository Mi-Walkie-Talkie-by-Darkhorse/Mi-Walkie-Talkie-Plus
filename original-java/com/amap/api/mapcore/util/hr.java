package com.amap.api.mapcore.util;

import java.net.Proxy;

/* compiled from: DownloadManager */
public class hr {
    private hs a;
    private hv b;

    /* compiled from: DownloadManager */
    public interface a {
        void a(Throwable th);

        void a(byte[] bArr, long j);

        void d();

        void e();
    }

    public hr(hv hvVar) {
        this(hvVar, 0, -1);
    }

    public hr(hv hvVar, long j, long j2) {
        Proxy proxy;
        this.b = hvVar;
        if (hvVar.j == null) {
            proxy = null;
        } else {
            proxy = hvVar.j;
        }
        this.a = new hs(this.b.h, this.b.i, proxy);
        this.a.b(j2);
        this.a.a(j);
    }

    public void a(a aVar) {
        this.a.a(this.b.c(), this.b.a(), this.b.b(), aVar);
    }

    public void a() {
        this.a.a();
    }
}
