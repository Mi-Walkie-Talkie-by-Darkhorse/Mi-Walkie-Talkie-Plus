package com.ifengyu.intercom.g.e;

import androidx.annotation.NonNull;
import com.ifengyu.intercom.g.d.b;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.library.account.UserInfo;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* compiled from: RequestCall.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private c f5278a;

    /* renamed from: b  reason: collision with root package name */
    private Request f5279b;

    /* renamed from: c  reason: collision with root package name */
    private Call f5280c;
    private long d;
    private long e;
    private long f;
    private OkHttpClient g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestCall.java */
    /* loaded from: classes2.dex */
    public class a implements Interceptor {
        a(f fVar) {
        }

        @Override // okhttp3.Interceptor
        @NonNull
        public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
            Request request = chain.request();
            UserInfo c2 = com.ifengyu.library.account.a.c();
            String str = c2 == null ? "" : c2.h;
            String valueOf = String.valueOf(System.currentTimeMillis());
            return chain.proceed(request.newBuilder().addHeader("userId", String.valueOf(com.ifengyu.library.account.a.b())).addHeader("time", valueOf).addHeader("sign", a0.b(str + valueOf)).build());
        }
    }

    public f(c cVar) {
        this.f5278a = cVar;
    }

    public f a(long j) {
        this.f = j;
        return this;
    }

    public f b(long j) {
        this.d = j;
        return this;
    }

    public f c(long j) {
        this.e = j;
        return this;
    }

    public c d() {
        return this.f5278a;
    }

    private Request c(b bVar) {
        return this.f5278a.a(bVar);
    }

    public Call a(b bVar) {
        this.f5279b = c(bVar);
        if (this.d > 0 || this.e > 0 || this.f > 0) {
            long j = this.d;
            long j2 = 10000;
            if (j <= 0) {
                j = 10000;
            }
            this.d = j;
            long j3 = this.e;
            if (j3 <= 0) {
                j3 = 10000;
            }
            this.e = j3;
            long j4 = this.f;
            if (j4 > 0) {
                j2 = j4;
            }
            this.f = j2;
            OkHttpClient.Builder connectTimeout = com.ifengyu.intercom.g.b.d().b().newBuilder().readTimeout(this.d, TimeUnit.MILLISECONDS).writeTimeout(this.e, TimeUnit.MILLISECONDS).connectTimeout(this.f, TimeUnit.MILLISECONDS);
            connectTimeout.addInterceptor(new a(this));
            OkHttpClient build = connectTimeout.build();
            this.g = build;
            this.f5280c = build.newCall(this.f5279b);
        } else {
            this.f5280c = com.ifengyu.intercom.g.b.d().b().newCall(this.f5279b);
        }
        return this.f5280c;
    }

    public void b(b bVar) {
        a(bVar);
        if (bVar != null) {
            bVar.a(this.f5279b, d().d());
        }
        com.ifengyu.intercom.g.b.d().a(this, bVar);
    }

    public Call c() {
        return this.f5280c;
    }

    public Response b() throws IOException {
        a((b) null);
        return this.f5280c.execute();
    }

    public void a() {
        Call call = this.f5280c;
        if (call != null) {
            call.cancel();
        }
    }
}
