package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.slim.b;
import com.xiaomi.smack.l;
import com.xiaomi.smack.packet.d;

class au extends h {
    private XMPushService b = null;
    private d c;
    private b d;

    public au(XMPushService xMPushService, b bVar) {
        super(4);
        this.b = xMPushService;
        this.d = bVar;
    }

    public au(XMPushService xMPushService, d dVar) {
        super(4);
        this.b = xMPushService;
        this.c = dVar;
    }

    public void a() {
        try {
            if (this.c != null) {
                this.b.a(this.c);
            } else {
                this.b.a(this.d);
            }
        } catch (l e) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
            this.b.a(10, (Exception) e);
        }
    }

    public String b() {
        return "send a message.";
    }
}
