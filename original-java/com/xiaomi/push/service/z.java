package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.smack.l;
import com.xiaomi.xmpush.thrift.ac;

final class z extends h {
    final /* synthetic */ XMPushService b;
    final /* synthetic */ ac c;
    final /* synthetic */ String d;

    z(int i, XMPushService xMPushService, ac acVar, String str) {
        this.b = xMPushService;
        this.c = acVar;
        this.d = str;
        super(i);
    }

    public void a() {
        try {
            ac a = u.a((Context) this.b, this.c);
            a.m().a("absent_target_package", this.d);
            ac.a(this.b, a);
        } catch (l e) {
            b.a((Throwable) e);
            this.b.a(10, (Exception) e);
        }
    }

    public String b() {
        return "send app absent ack message for message.";
    }
}
