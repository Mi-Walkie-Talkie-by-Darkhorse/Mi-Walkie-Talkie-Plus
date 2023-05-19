package com.xiaomi.push.service;

import com.xiaomi.push.C5978ak;

/* renamed from: com.xiaomi.push.service.ak */
/* loaded from: classes2.dex */
class C6354ak extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ int f22968a;

    /* renamed from: a */
    final /* synthetic */ C6368au f22969a;

    /* renamed from: a */
    final /* synthetic */ String f22970a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6354ak(String str, C6368au c6368au, int i) {
        this.f22970a = str;
        this.f22969a = c6368au;
        this.f22968a = i;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return this.f22970a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f22969a.m1578a(this.f22968a);
    }
}
