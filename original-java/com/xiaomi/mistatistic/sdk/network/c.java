package com.xiaomi.mistatistic.sdk.network;

import android.os.SystemClock;
import android.text.TextUtils;
import com.amap.api.services.core.AMapException;
import com.xiaomi.mistatistic.sdk.controller.g;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;

/* compiled from: MIHttpConnection */
public class c extends HttpURLConnection {
    private String a = null;
    private long b = SystemClock.elapsedRealtime();
    private long c;
    private long d;
    private int e = -1;
    private boolean f = false;
    private String g = null;
    private f h;
    private e i;
    private HttpURLConnection j;

    public InputStream getErrorStream() {
        return this.j.getErrorStream();
    }

    public Permission getPermission() throws IOException {
        try {
            return this.j.getPermission();
        } catch (ProtocolException e2) {
            a((Exception) e2);
            throw e2;
        }
    }

    public String getRequestMethod() {
        return this.j.getRequestMethod();
    }

    public int getResponseCode() throws IOException {
        try {
            g();
            this.e = this.j.getResponseCode();
            h();
            return this.e;
        } catch (ProtocolException e2) {
            a((Exception) e2);
            throw e2;
        }
    }

    public String getResponseMessage() throws IOException {
        try {
            return this.j.getResponseMessage();
        } catch (ProtocolException e2) {
            a((Exception) e2);
            throw e2;
        }
    }

    public void setRequestMethod(String str) throws ProtocolException {
        try {
            this.j.setRequestMethod(str);
        } catch (ProtocolException e2) {
            a((Exception) e2);
            throw e2;
        }
    }

    public String getContentEncoding() {
        return this.j.getContentEncoding();
    }

    public boolean getInstanceFollowRedirects() {
        return this.j.getInstanceFollowRedirects();
    }

    public void setInstanceFollowRedirects(boolean z) {
        this.j.setInstanceFollowRedirects(z);
    }

    public long getHeaderFieldDate(String str, long j2) {
        return this.j.getHeaderFieldDate(str, j2);
    }

    public void setFixedLengthStreamingMode(long j2) {
        try {
            this.j.getClass().getDeclaredMethod("setFixedLengthStreamingMode", new Class[]{Long.TYPE}).invoke(this.j, new Object[]{Long.valueOf(j2)});
        } catch (Exception e2) {
            throw new UnsupportedOperationException(e2);
        }
    }

    public void setFixedLengthStreamingMode(int i2) {
        this.j.setFixedLengthStreamingMode(i2);
    }

    public void setChunkedStreamingMode(int i2) {
        this.j.setChunkedStreamingMode(i2);
    }

    public boolean getAllowUserInteraction() {
        return this.j.getAllowUserInteraction();
    }

    public Object getContent() throws IOException {
        try {
            return this.j.getContent();
        } catch (IOException e2) {
            a((Exception) e2);
            throw e2;
        }
    }

    public Object getContent(Class[] clsArr) throws IOException {
        try {
            return this.j.getContent(clsArr);
        } catch (IOException e2) {
            a((Exception) e2);
            throw e2;
        }
    }

    public int getContentLength() {
        return this.j.getContentLength();
    }

    public String getContentType() {
        return this.j.getContentType();
    }

    public long getDate() {
        return this.j.getDate();
    }

    public boolean getDefaultUseCaches() {
        return this.j.getDefaultUseCaches();
    }

    public boolean getDoInput() {
        return this.j.getDoInput();
    }

    public boolean getDoOutput() {
        return this.j.getDoOutput();
    }

    public long getExpiration() {
        return this.j.getExpiration();
    }

    public String getHeaderField(int i2) {
        return this.j.getHeaderField(i2);
    }

    public Map<String, List<String>> getHeaderFields() {
        return this.j.getHeaderFields();
    }

    public Map<String, List<String>> getRequestProperties() {
        return this.j.getRequestProperties();
    }

    public void addRequestProperty(String str, String str2) {
        this.j.addRequestProperty(str, str2);
    }

    public String getHeaderField(String str) {
        return this.j.getHeaderField(str);
    }

    public int getHeaderFieldInt(String str, int i2) {
        return this.j.getHeaderFieldInt(str, i2);
    }

    public String getHeaderFieldKey(int i2) {
        return this.j.getHeaderFieldKey(i2);
    }

    public long getIfModifiedSince() {
        return this.j.getIfModifiedSince();
    }

    public InputStream getInputStream() throws IOException {
        try {
            g();
            this.i = new e(this, this.j.getInputStream());
            h();
            d();
            return this.i;
        } catch (IOException e2) {
            e();
            a((Exception) e2);
            throw e2;
        }
    }

