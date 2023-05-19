package com.xiaomi.clientreport.manager;

import com.xiaomi.push.C6024bp;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.clientreport.manager.h */
/* loaded from: classes2.dex */
public class RunnableC5887h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C5880a f20838a;

    /* renamed from: a */
    final /* synthetic */ C6024bp f20839a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5887h(C5880a c5880a, C6024bp c6024bp) {
        this.f20838a = c5880a;
        this.f20839a = c6024bp;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f20839a.run();
    }
}
