package com.xiaomi.push;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.gg */
/* loaded from: classes2.dex */
public class C6187gg extends Thread {

    /* renamed from: a */
    final /* synthetic */ C6186gf f21716a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6187gg(C6186gf c6186gf, String str) {
        super(str);
        this.f21716a = c6186gf;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        C6177ga c6177ga;
        try {
            c6177ga = this.f21716a.f21712a;
            c6177ga.m2798a();
        } catch (Exception e) {
            this.f21716a.m2707c(9, e);
        }
    }
}
