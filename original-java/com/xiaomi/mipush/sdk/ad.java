package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
class ad extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ NotificationClickedActivity f8679a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(NotificationClickedActivity notificationClickedActivity) {
        this.f8679a = notificationClickedActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        b.b("clicked activity finish by normal.");
        this.f8679a.finish();
    }
}
