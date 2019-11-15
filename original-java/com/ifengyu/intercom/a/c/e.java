package com.ifengyu.intercom.a.c;

import com.ifengyu.intercom.a.b.b;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* compiled from: RequestCall */
public class e {
    private c a;
    private Request b;
    private Call c;
    private long d;
    private long e;
    private long f;
    private OkHttpClient g;

    public e(c cVar) {
        this.a = cVar;
    }

    public e a(long j) {
        this.d = j;
        return this;
    }

    public e b(long j) {
        this.e = j;
        return this;
    }

    public e c(long j) {
        this.f = j;
        return this;
    }

    public Call a(b bVar) {
        long j;
        long j2 = FileTracerConfig.DEF_FLUSH_INTERVAL;
        this.b = c(bVar);
        if (this.d > 0 || this.e > 0 || this.f > 0) {
            this.d = this.d > 0 ? this.d : 10000;
            if (this.e > 0) {
                j = this.e;
            } else {
                j = 10000;
            }
            this.e = j;
            if (this.f > 0) {
                j2 = this.f;
            }
            this.f = j2;
            this.g = com.ifengyu.intercom.a.b.a().c().newBuilder().readTimeout(this.d, TimeUnit.MILLISECONDS).writeTimeout(this.e, TimeUnit.MILLISECONDS).connectTimeout(this.f, TimeUnit.MILLISECONDS).build();
            this.c = this.g.newCall(this.b);
        } else {
            this.c = com.ifengyu.intercom.a.b.a().c().newCall(this.b);
        }
        return this.c;
    }

    private Request c(b bVar) {
        return this.a.a(bVar);
    }

    public void b(b bVar) {
        a(bVar);
        if (bVar != null) {
            bVar.a(this.b, b().d());
        }
        com.ifengyu.intercom.a.b.a().a(this, bVar);
    }

    public Call a() {
        return this.c;
    }

    public c b() {
        return this.a;
    }

    public Response c() throws IOException {
        a((b) null);
        return this.c.execute();
    }
}
