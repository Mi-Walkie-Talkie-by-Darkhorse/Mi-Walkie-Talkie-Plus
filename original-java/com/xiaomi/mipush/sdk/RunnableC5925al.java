package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.al */
/* loaded from: classes2.dex */
public class RunnableC5925al implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f20893a;

    /* renamed from: a */
    final /* synthetic */ Intent f20894a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5925al(Context context, Intent intent) {
        this.f20893a = context;
        this.f20894a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        PushMessageHandler.m4033b(this.f20893a, this.f20894a);
    }
}
