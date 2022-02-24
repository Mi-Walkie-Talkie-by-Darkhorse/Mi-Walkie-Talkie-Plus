package com.xiaomi.mipush.sdk;

import com.xiaomi.mipush.sdk.MiTinyDataClient;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ MiTinyDataClient.a.C0234a f8677a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(MiTinyDataClient.a.C0234a aVar) {
        this.f8677a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ScheduledFuture scheduledFuture;
        ScheduledFuture scheduledFuture2;
        if (this.f8677a.f32a.size() != 0) {
            this.f8677a.b();
            return;
        }
        scheduledFuture = this.f8677a.f33a;
        if (scheduledFuture != null) {
            scheduledFuture2 = this.f8677a.f33a;
            scheduledFuture2.cancel(false);
            this.f8677a.f33a = null;
        }
    }
}
