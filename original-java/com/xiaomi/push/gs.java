package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class gs extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ gq f9004a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Exception f447a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f9005b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gs(gq gqVar, int i, int i2, Exception exc) {
        super(i);
        this.f9004a = gqVar;
        this.f9005b = i2;
        this.f447a = exc;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "shutdown the connection. " + this.f9005b + ", " + this.f447a;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        this.f9004a.f9000b.a(this.f9005b, this.f447a);
    }
}
