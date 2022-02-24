package com.xiaomi.clientreport.manager;

import com.xiaomi.push.ak;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class f extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f8657a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f8657a = aVar;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "100889";
    }

    @Override // java.lang.Runnable
    public void run() {
        int b2;
        ExecutorService executorService;
        b2 = this.f8657a.b();
        if (b2 > 0) {
            executorService = this.f8657a.f15a;
            executorService.execute(new g(this));
        }
    }
}
