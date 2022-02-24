package com.ifengyu.intercom.g.d;

import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;

/* compiled from: Callback.java */
/* loaded from: classes2.dex */
public abstract class b<T> {

    /* renamed from: a  reason: collision with root package name */
    public static b f5254a = new a();

    /* compiled from: Callback.java */
    /* loaded from: classes2.dex */
    static class a extends b {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public Object a(Response response, int i) throws Exception {
            return null;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Object obj, int i) {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
        }
    }

    public abstract T a(Response response, int i) throws Exception;

    public void a(float f, long j, int i) {
    }

    public void a(int i) {
    }

    public abstract void a(T t, int i);

    public abstract void a(Call call, Exception exc, int i);

    public void a(Request request, int i) {
    }

    public boolean b(Response response, int i) {
        return response.isSuccessful();
    }
}
