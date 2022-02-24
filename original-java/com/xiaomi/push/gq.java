package com.xiaomi.push;

import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.service.XMPushService;
import java.io.IOException;
import java.net.Socket;

/* loaded from: classes2.dex */
public abstract class gq extends gj {

    /* renamed from: a  reason: collision with other field name */
    protected Socket f444a;

    /* renamed from: b  reason: collision with root package name */
    protected XMPushService f9000b;

    /* renamed from: c  reason: collision with root package name */
    private int f9001c;
    private String d;

    /* renamed from: a  reason: collision with root package name */
    protected Exception f8999a = null;

    /* renamed from: c  reason: collision with other field name */
    String f445c = null;
    protected volatile long e = 0;
    protected volatile long f = 0;
    protected volatile long g = 0;
    private long h = 0;

    public gq(XMPushService xMPushService, gk gkVar) {
        super(xMPushService, gkVar);
        this.f9000b = xMPushService;
    }

    private void a(gk gkVar) {
        a(gkVar.c(), gkVar.mo321a());
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x033b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.lang.String r32, int r33) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.gq.a(java.lang.String, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.gj
    public cq a(String str) {
        cq a2 = cu.a().a(str, false);
        if (!a2.b()) {
            hm.a(new gt(this, str));
        }
        return a2;
    }

    @Override // com.xiaomi.push.gj
    /* renamed from: a */
    public String mo326a() {
        return this.d;
    }

    @Override // com.xiaomi.push.gj
    /* renamed from: a  reason: collision with other method in class */
    public Socket mo326a() {
        return new Socket();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.gj
    /* renamed from: a */
    public synchronized void mo326a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(int i, Exception exc) {
        if (b() != 2) {
            a(2, i, exc);
            ((gj) this).f430a = "";
            try {
                this.f444a.close();
            } catch (Throwable unused) {
            }
            this.e = 0L;
            this.f = 0L;
        }
    }

    protected void a(Exception exc) {
        if (SystemClock.elapsedRealtime() - this.g < Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL) {
            if (bi.b(this.f9000b)) {
                int i = this.f9001c + 1;
                this.f9001c = i;
                if (i >= 2) {
                    String a2 = mo326a();
                    b.m1a("max short conn time reached, sink down current host:" + a2);
                    a(a2, 0L, exc);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.f9001c = 0;
    }

    protected void a(String str, long j, Exception exc) {
        cq a2 = cu.a().a(gk.a(), false);
        if (a2 != null) {
            a2.b(str, j, 0L, exc);
            cu.a().m157c();
        }
    }

    /* renamed from: a */
    protected abstract void mo310a(boolean z);

    @Override // com.xiaomi.push.gj
    public void a(fy[] fyVarArr) {
        throw new gu("Don't support send Blob");
    }

    @Override // com.xiaomi.push.gj
    public void b(int i, Exception exc) {
        a(i, exc);
        if ((exc != null || i == 18) && this.g != 0) {
            a(exc);
        }
    }

    @Override // com.xiaomi.push.gj
    public void b(boolean z) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        mo310a(z);
        et.a(this.f9000b).b();
        if (!z) {
            this.f9000b.a(new gr(this, 13, elapsedRealtime, currentTimeMillis), 10000L);
        }
    }

    @Override // com.xiaomi.push.gj
    public String c() {
        return ((gj) this).f430a;
    }

    public void c(int i, Exception exc) {
        this.f9000b.a(new gs(this, 2, i, exc));
    }

    public synchronized void f() {
        try {
            if (!m320c() && !m319b()) {
                a(0, 0, (Exception) null);
                a(((gj) this).f427a);
                return;
            }
            b.m1a("WARNING: current xmpp has connected");
        } catch (IOException e) {
            throw new gu(e);
        }
    }

    public void g() {
        this.e = SystemClock.elapsedRealtime();
    }

    public void h() {
        this.f = SystemClock.elapsedRealtime();
    }
}
