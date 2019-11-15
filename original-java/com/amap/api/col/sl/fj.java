package com.amap.api.col.sl;

import android.content.Context;
import android.net.Proxy;
import android.os.Build.VERSION;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.concurrent.ExecutorService;

/* compiled from: DNSManager */
public final class fj {
    private static fj c = null;
    fm a = null;
    volatile int b = 0;
    private Object d = null;
    private Context e = null;
    private ExecutorService f = null;
    private boolean g = false;
    private boolean h = true;

    /* compiled from: DNSManager */
    class a implements Runnable {
        fm a = null;

        a(fm fmVar) {
            this.a = fmVar;
        }

        public final void run() {
            fj.this.b++;
            fj.this.b(this.a);
            fj.this.b--;
        }
    }

    private fj() {
    }

    private fj(Context context) {
        this.e = context;
        Context context2 = this.e;
        try {
            if (fp.x()) {
                bz a2 = fq.a("HttpDNS", "1.0.0");
                if (fv.a(context2, a2)) {
                    try {
                        this.d = cy.a(context2, a2, "com.autonavi.httpdns.HttpDnsManager", null, new Class[]{Context.class}, new Object[]{context2});
                    } catch (Throwable th) {
                    }
                    fv.a(context2, "HttpDns", this.d == null ? 0 : 1);
                }
            }
        } catch (Throwable th2) {
            fq.a(th2, "DNSManager", "initHttpDns");
        }
    }

    public static fj a(Context context) {
        if (c == null) {
            c = new fj(context);
        }
        return c;
    }

    private boolean c() {
        if (fp.x() && this.d != null && !e() && fx.b(this.e, "pref", "dns_faile_count_total", 0) < 2) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(com.amap.api.col.sl.fm r6) {
        /*
            r5 = this;
            r0 = 0
            r5.g = r0     // Catch:{ Throwable -> 0x007f }
            boolean r0 = r5.c()     // Catch:{ Throwable -> 0x007f }
            if (r0 != 0) goto L_0x000a
        L_0x0009:
            return
        L_0x000a:
            if (r6 == 0) goto L_0x0009
            r5.a = r6     // Catch:{ Throwable -> 0x007f }
            java.lang.String r0 = r6.f()     // Catch:{ Throwable -> 0x007f }
            r1 = 0
            java.lang.String r2 = ":"
            int r2 = r0.indexOf(r2)     // Catch:{ Throwable -> 0x007f }
            java.lang.String r1 = r0.substring(r1, r2)     // Catch:{ Throwable -> 0x007f }
            java.lang.String r2 = "https"
            boolean r1 = r1.equalsIgnoreCase(r2)     // Catch:{ Throwable -> 0x007f }
            if (r1 != 0) goto L_0x0009
            java.lang.String r1 = "http://abroad.apilocate.amap.com/mobile/binary"
            boolean r0 = r1.equals(r0)     // Catch:{ Throwable -> 0x007f }
            if (r0 != 0) goto L_0x0009
            java.lang.String r0 = r5.d()     // Catch:{ Throwable -> 0x007f }
            boolean r1 = r5.h     // Catch:{ Throwable -> 0x007f }
            if (r1 == 0) goto L_0x008a
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x007f }
            if (r1 == 0) goto L_0x008a
            r0 = 0
            r5.h = r0     // Catch:{ Throwable -> 0x007f }
            android.content.Context r0 = r5.e     // Catch:{ Throwable -> 0x007f }
            java.lang.String r1 = "ip"
            java.lang.String r2 = "last_ip"
            java.lang.String r3 = ""
            java.lang.String r0 = com.amap.api.col.sl.fx.a(r0, r1, r2, r3)     // Catch:{ Throwable -> 0x007f }
            r1 = r0
        L_0x004b:
            boolean r0 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x007f }
            if (r0 != 0) goto L_0x0009
            android.content.Context r0 = r5.e     // Catch:{ Throwable -> 0x007f }
            java.lang.String r2 = "ip"
            java.lang.String r3 = "last_ip"
            r4 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r2, r4)     // Catch:{ Throwable -> 0x0081 }
            android.content.SharedPreferences$Editor r0 = r0.edit()     // Catch:{ Throwable -> 0x0081 }
            r0.putString(r3, r1)     // Catch:{ Throwable -> 0x0081 }
            com.amap.api.col.sl.fx.a(r0)     // Catch:{ Throwable -> 0x0081 }
        L_0x0066:
            java.lang.String r0 = "http://apilocatesrc.amap.com/mobile/binary"
            java.lang.String r2 = "apilocatesrc.amap.com"
            java.lang.String r0 = r0.replace(r2, r1)     // Catch:{ Throwable -> 0x007f }
            r6.d = r0     // Catch:{ Throwable -> 0x007f }
            java.util.Map r0 = r6.c()     // Catch:{ Throwable -> 0x007f }
            java.lang.String r1 = "host"
            java.lang.String r2 = "apilocatesrc.amap.com"
            r0.put(r1, r2)     // Catch:{ Throwable -> 0x007f }
            r0 = 1
            r5.g = r0     // Catch:{ Throwable -> 0x007f }
            goto L_0x0009
        L_0x007f:
            r0 = move-exception
            goto L_0x0009
        L_0x0081:
            r0 = move-exception
            java.lang.String r2 = "SPUtil"
            java.lang.String r3 = "setPrefsInt"
            com.amap.api.col.sl.fq.a(r0, r2, r3)     // Catch:{ Throwable -> 0x007f }
            goto L_0x0066
        L_0x008a:
            r1 = r0
            goto L_0x004b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.fj.a(com.amap.api.col.sl.fm):void");
    }

    public final void a() {
        if (this.g) {
            fx.a(this.e, "pref", "dns_faile_count_total", 0);
        }
    }

    private String d() {
        if (c()) {
            try {
                return (String) ft.a(this.d, "getIpByHostAsync", "apilocatesrc.amap.com");
            } catch (Throwable th) {
                fv.a(this.e, "HttpDns");
            }
        }
        return null;
    }

    private boolean e() {
        int i;
        String str = null;
        try {
            if (VERSION.SDK_INT >= 14) {
                str = System.getProperty("http.proxyHost");
                String property = System.getProperty("http.proxyPort");
                if (property == null) {
                    property = "-1";
                }
                i = Integer.parseInt(property);
            } else {
                str = Proxy.getHost(this.e);
                i = Proxy.getPort(this.e);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            i = -1;
        }
        if (str == null || i == -1) {
            return false;
        }
        return true;
    }

    public final void b() {
        try {
            if (c() && this.b <= 5 && this.g) {
                if (this.f == null) {
                    this.f = cm.d();
                }
                if (!this.f.isShutdown()) {
                    this.f.submit(new a(this.a));
                }
            }
        } catch (Throwable th) {
        }
    }

    /* access modifiers changed from: 0000 */
    public final synchronized void b(fm fmVar) {
        try {
            fmVar.d = "http://apilocatesrc.amap.com/mobile/binary";
            long b2 = fx.b(this.e, "pref", "dns_faile_count_total", 0);
            if (b2 < 2) {
                dn.a();
                dn.a(fmVar, false);
                long j = b2 + 1;
                if (j >= 2) {
                    fw.a(this.e, "HttpDNS", "dns failed too much");
                }
                fx.a(this.e, "pref", "dns_faile_count_total", j);
            }
        } catch (Throwable th) {
            fx.a(this.e, "pref", "dns_faile_count_total", 0);
        }
        return;
    }
}
