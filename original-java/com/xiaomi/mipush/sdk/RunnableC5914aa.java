package com.xiaomi.mipush.sdk;

import com.xiaomi.mipush.sdk.MiTinyDataClient;
import com.xiaomi.push.C6241hz;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.aa */
/* loaded from: classes2.dex */
public class RunnableC5914aa implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MiTinyDataClient.C5910a.C5911a f20876a;

    /* renamed from: a */
    final /* synthetic */ C6241hz f20877a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5914aa(MiTinyDataClient.C5910a.C5911a c5911a, C6241hz c6241hz) {
        this.f20876a = c5911a;
        this.f20877a = c6241hz;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f20876a.f20867a.add(this.f20877a);
        this.f20876a.m4058a();
    }
}
