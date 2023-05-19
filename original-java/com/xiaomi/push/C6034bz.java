package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.C5978ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.bz */
/* loaded from: classes2.dex */
public class C6034bz extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ C6031bw f21139a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6034bz(C6031bw c6031bw) {
        this.f21139a = c6031bw;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "10053";
    }

    @Override // java.lang.Runnable
    public void run() {
        InterfaceC6054cm interfaceC6054cm;
        InterfaceC6054cm interfaceC6054cm2;
        Context context;
        interfaceC6054cm = this.f21139a.f21128a;
        if (interfaceC6054cm != null) {
            interfaceC6054cm2 = this.f21139a.f21128a;
            context = this.f21139a.f21125a;
            interfaceC6054cm2.m3496b(context);
            this.f21139a.m3578b("delete_time");
        }
    }
}
