package com.xiaomi.mistatistic.sdk;

import android.os.Build.VERSION;
import android.os.SystemClock;
import com.xiaomi.mistatistic.sdk.controller.HttpEventFilter;
import com.xiaomi.mistatistic.sdk.controller.g;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import com.xiaomi.mistatistic.sdk.network.c;
import com.xiaomi.mistatistic.sdk.network.d;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.HttpHost;
import org.json.JSONException;

public class URLStatsRecorder {
    /* access modifiers changed from: private */
    public static final Map<String, URLStreamHandler> a = new HashMap();
    private static final List<String> b = new ArrayList();
    private static final List<String> c = new ArrayList();
    private static final List<String> d = new ArrayList();
    private static final List<String> e = new ArrayList();
    private static Boolean f = null;

    static class a extends URLStreamHandler {
        private URLStreamHandler a;

        public a(URLStreamHandler uRLStreamHandler) {
            this.a = uRLStreamHandler;
        }

        /* access modifiers changed from: protected */
        public URLConnection openConnection(URL url) throws IOException {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Method declaredMethod = URLStreamHandler.class.getDeclaredMethod("openConnection", new Class[]{URL.class});
                declaredMethod.setAccessible(true);
                URLConnection uRLConnection = (URLConnection) declaredMethod.invoke(this.a, new Object[]{url});
                if (uRLConnection instanceof HttpsURLConnection) {
                    d dVar = new d((HttpsURLConnection) uRLConnection);
                    dVar.a(elapsedRealtime);
                    return dVar;
                } else if (!(uRLConnection instanceof HttpURLConnection)) {
                    return uRLConnection;
                } else {
                    c cVar = new c((HttpURLConnection) uRLConnection);
                    cVar.a(elapsedRealtime);
                    return cVar;
                }
            } catch (Exception e) {
                g.a().a(new HttpEvent(url.toString(), e.getClass().getSimpleName()));
                throw new IOException();
            }
        }

        /* access modifiers changed from: protected */
        public URLConnection openConnection(URL url, Proxy proxy) throws IOException {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Method declaredMethod = URLStreamHandler.class.getDeclaredMethod("openConnection", new Class[]{URL.class, Proxy.class});
                declaredMethod.setAccessible(true);
                URLConnection uRLConnection = (URLConnection) declaredMethod.invoke(this.a, new Object[]{url, proxy});
                if (uRLConnection instanceof HttpsURLConnection) {
                    d dVar = new d((HttpsURLConnection) uRLConnection);
                    dVar.a(elapsedRealtime);
                    return dVar;
                } else if (!(uRLConnection instanceof HttpURLConnection)) {
                    return uRLConnection;
                } else {
                    c cVar = new c((HttpURLConnection) uRLConnection);
                    cVar.a(elapsedRealtime);
                    return cVar;
                }
            } catch (Exception e) {
                g.a().a(new HttpEvent(url.toString(), e.getClass().getSimpleName()));
                throw new IOException();
            }
        }
    }

    static {
        b.add(HttpPostBodyUtil.FILE);
        b.add("ftp");
        b.add(HttpHost.DEFAULT_SCHEME_NAME);
        b.add("https");
        b.add("jar");
        c.add(HttpHost.DEFAULT_SCHEME_NAME);
    }

    public static boolean enableAutoRecord() {
        Field declaredField;
        if (f != null) {
            return f.booleanValue();
        }
        try {
            if (!b.isEmpty()) {
                for (String url : b) {
                    new URL(url, "www.xiaomi.com", "");
                }
                if (VERSION.SDK_INT >= 24) {
                    declaredField = URL.class.getDeclaredField("handlers");
                } else {
                    declaredField = URL.class.getDeclaredField("streamHandlers");
                }
                declaredField.setAccessible(true);
                Hashtable hashtable = (Hashtable) declaredField.get(null);
                for (String str : b) {
                    a.put(str, (URLStreamHandler) hashtable.get(str));
                }
                URL.setURLStreamHandlerFactory(new URLStreamHandlerFactory() {
                    public URLStreamHandler createURLStreamHandler(String str) {
                        if (URLStatsRecorder.a.containsKey(str)) {
                            return new a((URLStreamHandler) URLStatsRecorder.a.get(str));
                        }
                        return null;
                    }
                });
                f = Boolean.valueOf(true);
            }
        } catch (Throwable th) {
            f = Boolean.valueOf(false);
            h.a("failed to enable url interceptor", th);
        }
        return f.booleanValue();
    }

    public static void setEventFilter(HttpEventFilter httpEventFilter) {
        g.a().a(httpEventFilter);
    }

    public static void addHttpEvent(HttpEvent httpEvent) {
        g.a().a(httpEvent);
    }

    public static void dump() {
        List<HttpEvent> b2 = g.a().b();
        if (b2 != null && b2.size() > 0) {
            for (HttpEvent httpEvent : b2) {
                try {
                    System.out.println("EVENT: " + httpEvent.getUrl() + ": " + httpEvent.toJSON().toString());
                } catch (JSONException e2) {
                }
            }
        }
    }

    public static URLConnection wrapURLConnection(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            return new c((HttpURLConnection) uRLConnection);
        }
        if (uRLConnection instanceof HttpsURLConnection) {
            return new d((HttpsURLConnection) uRLConnection);
        }
        return uRLConnection;
    }
}
