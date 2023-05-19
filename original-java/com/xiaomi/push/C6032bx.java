package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.bx */
/* loaded from: classes2.dex */
public class C6032bx extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ C6031bw f21137a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6032bx(C6031bw c6031bw) {
        this.f21137a = c6031bw;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "10052";
    }

    @Override // java.lang.Runnable
    public void run() {
        InterfaceC6054cm interfaceC6054cm;
        InterfaceC6054cm interfaceC6054cm2;
        Context context;
        AbstractC5876b.m4139c("exec== mUploadJob");
        interfaceC6054cm = this.f21137a.f21128a;
        if (interfaceC6054cm != null) {
            interfaceC6054cm2 = this.f21137a.f21128a;
            context = this.f21137a.f21125a;
            interfaceC6054cm2.m3497a(context);
            this.f21137a.m3578b("upload_time");
        }
    }
}
