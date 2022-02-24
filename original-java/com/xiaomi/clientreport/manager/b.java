package com.xiaomi.clientreport.manager;

import com.xiaomi.clientreport.data.EventClientReport;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ EventClientReport f8653a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ a f16a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, EventClientReport eventClientReport) {
        this.f16a = aVar;
        this.f8653a = eventClientReport;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16a.b(this.f8653a);
    }
}
