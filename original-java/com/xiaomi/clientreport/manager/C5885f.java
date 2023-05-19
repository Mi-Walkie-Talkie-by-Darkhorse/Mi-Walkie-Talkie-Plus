package com.xiaomi.clientreport.manager;

import com.xiaomi.push.C5978ak;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.clientreport.manager.f */
/* loaded from: classes2.dex */
public class C5885f extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ C5880a f20836a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C5885f(C5880a c5880a) {
        this.f20836a = c5880a;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "100889";
    }

    @Override // java.lang.Runnable
    public void run() {
        int m4120b;
        ExecutorService executorService;
        m4120b = this.f20836a.m4120b();
        if (m4120b > 0) {
            executorService = this.f20836a.f20828a;
            executorService.execute(new RunnableC5886g(this));
        }
    }
}
