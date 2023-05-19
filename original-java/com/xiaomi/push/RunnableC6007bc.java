package com.xiaomi.push;

import android.content.Context;
import android.os.IBinder;
import com.xiaomi.push.C6002ba;

/* renamed from: com.xiaomi.push.bc */
/* loaded from: classes2.dex */
class RunnableC6007bc implements Runnable {

    /* renamed from: a */
    final /* synthetic */ IBinder f21087a;

    /* renamed from: a */
    final /* synthetic */ C6002ba.ServiceConnectionC6004b f21088a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6007bc(C6002ba.ServiceConnectionC6004b serviceConnectionC6004b, IBinder iBinder) {
        this.f21088a = serviceConnectionC6004b;
        this.f21087a = iBinder;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Context context;
        String m3687b;
        Object obj5;
        Object obj6;
        try {
            context = C6002ba.this.f21077a;
            String packageName = context.getPackageName();
            m3687b = C6002ba.this.m3687b();
            C6002ba.C6003a c6003a = new C6002ba.C6003a();
            c6003a.f21082a = C6002ba.C6005c.m3685a(this.f21087a, packageName, m3687b, "GUID");
            c6003a.f21083b = C6002ba.C6005c.m3685a(this.f21087a, packageName, m3687b, "OUID");
            c6003a.f21084c = C6002ba.C6005c.m3685a(this.f21087a, packageName, m3687b, "DUID");
            c6003a.f21085d = C6002ba.C6005c.m3685a(this.f21087a, packageName, m3687b, "AUID");
            C6002ba.this.f21079a = c6003a;
            C6002ba.this.m3686b();
            C6002ba.this.f21076a = 2;
            obj5 = C6002ba.this.f21080a;
            synchronized (obj5) {
                try {
                    obj6 = C6002ba.this.f21080a;
                    obj6.notifyAll();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
            C6002ba.this.m3686b();
            C6002ba.this.f21076a = 2;
            obj3 = C6002ba.this.f21080a;
            synchronized (obj3) {
                try {
                    obj4 = C6002ba.this.f21080a;
                    obj4.notifyAll();
                } catch (Exception unused3) {
                }
            }
        } catch (Throwable th) {
            C6002ba.this.m3686b();
            C6002ba.this.f21076a = 2;
            obj = C6002ba.this.f21080a;
            synchronized (obj) {
                try {
                    obj2 = C6002ba.this.f21080a;
                    obj2.notifyAll();
                } catch (Exception unused4) {
                }
                throw th;
            }
        }
    }
}
