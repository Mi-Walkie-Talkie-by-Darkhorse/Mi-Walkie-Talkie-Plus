package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.ce */
/* loaded from: classes2.dex */
public class RunnableC6419ce implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C6263iu f23157a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6419ce(C6263iu c6263iu) {
        this.f23157a = c6263iu;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Context context2;
        byte[] m1933a = C6278jf.m1933a(C6346af.m1690a(this.f23157a.m2178c(), this.f23157a.m2182b(), this.f23157a, EnumC6237hv.Notification));
        context = C6418cd.f23154a;
        if (!(context instanceof XMPushService)) {
            AbstractC5876b.m4147a("UNDatas UploadNotificationDatas failed because not xmsf");
            return;
        }
        context2 = C6418cd.f23154a;
        ((XMPushService) context2).m1762a(this.f23157a.m2178c(), m1933a, true);
    }
}
