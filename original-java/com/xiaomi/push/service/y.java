package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.smack.l;
import com.xiaomi.xmpush.thrift.ac;

final class y extends h {
    final /* synthetic */ XMPushService b;
    final /* synthetic */ ac c;

    y(int i, XMPushService xMPushService, ac acVar) {
        this.b = xMPushService;
        this.c = acVar;
        super(i);
    }

    public void a() {
        try {
            ac a = u.a((Context) this.b, this.c);
            a.m().a("miui_message_unrecognized", "1");
            ac.a(this.b, a);
        } catch (l e) {
            b.a((Throwable) e);
            this.b.a(10, (Exception) e);
        }
    }

    public String b() {
        return "send ack message for unrecognized new miui message.";
    }
}
