package com.xiaomi.mipush.sdk;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.z */
/* loaded from: classes2.dex */
public class RunnableC5966z implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f20984a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5966z(Context context) {
        this.f20984a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        MessageHandleService.m4072c(this.f20984a);
    }
}
