package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: NetFileFetch */
public class bh implements com.amap.api.mapcore.util.hr.a {
    bi a = null;
    long b = 0;
    long c = 0;
    long d;
    boolean e = true;
    bc f;
    long g = 0;
    a h;
    private Context i;
    private bm j;
    private String k;
    private hr l;
    private bd m;

    /* compiled from: NetFileFetch */
    public interface a {
        void d();
    }

    public bh(bi biVar, String str, Context context, bm bmVar) throws IOException {
        this.f = bc.a(context.getApplicationContext());
        this.a = biVar;
        this.i = context;
        this.k = str;
        this.j = bmVar;
        g();
    }

    private void f() throws IOException {
        bn bnVar = new bn(this.k);
        bnVar.a(1800000);
        bnVar.b(1800000);
        this.l = new hr(bnVar, this.b, this.c);
        this.m = new bd(this.a.b() + File.separator + this.a.c(), this.b);
    }

    private void g() {
        File file = new File(this.a.b() + this.a.c());
        if (file.exists()) {
            this.e = false;
            this.b = file.length();
            try {
                this.d = b();
                this.c = this.d;
            } catch (IOException e2) {
                if (this.j != null) {
                    this.j.a(com.amap.api.mapcore.util.bm.a.file_io_exception);
                }
            }
        } else {
            this.b = 0;
            this.c = 0;
        }
    }

    public void a() {
        try {
            if (ee.c(this.i)) {
                i();
                if (fq.a == 1) {
                    if (!h()) {
                        this.e = true;
                    }
                    if (this.e) {
                        this.d = b();
                        if (this.d == -1) {
                            bk.a("File Length is not known!");
                        } else if (this.d == -2) {
                            bk.a("File is not access!");
                        } else {
                            this.c = this.d;
                        }
                        this.b = 0;
                    }
                    if (this.j != null) {
                        this.j.n();
                    }
                    if (this.b >= this.c) {
                        e();
                        return;
                    }
                    f();
                    this.l.a(this);
                } else if (this.j != null) {
                    this.j.a(com.amap.api.mapcore.util.bm.a.amap_exception);
                }
            } else if (this.j != null) {
                this.j.a(com.amap.api.mapcore.util.bm.a.network_exception);
            }
        } catch (AMapException e2) {
            gf.b((Throwable) e2, "SiteFileFetch", "download");
            if (this.j != null) {
                this.j.a(com.amap.api.mapcore.util.bm.a.amap_exception);
            }
        } catch (IOException e3) {
            if (this.j != null) {
                this.j.a(com.amap.api.mapcore.util.bm.a.file_io_exception);
            }
        }
    }

    private boolean h() {
        if (new File(this.a.b() + File.separator + this.a.c()).length() < 10) {
            return false;
        }
        return true;
    }

    private void i() throws AMapException {
        if (fq.a != 1) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < 3) {
                    try {
                        if (!fq.a(this.i, ee.e())) {
                            i2 = i3 + 1;
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        gf.b(th, "SiteFileFetch", "authOffLineDownLoad");
                        ThrowableExtension.printStackTrace(th);
                    }
                } else {
                    return;
                }
            }
        }
    }

    public long b() throws IOException {
        int i2;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.a.a()).openConnection();
        httpURLConnection.setRequestProperty("User-Agent", g.c);
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode >= 400) {
            a(responseCode);
            return -2;
        }
        int i3 = 1;
        while (true) {
            String headerFieldKey = httpURLConnection.getHeaderFieldKey(i3);
            if (headerFieldKey == null) {
                i2 = -1;
                break;
            } else if (headerFieldKey.equalsIgnoreCase("Content-Length")) {
                i2 = Integer.parseInt(httpURLConnection.getHeaderField(headerFieldKey));
                break;
            } else {
                i3++;
            }
        }
        return (long) i2;
    }

    private void j() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.a != null && currentTimeMillis - this.g > 500) {
            k();
            this.g = currentTimeMillis;
            a(this.b);
        }
    }

    private void k() {
        this.f.a(this.a.e(), this.a.d(), this.d, this.b, this.c);
    }

    private void a(long j2) {
        if (this.d > 0 && this.j != null) {
            this.j.a(this.d, j2);
            this.g = System.currentTimeMillis();
        }
    }

    private void a(int i2) {
    }

    public void c() {
        if (this.l != null) {
            this.l.a();
        }
    }

    public void d() {
        if (this.j != null) {
            this.j.p();
        }
        k();
    }

    public void e() {
        j();
        if (this.j != null) {
            this.j.o();
        }
        if (this.m != null) {
            this.m.a();
        }
        if (this.h != null) {
            this.h.d();
        }
    }

    public void a(Throwable th) {
        if (this.j != null) {
            this.j.a(com.amap.api.mapcore.util.bm.a.network_exception);
        }
        if (!(th instanceof IOException) && this.m != null) {
            this.m.a();
        }
    }

    public void a(byte[] bArr, long j2) {
        try {
            this.m.a(bArr);
            this.b = j2;
            j();
        } catch (IOException e2) {
            ThrowableExtension.printStackTrace(e2);
            gf.b((Throwable) e2, "fileAccessI", "fileAccessI.write(byte[] data)");
            if (this.j != null) {
                this.j.a(com.amap.api.mapcore.util.bm.a.file_io_exception);
            }
            if (this.l != null) {
                this.l.a();
            }
        }
    }

    public void a(a aVar) {
        this.h = aVar;
    }
}
