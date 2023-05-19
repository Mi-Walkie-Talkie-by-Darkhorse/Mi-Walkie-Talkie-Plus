package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.mipush.sdk.ad */
/* loaded from: classes2.dex */
class C5917ad extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ NotificationClickedActivity f20880a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C5917ad(NotificationClickedActivity notificationClickedActivity) {
        this.f20880a = notificationClickedActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC5876b.m4141b("clicked activity finish by normal.");
        this.f20880a.finish();
    }
}
