package com.xiaomi.clientreport.manager;

import com.xiaomi.clientreport.data.PerfClientReport;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.clientreport.manager.c */
/* loaded from: classes2.dex */
public class RunnableC5882c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ PerfClientReport f20832a;

    /* renamed from: a */
    final /* synthetic */ C5880a f20833a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5882c(C5880a c5880a, PerfClientReport perfClientReport) {
        this.f20833a = c5880a;
        this.f20832a = perfClientReport;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f20833a.m4117b(this.f20832a);
    }
}
