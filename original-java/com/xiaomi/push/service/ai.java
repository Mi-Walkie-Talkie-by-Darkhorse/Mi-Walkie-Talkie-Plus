package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.service.bd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ai implements bd.b.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9234a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(XMPushService xMPushService) {
        this.f9234a = xMPushService;
    }

    @Override // com.xiaomi.push.service.bd.b.a
    public void a(bd.c cVar, bd.c cVar2, int i) {
        if (cVar2 == bd.c.binded) {
            v.a(this.f9234a);
            v.b(this.f9234a);
        } else if (cVar2 == bd.c.unbind) {
            b.m1a("onChange unbind");
            v.a(this.f9234a, ErrorCode.ERROR_SERVICE_UNAVAILABLE, " the push is not connected.");
        }
    }
}
