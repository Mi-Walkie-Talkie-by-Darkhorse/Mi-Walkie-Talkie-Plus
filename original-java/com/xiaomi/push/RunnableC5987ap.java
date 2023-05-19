package com.xiaomi.push;

import com.xiaomi.push.C5983an;

/* renamed from: com.xiaomi.push.ap */
/* loaded from: classes2.dex */
class RunnableC5987ap implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C5983an.AbstractC5985b f21020a;

    /* renamed from: a */
    final /* synthetic */ C5983an f21021a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5987ap(C5983an c5983an, C5983an.AbstractC5985b abstractC5985b) {
        this.f21021a = c5983an;
        this.f21020a = abstractC5985b;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f21021a.m3767a(this.f21020a);
    }
}
