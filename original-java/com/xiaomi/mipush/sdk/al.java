package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8686a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Intent f41a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(Context context, Intent intent) {
        this.f8686a = context;
        this.f41a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        PushMessageHandler.b(this.f8686a, this.f41a);
    }
}
