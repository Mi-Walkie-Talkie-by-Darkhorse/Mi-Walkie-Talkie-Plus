package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService.f;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.push.service.am.a;

class bh implements a {
    final /* synthetic */ XMPushService a;

    bh(XMPushService xMPushService) {
        this.a = xMPushService;
    }

    public void a() {
        this.a.m();
        if (am.a().c() <= 0) {
            this.a.a((h) new f(12, null));
        }
    }
}
