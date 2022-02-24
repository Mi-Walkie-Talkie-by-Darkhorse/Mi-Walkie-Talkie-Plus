package com.xiaomi.clientreport.manager;

import com.xiaomi.push.bq;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f8660a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ bq f19a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar, bq bqVar) {
        this.f8660a = aVar;
        this.f19a = bqVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f19a.run();
    }
}
