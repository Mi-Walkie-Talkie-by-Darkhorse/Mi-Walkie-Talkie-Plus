package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService.h;
import com.xiaomi.smack.l;
import com.xiaomi.xmpush.thrift.ac;

final class aa extends h {
    final /* synthetic */ XMPushService b;
    final /* synthetic */ ac c;
    final /* synthetic */ String d;
    final /* synthetic */ String e;

    aa(int i, XMPushService xMPushService, ac acVar, String str, String str2) {
        this.b = xMPushService;
        this.c = acVar;
        this.d = str;
        this.e = str2;
        super(i);
    }

    public void a() {
        try {
            ac a = u.a((Context) this.b, this.c);
            a.h.a(XiaomiOAuthConstants.EXTRA_ERROR_CODE_2, this.d);
            a.h.a("reason", this.e);
            ac.a(this.b, a);
        } catch (l e2) {
            b.a((Throwable) e2);
            this.b.a(10, (Exception) e2);
        }
    }

    public String b() {
        return "send wrong message ack for message.";
    }
}
