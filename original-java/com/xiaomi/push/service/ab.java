package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.smack.l;
import com.xiaomi.xmpush.thrift.ac;

final class ab extends h {
    final /* synthetic */ XMPushService b;
    final /* synthetic */ ac c;
    final /* synthetic */ boolean d;
    final /* synthetic */ boolean e;
    final /* synthetic */ boolean f;

    ab(int i, XMPushService xMPushService, ac acVar, boolean z, boolean z2, boolean z3) {
        this.b = xMPushService;
        this.c = acVar;
        this.d = z;
        this.e = z2;
        this.f = z3;
        super(i);
    }

    public void a() {
        try {
            ac.a(this.b, u.a((Context) this.b, this.c, this.d, this.e, this.f));
        } catch (l e2) {
            b.a((Throwable) e2);
            this.b.a(10, (Exception) e2);
        }
    }

    public String b() {
        return "send wrong message ack for message.";
    }
}
