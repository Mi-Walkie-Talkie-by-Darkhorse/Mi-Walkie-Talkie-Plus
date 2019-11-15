package com.loopj.android.http;

import android.os.SystemClock;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

/* compiled from: RetryHandler */
class j implements HttpRequestRetryHandler {
    private static final HashSet<Class<?>> a = new HashSet<>();
    private static final HashSet<Class<?>> b = new HashSet<>();
    private final int c;
    private final int d;

    static {
        a.add(NoHttpResponseException.class);
        a.add(UnknownHostException.class);
        a.add(SocketException.class);
        b.add(InterruptedIOException.class);
        b.add(SSLException.class);
    }

    public j(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        boolean z = true;
        Boolean bool = (Boolean) httpContext.getAttribute(ExecutionContext.HTTP_REQ_SENT);
        boolean z2 = bool != null && bool.booleanValue();
        if (i > this.c) {
            z = false;
        } else if (!a(a, iOException)) {
            if (a(b, iOException)) {
                z = false;
            } else if (!z2) {
            }
        }
        if (z && ((HttpUriRequest) httpContext.getAttribute(ExecutionContext.HTTP_REQUEST)) == null) {
            return false;
        }
        if (z) {
            SystemClock.sleep((long) this.d);
        } else {
            ThrowableExtension.printStackTrace(iOException);
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public boolean a(HashSet<Class<?>> hashSet, Throwable th) {
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((Class) it.next()).isInstance(th)) {
                return true;
            }
        }
        return false;
    }
}
