package com.xiaomi.push;

/* renamed from: com.xiaomi.push.gt */
/* loaded from: classes2.dex */
class RunnableC6202gt implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC6199gq f21780a;

    /* renamed from: a */
    final /* synthetic */ String f21781a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6202gt(AbstractC6199gq abstractC6199gq, String str) {
        this.f21780a = abstractC6199gq;
        this.f21781a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        C6062cu.m3459a().m3447a(this.f21781a, true);
    }
}
