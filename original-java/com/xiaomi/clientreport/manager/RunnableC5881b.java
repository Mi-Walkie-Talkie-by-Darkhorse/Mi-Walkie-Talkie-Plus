package com.xiaomi.clientreport.manager;

import com.xiaomi.clientreport.data.EventClientReport;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.clientreport.manager.b */
/* loaded from: classes2.dex */
public class RunnableC5881b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ EventClientReport f20830a;

    /* renamed from: a */
    final /* synthetic */ C5880a f20831a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5881b(C5880a c5880a, EventClientReport eventClientReport) {
        this.f20831a = c5880a;
        this.f20830a = eventClientReport;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f20831a.m4118b(this.f20830a);
    }
}
