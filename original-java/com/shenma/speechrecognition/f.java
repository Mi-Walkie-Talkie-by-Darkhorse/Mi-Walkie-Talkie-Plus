package com.shenma.speechrecognition;

import android.os.Build.VERSION;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

class f implements Comparable {
    private final Integer a;
    private final byte[] b;
    private final Integer c;
    private HttpURLConnection d;

    public f(int i, byte[] bArr, int i2) {
        this.a = Integer.valueOf(i);
        this.b = new byte[i2];
        System.arraycopy(bArr, 0, this.b, 0, i2);
        this.c = Integer.valueOf(i2);
    }

    /* renamed from: a */
    public int compareTo(f fVar) {
        return Math.abs(this.a.intValue()) - Math.abs(fVar.a.intValue());
    }

    public Integer a() {
        return this.a;
    }

    public void a(String str) {
        aa.a("build http.", new Object[0]);
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.d = (HttpURLConnection) new URL(str).openConnection();
            this.d.setDoInput(true);
            this.d.setDoOutput(true);
            this.d.setRequestMethod("POST");
            this.d.setUseCaches(false);
            this.d.setInstanceFollowRedirects(true);
            this.d.addRequestProperty("Accept-Encoding", "gzip");
            if (af.a().c()) {
                this.d.setRequestProperty("Cookie", af.a().b());
            }
            this.d.setConnectTimeout(5000);
            this.d.setReadTimeout(8000);
            if (VERSION.SDK_INT < 8) {
                this.d.setRequestProperty("Connection", "close");
            }
            this.d.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            this.d.connect();
            aa.a("The %d-th packet build http %dms.", this.a, Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        } catch (MalformedURLException e) {
            aa.a(e, "URL create failure.", new Object[0]);
        } catch (IOException e2) {
            aa.a(e2, "URL Connection create failure.", new Object[0]);
        }
    }

    public byte[] b() {
        return this.b;
    }

    public Integer c() {
        return this.c;
    }

    public HttpURLConnection d() {
        return this.d;
    }
}
