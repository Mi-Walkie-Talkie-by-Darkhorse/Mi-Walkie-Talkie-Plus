package com.xiaomi.mipush.sdk;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8729a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(Context context) {
        this.f8729a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        MessageHandleService.c(this.f8729a);
    }
}
