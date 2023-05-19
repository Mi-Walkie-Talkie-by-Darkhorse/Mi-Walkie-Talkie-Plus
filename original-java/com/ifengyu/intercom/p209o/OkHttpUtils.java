package com.ifengyu.intercom.p209o;

import com.ifengyu.intercom.p209o.p210b.GetBuilder;
import com.ifengyu.intercom.p209o.p211c.AbstractC4132a;
import com.ifengyu.intercom.p209o.p212d.RequestCall;
import com.ifengyu.intercom.p209o.p213e.Platform;
import java.io.IOException;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* renamed from: com.ifengyu.intercom.o.a */
/* loaded from: classes2.dex */
public class OkHttpUtils {

    /* renamed from: c */
    private static volatile OkHttpUtils f14392c;

    /* renamed from: a */
    private OkHttpClient f14393a;

    /* renamed from: b */
    private Platform f14394b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpUtils.java */
    /* renamed from: com.ifengyu.intercom.o.a$a */
    /* loaded from: classes2.dex */
    public class C4129a implements Callback {

        /* renamed from: a */
        final /* synthetic */ AbstractC4132a f14395a;

        /* renamed from: b */
        final /* synthetic */ int f14396b;

        C4129a(AbstractC4132a abstractC4132a, int i) {
            this.f14395a = abstractC4132a;
            this.f14396b = i;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            OkHttpUtils.this.m11348g(call, iOException, this.f14395a, this.f14396b);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            try {
                try {
                } catch (Exception e) {
                    OkHttpUtils.this.m11348g(call, e, this.f14395a, this.f14396b);
                    if (response.body() == null) {
                        return;
                    }
                }
                if (call.isCanceled()) {
                    OkHttpUtils.this.m11348g(call, new IOException("Canceled!"), this.f14395a, this.f14396b);
                    if (response.body() != null) {
                        response.body().close();
                    }
                } else if (!this.f14395a.m11340g(response, this.f14396b)) {
                    OkHttpUtils okHttpUtils = OkHttpUtils.this;
                    okHttpUtils.m11348g(call, new IOException("request failed , reponse's code is : " + response.code()), this.f14395a, this.f14396b);
                    if (response.body() != null) {
                        response.body().close();
                    }
                } else {
                    OkHttpUtils.this.m11347h(this.f14395a.mo11336f(response, this.f14396b), this.f14395a, this.f14396b);
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
    /* renamed from: com.ifengyu.intercom.o.a$b */
    /* loaded from: classes2.dex */
    public class RunnableC4130b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC4132a f14398a;

        /* renamed from: b */
        final /* synthetic */ Call f14399b;

        /* renamed from: c */
        final /* synthetic */ Exception f14400c;

        /* renamed from: d */
        final /* synthetic */ int f14401d;

        RunnableC4130b(OkHttpUtils okHttpUtils, AbstractC4132a abstractC4132a, Call call, Exception exc, int i) {
            this.f14398a = abstractC4132a;
            this.f14399b = call;
            this.f14400c = exc;
            this.f14401d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f14398a.mo9819d(this.f14399b, this.f14400c, this.f14401d);
            this.f14398a.m11342b(this.f14401d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpUtils.java */
    /* renamed from: com.ifengyu.intercom.o.a$c */
    /* loaded from: classes2.dex */
    public class RunnableC4131c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC4132a f14402a;

        /* renamed from: b */
        final /* synthetic */ Object f14403b;

        /* renamed from: c */
        final /* synthetic */ int f14404c;

        RunnableC4131c(OkHttpUtils okHttpUtils, AbstractC4132a abstractC4132a, Object obj, int i) {
            this.f14402a = abstractC4132a;
            this.f14403b = obj;
            this.f14404c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f14402a.mo9818e(this.f14403b, this.f14404c);
            this.f14402a.m11342b(this.f14404c);
        }
    }

    public OkHttpUtils(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            this.f14393a = new OkHttpClient();
        } else {
            this.f14393a = okHttpClient;
        }
        this.f14394b = Platform.m11317d();
    }

    /* renamed from: b */
    public static GetBuilder m11353b() {
        return new GetBuilder();
    }

    /* renamed from: d */
    public static OkHttpUtils m11351d() {
        return m11349f(null);
    }

    /* renamed from: f */
    public static OkHttpUtils m11349f(OkHttpClient okHttpClient) {
        if (f14392c == null) {
            synchronized (OkHttpUtils.class) {
                if (f14392c == null) {
                    f14392c = new OkHttpUtils(okHttpClient);
                }
            }
        }
        return f14392c;
    }

    /* renamed from: a */
    public void m11354a(RequestCall requestCall, AbstractC4132a abstractC4132a) {
        if (abstractC4132a == null) {
            abstractC4132a = AbstractC4132a.f14410a;
        }
        requestCall.m11323d().enqueue(new C4129a(abstractC4132a, requestCall.m11322e().m11329f()));
    }

    /* renamed from: c */
    public Executor m11352c() {
        return this.f14394b.mo11316a();
    }

    /* renamed from: e */
    public OkHttpClient m11350e() {
        return this.f14393a;
    }

    /* renamed from: g */
    public void m11348g(Call call, Exception exc, AbstractC4132a abstractC4132a, int i) {
        if (abstractC4132a == null) {
            return;
        }
        this.f14394b.m11319b(new RunnableC4130b(this, abstractC4132a, call, exc, i));
    }

    /* renamed from: h */
    public void m11347h(Object obj, AbstractC4132a abstractC4132a, int i) {
        if (abstractC4132a == null) {
            return;
        }
        this.f14394b.m11319b(new RunnableC4131c(this, abstractC4132a, obj, i));
    }
}
