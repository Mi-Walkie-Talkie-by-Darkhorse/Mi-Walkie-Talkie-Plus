package com.ifengyu.intercom.g;

import com.ifengyu.intercom.g.c.d;
import com.ifengyu.intercom.g.e.f;
import java.io.IOException;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* compiled from: OkHttpUtils.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static volatile b f5233c;

    /* renamed from: a  reason: collision with root package name */
    private OkHttpClient f5234a;

    /* renamed from: b  reason: collision with root package name */
    private com.ifengyu.intercom.g.f.c f5235b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpUtils.java */
    /* loaded from: classes.dex */
    public class a implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.g.d.b f5236a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f5237b;

        a(com.ifengyu.intercom.g.d.b bVar, int i) {
            this.f5236a = bVar;
            this.f5237b = i;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            b.this.a(call, iOException, this.f5236a, this.f5237b);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            try {
                try {
                } catch (Exception e) {
                    b.this.a(call, e, this.f5236a, this.f5237b);
                    if (response.body() == null) {
                        return;
                    }
                }
                if (call.isCanceled()) {
                    b.this.a(call, new IOException("Canceled!"), this.f5236a, this.f5237b);
                    if (response.body() != null) {
                        response.body().close();
                    }
                } else if (!this.f5236a.b(response, this.f5237b)) {
                    b bVar = b.this;
                    bVar.a(call, new IOException("request failed , reponse's code is : " + response.code()), this.f5236a, this.f5237b);
                    if (response.body() != null) {
                        response.body().close();
                    }
                } else {
                    b.this.a(this.f5236a.a(response, this.f5237b), this.f5236a, this.f5237b);
                    if (response.body() == null) {
                        return;
                    }
                    response.body().close();
                }
            } catch (Throwable th) {
                if (response.body() != null) {
                    response.body().close();
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpUtils.java */
    /* renamed from: com.ifengyu.intercom.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0146b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.g.d.b f5239a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Call f5240b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Exception f5241c;
        final /* synthetic */ int d;

        RunnableC0146b(b bVar, com.ifengyu.intercom.g.d.b bVar2, Call call, Exception exc, int i) {
            this.f5239a = bVar2;
            this.f5240b = call;
            this.f5241c = exc;
            this.d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5239a.a(this.f5240b, this.f5241c, this.d);
            this.f5239a.a(this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpUtils.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.g.d.b f5242a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f5243b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f5244c;

        c(b bVar, com.ifengyu.intercom.g.d.b bVar2, Object obj, int i) {
            this.f5242a = bVar2;
            this.f5243b = obj;
            this.f5244c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5242a.a((com.ifengyu.intercom.g.d.b) this.f5243b, this.f5244c);
            this.f5242a.a(this.f5244c);
        }
    }

    public b(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            this.f5234a = new OkHttpClient();
        } else {
            this.f5234a = okHttpClient;
        }
        this.f5235b = com.ifengyu.intercom.g.f.c.c();
    }

    public static b a(OkHttpClient okHttpClient) {
        if (f5233c == null) {
            synchronized (b.class) {
                if (f5233c == null) {
                    f5233c = new b(okHttpClient);
                }
            }
        }
        return f5233c;
    }

    public static com.ifengyu.intercom.g.c.a c() {
        return new com.ifengyu.intercom.g.c.a();
    }

    public static b d() {
        return a(null);
    }

    public static com.ifengyu.intercom.g.c.c e() {
        return new com.ifengyu.intercom.g.c.c();
    }

    public static d f() {
        return new d();
    }

    public OkHttpClient b() {
        return this.f5234a;
    }

    public Executor a() {
        return this.f5235b.a();
    }

    public void a(f fVar, com.ifengyu.intercom.g.d.b bVar) {
        if (bVar == null) {
            bVar = com.ifengyu.intercom.g.d.b.f5254a;
        }
        fVar.c().enqueue(new a(bVar, fVar.d().d()));
    }

    public void a(Call call, Exception exc, com.ifengyu.intercom.g.d.b bVar, int i) {
        if (bVar != null) {
            this.f5235b.a(new RunnableC0146b(this, bVar, call, exc, i));
        }
    }

    public void a(Object obj, com.ifengyu.intercom.g.d.b bVar, int i) {
        if (bVar != null) {
            this.f5235b.a(new c(this, bVar, obj, i));
        }
    }
}
