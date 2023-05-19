package com.ifengyu.intercom.p209o.p211c;

import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;

/* compiled from: Callback.java */
/* renamed from: com.ifengyu.intercom.o.c.a */
/* loaded from: classes2.dex */
public abstract class AbstractC4132a<T> {

    /* renamed from: a */
    public static AbstractC4132a f14410a = new C4133a();

    /* compiled from: Callback.java */
    /* renamed from: com.ifengyu.intercom.o.c.a$a */
    /* loaded from: classes2.dex */
    class C4133a extends AbstractC4132a {
        C4133a() {
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: d */
        public void mo9819d(Call call, Exception exc, int i) {
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: e */
        public void mo9818e(Object obj, int i) {
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: f */
        public Object mo11336f(Response response, int i) throws Exception {
            return null;
        }
    }

    /* renamed from: a */
    public void m11343a(float f, long j, int i) {
    }

    /* renamed from: b */
    public void m11342b(int i) {
    }

    /* renamed from: c */
    public void m11341c(Request request, int i) {
    }

    /* renamed from: d */
    public abstract void mo9819d(Call call, Exception exc, int i);

    /* renamed from: e */
    public abstract void mo9818e(T t, int i);

    /* renamed from: f */
    public abstract T mo11336f(Response response, int i) throws Exception;

    /* renamed from: g */
    public boolean m11340g(Response response, int i) {
        return response.isSuccessful();
    }
}
