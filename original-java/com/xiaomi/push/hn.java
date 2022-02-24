package com.xiaomi.push;

import com.xiaomi.push.an;

/* loaded from: classes2.dex */
class hn extends an.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Runnable f9044a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hn(Runnable runnable) {
        this.f9044a = runnable;
    }

    @Override // com.xiaomi.push.an.b
    /* renamed from: b */
    public void mo161b() {
        this.f9044a.run();
    }
}
