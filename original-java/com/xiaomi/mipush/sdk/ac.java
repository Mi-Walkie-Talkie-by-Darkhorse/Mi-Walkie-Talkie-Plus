package com.xiaomi.mipush.sdk;

import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ NotificationClickedActivity f8678a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(NotificationClickedActivity notificationClickedActivity) {
        this.f8678a = notificationClickedActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        b.m1a("clicked activity finish by timeout.");
        this.f8678a.finish();
    }
}
