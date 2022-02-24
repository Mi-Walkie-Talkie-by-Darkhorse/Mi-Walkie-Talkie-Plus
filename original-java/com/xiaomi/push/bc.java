package com.xiaomi.push;

import android.content.Context;
import android.os.IBinder;
import com.xiaomi.push.ba;

/* loaded from: classes2.dex */
class bc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ IBinder f8769a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ ba.b f126a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(ba.b bVar, IBinder iBinder) {
        this.f126a = bVar;
        this.f8769a = iBinder;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Context context;
        String b2;
        Object obj5;
        Object obj6;
        try {
            context = ba.this.f121a;
            String packageName = context.getPackageName();
            b2 = ba.this.b();
            ba.a aVar = new ba.a();
            aVar.f125a = ba.c.a(this.f8769a, packageName, b2, "GUID");
            aVar.f8766b = ba.c.a(this.f8769a, packageName, b2, "OUID");
            aVar.f8767c = ba.c.a(this.f8769a, packageName, b2, "DUID");
            aVar.d = ba.c.a(this.f8769a, packageName, b2, "AUID");
            ba.this.f123a = aVar;
            ba.this.m89b();
            ba.this.f120a = 2;
            obj5 = ba.this.f124a;
            synchronized (obj5) {
                try {
                    obj6 = ba.this.f124a;
                    obj6.notifyAll();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
            ba.this.m89b();
            ba.this.f120a = 2;
            obj = ba.this.f124a;
            synchronized (obj) {
                try {
                    obj2 = ba.this.f124a;
                    obj2.notifyAll();
                } catch (Exception unused3) {
                }
            }
        } catch (Throwable th) {
            ba.this.m89b();
            ba.this.f120a = 2;
            obj3 = ba.this.f124a;
            synchronized (obj3) {
                try {
                    obj4 = ba.this.f124a;
                    obj4.notifyAll();
                } catch (Exception unused4) {
                }
                throw th;
            }
        }
    }
}
