package com.xiaomi.clientreport.manager;

import com.xiaomi.push.ak;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class d extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f8655a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar) {
        this.f8655a = aVar;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "100888";
    }

    @Override // java.lang.Runnable
    public void run() {
        int a2;
        ExecutorService executorService;
        a2 = this.f8655a.a();
        if (a2 > 0) {
            executorService = this.f8655a.f15a;
            executorService.execute(new e(this));
        }
    }
}
