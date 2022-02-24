package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8728a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Intent f79a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Context context, Intent intent) {
        this.f8728a = context;
        this.f79a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f8728a.startService(this.f79a);
        } catch (Exception e) {
            b.m1a(e.getMessage());
        }
    }
}