    public long getLastModified() {
        return this.j.getLastModified();
    }

    public OutputStream getOutputStream() throws IOException {
        try {
            g();
            this.h = new f(this, this.j.getOutputStream());
            h();
            d();
            return this.h;
        } catch (IOException e2) {
            e();
            a((Exception) e2);
            throw e2;
        }
    }

    public String getRequestProperty(String str) {
        return this.j.getRequestProperty(str);
    }

    public URL getURL() {
        return this.j.getURL();
    }

    public boolean getUseCaches() {
        return this.j.getUseCaches();
    }

    public void setAllowUserInteraction(boolean z) {
        this.j.setAllowUserInteraction(z);
    }

    public void setDefaultUseCaches(boolean z) {
        this.j.setDefaultUseCaches(z);
    }

    public void setDoInput(boolean z) {
        this.j.setDoInput(z);
    }

    public void setDoOutput(boolean z) {
        this.j.setDoOutput(z);
    }

    public void setIfModifiedSince(long j2) {
        this.j.setIfModifiedSince(j2);
    }

    public void setRequestProperty(String str, String str2) {
        if ("x-mistats-header".equals(str)) {
            this.a = str2;
        }
        this.j.setRequestProperty(str, str2);
    }

    public void setUseCaches(boolean z) {
        this.j.setUseCaches(z);
    }

    public void setConnectTimeout(int i2) {
        this.j.setConnectTimeout(i2);
    }

    public int getConnectTimeout() {
        return this.j.getConnectTimeout();
    }

    public void setReadTimeout(int i2) {
        this.j.setReadTimeout(i2);
    }

    public int getReadTimeout() {
        return this.j.getReadTimeout();
    }

    public String toString() {
        return this.j.toString();
    }

    public c(HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        this.j = httpURLConnection;
    }

    public void a(long j2) {
        this.b = j2;
    }

    public void disconnect() {
        this.j.disconnect();
        b();
    }

    public boolean usingProxy() {
        return this.j.usingProxy();
    }

    public void connect() throws IOException {
        try {
            this.j.connect();
        } catch (IOException e2) {
            a((Exception) e2);
            throw e2;
        }
    }

    public void a() {
        b();
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        if (!this.f) {
            this.f = true;
            HttpEvent httpEvent = new HttpEvent(getURL().toString(), SystemClock.elapsedRealtime() - this.b, (long) c(), f());
            httpEvent.setIp(this.g);
            httpEvent.setFirstPacketCost(this.d);
            httpEvent.setRequestId(this.a);
            g.a().a(httpEvent);
        }
    }

    private int c() {
        int i2;
        int i3 = 0;
        if (this.i != null) {
            i2 = this.i.a();
        } else {
            i2 = 0;
        }
        if (this.h != null) {
            i3 = this.h.a();
        }
        return i2 + AMapException.CODE_AMAP_ENGINE_RESPONSE_ERROR + i3 + getURL().toString().getBytes().length;
    }

    /* access modifiers changed from: 0000 */
    public void a(Exception exc) {
        if (!this.f) {
            this.f = true;
            HttpEvent httpEvent = new HttpEvent(getURL().toString(), -1, f(), exc.getClass().getSimpleName());
            httpEvent.setIp(this.g);
            httpEvent.setRequestId(this.a);
            g.a().a(httpEvent);
        }
    }

    private void d() {
        String host = this.url.getHost();
        if (this.g == null && host != null && !a(host)) {
            a.a().execute(new Runnable() {
                public void run() {
                    c.this.e();
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public synchronized void e() {
        if (TextUtils.isEmpty(this.g) && !this.f) {
            String host = this.url.getHost();
            if (this.g == null && host != null && !a(host)) {
                try {
                    this.g = InetAddress.getByName(host).getHostAddress();
                } catch (Exception e2) {
                    h.d("MHC", "can not get ip exception: " + e2.getMessage());
                }
            }
        }
        return;
    }

    private boolean a(String str) {
        if (b.a(str) || b.d(str)) {
            return true;
        }
        return false;
    }

    private int f() {
        int i2 = -1;
        if (this.e != i2) {
            return this.e;
        }
        try {
            return this.j.getResponseCode();
        } catch (Exception e2) {
            return i2;
        }
    }

    private synchronized void g() {
        if (this.c == 0) {
            this.c = SystemClock.elapsedRealtime();
            this.b = this.c;
        }
    }

    private synchronized void h() {
        if (this.d == 0 && this.c != 0) {
            this.d = SystemClock.elapsedRealtime() - this.c;
        }
    }
}
