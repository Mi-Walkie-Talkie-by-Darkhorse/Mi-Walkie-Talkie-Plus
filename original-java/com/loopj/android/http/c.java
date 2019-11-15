package com.loopj.android.http;

import android.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

/* compiled from: AsyncHttpRequest */
public class c implements Runnable {
    private final AbstractHttpClient a;
    private final HttpContext b;
    private final HttpUriRequest c;
    private final i d;
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;

    public c(AbstractHttpClient abstractHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, i iVar) {
        this.a = abstractHttpClient;
        this.b = httpContext;
        this.c = httpUriRequest;
        this.d = iVar;
    }

    public void a(c cVar) {
    }

    public void b(c cVar) {
    }

    public void run() {
        if (!a()) {
            if (!this.i) {
                this.i = true;
                a(this);
            }
            if (!a()) {
                if (this.d != null) {
                    this.d.sendStartMessage();
                }
                if (!a()) {
                    try {
                        d();
                    } catch (IOException e2) {
                        if (a() || this.d == null) {
                            Log.e("AsyncHttpRequest", "makeRequestWithRetries returned error, but handler is null", e2);
                        } else {
                            this.d.sendFailureMessage(0, null, null, e2);
                        }
                    }
                    if (!a()) {
                        if (this.d != null) {
                            this.d.sendFinishMessage();
                        }
                        if (!a()) {
                            b(this);
                            this.h = true;
                        }
                    }
                }
            }
        }
    }

    private void c() throws IOException {
        if (!a()) {
            if (this.c.getURI().getScheme() == null) {
                throw new MalformedURLException("No valid URI scheme was provided");
            }
            HttpResponse execute = this.a.execute(this.c, this.b);
            if (!a() && this.d != null) {
                this.d.onPreProcessResponse(this.d, execute);
                if (!a()) {
                    this.d.sendResponseMessage(execute);
                    if (!a()) {
                        this.d.onPostProcessResponse(this.d, execute);
                    }
                }
            }
        }
    }

    private void d() throws IOException {
        boolean z;
        e = null;
        HttpRequestRetryHandler httpRequestRetryHandler = this.a.getHttpRequestRetryHandler();
        boolean z2 = true;
        while (z2) {
            try {
                c();
                return;
            } catch (UnknownHostException e2) {
                try {
                    IOException iOException = new IOException("UnknownHostException exception: " + e2.getMessage());
                    if (this.e > 0) {
                        int i2 = this.e + 1;
                        this.e = i2;
                        if (httpRequestRetryHandler.retryRequest(iOException, i2, this.b)) {
                            z = true;
                            IOException iOException2 = iOException;
                            z2 = z;
                            e = iOException2;
                        }
                    }
                    z = false;
                    IOException iOException22 = iOException;
                    z2 = z;
                    e = iOException22;
                } catch (Exception e3) {
                    Exception exc = e3;
                    Log.e("AsyncHttpRequest", "Unhandled exception origin cause", exc);
                    e = new IOException("Unhandled exception: " + exc.getMessage());
                }
            } catch (NullPointerException e4) {
                e = new IOException("NPE in HttpClient: " + e4.getMessage());
                int i3 = this.e + 1;
                this.e = i3;
                z2 = httpRequestRetryHandler.retryRequest(e, i3, this.b);
            } catch (IOException e5) {
                e = e5;
                if (!a()) {
                    int i4 = this.e + 1;
                    this.e = i4;
                    z2 = httpRequestRetryHandler.retryRequest(e, i4, this.b);
                } else {
                    return;
                }
            }
        }
        throw e;
        if (z2 && this.d != null) {
            this.d.sendRetryMessage(this.e);
        }
    }

    public boolean a() {
        if (this.f) {
            e();
        }
        return this.f;
    }

    private synchronized void e() {
        if (!this.h && this.f && !this.g) {
            this.g = true;
            if (this.d != null) {
                this.d.sendCancelMessage();
            }
        }
    }

    public boolean b() {
        return a() || this.h;
    }

    public boolean a(boolean z) {
        this.f = true;
        this.c.abort();
        return a();
    }
}
