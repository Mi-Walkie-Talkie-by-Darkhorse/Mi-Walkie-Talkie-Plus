package com.xiaomi.smack;

import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.network.d;
import com.xiaomi.network.Fallback;
import com.xiaomi.network.HostManager;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.smack.util.e;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

public abstract class h extends a {
    protected Exception p = null;
    protected Socket q;
    String r = null;
    protected XMPushService s;
    protected volatile long t = 0;
    protected volatile long u = 0;
    protected volatile long v = 0;
    private String w;
    private int x;

    public h(XMPushService xMPushService, b bVar) {
        super(xMPushService, bVar);
        this.s = xMPushService;
    }

    private void a(b bVar) {
        a(bVar.e(), bVar.d());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0225, code lost:
        if (android.text.TextUtils.equals(r10, com.xiaomi.channel.commonutils.network.d.l(r16.s)) != false) goto L_0x0227;
     */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0113 A[SYNTHETIC, Splitter:B:25:0x0113] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0162  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x017f A[SYNTHETIC, Splitter:B:36:0x017f] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x01ce  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x01f6  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0212  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0228 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.lang.String r17, int r18) {
        /*
            r16 = this;
            r4 = 0
            r2 = 0
            r0 = r16
            r0.p = r2
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "get bucket for host : "
            java.lang.StringBuilder r2 = r2.append(r5)
            r0 = r17
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.String r2 = r2.toString()
            java.lang.Integer r2 = com.xiaomi.channel.commonutils.logger.b.e(r2)
            int r5 = r2.intValue()
            com.xiaomi.network.Fallback r2 = r16.b(r17)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            com.xiaomi.channel.commonutils.logger.b.a(r5)
            if (r2 == 0) goto L_0x003a
            r3 = 1
            java.util.ArrayList r3 = r2.a(r3)
        L_0x003a:
            boolean r5 = r3.isEmpty()
            if (r5 == 0) goto L_0x0045
            r0 = r17
            r3.add(r0)
        L_0x0045:
            r6 = 0
            r0 = r16
            r0.v = r6
            r0 = r16
            com.xiaomi.push.service.XMPushService r5 = r0.s
            java.lang.String r10 = com.xiaomi.channel.commonutils.network.d.l(r5)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.util.Iterator r12 = r3.iterator()
        L_0x005c:
            boolean r3 = r12.hasNext()
            if (r3 == 0) goto L_0x0238
            java.lang.Object r3 = r12.next()
            java.lang.String r3 = (java.lang.String) r3
            long r14 = java.lang.System.currentTimeMillis()
            r0 = r16
            int r5 = r0.b
            int r5 = r5 + 1
            r0 = r16
            r0.b = r5
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r5.<init>()     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            java.lang.String r6 = "begin to connect to "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            java.lang.StringBuilder r5 = r5.append(r3)     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            java.lang.String r5 = r5.toString()     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            com.xiaomi.channel.commonutils.logger.b.a(r5)     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            java.net.Socket r5 = r16.t()     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r0 = r16
            r0.q = r5     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r0 = r18
            java.net.InetSocketAddress r5 = com.xiaomi.network.Host.b(r3, r0)     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r0 = r16
            java.net.Socket r6 = r0.q     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r7 = 8000(0x1f40, float:1.121E-41)
            r6.connect(r5, r7)     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            java.lang.String r5 = "tcp connected"
            com.xiaomi.channel.commonutils.logger.b.a(r5)     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r0 = r16
            java.net.Socket r5 = r0.q     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r6 = 1
            r5.setTcpNoDelay(r6)     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r0 = r16
            r0.w = r3     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r16.b()     // Catch:{ IOException -> 0x010f, l -> 0x017b, Throwable -> 0x01e5 }
            r9 = 1
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            long r4 = r4 - r14
            r0 = r16
            r0.c = r4     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            r0 = r16
            r0.k = r10     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            if (r2 == 0) goto L_0x00d0
            r0 = r16
            long r4 = r0.c     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            r6 = 0
            r2.b(r3, r4, r6)     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
        L_0x00d0:
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            r0 = r16
            r0.v = r4     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            r4.<init>()     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            java.lang.String r5 = "connected to "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            java.lang.String r5 = " in "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            r0 = r16
            long r6 = r0.c     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            java.lang.String r4 = r4.toString()     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
            com.xiaomi.channel.commonutils.logger.b.a(r4)     // Catch:{ IOException -> 0x0232, l -> 0x022f, Throwable -> 0x022b }
        L_0x00fc:
            com.xiaomi.network.HostManager r2 = com.xiaomi.network.HostManager.getInstance()
            r2.persist()
            if (r9 != 0) goto L_0x0228
            com.xiaomi.smack.l r2 = new com.xiaomi.smack.l
            java.lang.String r3 = r11.toString()
            r2.<init>(r3)
            throw r2
        L_0x010f:
            r8 = move-exception
            r9 = r4
        L_0x0111:
            if (r2 == 0) goto L_0x011d
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0229 }
            long r4 = r4 - r14
            r6 = 0
            r2.b(r3, r4, r6, r8)     // Catch:{ all -> 0x0229 }
        L_0x011d:
            r0 = r16
            r0.p = r8     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0229 }
            r4.<init>()     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = "SMACK: Could not connect to:"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ all -> 0x0229 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0229 }
            com.xiaomi.channel.commonutils.logger.b.d(r4)     // Catch:{ all -> 0x0229 }
            java.lang.String r4 = "SMACK: Could not connect to "
            java.lang.StringBuilder r4 = r11.append(r4)     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = " port:"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            r0 = r18
            java.lang.StringBuilder r4 = r4.append(r0)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = " "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = r8.getMessage()     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = "\n"
            r4.append(r5)     // Catch:{ all -> 0x0229 }
            if (r9 != 0) goto L_0x0177
            r0 = r16
            java.lang.Exception r4 = r0.p
            com.xiaomi.stats.h.a(r3, r4)
            r0 = r16
            com.xiaomi.push.service.XMPushService r3 = r0.s
            java.lang.String r3 = com.xiaomi.channel.commonutils.network.d.l(r3)
            boolean r3 = android.text.TextUtils.equals(r10, r3)
            if (r3 == 0) goto L_0x00fc
        L_0x0177:
            r3 = r9
        L_0x0178:
            r4 = r3
            goto L_0x005c
        L_0x017b:
            r8 = move-exception
            r9 = r4
        L_0x017d:
            if (r2 == 0) goto L_0x0189
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0229 }
            long r4 = r4 - r14
            r6 = 0
            r2.b(r3, r4, r6, r8)     // Catch:{ all -> 0x0229 }
        L_0x0189:
            r0 = r16
            r0.p = r8     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0229 }
            r4.<init>()     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = "SMACK: Could not connect to:"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ all -> 0x0229 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0229 }
            com.xiaomi.channel.commonutils.logger.b.d(r4)     // Catch:{ all -> 0x0229 }
            java.lang.String r4 = "SMACK: Could not connect to "
            java.lang.StringBuilder r4 = r11.append(r4)     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = " port:"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            r0 = r18
            java.lang.StringBuilder r4 = r4.append(r0)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = " "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = r8.getMessage()     // Catch:{ all -> 0x0229 }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0229 }
            java.lang.String r5 = "\n"
            r4.append(r5)     // Catch:{ all -> 0x0229 }
            if (r9 != 0) goto L_0x0177
            r0 = r16
            java.lang.Exception r4 = r0.p
            com.xiaomi.stats.h.a(r3, r4)
            r0 = r16
            com.xiaomi.push.service.XMPushService r3 = r0.s
            java.lang.String r3 = com.xiaomi.channel.commonutils.network.d.l(r3)
            boolean r3 = android.text.TextUtils.equals(r10, r3)
            if (r3 != 0) goto L_0x0177
            goto L_0x00fc
        L_0x01e5:
            r5 = move-exception
        L_0x01e6:
            java.lang.Exception r6 = new java.lang.Exception     // Catch:{ all -> 0x020e }
            java.lang.String r7 = "abnormal exception"
            r6.<init>(r7, r5)     // Catch:{ all -> 0x020e }
            r0 = r16
            r0.p = r6     // Catch:{ all -> 0x020e }
            com.xiaomi.channel.commonutils.logger.b.a(r5)     // Catch:{ all -> 0x020e }
            if (r4 != 0) goto L_0x0235
            r0 = r16
            java.lang.Exception r5 = r0.p
            com.xiaomi.stats.h.a(r3, r5)
            r0 = r16
            com.xiaomi.push.service.XMPushService r3 = r0.s
            java.lang.String r3 = com.xiaomi.channel.commonutils.network.d.l(r3)
            boolean r3 = android.text.TextUtils.equals(r10, r3)
            if (r3 != 0) goto L_0x0235
            r9 = r4
            goto L_0x00fc
        L_0x020e:
            r2 = move-exception
            r9 = r4
        L_0x0210:
            if (r9 != 0) goto L_0x0227
            r0 = r16
            java.lang.Exception r4 = r0.p
            com.xiaomi.stats.h.a(r3, r4)
            r0 = r16
            com.xiaomi.push.service.XMPushService r3 = r0.s
            java.lang.String r3 = com.xiaomi.channel.commonutils.network.d.l(r3)
            boolean r3 = android.text.TextUtils.equals(r10, r3)
            if (r3 == 0) goto L_0x00fc
        L_0x0227:
            throw r2
        L_0x0228:
            return
        L_0x0229:
            r2 = move-exception
            goto L_0x0210
        L_0x022b:
            r4 = move-exception
            r5 = r4
            r4 = r9
            goto L_0x01e6
        L_0x022f:
            r8 = move-exception
            goto L_0x017d
        L_0x0232:
            r8 = move-exception
            goto L_0x0111
        L_0x0235:
            r3 = r4
            goto L_0x0178
        L_0x0238:
            r9 = r4
            goto L_0x00fc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.smack.h.a(java.lang.String, int):void");
    }

    /* access modifiers changed from: protected */
    public synchronized void a(int i, Exception exc) {
        if (m() != 2) {
            a(2, i, exc);
            this.j = "";
            try {
                this.q.close();
            } catch (Throwable th) {
            }
            this.t = 0;
            this.u = 0;
        }
    }

    /* access modifiers changed from: protected */
    public void a(Exception exc) {
        if (SystemClock.elapsedRealtime() - this.v >= 300000) {
            this.x = 0;
        } else if (d.d(this.s)) {
            this.x++;
            if (this.x >= 2) {
                String d = d();
                b.a("max short conn time reached, sink down current host:" + d);
                a(d, 0, exc);
                this.x = 0;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(String str, long j, Exception exc) {
        Fallback fallbacksByHost = HostManager.getInstance().getFallbacksByHost(b.b(), false);
        if (fallbacksByHost != null) {
            fallbacksByHost.b(str, j, 0, exc);
            HostManager.getInstance().persist();
        }
    }

    /* access modifiers changed from: protected */
    public abstract void a(boolean z);

    public void a(com.xiaomi.slim.b[] bVarArr) {
        throw new l("Don't support send Blob");
    }

    public void a(com.xiaomi.smack.packet.d[] dVarArr) {
        for (com.xiaomi.smack.packet.d a : dVarArr) {
            a(a);
        }
    }

    /* access modifiers changed from: 0000 */
    public Fallback b(String str) {
        Fallback fallbacksByHost = HostManager.getInstance().getFallbacksByHost(str, false);
        if (!fallbacksByHost.b()) {
            e.a((Runnable) new k(this, str));
        }
        this.f = 0;
        try {
            byte[] address = InetAddress.getByName(fallbacksByHost.f).getAddress();
            this.f = address[0] & 255;
            this.f |= (address[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK;
            this.f |= (address[2] << Tnaf.POW_2_WIDTH) & 16711680;
            this.f = ((address[3] << 24) & ViewCompat.MEASURED_STATE_MASK) | this.f;
        } catch (UnknownHostException e) {
        }
        return fallbacksByHost;
    }

    /* access modifiers changed from: protected */
    public synchronized void b() {
    }

    public void b(int i, Exception exc) {
        a(i, exc);
        if ((exc != null || i == 18) && this.v != 0) {
            a(exc);
        }
    }

    public void b(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        a(z);
        if (!z) {
            this.s.a((com.xiaomi.push.service.XMPushService.h) new i(this, 13, currentTimeMillis), (long) FileTracerConfig.DEF_FLUSH_INTERVAL);
        }
    }

    public void c(int i, Exception exc) {
        this.s.a((com.xiaomi.push.service.XMPushService.h) new j(this, 2, i, exc));
    }

    public String d() {
        return this.w;
    }

    public String r() {
        return this.j;
    }

    public synchronized void s() {
        try {
            if (k() || j()) {
                b.a("WARNING: current xmpp has connected");
            } else {
                a(0, 0, null);
                a(this.m);
            }
        } catch (IOException e) {
            throw new l((Throwable) e);
        }
    }

    public Socket t() {
        return new Socket();
    }

    public void u() {
        this.t = SystemClock.elapsedRealtime();
    }

    public void v() {
        this.u = SystemClock.elapsedRealtime();
    }
}
