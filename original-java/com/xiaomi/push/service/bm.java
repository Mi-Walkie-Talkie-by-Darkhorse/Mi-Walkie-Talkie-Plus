package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.smack.l;

class bm extends h {
    final /* synthetic */ String b;
    final /* synthetic */ byte[] c;
    final /* synthetic */ XMPushService d;

    bm(XMPushService xMPushService, int i, String str, byte[] bArr) {
        this.d = xMPushService;
        this.b = str;
        this.c = bArr;
        super(i);
    }

    public void a() {
        try {
            ac.a(this.d, this.b, this.c);
        } catch (l e) {
            b.a((Throwable) e);
            this.d.a(10, (Exception) e);
        }
    }

    public String b() {
        return "send mi push message";
    }
}
