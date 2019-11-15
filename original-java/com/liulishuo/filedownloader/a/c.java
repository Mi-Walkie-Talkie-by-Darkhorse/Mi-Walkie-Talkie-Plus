package com.liulishuo.filedownloader.a;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* compiled from: FileDownloadUrlConnection */
public class c implements b {
    protected URLConnection a;

    /* compiled from: FileDownloadUrlConnection */
    public static class a {
        /* access modifiers changed from: private */
        public Proxy a;
        /* access modifiers changed from: private */
        public Integer b;
        /* access modifiers changed from: private */
        public Integer c;
    }

    /* compiled from: FileDownloadUrlConnection */
    public static class b implements com.liulishuo.filedownloader.e.c.b {
        private final a a;

        public b() {
            this(null);
        }

        public b(a aVar) {
            this.a = aVar;
        }

        public b a(String str) throws IOException {
            return new c(str, this.a);
        }
    }

    public c(String str, a aVar) throws IOException {
        this(new URL(str), aVar);
    }

    public c(URL url, a aVar) throws IOException {
        if (aVar == null || aVar.a == null) {
            this.a = url.openConnection();
        } else {
            this.a = url.openConnection(aVar.a);
        }
        if (aVar != null) {
            if (aVar.b != null) {
                this.a.setReadTimeout(aVar.b.intValue());
            }
            if (aVar.c != null) {
                this.a.setConnectTimeout(aVar.c.intValue());
            }
        }
    }

    public void a(String str, String str2) {
        this.a.addRequestProperty(str, str2);
    }

    public boolean a(String str, long j) {
        return false;
    }

    public InputStream a() throws IOException {
        return this.a.getInputStream();
    }

    public Map<String, List<String>> b() {
        return this.a.getRequestProperties();
    }

    public Map<String, List<String>> c() {
        return this.a.getHeaderFields();
    }

    public String a(String str) {
        return this.a.getHeaderField(str);
    }

    public boolean b(String str) throws ProtocolException {
        if (!(this.a instanceof HttpURLConnection)) {
            return false;
        }
        ((HttpURLConnection) this.a).setRequestMethod(str);
        return true;
    }

    public void d() throws IOException {
        this.a.connect();
    }

    public int e() throws IOException {
        if (this.a instanceof HttpURLConnection) {
            return ((HttpURLConnection) this.a).getResponseCode();
        }
        return 0;
    }

    public void f() {
        try {
            this.a.getInputStream().close();
        } catch (IOException e) {
        }
    }
}
