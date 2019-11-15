package com.ifengyu.intercom.a.b;

import okhttp3.Call;
import okhttp3.Request;
import okhttp3.Response;

/* compiled from: Callback */
public abstract class b<T> {
    public static b a = new b() {
        public Object b(Response response, int i) throws Exception {
            return null;
        }

        public void a(Call call, Exception exc, int i) {
        }

        public void a(Object obj, int i) {
        }
    };

    public abstract void a(T t, int i);

    public abstract void a(Call call, Exception exc, int i);

    public abstract T b(Response response, int i) throws Exception;

    public void a(Request request, int i) {
    }

    public void a(int i) {
    }

    public void a(float f, long j, int i) {
    }

    public boolean c(Response response, int i) {
        return response.isSuccessful();
    }
}
