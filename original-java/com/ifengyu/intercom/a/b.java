package com.ifengyu.intercom.a;

import com.ifengyu.intercom.a.a.a;
import com.ifengyu.intercom.a.c.e;
import com.ifengyu.intercom.a.d.c;
import java.io.IOException;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* compiled from: OkHttpUtils */
public class b {
    private static volatile b a;
    private OkHttpClient b;
    private c c;

    public b(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            this.b = new OkHttpClient();
        } else {
            this.b = okHttpClient;
        }
        this.c = c.a();
    }

    public static b a(OkHttpClient okHttpClient) {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new b(okHttpClient);
                }
            }
        }
        return a;
    }

    public static b a() {
        return a(null);
    }

    public Executor b() {
        return this.c.b();
    }

    public OkHttpClient c() {
        return this.b;
    }

    public static a d() {
        return new a();
    }

    public static com.ifengyu.intercom.a.a.c e() {
        return new com.ifengyu.intercom.a.a.c();
    }

    public void a(e eVar, final com.ifengyu.intercom.a.b.b bVar) {
        if (bVar == null) {
            bVar = com.ifengyu.intercom.a.b.b.a;
        }
        final int d = eVar.b().d();
        eVar.a().enqueue(new Callback() {
            public void onFailure(Call call, IOException iOException) {
                b.this.a(call, iOException, bVar, d);
            }

            public void onResponse(Call call, Response response) {
                try {
                    if (call.isCanceled()) {
                        b.this.a(call, new IOException("Canceled!"), bVar, d);
                        if (response.body() != null) {
                            response.body().close();
                        }
                    } else if (!bVar.c(response, d)) {
                        b.this.a(call, new IOException("request failed , reponse's code is : " + response.code()), bVar, d);
                        if (response.body() != null) {
                            response.body().close();
                        }
                    } else {
                        b.this.a(bVar.b(response, d), bVar, d);
                        if (response.body() != null) {
                            response.body().close();
                        }
                    }
                } catch (Exception e) {
                    b.this.a(call, e, bVar, d);
                    if (response.body() != null) {
                        response.body().close();
                    }
                } catch (Throwable th) {
                    if (response.body() != null) {
                        response.body().close();
                    }
                    throw th;
                }
            }
        });
    }

    public void a(Call call, Exception exc, com.ifengyu.intercom.a.b.b bVar, int i) {
        if (bVar != null) {
            final com.ifengyu.intercom.a.b.b bVar2 = bVar;
            final Call call2 = call;
            final Exception exc2 = exc;
            final int i2 = i;
            this.c.a(new Runnable() {
                public void run() {
                    bVar2.a(call2, exc2, i2);
                    bVar2.a(i2);
                }
            });
        }
    }

    public void a(final Object obj, final com.ifengyu.intercom.a.b.b bVar, final int i) {
        if (bVar != null) {
            this.c.a(new Runnable() {
                public void run() {
                    bVar.a(obj, i);
                    bVar.a(i);
                }
            });
        }
    }
}
