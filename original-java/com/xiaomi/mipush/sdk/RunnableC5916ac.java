package com.xiaomi.mipush.sdk;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.mipush.sdk.ac */
/* loaded from: classes2.dex */
class RunnableC5916ac implements Runnable {

    /* renamed from: a */
    final /* synthetic */ NotificationClickedActivity f20879a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5916ac(NotificationClickedActivity notificationClickedActivity) {
        this.f20879a = notificationClickedActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC5876b.m4147a("clicked activity finish by timeout.");
        this.f20879a.finish();
    }
}
