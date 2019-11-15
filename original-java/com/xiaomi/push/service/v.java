package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.smack.l;
import com.xiaomi.xmpush.thrift.ac;

final class v extends h {
    final /* synthetic */ XMPushService b;
    final /* synthetic */ ac c;

    v(int i, XMPushService xMPushService, ac acVar) {
        this.b = xMPushService;
        this.c = acVar;
        super(i);
    }

    public void a() {
        try {
            ac.a(this.b, ac.a(this.c.j(), this.c.h()));
        } catch (l e) {
            b.a((Throwable) e);
            this.b.a(10, (Exception) e);
        }
    }

    public String b() {
        return "send app absent message.";
    }
}
