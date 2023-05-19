package com.xiaomi.clientreport.manager;

import com.xiaomi.push.C5978ak;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.clientreport.manager.d */
/* loaded from: classes2.dex */
public class C5883d extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ C5880a f20834a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C5883d(C5880a c5880a) {
        this.f20834a = c5880a;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "100888";
    }

    @Override // java.lang.Runnable
    public void run() {
        int m4136a;
        ExecutorService executorService;
        m4136a = this.f20834a.m4136a();
        if (m4136a > 0) {
            executorService = this.f20834a.f20828a;
            executorService.execute(new RunnableC5884e(this));
        }
    }
}
