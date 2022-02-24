package com.xiaomi.push;

import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.dw;
import com.xiaomi.push.gj;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.service.bm;
import com.xiaomi.push.service.bs;

/* loaded from: classes2.dex */
public class gf extends gq {

    /* renamed from: a  reason: collision with root package name */
    private ga f8983a;

    /* renamed from: a  reason: collision with other field name */
    private gb f414a;

    /* renamed from: a  reason: collision with other field name */
    private Thread f415a;

    /* renamed from: a  reason: collision with other field name */
    private byte[] f416a;

    public gf(XMPushService xMPushService, gk gkVar) {
        super(xMPushService, gkVar);
    }

    private fy a(boolean z) {
        ge geVar = new ge();
        if (z) {
            geVar.a("1");
        }
        byte[] a2 = fw.m290a();
        if (a2 != null) {
            dw.j jVar = new dw.j();
            jVar.a(a.a(a2));
            geVar.a(jVar.a(), (String) null);
        }
        return geVar;
    }

    private void i() {
        try {
            this.f8983a = new ga(((gq) this).f444a.getInputStream(), this);
            this.f414a = new gb(((gq) this).f444a.getOutputStream(), this);
            gg ggVar = new gg(this, "Blob Reader (" + ((gj) this).f8990b + ")");
            this.f415a = ggVar;
            ggVar.start();
        } catch (Exception e) {
            throw new gu("Error to init reader and writer", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.gq, com.xiaomi.push.gj
    /* renamed from: a */
    public synchronized void mo326a() {
        i();
        this.f414a.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.gq
    public synchronized void a(int i, Exception exc) {
        if (this.f8983a != null) {
            this.f8983a.b();
            this.f8983a = null;
        }
        if (this.f414a != null) {
            try {
                this.f414a.b();
            } catch (Exception e) {
                b.a(e);
            }
            this.f414a = null;
        }
        this.f416a = null;
        super.a(i, exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(fy fyVar) {
        if (fyVar != null) {
            if (fyVar.m294a()) {
                b.m1a("[Slim] RCV blob chid=" + fyVar.a() + "; id=" + fyVar.e() + "; errCode=" + fyVar.b() + "; err=" + fyVar.m298c());
            }
            if (fyVar.a() == 0) {
                if ("PING".equals(fyVar.m291a())) {
                    b.m1a("[Slim] RCV ping id=" + fyVar.e());
                    h();
                } else if ("CLOSE".equals(fyVar.m291a())) {
                    c(13, null);
                }
            }
            for (gj.a aVar : ((gj) this).f433a.values()) {
                aVar.a(fyVar);
            }
        }
    }

    @Override // com.xiaomi.push.gj
    @Deprecated
    public void a(ha haVar) {
        b(fy.a(haVar, (String) null));
    }

    @Override // com.xiaomi.push.gj
    public synchronized void a(bd.b bVar) {
        fx.a(bVar, c(), this);
    }

    @Override // com.xiaomi.push.gj
    public synchronized void a(String str, String str2) {
        fx.a(str, str2, this);
    }

    @Override // com.xiaomi.push.gq
    /* renamed from: a  reason: collision with other method in class */
    protected void mo310a(boolean z) {
        if (this.f414a != null) {
            fy a2 = a(z);
            b.m1a("[Slim] SND ping id=" + a2.e());
            b(a2);
            g();
            return;
        }
        throw new gu("The BlobWriter is null.");
    }

    @Override // com.xiaomi.push.gq, com.xiaomi.push.gj
    public void a(fy[] fyVarArr) {
        for (fy fyVar : fyVarArr) {
            b(fyVar);
        }
    }

    @Override // com.xiaomi.push.gq, com.xiaomi.push.gj
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo326a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.gq, com.xiaomi.push.gj
    /* renamed from: a */
    public synchronized byte[] mo326a() {
        if (this.f416a == null && !TextUtils.isEmpty(((gj) this).f430a)) {
            String a2 = bs.m625a();
            this.f416a = bm.a(((gj) this).f430a.getBytes(), (((gj) this).f430a.substring(((gj) this).f430a.length() / 2) + a2.substring(a2.length() / 2)).getBytes());
        }
        return this.f416a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.gj
    public void b() {
        et.a(((gj) this).f429a.getApplicationContext()).a(SystemClock.elapsedRealtime());
    }

    @Override // com.xiaomi.push.gj
    public void b(fy fyVar) {
        gb gbVar = this.f414a;
        if (gbVar != null) {
            try {
                int a2 = gbVar.a(fyVar);
                ((gj) this).d = SystemClock.elapsedRealtime();
                String f = fyVar.f();
                if (!TextUtils.isEmpty(f)) {
                    ho.a(((gj) this).f429a, f, a2, false, true, System.currentTimeMillis());
                }
                for (gj.a aVar : ((gj) this).f436b.values()) {
                    aVar.a(fyVar);
                }
                if (!"PING".equals(fyVar.m291a())) {
                    et.a(((gq) this).f9000b.getApplicationContext()).a(SystemClock.elapsedRealtime());
                }
            } catch (Exception e) {
                throw new gu(e);
            }
        } else {
            throw new gu("the writer is null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ha haVar) {
        if (haVar != null) {
            for (gj.a aVar : ((gj) this).f433a.values()) {
                aVar.a(haVar);
            }
        }
    }
}
