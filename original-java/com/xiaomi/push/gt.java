package com.xiaomi.push;

/* loaded from: classes2.dex */
class gt implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ gq f9006a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f448a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gt(gq gqVar, String str) {
        this.f9006a = gqVar;
        this.f448a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        cu.a().a(this.f448a, true);
    }
}
