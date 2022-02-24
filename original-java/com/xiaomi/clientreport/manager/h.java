package com.xiaomi.clientreport.manager;

import com.xiaomi.push.bp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f8659a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ bp f18a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(a aVar, bp bpVar) {
        this.f8659a = aVar;
        this.f18a = bpVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f18a.run();
    }
}
