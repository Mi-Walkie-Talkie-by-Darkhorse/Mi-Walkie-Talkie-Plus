package com.xiaomi.push.service.receivers;

import android.content.Context;

/* loaded from: classes2.dex */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f9357a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ NetworkStatusReceiver f1007a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(NetworkStatusReceiver networkStatusReceiver, Context context) {
        this.f1007a = networkStatusReceiver;
        this.f9357a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1007a.a(this.f9357a);
    }
}
