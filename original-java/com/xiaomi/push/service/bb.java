package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService.h;

class bb extends h {
    final /* synthetic */ XMPushService b;

    bb(XMPushService xMPushService, int i) {
        this.b = xMPushService;
        super(i);
    }

    public void a() {
        if (this.b.j != null) {
            this.b.j.b(15, (Exception) null);
            this.b.j = null;
        }
    }

    public String b() {
        return "disconnect for service destroy.";
    }
}
