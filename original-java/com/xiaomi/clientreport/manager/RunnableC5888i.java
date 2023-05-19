package com.xiaomi.clientreport.manager;

import com.xiaomi.push.C6025bq;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.clientreport.manager.i */
/* loaded from: classes2.dex */
public class RunnableC5888i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C5880a f20840a;

    /* renamed from: a */
    final /* synthetic */ C6025bq f20841a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5888i(C5880a c5880a, C6025bq c6025bq) {
        this.f20840a = c5880a;
        this.f20841a = c6025bq;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f20841a.run();
    }
}
