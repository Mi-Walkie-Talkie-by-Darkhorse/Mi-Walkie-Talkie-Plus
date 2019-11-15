package com.xiaomi.push.service;

import com.xiaomi.push.protobuf.b.C0070b;
import com.xiaomi.smack.b;
import com.xiaomi.smack.e;
import java.util.Map;

class bf extends b {
    final /* synthetic */ XMPushService a;

    bf(XMPushService xMPushService, Map map, int i, String str, e eVar) {
        this.a = xMPushService;
        super(map, i, str, eVar);
    }

    public byte[] a() {
        try {
            C0070b bVar = new C0070b();
            bVar.a(av.a().c());
            return bVar.c();
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.a("getOBBString err: " + e.toString());
            return null;
        }
    }
}
