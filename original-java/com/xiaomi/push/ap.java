package com.xiaomi.push;

import com.xiaomi.push.an;

/* loaded from: classes2.dex */
class ap implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ an.b f8745a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ an f96a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(an anVar, an.b bVar) {
        this.f96a = anVar;
        this.f8745a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f96a.a(this.f8745a);
    }
}
