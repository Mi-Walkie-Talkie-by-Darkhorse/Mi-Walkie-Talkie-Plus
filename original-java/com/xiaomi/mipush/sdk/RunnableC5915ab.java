package com.xiaomi.mipush.sdk;

import com.xiaomi.mipush.sdk.MiTinyDataClient;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.ab */
/* loaded from: classes2.dex */
public class RunnableC5915ab implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MiTinyDataClient.C5910a.C5911a f20878a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5915ab(MiTinyDataClient.C5910a.C5911a c5911a) {
        this.f20878a = c5911a;
    }

    @Override // java.lang.Runnable
    public void run() {
        ScheduledFuture scheduledFuture;
        ScheduledFuture scheduledFuture2;
        if (this.f20878a.f20867a.size() != 0) {
            this.f20878a.m4053b();
            return;
        }
        scheduledFuture = this.f20878a.f20868a;
        if (scheduledFuture != null) {
            scheduledFuture2 = this.f20878a.f20868a;
            scheduledFuture2.cancel(false);
            this.f20878a.f20868a = null;
        }
    }
}
