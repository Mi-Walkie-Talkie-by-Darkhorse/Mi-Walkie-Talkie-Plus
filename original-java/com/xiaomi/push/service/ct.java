package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ct implements s.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService.j f9327a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f988a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ct(XMPushService xMPushService, XMPushService.j jVar) {
        this.f988a = xMPushService;
        this.f9327a = jVar;
    }

    @Override // com.xiaomi.push.service.s.a
    public void a() {
        this.f988a.a(this.f9327a);
    }
}
