package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.mipush.sdk.y */
/* loaded from: classes2.dex */
class RunnableC5965y implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f20982a;

    /* renamed from: a */
    final /* synthetic */ Intent f20983a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5965y(Context context, Intent intent) {
        this.f20982a = context;
        this.f20983a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f20982a.startService(this.f20983a);
        } catch (Exception e) {
            AbstractC5876b.m4147a(e.getMessage());
        }
    }
}
