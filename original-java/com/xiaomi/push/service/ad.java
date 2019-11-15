package com.xiaomi.push.service;

import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.service.am.b.a;
import com.xiaomi.push.service.am.c;

final class ad implements a {
    final /* synthetic */ XMPushService a;

    ad(XMPushService xMPushService) {
        this.a = xMPushService;
    }

    public void a(c cVar, c cVar2, int i) {
        if (cVar2 == c.binded) {
            t.a(this.a);
            t.b(this.a);
        } else if (cVar2 == c.unbind) {
            t.a(this.a, ErrorCode.ERROR_SERVICE_UNAVAILABLE, " the push is not connected.");
        }
    }
}
