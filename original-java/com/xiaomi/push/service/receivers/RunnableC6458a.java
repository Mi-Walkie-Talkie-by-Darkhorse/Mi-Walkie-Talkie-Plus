package com.xiaomi.push.service.receivers;

import android.content.Context;

/* renamed from: com.xiaomi.push.service.receivers.a */
/* loaded from: classes2.dex */
class RunnableC6458a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f23229a;

    /* renamed from: a */
    final /* synthetic */ NetworkStatusReceiver f23230a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6458a(NetworkStatusReceiver networkStatusReceiver, Context context) {
        this.f23230a = networkStatusReceiver;
        this.f23229a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f23230a.m1298a(this.f23229a);
    }
}
