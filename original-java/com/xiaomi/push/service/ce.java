package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.hv;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ce implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ iu f9311a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(iu iuVar) {
        this.f9311a = iuVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Context context2;
        byte[] a2 = jf.a(af.a(this.f9311a.c(), this.f9311a.b(), this.f9311a, hv.Notification));
        context = cd.f9310a;
        if (context instanceof XMPushService) {
            context2 = cd.f9310a;
            ((XMPushService) context2).a(this.f9311a.c(), a2, true);
            return;
        }
        b.m1a("UNDatas UploadNotificationDatas failed because not xmsf");
    }
}
