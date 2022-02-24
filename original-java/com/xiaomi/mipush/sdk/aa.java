package com.xiaomi.mipush.sdk;

import com.xiaomi.mipush.sdk.MiTinyDataClient;
import com.xiaomi.push.hz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ MiTinyDataClient.a.C0234a f8676a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ hz f37a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(MiTinyDataClient.a.C0234a aVar, hz hzVar) {
        this.f8676a = aVar;
        this.f37a = hzVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f8676a.f32a.add(this.f37a);
        this.f8676a.a();
    }
}
