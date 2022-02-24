package com.xiaomi.clientreport.manager;

import com.xiaomi.clientreport.data.PerfClientReport;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ PerfClientReport f8654a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ a f17a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar, PerfClientReport perfClientReport) {
        this.f17a = aVar;
        this.f8654a = perfClientReport;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f17a.b(this.f8654a);
    }
}
